/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    28-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    BadTest.sv                                                                          //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - BadTest class extension of BaseTest class                                                     //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class BadTest extends BaseTest;
  BadTr badBlue_h;
  
  function new();
    super.new();
    badBlue_h = new();
    badBlue_h.badCsm = 1;
    gen_h.blueprint_h = badBlue_h;
  endfunction
  
  endclass
