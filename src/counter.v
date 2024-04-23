module counter(clk,reset,q);
input clk,reset;
output reg q;
always@(posedge clk)
begin
if(reset)
q<=0;
else
q<=q+1;
end
endmodule
