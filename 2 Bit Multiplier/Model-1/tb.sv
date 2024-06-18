//Self Checking Test Bench

module multiplier_tb();
reg [1:0] a,b;
wire [3:0] prod;

multiplier dut(.a(a),.b(b),.prod(prod));

initial begin

a=0;b=0;
#10
assert(prod===4'b0000) $display("Success : 00 * 00 = 0000 ");
else $error("00 * 00 Failed");

a=0;b=1;
#10
assert(prod===4'b0000) $display("Success : 00 * 01 = 0000 ");
else $error("00 * 01 Failed");

a=0;b=2;
#10
assert(prod===4'b0000) $display("Success : 00 * 10 = 0000 ");
else $error("00 * 10 Failed");

a=0;b=3;
#10
assert(prod===4'b0000) $display("Success : 00 * 11 = 0000 ");
else $error("00 * 11 Failed");

a=1;b=0;
#10
assert(prod===4'b0000) $display("Success : 01 * 00 = 0000 ");
else $error("01 * 00 Failed");

a=1;b=1;
#10
assert(prod===4'b0001) $display("Success : 01 * 01 = 0001 ");
else $error("01 * 01 Failed");

a=1;b=2;
#10
assert(prod===4'b0010) $display("Success : 01 * 10 = 0010 ");
else $error("01 * 10 Failed");

a=1;b=3;
#10
assert(prod===4'b0011)  $display("Success : 01 * 11 = 0011 ");
else $error("01 * 11 Failed");

a=2;b=0;
#10
assert(prod===4'b0000) $display("Success : 10 * 00 = 0000 ");
else $error("10 * 00 Failed");

a=2;b=1;
#10
assert(prod===4'b0010) $display("Success : 10 * 01 = 0010 ");
else $error("10 * 01 Failed");

a=2;b=2;
#10
assert(prod===4'b0100) $display("Success : 10 * 10 = 0100 ");
else $error("10 * 10 Failed");

a=2;b=3;
#10
assert(prod===4'b0110) $display("Success : 10 * 11 = 0110 ");
else $error("10 * 11 Failed");

a=3;b=0;
#10
assert(prod===4'b0000) $display("Success : 11 * 00 = 0000 ");
else $error("11 * 00 Failed");

a=3;b=1;
#10
assert(prod===4'b0011) $display("Success : 11 * 01 = 0011 ");
else $error("11 * 01 Failed");

a=3;b=2;
#10
assert(prod===4'b0110) $display("Success : 11 * 10 = 0110 ");
else $error("11 * 10 Failed");

a=3;b=3;
#10
assert(prod===4'b1001) $display("Success : 11 * 11 = 1001 ");
else $error("11 * 11 Failed");

#10 $finish;

end

endmodule