module mux(input [15:0]a, b, input cin, output[15:0] s, output cout);
	
	wire [15:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
	wire  c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15;
	wire [15:0] s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;
	
	mux_sp m1 (a, b[0], w1);
	mux_sp m2 (a, b[1], w2);
	mux_sp m3 (a, b[2], w3);
	mux_sp m4 (a, b[3], w4);
	mux_sp m5 (a, b[4], w5);
	mux_sp m6 (a, b[5], w6);
	mux_sp m7 (a, b[6], w7);
	mux_sp m8 (a, b[7], w8);
	mux_sp m9 (a, b[8], w9);
	mux_sp m10 (a, b[9], w10);
	mux_sp m11 (a, b[10], w11);
	mux_sp m12 (a, b[11], w12);
	mux_sp m13 (a, b[12], w13);
	mux_sp m14 (a, b[13], w14);
	mux_sp m15 (a, b[14], w15);
	mux_sp m16 (a, b[15], w16);

	/*
	 w2 = w2 << 1;
	 w3 = w3 << 2;
	 w4 = w4 << 3;
	 w5 = w5 << 4;
	w6 = w6 << 5;
	 w7 = w7 << 6;
	 w8 = w8 << 7;
	 w9 = w9 << 8;
	 w10 = w10 << 9;
	w11 = w11 << 10;
	 w12 = w12 << 11;
	 w13 = w13 << 12;
	 w14 = w14 << 13;
	 w15 = w15 << 14;
	 w16 = w16 << 15;*/
	
	/*assign w3 = w3 << 2;
	assign w4 = w4 << 3;
	assign w5 = w5 << 4;
	assign w6 = w6 << 5;
	assign w7 = w7 << 6;
	assign w8 = w8 << 7;
	assign w9 = w9 << 8;
	assign w10 = w10 << 9;
	assign w11 = w11 << 10;
	assign w12 = w12 << 11;
	assign w13 = w13 << 12;
	assign w14 = w14 << 13;
	assign w15 = w15 << 14;
	assign w16 = w16 << 15;

	add a1(w1, w2, cin, s1, c1);
	add a2(s1, w3, c1, s2, c2);
	add a3(s2, w4, c2, s3, c3);
	add a4(s3, w5, c3, s4, c4);
	add a5(s4, w6, c4, s5, c5);
	add a6(s5, w7, c5, s6, c6);
	add a7(s6, w8, c6, s7, c7);
	add a8(s7, w9, c7, s8, c8);
	add a9(s8, w10, c8, s9, c9);
	add a10(s9, w11, c9, s10, c10);
	add a11(s10, w12, c10, s11, c11);
	add a12(s11, w13, c11, s12, c12);
	add a13(s12, w14, c12, s13, c13);
	add a14(s13, w15, c13, s14, c14);
	add a15(s14, w16, c14, s, cout);*/
	
	add a1(w1, w2>>1, cin, s1, c1);
	add a2(s1, w3 >>2, 0, s2, c2);
	add a3(s2, w4>>3, 0, s3, c3);
	add a4(s3, w5>>4, 0, s4, c4);
	add a5(s4, w6>>5, 0, s5, c5);
	add a6(s5, w7>>6, 0, s6, c6);
	add a7(s6, w8>>7, 0, s7, c7);
	add a8(s7, w9>>8, 0, s8, c8);
	add a9(s8, w10>>9, 0, s9, c9);
	add a10(s9, w11>>10, 0, s10, c10);
	add a11(s10, w12>>11, 0, s11, c11);
	add a12(s11, w13>>12, 0, s12, c12);
	add a13(s12, w14>>13, 0, s13, c13);
	add a14(s13, w15>>14, 0, s14, c14);
	add a15(s14, w16>>15, 0, s, c15);

	or o1(cout,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15);

endmodule
