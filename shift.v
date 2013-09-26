module shift2(input [31:0] a,output [31:0] b);
	assign b[31:0] =  { a[29:0] , 2'b00 };
endmodule
