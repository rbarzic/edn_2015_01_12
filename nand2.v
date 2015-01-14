module nand2(/*AUTOARG*/
   // Outputs
   zn,
   // Inputs
   a, b
   );
   parameter DELAY = 1;

   input a,b;
   output zn;

   assign #(DELAY) zn =  !(a & b);

endmodule
