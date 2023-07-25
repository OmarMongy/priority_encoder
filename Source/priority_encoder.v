module priority_encoder 
#(parameter N = 4)
(
input [N-1:0] w,
output reg [$clog2(N) -1 :0] y,
output z
);
integer k;
assign z = |w;

always @(w)

begin
    y = 'bx;
for(k = 0; k < N; k = k + 1)
   if (w[k])
   y = k;
end

endmodule
