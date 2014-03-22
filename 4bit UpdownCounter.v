module jkff(j, k, clk, q);
    input j,k,clk;
    output q;
    reg q=0;
    always @ (negedge clk)
    begin
    if (j==0 && k==0)
    q<=q;
    else if (j==0 && k==1)
    q=0;
    else if (j==1 && k==0)
    q=1;
    else
    q<=~q;
    end
endmodule 
module ud(ud, q, c);
    input ud,q;
    output c;
    assign c=(ud&q)|(~ud&~q);
endmodule
module ud4(clk, ud, q);
    input clk,ud;
    output [3:0]q;
    wire q1,q2,q3;
    jkff a(1,1,clk,q[0]);
    ud a1(ud,q[0],q1);
    jkff b(1,1,q1,q[1]);
    ud b1(ud,q[1],q2);
    jkff c(1,1,q2,q[2]);
    ud c1(ud,q[2],q3);
    jkff d(1,1,q3,q[3]);
endmodule

module testbench();
reg clk,ud;
wire [3:0]q;
ud4 u1(clk,ud,q);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
ud=1;
#170 ud=0;
#150 $finish;
end
endmodule
