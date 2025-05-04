
module Lab2_part3 (
    input [3:0] V,
    output reg [6:0] HEX0
);

always @(*) begin
    case (V)
        4'd0: HEX0 = 7'b1000000;
        4'd1: HEX0 = 7'b1111001;
        4'd2: HEX0 = 7'b0100100;
        4'd3: HEX0 = 7'b0110000;
        4'd4: HEX0 = 7'b0011001;
        4'd5: HEX0 = 7'b0010010;
        4'd6: HEX0 = 7'b0000010;
        4'd7: HEX0 = 7'b1111000;
        4'd8: HEX0 = 7'b0000000;
        4'd9: HEX0 = 7'b0010000;
        default: HEX0 = 7'b1111111;
    endcase
end

endmodule
