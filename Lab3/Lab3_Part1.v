
module Lab3_Part1 (
    input wire clk,
    input wire d,
    output reg qLatch,
    output reg qPos,
    output reg qNeg
);

always @ (clk or d)
begin
    if (clk)
        qLatch = d;
end

always @ (posedge clk)
begin
    qPos <= d;
end

always @ (negedge clk)
begin
    qNeg <= d;
end

endmodule
