
//4:1 Multiplexer

module mux4(input logic d0,d1,d2,d3,s0,s1,output logic y);

logic y1,y2;

mux2 m0(d0,d1,s0,y1);
mux2 m1(d2,d3,s0,y2);
mux2 m2(y1,y2,s1,y);

endmodule


/*

module mux4(input logic d0,d1,d2,d3,s0,s1,output logic y);

assign y=(s1?(s0?d3:d2):(s0?d1:d0));
endmodule

*/

/*

always_comb
begin
case({s0,s1})
2'b00:y=d0;
2'b01:y=d1;
2'b10:y=d2;
2'b11:y=d3;
endcase
end

endmodule

*/