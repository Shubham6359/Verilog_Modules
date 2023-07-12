module demux1to8(out, in, sel);
  input in;
  input [2:0] sel;
  output [7:0] out;
  wire [6:1] k;

  demux1to2 d1(k[2:1],sel[2],in);
  demux1to2 d2(k[4:3],sel[1],k[1]);
  demux1to2 d2(k[6:5],sel[1],k[2]);
  demux1to2 d2(o[1:0],sel[0],k[3]);
  demux1to2 d2(o[3:2],sel[0],k[4]);
  demux1to2 d2(o[5:4],sel[0],k[5]);
  demux1to2 d2(o[7:6],sel[0],k[6]);
endmodule

module demux1to2(o,s,i);
  output [1:0]o;
  input i,s;
  assign o[0] = ~s&i;
  assign o[1] = s&i;
endmodule
