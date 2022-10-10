module Mux16to1(input [15:0] in, 
                input [3:0] sel,
                output out);

                wire [3:0]t;
                Mux4to1 M4(in[15:12], sel[1:0], t[3]);
                Mux4to1 M3(in[11:8], sel[1:0], t[2]);
                Mux4to1 M2(in[7:4], sel[1:0], t[1]);
                Mux4to1 M1(in[3:0], sel[1:0], t[0]);

                Mux4to1 M5(t[3:0], sel[3:2], out);
endmodule