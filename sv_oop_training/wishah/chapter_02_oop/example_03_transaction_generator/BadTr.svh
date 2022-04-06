class BadTr extends Transaction;
  bit badCsm; 
 
  function void calcCsm();
    super.calcCsm();       
    if(badCsm) csm = ~csm; 
  endfunction
  
  function void print();
    $write("BadTr: badCsm=%b ", badCsm);
    super.print();
  endfunction

	function void copy(Transaction rhs_h);
    BadTr b_h;
    if($cast(b_h, rhs_h)) $fatal(1,"error");
    super.copy(rhs_h);
    badCsm = b_h.badCsm;
  endfunction

  function Transaction clone();
    BadTr b_h;
    b_h = new();
    clone = b_h;
    clone.copy(this);
  endfunction

endclass