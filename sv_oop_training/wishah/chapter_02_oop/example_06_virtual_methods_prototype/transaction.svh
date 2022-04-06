/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                         //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    28-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    transaction.sv                                                                      //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - transaction class                                                                             //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class transaction;
	bit [31:0] src, dst, csm, data[8]; 

	virtual function void copy(transaction rhs_h);
		src  = rhs_h.src;
		dst  = rhs_h.dst;
		data = rhs_h.data;
		csm  = rhs_h.csm;
	endfunction

	virtual function transaction clone();
		clone = new();
		clone.copy(this);
	endfunction
	
endclass	