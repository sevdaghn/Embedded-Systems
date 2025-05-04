
module assigment1_4_bit (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire c1, c2, c3;

    my_adder_1_bit u0 (a[0], b[0], cin,     sum[0], c1);
    my_adder_1_bit u1 (a[1], b[1], c1,      sum[1], c2);
    my_adder_1_bit u2 (a[2], b[2], c2,      sum[2], c3);
    my_adder_1_bit u3 (a[3], b[3], c3,      sum[3], cout);

endmodule
