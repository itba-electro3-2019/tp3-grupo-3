`timescale 100us / 100us

module test;

  // My signal definitions
  
  
  wire z=0;
  reg w=0; 
  seq_detector Ej_2(w,z);
    initial begin
                //  $display("secuencia a entrar");
                //  #2$display("w=%d\tz=%d\t",w,z);
                //  #2w=1;
              
                //  #2$display("w=%d\tz=%d\t",w,z);
                //  #2w=1;
                //  #2$display("w=%d\tz=%d\t",w,z);
                //  #2w=0;
                //  #2$display("w=%d\tz=%d\t",w,z);
                //  #2w=1;                
                //  #2$display("w=%d\tz=%d\t",w,z);
                //  #2w=1;
                //  #2$display("w=%d\tz=%d\t",w,z);
                  
           w=1;
           #2
           w = 0;
           #2
           w = 1; 
           #2
           w = 1;
           #2
           w = 0;
           #2
           w = 1;
           #2
           w = 0;
           #2
           w = 1;
           #2
           w = 0;
           #4;
           w=1;
           #2
           w=1;
           #2
           w=0;
           #2
           w=1;
           #2
           w=0;
           #10
           $finish;
      end
 



	


  // Additional documentation on $dumpfile and $dumpvars: http://referencedesigner.com/tutorials/verilog/verilog_62.php
  // Setup to allow us to pass an output path for $dumpfile
    reg dummy;
    reg[8*64:0] dumpfile_path = "output.vcd";

    initial begin
      dummy = $value$plusargs("VCD_PATH=%s", dumpfile_path);
      $dumpfile(dumpfile_path);
      $dumpvars(0,test);
    end

endmodule // End of Module hello_world
