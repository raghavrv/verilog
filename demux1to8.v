module dmux8(s, d, y);
input [2:0] s;
 input d;
output [7:0] y;
reg [7:0]y;
always@(s or d)
     if (s==3'd0)
     begin
         y=8'h00;
         y[0]=d;
     end
     else if (s==3'd1)
     begin
        y=8'h00;
        y[1]=d;
     end
     else if (s==3'd2)
     begin
        y=8'h00;
        y[2]=d;
     end
     else if (s==3'd3)
     begin
         y=8'h00;
         y[3]=d;
     end
     else if (s==3'd4)
     begin
         y=8'h00;
         y[4]=d;
     end
     else if (s==3'd5)
     begin
         y=8'h00;
         y[5]=d;
     end
     else if (s==3'd6)
     begin
         y=8'h00;
         y[6]=d;
     end
     else if (s==3'd7)
     begin
         y=8'h00;
         y[7]=d;
     end
endmodule

module testbench();
reg d;
reg [2:0]s;
wire [7:0]y;
dmux8 d1(s,d,y);
initial
begin
d=1;s=3'd0;
#10 d=1;s=3'd1;
#10 d=1;s=3'd2;
#10 d=1;s=3'd3;
#10 d=1;s=3'd4;
#10 d=1;s=3'd5;
#10 d=1;s=3'd6;
#10 d=1;s=3'd7;
#10 $finish;
end
endmodule
