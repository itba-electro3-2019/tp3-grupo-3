module RisingEdge_DFlipFlop(D,clk,Q);
input D; // Data input 
input clk; // clock input 
output reg Q; // output Q 
initial begin
    Q=0;
end
always @(posedge clk) 
begin
 Q <= D; 
end 
endmodule 