/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    28-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    BadTr.sv                                                                            //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - BadTr class extension of Transaction class                                                    //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class BadTr extends Transaction;
  bit badCsm; // Corrupt the CSM 
  // override existing Methods
 
  virtual function void calcCsm();
    super.calcCsm();       // Compute checksum
    if(badCsm) csm = ~csm; // Corrupt if bad
  endfunction
  
  virtual function void print();
    $write("BadTr: badCsm=%b ", badCsm);
    super.print();
  endfunction

	virtual function void copy(Transaction rhs_h);
    BadTr b_h;
    if(!$cast(b_h, rhs_h)) 
    $fatal("cast error");
    super.copy(rhs_h);
    badCsm = b_h.badCsm;
  endfunction


  virtual function Transaction clone();
    BadTr b_h;
    b_h = new();
    clone = b_h;
    clone.copy(this);
  endfunction

endclass