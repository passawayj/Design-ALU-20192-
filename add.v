module add(input [15:0] a, b, input cin, output [15:0] s, output cout);
	
	wire c1, c2, c3;
	
	bit4fulladder b1 (a[3:0], b[3:0], cin, s[3:0], c1);
	bit4fulladder b2 (a[7:4], b[7:4], c1, s[7:4], c2);
	bit4fulladder b3 (a[11:8], b[11:8], c2, s[11:8], c3);
	bit4fulladder b4 (a[15:12], b[15:12], c3, s[15:12], cout);
	
	


endmodule
