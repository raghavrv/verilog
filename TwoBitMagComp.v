module comp2(a0, a1, b0, b1, x, y, z);
input a0;
input a1;
input b0;
input b1;
output x;
output y;
output z;
wire [2:0]m;  
wire [2:0]n;
comp1jk(a0,b0,m[2],m[1],m[0]);
comp1jkq(a1,b1,n[2],n[1],n[0]);
 assign x=((m[2]==1)|((m[0]==1)&(n[2]==1)))?1:0;
 assign y=((m[1]==1)|((m[0]==1)&(n[1]==1)))?1:0;
assign z=((m[0]==1)&(n[0]==1))?1:0;
endmodule

module testbench();
reg a0,a1,b0,b1;
wirex,y,z;
comp2dd(a0,a1,b0,b1,x,y,z);
always@(a0 or a1 or b0 or b1);
initial
begin
 a0=1;a1=1;b0=1;b1=1;
 #5 a0=0;a1=1;b0=1;b1=0;
 #5 a0=1;a1=0;b0=0;b1=1;
 #50 $finish;
end
endmodule
