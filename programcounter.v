module programcounter(input [31:0] in,input clk,output [31:0] cnt,input reset);
reg [31:0] cnt;

always @(negedge clk,reset)
begin
	#6
	cnt[31:0] = in[31:0];
	if(reset==1'b1)
		cnt[31:0] = 32'b00000000000000000000000000000000;	
end

initial
	begin
		cnt[31:0] = 32'b00000000000000000000000000000000;
	end

endmodule
