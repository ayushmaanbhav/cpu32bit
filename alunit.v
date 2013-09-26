module alucontroler(input [5:0] imemout,output sub,output select5,output select6,input AluOp);
reg sub;
reg select5;
reg select6;

always @ (AluOp or imemout)
begin
	if(AluOp == 1'b1)
	begin
		if(imemout == 6'b100000)
		begin
			sub = 1'b0;
			select5 = 1'b0;
			select6 = 1'b1;
		end
		else
		if(imemout == 6'b100100)
		begin
			sub = 1'b0;
			select5 = 1'b0;
			select6 = 1'b0;
		end
		else
		if(imemout == 6'b100101)
		begin
			sub = 1'b0;
			select5 = 1'b1;
			select6 = 1'b0;
		end
		else
		if(imemout == 6'b100010)
		begin
			sub = 1'b1;
			select5 = 1'b0;
			select6 = 1'b1;
		end
		else
		begin
			sub = 1'b0;
			select5 = 1'b0;
			select6 = 1'b1;
		end
	end
	else
	if(AluOp == 1'b0)
	begin
		sub = 1'b0;
		select5 = 1'b0;
		select6 = 1'b1;
	end
end
endmodule
