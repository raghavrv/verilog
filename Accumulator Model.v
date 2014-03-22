module acc(d,clk,rst,s);
input rst,clk;
input [0:3]d;
reg [0:3]temp=4'b0000;
output [0:3]s;
always @ (negedge clk )
begin
if (rst==1)
temp=4'h0;
else
temp[0:3]=(temp[0:3]+d[0:3]);
end
assign s[0:3]=temp[0:3];
endmodule

module testbench();
reg rst,clk;
reg [0:3]d;
wire [0:3]s;
acc test(d,clk,rst,s);
initial
begin
clk=1;
forever #5 clk=~clk;
end
initial
begin
d=4'b0101;rst=1;
#10 d=4'b0101;rst=0;
#10 d=4'b0100;rst=0;
#10 d=4'b0110;rst=0;
#10 $finish;
end
endmodule
