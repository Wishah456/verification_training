/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    28-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    stack.sv                                                                            //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - stack module                                                                                  //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module stackk();
  class stack #(parameter type T = int);
    local T items[64];
    local int idx = 1;
    function void push(input T val);
    endfunction
    function T pop();
    endfunction
  endclass

  stack inst_stack_h;
  stack #(bit[15:0]) bit16_stack_h;
  stack #(real) real_stack_h;
endmodule