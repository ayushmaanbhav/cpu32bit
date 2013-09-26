module mux32bit (input [31:0] a,input [31:0] b,output [31:0] y,input sel); 
reg [31:0] y;

always @(b or a or sel)
begin 
	case ( sel )
		0 : y = a;
		1 : y = b;
	endcase
end	
endmodule
