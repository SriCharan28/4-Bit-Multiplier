//2-Bit Multiplier

module multiplier(input logic [1:0] a,b,
output logic [3:0] prod);

logic l1,l2,l3;

mux2 m1(1'b0,b[1],a[1],l1);
mux2 m2(a[0],b[1],a[0],l2);
mux2 m3(b[0],a[0],b[0],prod[0]);
mux2 m4(l1,1'b0,prod[0],prod[2]);
mux2 m5(b[0],prod[2],l2,l3);
mux2 m6(prod[2],prod[0],l1,prod[3]);
mux2 m7(l2,l3,a[1],prod[1]);

endmodule