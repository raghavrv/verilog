module dmux4(d, s, y);
input d;
input [1:0] s;
output [3:0] y;
assign y[0]=d&(~s[1])&(~s[0]);
assign y[1]=d&(~s[1])&(s[0]);
assign y[2]=d&(s[1])&(~s[0]);
assign y[3]=d&(s[1])&(s[0]);
endmodule
    
module testbench();
reg d;
reg [1:0]s;
wire [3:0]y;
dmux4 d1(d,s,y);
initial
begin
d=1;s=2'b00;
#10 d=1;s=2'b01;
#10 d=1;s=2'b10;
#10 d=1;s=2'b11;
#10 $finish;
end
endmodule