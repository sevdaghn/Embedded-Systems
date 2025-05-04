
module Lab3_Part3 (
    input clk,
    input enable,
    input clear,
    output reg [7:0] Q
);

    always @(posedge clk or negedge clear) begin
        if (!clear)
            Q <= 8'd0;
        else if (enable) begin
            Q[0] <= ~Q[0];
            Q[1] <= Q[1] ^ Q[0];
            Q[2] <= Q[2] ^ (Q[1] & Q[0]);
            Q[3] <= Q[3] ^ (Q[2] & Q[1] & Q[0]);
            Q[4] <= Q[4] ^ (Q[3] & Q[2] & Q[1] & Q[0]);
            Q[5] <= Q[5] ^ (Q[4] & Q[3] & Q[2] & Q[1] & Q[0]);
            Q[6] <= Q[6] ^ (Q[5] & Q[4] & Q[3] & Q[2] & Q[1] & Q[0]);
            Q[7] <= Q[7] ^ (Q[6] & Q[5] & Q[4] & Q[3] & Q[2] & Q[1] & Q[0]);
        end
    end

endmodule
