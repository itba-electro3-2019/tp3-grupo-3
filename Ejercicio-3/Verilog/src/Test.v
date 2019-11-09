`timescale 100us / 100us
module test(); //Bench test que prueba todas las combinaciones.
    reg w=0;
    wire z;
    fsm ej1(w, z);
    initial begin
                $display("FSM. Prueba en orden todas las transiciones:");
                $display("00 -> w=0 -> 00 - z=0");
                $display("00 -> w=1 -> 01 - z=1");
                $display("01 -> w=0 -> 00 - z=0");
                $display("00 -> w=1 -> 01 - z=1");
                $display("01 -> w=1 -> 10 - z=0");
                $display("10 -> w=1 -> 10 - z=0");
                $display("10 -> w=0 -> 00 - z=0");
                $display("Comienza simulacion:");
                #1$display("w=%d\tz=%d",w,z);
                #1w=0;
                #1$display("w=%d\tz=%d",w,z);
                #1w=1;
                #1$display("w=%d\tz=%d",w,z);
                #1w=0;
                #1$display("w=%d\tz=%d",w,z);
                #1w=1;
                #1$display("w=%d\tz=%d",w,z);
                #1w=1;
                #1$display("w=%d\tz=%d",w,z);
                #1w=1;
                #1$display("w=%d\tz=%d",w,z);
                #1w=1;
                #1$display("w=%d\tz=%d",w,z);
                #1w=1;
                #1$display("w=%d\tz=%d",w,z);
                #1w=0;
                #1$display("w=%d\tz=%d",w,z);
                #1w=0;
                #1$display("w=%d\tz=%d",w,z);
    end


 always @(z) begin
      $display("w=%d\tz=%d",w,z);
 end
endmodule
