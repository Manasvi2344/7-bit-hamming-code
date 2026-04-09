module syn(y,s);
input[7:1]y;
output[3:1]s;
assign s[1]=y[1]^y[3]^y[5]^y[7];
assign s[2]=y[2]^y[3]^y[6]^y[7];
assign s[3]=y[4]^y[5]^y[6]^y[7];
endmodule

