module and32bit(output [31:0] out,input [31:0] inp1,input [31:0] inp2);
	assign out = inp1 & inp2;
endmodule

module or32bit(output [31:0] out,input [31:0] inp1,input [31:0] inp2);
	assign out = inp1 | inp2;
endmodule

module xor32bit(output [31:0] out,input [31:0] inp1,input inp2);
	assign out = inp1 ^ {32{inp2}};
endmodule
