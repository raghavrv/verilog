module mux8to1(d,s,y);
input [2:0]s;
input [7:0]d;
output y;
reg y;
always @(s or d)
begin
case(s)
3'b000: y=d[0];
3'b001: y=d[1];
3'b010: y=d[2];
3'b011: y=d[3];
3'b100: y=d[4];
3'b101: y=d[5];
3'b110: y=d[6];
3'b111: y=d[7];
endcase
end
endmodule

module testbench();
reg [2:0]s;
reg [7:0]d;
wire y;
mux82 cc(d,s,y);
initial 
begin
d=8'b00000001; s=3'b000;
#5 d=8'b00000010; s=3'b001;
#5 d=8'b00000100; s=3'b010;
#5 d=8'b00001000; s=3'b011;
#5 d=8'b00010000; s=3'b100;
#5 d=8'b00100000; s=3'b101;
#5 d=8'b01000000; s=3'b110;
#5 d=8'b10000000; s=3'b111;
#50 $finish;
end 
endmodule