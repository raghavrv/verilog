module as(y0,y1,y2,y3,a,b,e);
input a,b,e;
output y0,y1,y2,y3;
wire c,d;
not(c,a);
not(d,b);
and(y0,c,d,e);
and(y1,c,b,e);
and(y2,a,d,e);
and(y3,a,b,e);
endmodule

module testbench();
reg a,b,e;
wire y0,y1,y2,y3;
as aaa(y0,y1,y2,y3,a,b,e);
initial
begin
a=0;b=0;e=1;
#5 a=0;b=1;e=1;
#50 $finish;
end
endmodule

