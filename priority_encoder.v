module priority_encoder(o,i);
  input [7:0]i;
  output reg[2:0]o;

  always@(*)
    casex(i)
      8'b00000001: o = 3'b000;
      8'b0000001x: o = 3'b001;
      8'b000001xx: o = 3'b010;
      8'b00001xxx: o = 3'b011;
      8'b0001xxxx: o = 3'b100;
      8'b001xxxxx: o = 3'b101;
      8'b01xxxxxx: o = 3'b110;
      8'b1xxxxxxx: o = 3'b111;
      default: o = 3'bxxx;
    endcase
endmodule
      
