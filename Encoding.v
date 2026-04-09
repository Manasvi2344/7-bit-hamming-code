module encoding(d,out);
input[4:1]d;
wire [3:1]p;
output[7:1]out;
assign p[1]=d[1]^d[2]^d[4];
assign p[2]=d[1]^d[3]^d[4];
assign p[3]=d[2]^d[3]^d[4];
assign out={d[4:2],p[3],d[1],p[2:1]};
endmodule