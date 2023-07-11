module subtractor_4bit(d, bo, a, b, bin);
  input [3:0] a,b;
  input bin;
  output [3:0] d;
  output bo;
  wire [2:0] bi;

  full_add sub1(d[0], bi[0], a[0], ~b[0], 1);
  full_add sub2(d[1], bi[1], a[1], ~b[1], bi[0]);
  full_add sub3(d[2], bi[2], a[2], ~b[2], bi[1]);
  full_add sub4(d[3], bo, a[3], ~b[3], bi[2]);
endmodule

module full_add(s, co, a, b, c);
  input a,b,c;
  output s,co;

  always@(*)
    begin
      s = a^b^c;
      co = (a&b)|(b&c)|(a&c);
    end
endmodule
