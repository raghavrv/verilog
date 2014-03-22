module sfullsub(a,b,c,bo,di);
input a,b,c;
output di,bo;
wire w1,w2,w3;
shalfsub aa(a,b,w1,w2);
shalfsub bb(w2,c,w3,di);
or(bo,w1,w3);
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