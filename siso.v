module dff(d,clk,q);
    input d,clk;
    output q;
    reg q=0;
    always @ (posedge clk)
    begin
    q<=d;
end
endmodule 

module siso(d, clk, q);
    input d,clk;
    output q;
    wire q1,q2,q3;
    dff a(d, clk, q1);
    dff b(q1, clk, q2);
    dff c(q2, clk, q3);
    dff d1(q3, clk, q);
endmodule

module testbench();
reg d,clk;
wire q;
siso a(d, clk, q);
initial
begin
$monitor($time,"d=%b,clk=%b,q=%b",d,clk,q);
end
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
d=1;
#10 d=0;
#10 d=1;
#10 d=1;
#40 $finish;
end 
endmodule
