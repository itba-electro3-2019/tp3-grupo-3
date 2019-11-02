module demux(
     Data_in,
     sel,
    Data_out_0,
    Data_out_1
    );

//list the inputs and their sizes
    input Data_in;
    input  sel;
//list the outputs and their sizes 
    output Data_out_0;
     output Data_out_1;

//Internal variables
    reg Data_out_0;
     reg Data_out_1;


//always block with Data_in and sel in its sensitivity list
    always @(Data_in or sel)
    begin
        case (sel)  //case statement with "sel"
        //multiple statements can be written inside each case.
        //you just have to use 'begin' and 'end' keywords as shown below.
            2'b0 : begin
                        Data_out_0 = Data_in;
                        Data_out_1 = 0;

                      end
            2'b1 : begin
                        Data_out_0 = 0;
                        Data_out_1 = Data_in;

                      end

        endcase
    end
    
endmodule