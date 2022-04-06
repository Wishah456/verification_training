/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    28-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    test.sv                                                                             //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - test module                                                                                   //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module test();
  import pkg::*;
  
    Transaction tr_h;
    BadTr b_h;
    BaseTest c_h;
    BadTest d_h;
    initial begin
      tr_h  = new();
      tr_h.calcCsm();
      tr_h.print();
      b_h = new();
      b_h.calcCsm();
      b_h.print();
      b_h.badCsm = 1;
      b_h.calcCsm();
      b_h.print();
      $display(b_h.badCsm);
      c_h = new();
      c_h.run();
      d_h = new();
      d_h.run();
  
    end
    
  endmodule