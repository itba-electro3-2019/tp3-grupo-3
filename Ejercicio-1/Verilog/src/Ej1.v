
module PumpsControl(I,S,P1,P2);
input I;
input S;
wire y1;
wire y22;
wire y2;
output P1;
output P2;
wire Both;
wire Toggle;
wire selLine;
wire DM1;
wire DM2;
reg false=0;
reg true=1;
wire clk;
clock_gen Clockers(clk);
tff FFT(Toggle,false,true,selLine);

RisingEdge_DFlipFlop FFD1(I,clk,y1);
RisingEdge_DFlipFlop FFD2(S,clk,y2);
    nor(Both,y1,y2);

    not(y22,y2);
    and(Toggle,y22,y1);

demux DM(Toggle,selLine,DM1,DM2);
 or(P1,Both,DM1);
 or(P2,Both,DM2);   

// always @(clk) begin
//     $display("El Clockerz %d",clk);
// end
// always @(P1 or P2) begin
//     $display("P1 %d P2 %d",P1,P2);
// end
// always @(I or S) begin
//     $display("I %d S %d",I,S);
// end
// always @(y1 or y2) begin
//     $display("y1 %d y2 %d",y1,y2);
// end
// always @(y22) begin
//     $display("y1 %d y22 %d",y1,y22);
// end
// always @(Both or Toggle) begin
//     $display("Both %d Toggle %d",Both,Toggle);
// end
// always @(selLine) begin
//     $display("selLine %d ",selLine);
// end
endmodule

