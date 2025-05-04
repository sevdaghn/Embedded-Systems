
module Lab3_Part4 (
    input clk,
    input enable,
    input reset_n,
    output reg [15:0] Q
);

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n)
            Q <= 0;
        else if (enable)
            Q <= Q + 1;
    end

endmodule
