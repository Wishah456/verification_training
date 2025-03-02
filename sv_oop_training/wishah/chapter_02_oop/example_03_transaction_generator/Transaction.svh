class Transaction;
	bit [31:0] src, dst, csm, data[8]; // Properties
	
	function void calcCsm();
		csm = src ^ dst ^data.xor();
	endfunction

	function void print();
		$display("Tr: src=%h, dst=%h, csm=%h, data=%p", src, dst, csm, data);
	endfunction

	function void copy(Transaction rhs_h);
		src  = rhs_h.src;
		dst  = rhs_h.dst;
		data = rhs_h.data;
		csm  = rhs_h.csm;
	endfunction

	function Transaction clone();
		clone = new();
		clone.copy(this);
	endfunction
	
endclass