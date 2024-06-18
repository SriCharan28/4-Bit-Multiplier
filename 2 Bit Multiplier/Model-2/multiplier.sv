//2-Bit Multiplier

module multiplier(input logic [1:0] a,b,
output logic [3:0] prod);

mux8 m0(0,0,0,0,0,0,0,b[0],a[1],a[0],b[1],prod[3]);
mux8 m1(0,0,0,0,0,1,0,~b[0],a[1],a[0],b[1],prod[2]);
mux8 m2(0,0,0,1,b[0],b[0],b[0],~b[0],a[1],a[0],b[1],prod[1]);
mux8 m3(0,0,b[0],b[0],0,0,b[0],b[0],a[1],a[0],b[1],prod[0]);

endmodule