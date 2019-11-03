module test(); //Bench test que prueba todas las combinaciones.
    reg I=1;
    reg S=1;
    wire P1,P2;
    PumpsControl ej1(I,S,P1,P2); 
    initial begin
                $display("Control de bombas.");
                #2$display("I=%d\tS=%d\tP1=%d\tP2=%d",I,S,P1,P2);
                #2S=0;
                #2I=1;
                #2$display("I=%d\tS=%d\tP1=%d\tP2=%d",I,S,P1,P2);
                #2S=1;
                #2$display("I=%d\tS=%d\tP1=%d\tP2=%d",I,S,P1,P2);
                #2S=0;
                #2$display("I=%d\tS=%d\tP1=%d\tP2=%d",I,S,P1,P2);
                #2I=0;                
                #2$display("I=%d\tS=%d\tP1=%d\tP2=%d",I,S,P1,P2);
    end


// always @(P1 or P2) begin
//      $display("I=%d\tS=%d\tP1=%d\tP2=%d",I,S,P1,P2);
// end
endmodule