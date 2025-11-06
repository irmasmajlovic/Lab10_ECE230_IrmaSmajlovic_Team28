module mux(
    input [1:0] Sel,
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    output [7:0] data
);
assign data = (~Sel[0] & ~Sel[1])? A: (Sel[0] & ~Sel[1])? B: (~Sel[0] &  Sel[1])? C : (Sel[0] &  Sel[1])? D:0000;
endmodule
