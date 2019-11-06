module reader_13 (Clock, Resetn, w, z);
    input Clock, Resetn, w;
    output reg z;
    reg [2:1] y, Y;
    parameter [2:1] A = 2'b00, B = 2'b01, C = 2'b10, D=2'b11;
// Define the next state combinational circuit
    always @(w or y)
        case (y)
            A: if(w) 
            begin
                z=0;
                Y<=B;
            end
            else    
                begin
                    Y<=A;
                end
        
            B: if(w)
            begin
                z=0;
                Y<=C;
            end
            else
                begin
                    Y<=A;
                end

            C: if(w)   
            begin
                z=0;
                Y<=A;
            end
            else
                begin
                    z=0;
                    Y<=D;
                end
            D: if (w)
            begin
                z=1;
                Y<=B;
            end
            else
                begin
                    z=0;
                    Y<=A;
                end
            default:
                begin
                    z=0;
                    Y<= 2'b00;
                    end
        endcase //All cases included, there is no need for a default case


// Define the sequential block
    always @(negedge Resetn or posedge Clock)
        if (Resetn == 0)  y <= A;   
        else y <= Y;
        // Define output
        //assign z = (y == C);
endmodule