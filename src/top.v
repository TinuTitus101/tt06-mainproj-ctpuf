module top(clk,T,reset,fnlout);
input clk,T,reset;
output fnlout;
wire o,p,c1,c3,c4,c5,c8,c12,c13,c16,c21,c24,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,c61,c62,c63,c64,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,y61,y62,c2,c6,c7,c9,c10,c11,c14,c15,c17,c18,c19,c20,c22,c23,c25,c26,Q,S,Rar,ctr1,ctr2,comp;
assign o=T;
assign p=T;
assign c2 = c1 & c3;
assign c6 = c4 | c5;
assign c7 = c8 & c12;
assign c9 = c16 | c21;
assign c10 = c24 & c27;
assign c11 = c31 | c35;
assign c14 = c39 & c42;
assign c15 = c43 | c47;
assign c17 = c45 & c46;
assign c18 = c49 | c51;
assign c19 = c53 & c54;
assign c20 = c57 | c59;
assign c22 = c60 & c63;
assign c23 = c64 | c13;
assign c25 = c29 & c33;
assign c26 = c36 | c38;
assign comp=(ctr1^ctr2);
assign fnlout=(comp^Rar);
reg [47:0]C;
always@(posedge clk or posedge reset)
begin
if(reset)
begin
C <= 48'b0;
end
else
begin
C <= {fnlout,C[47:1]};
end
end
assign c1=C[47];
assign c3=C[46];
assign c4=C[45];
assign c5=C[44];
assign c8=C[43];
assign c12=C[42];
assign c13=C[41];
assign c16=C[40];
assign c21=C[39];
assign c24=C[38];

assign c27=C[37];
assign c28=C[36];
assign c29=C[35];
assign c30=C[34];
assign c31=C[33];
assign c32=C[32];
assign c33=C[31];
assign c34=C[30];
assign c35=C[29];
assign c36=C[28];

assign c37=C[27];
assign c38=C[26];
assign c39=C[25];
assign c40=C[24];
assign c41=C[23];
assign c42=C[22];
assign c43=C[21];
assign c44=C[20];
assign c45=C[19];
assign c46=C[18];

assign c47=C[17];
assign c48=C[16];
assign c49=C[15];
assign c50=C[14];
assign c51=C[13];
assign c52=C[12];
assign c53=C[11];
assign c54=C[10];
assign c55=C[9];
assign c56=C[8];

assign c57=C[7];
assign c58=C[6];
assign c59=C[5];
assign c60=C[4];
assign c61=C[3];
assign c62=C[2];
assign c63=C[1];
assign c64=C[0];
ctpuf u1(o,p,c1,c2,y1,y2);
ctpuf u2(y1,y2,c3,c4,y3,y4);
ctpuf u3(y3,y4,c5,c6,y5,y6);
ctpuf u4(y5,y6,c7,c8,y7,y8);
ctpuf u5(y7,y8,c9,c10,y9,y10);
ctpuf u6(y9,y10,c11,c12,y11,y12);
ctpuf u7(y11,y12,c13,c14,y13,y14);
ctpuf u8(y13,y14,c15,c16,y15,y16);
ctpuf u9(y15,y16,c17,c18,y17,y18);
ctpuf u10(y17,y18,c19,c20,y19,y20);
ctpuf u11(y19,y20,c21,c22,y21,y22);
ctpuf u12(y21,y22,c23,c24,y23,y24);
ctpuf u13(y23,y24,c25,c26,y25,y26);
ctpuf u14(y25,y26,c27,c28,y27,y28);
ctpuf u15(y27,y28,c29,c30,y29,y30);
ctpuf u16(y29,y30,c31,c32,y31,y32);
ctpuf u17(y31,y32,c33,c34,y33,y34);
ctpuf u18(y33,y34,c35,c36,y35,y36);
ctpuf u19(y35,y36,c37,c38,y37,y38);
ctpuf u20(y37,y38,c39,c40,y39,y40);
ctpuf u21(y39,y40,c41,c42,y41,y42);
ctpuf u22(y41,y42,c43,c44,y43,y44);
ctpuf u23(y43,y44,c45,c46,y45,y46);
ctpuf u24(y45,y46,c47,c48,y47,y48);
ctpuf u25(y47,y48,c49,c50,y49,y50);
ctpuf u26(y49,y50,c51,c52,y51,y52);
ctpuf u27(y51,y52,c53,c54,y53,y54);
ctpuf u28(y53,y54,c55,c56,y55,y56);
ctpuf u29(y55,y56,c57,c58,y57,y58);
ctpuf u30(y57,y58,c59,c60,y59,y60);
ctpuf u31(y59,y60,c61,c62,y61,y62);
ctpuf u32(y61,y62,c63,c64,Q,S);
dflop d1(Q,clk,reset,Rar);
//counter cr1(Q,reset,ctr1);
//counter cr2(S,reset,ctr2);
endmodule
