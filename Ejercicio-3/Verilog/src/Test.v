module test(); //Bench test que prueba todas las combinaciones.
    reg w=0;
    wire z;
    FSM ej1(w, z);
    initial begin
                $display("FSM.");
                #2$display("w=%d\tz=%d",w,z);
                #2w=0;
                #2$display("w=%d\tz=%d",w,z);
                #2w=1;
                #2$display("w=%d\tz=%d",w,z);
                #2w=0;
                #2$display("w=%d\tz=%d",w,z);
                #2w=1;
                #2$display("w=%d\tz=%d",w,z);
                #2w=1;
                #2$display("w=%d\tz=%d",w,z);
                #2w=1;
                #2$display("w=%d\tz=%d",w,z);
                #2w=0;
                #2$display("w=%d\tz=%d",w,z);
                #2w=0;
                #2$display("w=%d\tz=%d",w,z);
    end


 always @(z) begin
      $display("w=%d\tz=%d",w,z);
 end
endmodule
