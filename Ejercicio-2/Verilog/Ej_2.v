module seq_detector(w,z);
input w;
output z;
wire z;
wire clk;
clock_gen Clockers(clk);


wire y1;
wire Y1;

wire y2;
wire Y2;

assign Y2=0;
assign Y1=0;
assign y2=0;
assign y1=0;

RisingEdge_DFlipFlop FFD1(Y1,clk,y1);
RisingEdge_DFlipFlop FFD2(Y2,clk,y2);
assign Y1 = (w & ~y2 & ~y1) | (~w & y2 & ~y1) | (w & y2 & y1);
assign Y2 = (~w & y2 & ~y1) | (w & ~y2 & y1);

assign z= (w & y1 & y2);

endmodule

