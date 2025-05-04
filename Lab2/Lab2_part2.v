
module Lab2_part2 (
    input [1:0] U,
    input [1:0] V,
    input [1:0] W,
    input [1:0] X,
    input [1:0] S,
    output reg [1:0] M
);

always @(*) begin
    case (S)
        2'b00: M = U;
        2'b01: M = V;
        2'b10: M = W;
        2'b11: M = X;
        default: M = 2'b00;
    endcase
end

endmodule
