`timescale 1ns / 1ps

// /* Test Bench
// simulation을 위헤 module gates 외부에 하나의 module을 더 만드는 것
// 따라서 물리적인 입출력핀 따로 정할게 없음
// 그냥 내부의 변수를 정해서 값만 확인하는 것임
// */

module tb_gates();

    reg i_switch_0, i_switch_1;

    wire o_and, o_nand, o_or, o_nor, o_xor, o_not;      //output은 보통 wire로 선언 함.

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
        #00 i_switch_0 = 1'b0; i_switch_1 = 1'b0;         //#(time 의미, 00ns)
        #10 i_switch_0 = 1'b0; i_switch_1 = 1'b1;         //10ns after, 일종의 delay
        #10 i_switch_0 = 1'b1; i_switch_1 = 1'b0;
        #10 i_switch_0 = 1'b1; i_switch_1 = 1'b1;
        #10 $finish;
    end

endmodule
