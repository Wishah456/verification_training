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
  typedef class Transaction;
  typedef class BadTr;
  typedef class Generator;
  typedef class BaseTest;
  typedef class BadTest;
  
  
  `include "Transaction.svh"
  `include "BadTr.svh"
  `include "Generator.svh"
  `include "BaseTest.svh"
  `include "BadTest.svh"
endpackage
