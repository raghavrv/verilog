module xor_gate(a,b,y);
input a,b;
output y;
assign y=a^b;
endmodule

module testbench();
reg a,b;
wire y;
xor_gate sa(a,b,y);
initial
begin
a=0; b=0;
#5 a=0; b=1;
#5 a=1; b=0;
#5 a=1; b=1;
#5 $finish;
end
endmodule