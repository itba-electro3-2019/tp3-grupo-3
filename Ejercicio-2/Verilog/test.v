`timescale 100us / 100us

module test;

  // My signal definitions
  
  
  wire  z;
  reg w; 
  seq_detector Ej_2(w,z);
  initial begin

    #1
    w=1;
    #1
    w = 1;
  	#1
    w = 1;
    #1
    w = 0;
    #1
    w = 1; 
    #1
    w = 1;
    #1
    w = 0;
    #1
    w = 1;
    #1
    w = 0;
    #1
    w = 1;
    #1
    w = 0;
    #10;
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
