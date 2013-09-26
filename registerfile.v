module registerfile(input RegWrite,output [31:0] data1,output [31:0] data2,input [4:0] reg1,input [4:0] reg2,input [4:0] wreg,input [31:0] wdata,input clk);
reg [31:0] memdata [31:0];
reg [31:0] data1;
reg [31:0] data2;

initial 
	begin
		memdata[13] = 32'b00000000000000000000000000000000;
	end

always @(negedge clk)
	begin
		if(RegWrite==1'b1)
			memdata[wreg] = wdata[31:0];
		data1[31:0] = memdata[reg1];
		data2[31:0] = memdata[reg2];
	end
endmodule
