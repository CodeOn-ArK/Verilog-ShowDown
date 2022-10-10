   /*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
   *                                                                                       *
   | Copyright (C) 2022 CodeOn-ArK@github                                                  |
   *                                                                                       *
   | This program is free software: you can redistribute it and/or modify                  |
   * it under the terms of the GNU General Public License as published by                  *
   | the Free Software Foundation, either version 3 of the License, or                     |
   * (at your option) any later version.                                                   *
   |                                                                                       |
   * This program is distributed in the hope that it will be useful,                       *
   | but WITHOUT ANY WARRANTY; without even the implied warranty of                        |
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                         *
   | GNU General Public License for more details.                                          |
   *                                                                                       *
   | You should have received a copy of the GNU General Public License                     |
   * along with this program.  If not, see <https://www.gnu.org/licenses/>.                *
   |                                                                                       |
   **-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*/

module testbench;
    reg [15:0] in;
    reg [3:0] sel;
    wire out;
    Mux16to1 mod(in, sel, out);

    initial
        begin
            $dumpfile   ("output/testrun.vcd");     // variable character dump
            $dumpvars   (0,testbench);
            $monitor    ($time, "in=%h, sel=%h, out=%h", in, sel, out);

                in = 16'hCAF0;
            #5  sel = 4'h2; 
            #5  sel = 4'h5;
            #5  sel = 4'he;
            #5  sel = 4'h1;
            #5 $finish;
        end
endmodule
