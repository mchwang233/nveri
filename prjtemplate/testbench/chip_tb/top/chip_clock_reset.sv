    // Clock generation: 10ns period (100MHz)
    initial clk = 0;
    always #5 clk = ~clk;

    // Reset generation: active low, deassert after 100ns
    initial begin
        rst_n = 0;
        #100;
        rst_n = 1;
    end