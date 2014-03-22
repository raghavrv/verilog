module pencoder(d, y, v);
input [3:0] d;
output [1:0] y;
output v;
assign v=d[0]|d[1]|d[2]|d[3];
assign y[0]=d[3]|(d[1]&~d[2]);
assign y[1]=d[2]|d[3];
endmodule

module testbench();
reg [3:0]d;
wire [1:0]y;
wire v;
pencoder p1(d,y,v);
initial
begin
d=4'd0;
#10 d=4'd1;
#10 d=4'd2;
#10 d=4'd3;
#10 d=4'd4;
#10 d=4'd5;
#10 d=4'd6;
#10 d=4'd7;
#10 d=4'd8;
#10 d=4'd9;
#10 d=4'd10;
#10 d=4'd11;
#10 d=4'd12;
#10 d=4'd13;
#10 d=4'd14;
#10 d=4'd15;
#10 $finish;
end
endmodule
