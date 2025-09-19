`ifndef CHIP_BASE_TEST_SV
`define CHIP_BASE_TEST_SV

class chip_base_test extends uvm_test;

    `uvm_component_utils(chip_base_test)
    
    chip_environment env;

    `ifdef LPDDR_EN
        lpddr_environment lpddr_env;
    `endif //LPDDR_EN

    `ifdef ETH_EN
        eth_environment eth_env;
    `endif //ETH_EN

    `ifdef PCIE_EN
        pcie_environment pcie_env;
    `endif //PCIE_EN

    extern function new(string name = "chip_base_test", uvm_component parent = null);
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);
    extern virtual task reset_phase(uvm_phase phase);
    extern virtual task configure_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual function void report_phase(uvm_phase phase);
    extern virtual function void final_phase(uvm_phase phase);

endclass

function chip_base_test::new(string name, uvm_component parent);
    super.new(name, parent);
endfunction

function void chip_base_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    env = chip_environment::type_id::create("env", this);
    
    `ifdef LPDDR_EN
        lpddr_env = lpddr_environment::type_id::create("lpddr_env", this);
    `endif //LPDDR_EN

    `ifdef ETH_EN
        eth_env = eth_environment::type_id::create("eth_env", this);
    `endif //ETH_EN

    `ifdef PCIE_EN
        pcie_env = pcie_environment::type_id::create("pcie_env", this);
    `endif //PCIE_EN

endfunction

function void chip_base_test::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
endfunction

task chip_base_test::reset_phase(uvm_phase phase);
    super.reset_phase(phase);
endtask

task chip_base_test::configure_phase(uvm_phase phase);
    super.configure_phase(phase);
endtask

task chip_base_test::main_phase(uvm_phase phase);
    super.main_phase(phase);
endtask

`endif

