//Dataflow Modelling
module bg(b, g);
    input [3:0]b;
    output [3:0]g;
    assign g[3]=b[3];
    assign g[2]=b[3]^b[2];
    assign g[1]=b[1]^b[2];
    assign g[0]=b[0]^b[1];
    endmodule
     
module testbench();
     reg [3:0]b;
     wire [3:0]g;
    bg b1(b,g);
initial
begin
b=4'd 0;
#5 b=4'd 1;
#5 b=4'd 2;
#5 b=4'd 3;
#5 b=4'd 4;
#5 b=4'd 5;
#5 b=4'd 6;
#5 b=4'd 7;
#5 b=4'd 8;
#5 b=4'd 9;
#5 b=4'd 10;
#5 b=4'd 11;
#5 b=4'd 12;
#5 b=4'd 13;
#5 b=4'd 14;
#5 b=4'd 15;
#5 $finish;
end
 endmodule 
