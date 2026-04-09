module top(d,o);
input[4:1]d;
wire[2:0] x;
wire[3:1]s;
wire[7:1]out,y;
output[7:1]o;
encoding g1(d,out);
noise g2(out,x,y);
syn g3(y,s);
decoder g4(y,s,o);
endmodule