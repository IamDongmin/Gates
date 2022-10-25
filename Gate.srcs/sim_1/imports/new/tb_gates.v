`timescale 1ns / 1ps

// /* Test Bench
// simulation�� ���� module gates �ܺο� �ϳ��� module�� �� ����� ��
// ���� �������� ������� ���� ���Ұ� ����
// �׳� ������ ������ ���ؼ� ���� Ȯ���ϴ� ����
// */

module tb_gates();

    reg i_switch_0, i_switch_1;

    wire o_and, o_nand, o_or, o_nor, o_xor, o_not;      //output�� ���� wire�� ���� ��.

    gates dut(
        .i_switch_0(i_switch_0),
        .i_switch_1(i_switch_1),
        .o_and(o_and),
        .o_nand(o_nand),
        .o_or(o_or),
        .o_nor(o_nor),
        .o_xor(o_nor),
        .o_not(o_not)
        ); 

    initial begin
        #00 i_switch_0 = 1'b0; i_switch_1 = 1'b0;         //#(time �ǹ�, 00ns)
        #10 i_switch_0 = 1'b0; i_switch_1 = 1'b1;         //10ns after, ������ delay
        #10 i_switch_0 = 1'b1; i_switch_1 = 1'b0;
        #10 i_switch_0 = 1'b1; i_switch_1 = 1'b1;
        #10 $finish;
    end

endmodule
