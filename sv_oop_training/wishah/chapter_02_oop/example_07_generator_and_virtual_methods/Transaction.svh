/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    28-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Transaction.sv                                                                      //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - Transaction class                                                                             //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class Transaction;
	bit [31:0] src, dst, csm, data[8]; // Properties
	
	virtual function void calcCsm();
		csm = src ^ dst ^data.xor();
	endfunction

	virtual function void print();
		$display("Tr: src=%h, dst=%h, csm=%h, data=%p", src, dst, csm, data);
	endfunction

	virtual function void copy(Transaction rhs_h);
		src  = rhs_h.src;
		dst  = rhs_h.dst;
		data = rhs_h.data;
		csm  = rhs_h.csm;
	endfunction

	virtual function Transaction clone();
		clone = new();
		clone.copy(this);
	endfunction
	
endclass