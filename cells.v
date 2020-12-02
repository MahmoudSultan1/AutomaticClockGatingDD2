
`ifndef SKY130_FD_SC_HD__DLCLKP_BLACKBOX_V
`define SKY130_FD_SC_HD__DLCLKP_BLACKBOX_V

/**
 * dlclkp: Clock gate.
 *
 * Verilog stub definition (black box without power pins).
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

(* blackbox *)
module sky130_fd_sc_hd__dlclkp (
    GCLK,
    GATE,
    CLK
);

    output GCLK;
    input  GATE;
    input  CLK ;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

endmodule

`default_nettype wire
`endif  // SKY130_FD_SC_HD__DLCLKP_BLACKBOX_V

`ifndef SKY130_FD_SC_HD__DFXTP_1_V
`define SKY130_FD_SC_HD__DFXTP_1_V

/**
 * dfxtp: Delay flop, single output.
 *
 * Verilog wrapper for dfxtp with size of 1 units.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`include "sky130_fd_sc_hd__dfxtp.v"

`ifdef USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_hd__dfxtp_1 (
    Q   ,
    CLK ,
    D   ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    output Q   ;
    input  CLK ;
    input  D   ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;
    sky130_fd_sc_hd__dfxtp cell (
        .Q(Q),
        .CLK(CLK),
        .D(D),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

endmodule
`endcelldefine

/*********************************************************/
`else // If not USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_hd__dfxtp_1 (
    Q   ,
    CLK ,
    D   ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    output Q   ;
    input  CLK ;
    input  D   ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    sky130_fd_sc_hd__dfxtp cell2 (
        .Q(Q),
        .CLK(CLK),
        .D(D)
    );

endmodule
`endcelldefine

/*********************************************************/
`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_SC_HD__DFXTP_1_V


//--------EOF---------