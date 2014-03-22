module sevenseg(d, y);
 input [3:0] d;
output [6:0] y;
reg [6:0]y;
    always@(d)
    begin
    case(d)
    4'b0000 : y=7'b1111110;
    4'b0001 : y=7'b0110000;
    4'b0010 : y=7'b1101101;
    4'b0011 : y=7'b1111001;
    4'b0100 : y=7'b0110011;
    4'b0101 : y=7'b1011011;
    4'b0110 : y=7'b1011111;
    4'b0111 : y=7'b1110000;
    4'b1000 : y=7'b1111111;
    4'b1001 : y=7'b1110011;
    endcase
    end
endmodule

module testbench();
reg [3:0]d;
wire [6:0]y;
sevenseg s1(d,y);
initial
begin
d=4'b0000;
#10 d=4'b0001;
#10 d=4'b0010;
#10 d=4'b0011;
#10 d=4'b0100;
#10 d=4'b0101;
#10 d=4'b0110;
#10 d=4'b0111;
              #10 d=4'b1000;
#10 d=4'b1001;
#10 $finish;
end
endmodule