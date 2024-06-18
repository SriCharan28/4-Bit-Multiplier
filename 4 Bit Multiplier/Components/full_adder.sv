//Full Adder

module fa(a,b,c,sum,carry);

input logic a,b,c;
output logic sum,carry;

mux4 m0(c,~c,~c,c,a,b,sum);           //Sum
mux4 m1(1'b0,c,c,1'b1,a,b,carry);    //Carry

endmodule