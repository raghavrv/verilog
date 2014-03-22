module decoder2(a, b, e, y);
input a;
input b;
input e;
output [3:0] y;
and a1(y[0],e,~a,~b);
and a2(y[1],e,~a,b);
and a3(y[2],e,a,~b);
and a4(y[3],e,a,b);
endmodule

module decoder3(a, b, c, y);
input a;
input b;
input c;
output [7:0] y;
decoder2 d1(b,c,~a,y[3:0]);
decoder2 d2(b,c,a,y[7:4]);
endmodule

module testbench();
reg a,b,c;
wire [7:0]y;
decoder3 a1(a,b,c,y);
initial
begin
a=0;b=0;c=0;
#10 a=0;b=0;c=1;
#10 a=0;b=1;c=0;
#10 a=0;b=1;c=1;
#10 a=1;b=0;c=0;
#10 a=1;b=0;c=1;
#10 a=1;b=1;c=0;
#10 a=1;b=1;c=1;
#10 $finish;
end
endmodule