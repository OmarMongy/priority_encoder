module priority_encoder_tb();
parameter N =4;
reg [N-1:0] w;
wire [$clog2(N) -1 :0] y;
wire z;

priority_encoder uut (
        .w(w),
        .y(y),
        .z(z)
);
 initial
 begin
 w = 4'b0000;
 #10
 w = 4'b0001;
 #10
 w = 4'b0010;
 #10
 w = 4'b0011;
 #10
 w = 4'b0100;
 #10
 w = 4'b0101;
 #10
 w = 4'b0110;
 #10
 w = 4'b0111;
 #10
 w = 4'b1000;
 #10
 w = 4'b1001;
 #10
 w = 4'b1010;
 #10
 w = 4'b1011;
 #10
 w = 4'b1100;
  #10
 w = 4'b1101;
 #10
 w = 4'b1110;
 #10
 w = 4'b1111;
 #20
 $stop;
 end
