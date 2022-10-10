module Mux2to1(input [1:0] in,
                input sel,
                output out);

//                assign out = in[sel];
                wire [2:0]t;
                not (t[0], sel);
                and (t[1], t[0], in[0]);
                and (t[2], sel, in[1]);
                or (out, t[1], t[2]);
endmodule