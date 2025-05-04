
module Lab2_Part4 (
    input [3:0] V,
    output reg [6:0] HEX0,
    output reg [6:0] HEX1
);

wire z;
wire [3:0] A;
wire [3:0] digit0;

assign z = (V > 4'd9);
assign A = V - 4'd10;
assign digit0 = (z == 1'b0) ? V : A;

always @(*) begin
    case (z)
        1'b0: HEX1 = 7'b1000000;
        1'b1: HEX1 = 7'b1111001;
    endcase
end

always @(*) begin
    case (digit0)
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
