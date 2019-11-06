module seq_detector(w,z);
input w;
output reg z;

wire clk;
clock_gen Clockers(clk);


wire y1;
wire Y1;

wire y2;
wire Y2;


 assign Y2 = ((~w & y2 & ~y1) | (w & ~y2 & y1));
 assign Y1 = ((w & ~y2 & ~y1) | (~w & y2 & ~y1) | (w & y2 & y1));
 RisingEdge_DFlipFlop FFD1(Y1,clk,y1);
 RisingEdge_DFlipFlop FFD2(Y2,clk,y2);

 always @clk begin
    z = (w & y1 & y2);
    end
endmodule

