`timescale 1ns/1ps

module chip_top;


     //DUT 实例化
     chip dut (
       .port1(...),
       .port2(...)
        );

    `include "chip_vars.sv"
    `include "chip_clock_reset.sv"
    `include "chip_self_logic.sv"
    `inlucde "chip_connect.sv"

    initial begin
        $runtest;
    end

endmodule