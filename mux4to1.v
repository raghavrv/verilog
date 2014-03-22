module mux4to1(d,s,y);
input [3:0]d;
input [1:0]s;
output y;
assign y=(s[1]?(s[0]?d[3]:d[2]):(s[0]?d[1]:d[0]));
endmodule

module testbench();
reg [1:0]s; 
reg [3:0]d;
wire y;
mux4to1 bb(d,s,y);
initial 
begin
s=2'b00; d=4'b0001;
#5 s=2'b01;d=4'b0010;
#5 s=2'b10;d=4'b0100;
#5 s=2'b11;d=4'b1000;
#50 $finish;
end
endmodule