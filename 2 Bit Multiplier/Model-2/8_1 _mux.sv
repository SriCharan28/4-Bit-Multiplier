//8:1 Multiplexer

module mux8(input logic d0,d1,d2,d3,d4,d5,d6,d7,
input logic s2,s1,s0,
output logic y);

//Using Ternary operator
assign y=(s2?((s1?(s0?d7:d6):(s0?d5:d4))):((s1?(s0?d3:d2):(s0?d1:d0))));
endmodule
