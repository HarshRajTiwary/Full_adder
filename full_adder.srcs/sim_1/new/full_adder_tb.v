`timescale 1ns / 1ps

module tb_adder_16bit;

    // Inputs
    reg a, b, c_in;

    // Outputs
    wire s, c_out;

    // Instantiate the Unit Under Test (UUT)
    adder_16bit uut (
        .a(a), 
        .b(b), 
        .c_in(c_in), 
        .s(s), 
        .c_out(c_out)
    );

    initial begin
        // Apply inputs
        $monitor("At time %t, a = %b, b = %b, c_in = %b : s = %b, c_out = %b", $time, a, b, c_in, s, c_out);

        // Test case 1: 0 + 0 + 0
        a = 0; b = 0; c_in = 0;
        #10; 
        
        // Test case 2: 0 + 0 + 1
        a = 0; b = 0; c_in = 1;
        #10; 
        
        // Test case 3: 0 + 1 + 0
        a = 0; b = 1; c_in = 0;
        #10; 
        
        // Test case 4: 0 + 1 + 1
        a = 0; b = 1; c_in = 1;
        #10; 
        
        // Test case 5: 1 + 0 + 0
        a = 1; b = 0; c_in = 0;
        #10; 
        
        // Test case 6: 1 + 0 + 1
        a = 1; b = 0; c_in = 1;
        #10; 
        
        // Test case 7: 1 + 1 + 0
        a = 1; b = 1; c_in = 0;
        #10; 
        
        // Test case 8: 1 + 1 + 1
        a = 1; b = 1; c_in = 1;
        #10; 
        
        $finish;
    end
endmodule
