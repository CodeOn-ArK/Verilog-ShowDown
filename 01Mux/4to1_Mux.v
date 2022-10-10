
module Mux4to1(input [3:0] in, 
                input [1:0] sel,
                output out);

                wire [1:0]r;
                Mux2to1 M2(in[3:2], sel[0], r[1]);
                Mux2to1 M1(in[1:0], sel[0], r[0]);

                Mux2to1 M3(r[1:0], sel[1], out);


endmodule