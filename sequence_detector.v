module sequence_detector (
    input  wire clk,
    input  wire rst,
    input  wire din,
    output reg  detected
);

    parameter S0 = 3'b000, 
              S1 = 3'b001,
              S2 = 3'b010, 
              S3 = 3'b011, 
              S4 = 3'b100; 

    reg [2:0] state, next_state;

    
    always @(posedge clk or posedge rst)
    begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end

    
    always @(*)
    begin
        case(state)

            S0:
                if(din)
                    next_state = S1;
                else
                    next_state = S0;

            S1:
                if(din)
                    next_state = S1;
                else
                    next_state = S2;

            S2:
                if(din)
                    next_state = S3;
                else
                    next_state = S0;

            S3:
                if(din)
                    next_state = S4;
                else
                    next_state = S2;

            S4:
                if(din)
                    next_state = S1;
                else
                    next_state = S2;

            default:
                next_state = S0;

        endcase
    end


    always @(*)
    begin
        if(state == S4)
            detected = 1'b1;
        else
            detected = 1'b0;
    end

endmodule
