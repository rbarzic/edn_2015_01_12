`timescale 1ns/1ps
module tb;


  reg E;
  wire Y;
  wire clk;

  parameter NAND2_DEFAULT_DELAY = 1;


   /* chip AUTO_TEMPLATE(
    .notE(!E),
    .G(clk),
    ); */
  chip #(.NAND2_DELAY(NAND2_DEFAULT_DELAY))
   U_CHIP
  (
   /*AUTOINST*/
   // Outputs
   .Y                                   (Y),
   // Inputs
   .notE                                (!E),                    // Templated
   .G                                   (clk));                   // Templated

   clock_gen #(.period(20)) U_CLK_GEN (
                          /*AUTOINST*/
                                       // Outputs
                                       .clk             (clk));




  // Dump all nets to a vcd file called tb.vcd
  initial
     begin
	$dumpfile("tb.vcd");
	$dumpvars(0,tb);
     end

  // Start by pulsing the reset low for some nanoseconds
  initial begin
     E = 0;
     #100;
     E=1;
     #205;
     E=0;
     #10;
     E=1;
     #194;
     E=0;

    // @(posedge done_r); // wait for done signal to rise
     #1;
     @(posedge clk);
     @(posedge clk);

    $display("-I- Done !");
     #1;

    $finish;
  end


endmodule // tb
