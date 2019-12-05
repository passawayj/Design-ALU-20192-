module alu_tb();

reg [15:0] ina, inb;
reg [1:0] sel;

wire [15:0] out1882;
wire overflow;


alu a1(ina, inb, sel, out1882, overflow);


initial begin
	ina = 0; inb = 0; sel = 0;
end

always 
	#1 ina = $random;
always	
	#1 inb = $random;
	
always
	#1 sel = $random;

endmodule
