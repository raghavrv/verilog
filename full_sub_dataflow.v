module sfullsub(a,b,c,bo,di);
input a,b,c;
output di,bo;
assign di=a^b^c;
assign bo=(~a&b)|(~a&c)|(b&c);
endmodule

module testbench();
reg a,b,c;
wire bo,di;
sfullsub sa(a,b,c,bo,di);
always #1 c=~c;
always #2 b=~b;
always #4 a=~a;
initial
begin
a=0; b=0; c=0;
#8 $finish;
end
endmodule