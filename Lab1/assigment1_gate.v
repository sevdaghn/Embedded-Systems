
module assigment1_gate (
    input a,
    input b,
    input cin,
    output s,
    output cout
);

    wire axorb;
    wire ab;
    wire axorb_and_cin;

    xor (axorb, a, b);                 
    xor (s, axorb, cin);                

    and (ab, a, b);                    
    and (axorb_and_cin, axorb, cin);    
    or  (cout, ab, axorb_and_cin);     

endmodule
