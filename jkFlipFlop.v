module jkff(j,k,q,clk,clr);
input j,k;
input clk;
input clr;
output q;
reg q;
always@(posedge clk or posedge clr)
begin
if(clr==1)
q=0;
else
begin
case({j,k})
0: q=q;
1: q=0;
2: q=1;
3: q=~q;
endcase
end
end
endmodule
module testbench();
reg j,k;
reg clk;
reg clr;
wire q;
jkff sa(j,k,q,clk,clr);
always #1 clk=~clk;
initial 
begin
clk=1;
clr=1;
j=0; k=0;
#4 j=1; k=0; clr=0;
#4 j=0; k=0;
#4 j=1; k=1;
#4 j=0; k=1;
#4 $finish;
end
endmodule