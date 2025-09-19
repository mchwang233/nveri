//SUBSYS CONNECT

`ifdef LPDDR_EN
    `include "lpddr_connect.svh"
`endif //LPDDR_EN

`ifdef ETH_EN
    `include "eth_connect.svh"
`endif //ETH_EN

`ifdef PCIE_EN
    `include "pcie_connect.svh"
`endif //PCIE_EN