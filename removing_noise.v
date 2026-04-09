module decoder(a,s,o);
input[7:1]a;
input[3:1]s;
output reg[7:1]o;
always@(*)
begin
    o=a;
    if(s!=3'b000)
 o[s]=~o[s];
end
endmodule