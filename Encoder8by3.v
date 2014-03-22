module qwdc(i,o);
input[7:0]i;
output[2:0]o;
or(o[0],i[1],i[3],i[5],i[7]);
or(o[1],i[2],i[3],i[6],i[7]);
or(o[2],i[4],i[6],i[5],i[7]);
endmodule
module testbench();
reg [7:0]i;
wire [2:0]o;
qwdc aa(i,o);
initial
begin
i=8'b00000001;
#5 i=8'b00000010;
#5 i=8'b10000000;
end
initial
begin
$monitor($time,"i=%b,o=%b",i,o);
end
endmodule
