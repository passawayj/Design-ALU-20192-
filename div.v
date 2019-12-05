module div(input [15:0] q, d, input cin, output reg [15:0] s, output reg cout);

	reg [15:0 ] r;
	reg [31:0] rq;
	reg [31:0] tempd;
	
	
	
always@(*)
begin
	tempd = {d, 16'b0000_0000_0000_0000};
	 r = 0;
	 rq = {r,q};
	 
repeat(16) begin	
	 rq = rq << 1;
	if(rq[31:16] >= d) begin 
		 rq = rq +1;
		 rq = rq-tempd;
	end
	
	s = rq[15:0];
end

		cout = 0;
end

endmodule
