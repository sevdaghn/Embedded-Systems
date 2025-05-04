
module Lab3_Part3_4bit (
    input clk,
    input enable,
    input clear,
    output reg [3:0] Q
);

    always @(posedge clk or negedge clear) begin
        if (!clear)
            Q <= 4'd0;
        else if (enable) begin
            Q[0] <= ~Q[0];
            Q[1] <= Q[1] ^ Q[0];
            Q[2] <= Q[2] ^ (Q[1] & Q[0]);
            Q[3] <= Q[3] ^ (Q[2] & Q[1] & Q[0]);
        end
    end

endmodule
