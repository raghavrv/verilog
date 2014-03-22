module dff(d,clk,q);
    input d,clk;
    output q;
    reg q=0;
    always @ (posedge clk)
    begin
    q<=d;
    end
endmodule 
module pipo(d, clk, q);
    input [3:0]d;
input clk;
    output [3:0]q;
    dff a(d[3], clk, q[3]);
    dff b(d[2], clk, q[2]);
    dff c(d[1], clk, q[1]);
    dff d(d[0], clk, q[0]);
endmodule
module testbench();
reg [3:0]d;
reg clk;
wire [3:0]q;
pipo a(d, clk, q);
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
d=4'b1001;
#10 d=4'b1011;
#10 d=4’b1111;
#40 $finish;
end 
endmodule
