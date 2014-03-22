modulefa(a,b,cin,s,cout);
    inputa,b,cin;
    outputs,cout;
    assign s=a?(b?(cin?1:0):(cin?0:1)):(b?(cin?0:1):(cin?1:0));
    assign cout=a?(b?1:(cin?1:0)):(b?(cin?1:0):0);
endmodule

module rca4(x, y, cin, s, cout);
input [3:0] x;
input [3:0] y;
inputcin;
output [3:0] s;
outputcout;
wire c0,c1,c2;
fa fa1(x[0],y[0],cin,s[0],c0);
fa fa2(x[1],y[1],c0,s[1],c1);
fa fa3(x[2],y[2],c1,s[2],c2);
fa fa4(x[3],y[3],c2,s[3],cout);
endmodule
module rca8(x, y, cin, s, cout);
input [7:0] x;
input [7:0] y;
inputcin;
output [7:0] s;
outputcout;
wire cout1;
rca4 a1(x[3:0],y[3:0],cin,s[3:0],cout1);
rca4 a2(x[7:4],y[7:4],cout1,s[7:4],cout);
endmodule

module testbench();
reg [7:0]x;
reg [7:0]y;
regcin;
wire [7:0]s;
wirecout;
rca8rca(x,y,cin,s,cout);
initial
begin
x=8'b01111010;y=8'b10011010;cin=0;
#10 $finish;
end
endmodule