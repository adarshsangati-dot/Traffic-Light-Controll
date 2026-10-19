`timescale 1ns/1ps
module trafficLight_tb;
    logic clk, reset, a, b;
    logic [1:0] La, Lb;

    parameter GREEN  = 2'b00;
    parameter YELLOW = 2'b01;
    parameter RED    = 2'b10;

    trafficLight dut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .La(La),
        .Lb(Lb)
    );

    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        a = 0;
        b = 0;
        #12 reset = 0;
        a = 1;
        #10;
        a = 0;
        #10;
        #10;
        b = 1;
        #10;
        b = 0;
        #10;
        #10;
        #2 reset = 1;
        #2 reset = 0;
        #10;
        $finish;
    end

    
    initial begin
        $monitor("Time=%0t reset=%b a=%b b=%b La=%b Lb=%b",
                 $time, reset, a, b, La, Lb);
    end

endmodule
