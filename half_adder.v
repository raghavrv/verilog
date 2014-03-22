module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;
                xor(sum,a,b);
                and(carry,a,b);
endmodule

module testbench();
reg a,b;
wire sum,carry;
halfadder  h1(a,b,sum,carry);
initial 
begin
a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#5 $finish;
end
endmodule