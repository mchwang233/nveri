`ifndef CHIP_ENVIRONMENT_SV
`define CHIP_ENVIRONMENT_SV

class chip_environment extends uvm_env;

    `uvm_component_utils(chip_environment)  

    extern function new(string name = "chip_environment", uvm_component parent = null);

endclass

function chip_environment::new(string name = "chip_environment", uvm_component parent = null);
    super.new(name, parent);
endfunction


`endif