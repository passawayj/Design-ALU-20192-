module bit1fulladder(input a, b, cin, output s, cout );
	wire w1,w2, w3; 
	
	xor x1(w1, a, b);
	xor x2(s, w1, cin);
	and a1(w2, cin, w1);
	and a2(w3, a, b);
	or o1(cout, w2, w3);
	
	

endmodule
