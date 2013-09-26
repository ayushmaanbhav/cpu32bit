module datamemory(output [31:0] data,input [15:0] addr,input [31:0] inputd,input write,input read,input clk);
reg [31:0] data;
reg [31:0] memdata [255:0];

always @(negedge clk)
	begin
		if(write == 1'b1)
			memdata[addr[7:0]]=inputd[31:0];
		if(read == 1'b1)
			data[31:0]=memdata[addr[7:0]];
	end
	
initial
	begin
		memdata[0]=32'b00000000000000000000000000000111;
		memdata[1]=32'b00000000000000000000000000001011;
		memdata[2]=32'b00000000000000000000000000000001;
		memdata[3]=32'b00000000000000000000000000001000;
		memdata[4]=32'b00000000000000000000000000000111;
	end
	
endmodule
