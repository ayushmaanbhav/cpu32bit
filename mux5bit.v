module mux5bit (input [4:0] a,input [4:0] b,output [4:0] y,input sel); 
reg [4:0] y;

always @(b or a or sel)
begin
	case ( sel )
		0 : y = a;
		1 : y = b;
	endcase
end 
endmodule
