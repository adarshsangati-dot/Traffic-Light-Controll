module trafficLight(input logic clk,reset,a,b,output logic [1:0] La,Lb);
typedef enum logic [1:0] {s0,s1,s2,s3} statetype;
statetype state,next_state;

parameter green=2'b00;
parameter yellow=2'b01;
parameter red=2'b10;


always_ff@(posedge clk,posedge reset)
begin
    if(reset) state<=s0;
    else state<=next_state;
end

always_comb
case(state)
    s0:if(a) next_state=s0;
        else next_state=s1;
    s1:next_state=s2;
    s2:if(b) next_state=s2;
        else next_state=s3;
    s3:next_state=s0;
    default:next_state=s0;
endcase

always_comb
    case(state)
        s0: {La,Lb}={green,red};
        s1: {La,Lb}={yellow,red};
        s2: {La,Lb}={red,green};
        s3: {La,Lb}={red,yellow};
        default {La,Lb}={red,red};
    endcase

endmodule
