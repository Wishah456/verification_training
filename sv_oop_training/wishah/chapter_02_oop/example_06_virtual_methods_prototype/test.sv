module test();
  import pkg::*;
  
  transaction t_h;
  badtr b_h, c_h;
  
  initial begin
    b_h = new();
    t_h = b_h.clone();
    $cast(c_h, t_h);
    $cast(c_h, b_h.clone());
    if ( ! $cast (c_h, b_h.clone()))
    $fatal (1, "cast failed in %m");
  end
endmodule