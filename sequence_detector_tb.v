module sequence_detector_tb;
  reg din, clk, rst;
  wire y;
  sequence_detector_tb uut(.din(din),.clk(clk),.rst(rst));

  initial begin
    rst = 0;
    din = 0;
    clk = 0;
    
    #5 din=1;
    #5 din=1;
    #5 din=1;
    #10 din=0;
    #10 din=1;
    #10 din=0;
    #10 din=1;
    #10 din=0;
    #5 din=1;
  end
  always #5 clk = ~clk;
  initial $monitor("time = %g,clk = %b,y = %b, rst = %b, din = %b",$time, clk, y, rst, din);
  initial #100 $finish;
endmodule
