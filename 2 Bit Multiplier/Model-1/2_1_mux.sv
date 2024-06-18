//2:1 Multiplexer

module mux2(input logic d0,d1,s0,output logic y);

assign y=s0?d1:d0;

endmodule
