module test();

	reg [15:0] ina, inb;
	reg [1:0] sel;
	wire [15:0] out1882 ; 
	wire overflow;
	integer i ;
	
	alu a1(ina, inb, sel, out1882, overflow);
	
	initial begin
		ina = 0; inb = 0; sel = 2'b11;
		for(i=0;i<40;i=i+1)
			#10 sel = sel + 1;
	end
	
	always
		#10 ina = $random;
	always	
		#10 inb = $random;
	
	always begin
		#10 $display(" add %d th : input1 = %b, input2 = %b, correct output = %b", i/4, ina,inb,ina+inb);
		#10 $display("sub %d th : input1 = %b, input2 = %b, correct output = %b", i/4, ina,inb,ina-inb);
		#10 $display("mul %d th : input1 = %b, input2 = %b, correct output = %b", i/4,ina,inb,ina*inb);
		#10 $display("div %d th : input1 = %b, input2 = %b, correct output = %b", i/4,ina,inb,ina/inb);
	end
	
	always begin
		#11 $display(" my output = %b", out1882);
		#11 $display(" my output = %b", out1882);
		#11 $display(" my output = %b", out1882);
		#11 $display(" my output = %b", out1882);
	end
	
endmodule