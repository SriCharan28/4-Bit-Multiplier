//4 Bit Multiplier

module multiplier(a,b,prod);

input logic [3:0] a,b;
output logic [7:0] prod;
logic [3:0] carry1,carry2,carry3,sum1,sum2,sum3;

//Adder Stage-1
fa fa0(a[1]&b[0],a[0]&b[1],1'b0,sum1[0],carry1[0]);
fa fa1(a[2]&b[0],a[1]&b[1],carry1[0],sum1[1],carry1[1]);
fa fa2(a[3]&b[0],a[2]&b[1],carry1[1],sum1[2],carry1[2]);
fa fa3(1'b0,a[3]&b[1],carry1[2],sum1[3],carry1[3]);

//Adder Stage-2
fa fa4(sum1[1],a[0]&b[2],1'b0,sum2[0],carry2[0]);
fa fa5(sum1[2],a[1]&b[2],carry2[0],sum2[1],carry2[1]);
fa fa6(sum1[3],a[2]&b[2],carry2[1],sum2[2],carry2[2]);
fa fa7(carry1[3],a[3]&b[2],carry2[2],sum2[3],carry2[3]);

//Adder Stage-3
fa fa8(sum2[1],a[0]&b[3],1'b0,sum3[0],carry3[0]);
fa fa9(sum2[2],a[1]&b[3],carry3[0],sum3[1],carry3[1]);
fa fa10(sum2[3],a[2]&b[3],carry3[1],sum3[2],carry3[2]);
fa fa11(carry2[3],a[3]&b[3],carry3[2],sum3[3],carry3[3]);

//Multiplied 8 Bit Output
assign prod[0]=a[0]&b[0];
assign prod[1]=sum1[0];
assign prod[2]=sum2[0];
assign prod[3]=sum3[0];
assign prod[4]=sum3[1];
assign prod[5]=sum3[2];
assign prod[6]=sum3[3];
assign prod[7]=carry3[3];

endmodule