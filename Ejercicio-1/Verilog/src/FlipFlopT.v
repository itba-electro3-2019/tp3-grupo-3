module tff (   input clk,
              input rstn,
              input t,
            output reg q);
  initial begin
    q=0;
  end
  always @ (posedge clk) begin
    if (q==0) 
      q <= 1;
    else
          q <= 0;
  end


//   always @(clk or q) begin
//      $display("clk=%d, q = %d",clk,q);
// end
endmodule
