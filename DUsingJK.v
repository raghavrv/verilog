module dusingjk(d,q,clk,clr);
input d,clk,clr;
output q;
reg q;
jkff sa(d,~d,q,clk,clr);
endmodule

module testbench();
reg d;
reg clk;
reg clr;
wire q;
dusingjk sa(d,q,clk,clr);
always #1 clk=~clk;
initial 
begin
clk=0;
clr=1;
d=0;
#4 d=1; clr=0;
#4 d=0; 
#4 d=0;
#4 d=1;
#4 $finish;
end
endmodule