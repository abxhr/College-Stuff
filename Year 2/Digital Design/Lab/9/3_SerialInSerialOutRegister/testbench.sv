// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module tb;
  reg Sin,clk;
  wire Sout;
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1,tb);
      clk = 1'b0;
      repeat (300) # 5 clk = ~clk;
    end
  always begin
    #00 Sin = 1;
    #50 Sin = 0;
    #50 Sin = 1;
    #50 Sin = 0;
    #50 Sin = 0;
    #50 $stop;
end
  serialInSerialOut M1 (Sin,clk, Sout);
endmodule