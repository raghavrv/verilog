module be3(d, y);
input [3:0] d;
output [3:0] y;
assign y[0]=~d[0];
assign y[1]=~(d[0]^d[1]);
assign y[2]=d[2]^((d[0])|(d[1]));
assign y[3]=d[3]|(d[2]&(d[1]|d[0]));
endmodule


module testbench();
reg [3:0]d;
wire [3:0]y;
be3 s1(d,y);
initial
begin
d=4'b0000;
#10 d=4'b0001;
#10 d=4'b0010;
#10 d=4'b0011;
#10 d=4'b0100;
#10 d=4'b0101;
#10 d=4'b0110;
#10 d=4'b0111;
#10 d=4'b1000;
#10 d=4'b1001;
#10 $finish;
end
endmodule