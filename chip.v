module chip (/*AUTOARG*/
   // Outputs
   Y,
   // Inputs
   notE, G
   );
  parameter NAND2_DELAY = 1;
  input notE;
  input G;
  output Y;

  /*AUTOINPUT*/
  /*AUTOOUTPUT*/

  /*AUTOREG*/
  /*AUTOWIRE*/
   wire                 Y;


   nand2 #(.DELAY(NAND2_DELAY)) D1(.a(notZ),.b(G),.zn(notY));

   nand2 #(.DELAY(NAND2_DELAY)) D2(.a(notY),.b(notE),.zn(d2));

   nand2 #(.DELAY(NAND2_DELAY)) D3(.a(d2),.b(d5),.zn(Z));

   nand2 #(.DELAY(NAND2_DELAY)) D4(.a(Z),.b(Z),.zn(notZ));

   nand2 #(.DELAY(NAND2_DELAY)) D5(.a(G),.b(Z),.zn(d5));

   nand2 #(.DELAY(NAND2_DELAY)) D6(.a(notY),.b(notY),.zn(Y));


endmodule // chip
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
