module mux_sp(input [15:0]a, input b, output[15:0] s);
	
	and a1(s[0], a[0], b);
	and a2(s[1], a[1], b);
	and a3(s[2], a[2], b);
	and a4(s[3], a[3], b);
	and a5(s[4], a[4], b);
	and a6(s[5], a[5], b);
	and a7(s[6], a[6], b);
	and a8(s[7], a[7], b);
	and a9(s[8], a[8], b);
	and a10(s[9], a[9], b);
	and a11(s[10], a[10], b);
	and a12(s[11], a[11], b);
	and a13(s[12], a[12], b);
	and a14(s[13], a[13], b);
	and a15(s[14], a[14], b);
	and a16(s[15], a[15], b);
	
endmodule

