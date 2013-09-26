module alunit(output [31:0] sum,input [31:0] a,input [31:0] b,input cin,output zero);
reg zero;
assign sum[31:0] = a + b + cin;
always @ ( sum )
begin
	if(sum[31:0] == 0)
		zero = 1'b1;
	else
		zero = 1'b0;
end
endmodule 