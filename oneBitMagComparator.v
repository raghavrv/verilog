module comp1(a, b, x, y, z);
input a;
input b;
output x;
output y;
output z;
assign y=(a<b)?1:0;
assign x=(a>b)?1:0;
assign z=(a==b)?1:0;
endmodule

module testbench();
rega,b;
wirex,y,z;
comp1ck(a,b,x,y,z);
always@(a or b);
initial
begin
a=1;b=1;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=0;b=0;
end
initial
begin
$monitor($time,"a=%b,b=%b,x=%b,y=%b,z=%b",a,b,x,y,z);
end
endmodule