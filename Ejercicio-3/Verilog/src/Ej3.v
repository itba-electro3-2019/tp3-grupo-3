
module fsm(w, z);
input w;
wire y1;
wire y2;
wire noty2;
wire Y1;
wire Y2;
output z;
wire aux1;
wire aux2;
wire aux3;
reg false=0;
reg true=1;
wire clk;
clock_gen Clockers(clk);
RisingEdge_DFlipFlop FF1(Y1,clk,y1);
RisingEdge_DFlipFlop FF2(Y2,clk,y2);
    not(noty2,y2);
    and(z,y1,noty2);

    nor(aux1, y2, y1);
    and(Y1, w, aux1);

    nor(aux2, y1, y2);
    not(aux3, aux2);
    and(Y2, aux3, w);

 always @(clk) begin
     $display("El Clockerz %d",clk);
 end
 always @(z) begin
     $display("z %d",z);
 end
 always @(w) begin
     $display("w %d",w);
 end
 always @(y1 or y2) begin
     $display("y1 %d y2 %d",y1,y2);
 end
 always @(noty2) begin
     $display("noty22 %d",noty2);
 end
 always @(Y1 or Y2) begin
     $display("Y1 %d Y2 %d",Y1,Y2);
 end

endmodule

