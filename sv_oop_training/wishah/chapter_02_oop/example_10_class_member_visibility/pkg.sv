/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    28-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    pkg.sv                                                                              //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - package file                                                                                  //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

package pkg;
  typedef class animal;
  typedef class cat;

  `include "animal.svh"
  `include "cat.svh"
endpackage