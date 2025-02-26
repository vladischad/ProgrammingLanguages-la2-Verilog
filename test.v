`timescale 1ns / 1ps

module test;

    reg clk;
    reg reset;
    wire [31:0] fib_out;

    Fib #(10) uut (
        .clk(clk),
        .reset(reset),
        .fib_out(fib_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Generate clock
    end

    initial begin
        $monitor("Time: %0d, Fibonacci: %d", $time, fib_out);
        reset = 1;
        #10;
        reset = 0;
        #100;
        $finish;
    end
endmodule
