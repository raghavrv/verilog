module dff(d,clk,q);
    input d,clk;
    output q;
    reg q=0;
    always @ (posedge clk)
    begin
    q<=d;
    end
endmodule 

module sipo(d, clk, q);
    input d,clk;
    output [3:0]q;
    dff aa(d, clk, q[3]);
    dff bb(q[3], clk, q[2]);
    dff cc(q[2], clk, q[1]);
    dff dd(q[1], clk, q[0]);
endmodule

module testbench();
reg d,clk;
wire [3:0]q;
sipo a(d, clk, q);
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