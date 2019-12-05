module alu(input [15:0] ina, inb, input[1:0] sel, output reg [15:0] out1882, output reg overflow);
	wire [15:0] o1, o2, o3, o4;
	wire c1, c2, c3, c4;
	
	add a1(ina, inb, 0, o1, c1);
	sub s1 (ina, inb, 1, o2, c2);
	mux m1 (ina, inb, 0, o3, c3);
	div d1 (ina, inb, 0, o4, c4);
	
	always@(*) begin
		if(sel == 2'b00) begin
			out1882 = o1;overflow = c1;
		end
		else if(sel == 2'b01) begin
			out1882 = o2;overflow = c2;
		end
		else if(sel == 2'b10) begin
			out1882 = o3;overflow = c3;
		end
		else
		begin
			out1882 = o4;overflow = c4;
		end
		
	end
	
	
endmodule
