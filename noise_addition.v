module noise(a,x,y);
input[7:1]a;
output reg[2:0] x;
output reg[7:1]y;
integer seed;
always@(a)
begin
seed=$time;
x= ($random(seed)%7+7)%7+1;
y=a;
 y[x]=~y[x];
end
endmodule