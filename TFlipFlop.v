module tt(t,clk,clr,q);
input t,clk,clr;
output q;
reg q;
always@(posedge clk or posedge clr)
begin
if(clr==1)
q=0;
else
begin
case(t)
0: q=q;
1: q=~q;
endcase
end
end
endmodule

module testbench();
reg t;
reg clk;
reg clr;
wire q;
tt sa(t,clk,clr,q);
always #1 clk=~clk;
initial 
begin
clk=1;
clr=1;
t=0;
#4 t=1; clr=0;
#4 t=0; 
#4 t=0;
#4 t=1;
#4 $finish;
end
endmodule
