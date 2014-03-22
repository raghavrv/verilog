module gb(y, x);
input [3:0] y;
input [3:0] x;
assign x[0]=y[3]^y[2]^y[1]^y[0];
assign x[1]=y[3]^y[2]^y[1];
assign x[2]=y[3]^y[2];
assign x[3]=y[3];
endmodule

module testbench();
reg [3:0]y;
wire [3:0]x;
gb b1(y,x);
initial
begin
y=4'd0;
#10 y=4'd1;
#10 y=4'd3;
#10 y=4'd2;
#10 y=4'd6;
#10 y=4'd7;
#10 y=4'd5;
#10 y=4'd4;
#10 y=4'd12;
#10 y=4'd13;
#10 y=4'd15;
#10 y=4'd14;
#10 y=4'd10;
#10 y=4'd11;
#10 y=4'd9;
#10 y=4'd8;
#10 $finish;
end
endmodule