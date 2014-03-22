module dd(d,clk,clr,q);
input d,clk,clr;
output q;
reg q;
always@(posedge clk or posedge clr)
begin
if(clr==1)
q=0;
else
q=d;
end
endmodule

module testbench();
reg d;
reg clk;
reg clr;
wire q;
dd sa(d,clk,clr,q);
always #1 clk=~clk;
initial 
begin
clk=1;
clr=1;
d=0;
#4 d=1; clr=0;
#4 d=0; 
#4 d=0;
#4 d=1;
#4 $finish;
end
endmodule