module mux2(s, d0, d1, y);
input s;
input d0;
input d1;
output y;
wire a1;
wire a2;
and aa(a1,~s,d0);
and bb(a2,s,d1);
or cc(y,a1,a2);
endmodule

module mux4(s, d, y);
input [1:0] s;
input [3:0] d;
output y;
reg y;
always@(s or d)
begin
case(s)
    2'b00 : y=d[0];
    2'b01 : y=d[1];
    2'b10 : y=d[2];
    2'b10 : y=d[3];
    endcase
end
endmodule

module mux84(s, d, y);
input [2:0] s;
input [7:0] d;
output y;
wire y1,y2;
mux4 aa(s[1:0],d[3:0],y1);
mux4 bb(s[1:0],d[7:4],y2);
mux2 cc(s[2],y1,y2,y);
endmodule
