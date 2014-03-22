module tusingjk(t,q,clk,clr);
input t,clk,clr;
output q;
jkff(t,t,q,clk,clr);
endmodule

module testbench();
reg t;
reg clk;
reg clr;
wire q;
tusingjk sa(t,q,clk,clr);
always #1 clk=~clk;
initial 
begin
clk=0;
clr=1;
t=0;
#4 t=1; clr=0;
#4 t=0; 
#4 t=0;
#4 t=1;
#4 $finish;
end
endmodule