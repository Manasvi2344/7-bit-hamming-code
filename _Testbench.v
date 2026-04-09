module test;
reg[4:1]d;
wire[7:1]o;
top dut(.d(d),.o(o));
initial
begin
    $monitor($time,"d=%b,encoded=%b,corrupted=%b,error_bit=%b,decoded=%b",d,dut.out,dut.y,dut.s,o);
    #2 d=1101;
end
endmodule