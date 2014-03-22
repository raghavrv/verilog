module shalfsub(a,b,bo,di);
input a,b;
output bo,di;
wire x;
assign x=~a;
assign bo=x&b;
assign di=a^b;
endmodule

module testbench();
reg a,b;
wire c,s;
shalfsub tst1(a,b,c,s);
initial
begin
a=0; b=0;
#5 a=0; b=1;
#5 a=1; b=0;
#5 a=1; b=1;
#5 $finish;
end
endmodule