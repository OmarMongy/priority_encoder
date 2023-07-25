module priority_encoder 
#(parameter N = 4)
(
input [N-1:0] D,
output reg [$clog2(N) -1 :0] Y,
output V
);
integer k;
assign V = |D;

    always @(D)

begin
    Y = 'bx;
for(k = 0; k < N; k = k + 1)
    if (D[k])
   Y = k;
end

endmodule
