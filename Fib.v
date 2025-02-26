module Fib #(parameter N = 10) (
    input clk,
    input reset,
    output reg [31:0] fib_out
);

    reg [31:0] a, b;
    integer i;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            a <= 0;
            b <= 1;
            fib_out <= 0;
            i <= 0;
        end else if (i < N) begin
            fib_out <= a;
            a <= b;
            b <= a + b;
            i <= i + 1;
        end
    end
endmodule
