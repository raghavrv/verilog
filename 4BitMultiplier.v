module mul(x, y, z);
    input [3:0]x,y;
    output [7:0]z;
    reg [3:0]b;
    reg [1:0]a;
    integer i=0;
    reg e=0;
    reg [7:0]z=8'b00000000;
    always @ (x or y)
    begin
    for (i=0;i<=3;i=i+1)
        begin
        a={x[i],e};
        if (a==2'b01)
            begin
            z[7:4]=z[7:4]+y;
        end
        else if (a==2'b10)
            begin
            b=-y;
            z[7:4]=z[7:4]+b;
        end
        z=z>>1;
        z[7]=z[6];
        e=x[i];
        end
end
endmodule

module testbench();
reg [3:0]x,y;
wire [7:0]z;
mul aa(x, y, z);
initial
begin
x=4'b0011;y=4'b0101;
end
endmodule   
