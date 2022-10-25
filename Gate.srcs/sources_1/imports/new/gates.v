`timescale 1ns / 1ps

module gates(
    input i_switch_0, i_switch_1,

    output o_and, o_nand, o_or, o_nor, o_xor, o_not
);

    assign o_and  = i_switch_0 & i_switch_1;
    assign o_nand = ~(i_switch_0 & i_switch_1);
    assign o_or   = i_switch_0 | i_switch_1;
    assign o_nor  = ~(i_switch_0 | i_switch_1);
    assign o_xor  = i_switch_0 ^ i_switch_1;
    assign o_not  = ~i_switch_0;

endmodule