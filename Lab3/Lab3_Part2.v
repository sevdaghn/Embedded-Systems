
module Lab3_Part2 (
    input [7:0] SW,
    input clk,
    input reset_n,
    input load_A,
    input load_B,
    output reg [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
    output carry_out
);

    reg [7:0] A, B;
    reg [8:0] S;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            A <= 8'd0;
            B <= 8'd0;
        end else begin
            if (load_A)
                A <= SW;
            if (load_B)
                B <= SW;
        end
    end

    always @(*) begin
        S = A + B;
    end

    assign carry_out = S[8];

    function [6:0] seg;
        input [3:0] val;
        begin
            case (val)
                4'h0: seg = 7'b1000000;
                4'h1: seg = 7'b1111001;
                4'h2: seg = 7'b0100100;
                4'h3: seg = 7'b0110000;
                4'h4: seg = 7'b0011001;
                4'h5: seg = 7'b0010010;
                4'h6: seg = 7'b0000010;
                4'h7: seg = 7'b1111000;
                4'h8: seg = 7'b0000000;
                4'h9: seg = 7'b0010000;
                4'hA: seg = 7'b0001000;
                4'hB: seg = 7'b0000011;
                4'hC: seg = 7'b1000110;
                4'hD: seg = 7'b0100001;
                4'hE: seg = 7'b0000110;
                4'hF: seg = 7'b0001110;
                default: seg = 7'b1111111;
            endcase
        end
    endfunction

    always @(*) begin
        HEX0 = seg(S[3:0]);
        HEX1 = seg(S[7:4]);
        HEX2 = seg(B[3:0]);
        HEX3 = seg(B[7:4]);
        HEX4 = seg(A[3:0]);
        HEX5 = seg(A[7:4]);
    end

endmodule
