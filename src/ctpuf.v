module ctpuf(o,p,c1,c2,y1,y2);
input o,p,c1,c2;
output y1,y2;
wire in1,in2,m1o,m2o;
assign in1 = ~o;
assign in2 = ~p;
assign m1o = c1?o:in1;
assign m2o = c1?p:in2;
assign y1 = c2?m2o:m1o;
assign y2 = c2?m2o:m1o;
endmodule
