module top(input hwclk,
           output led1,
           output led2);

   reg [31:0]     counter = 32'b0;

   assign led1 = counter[18];
   assign led2 = counter[19];


   always @(posedge clk) begin
      counter <= counter + 1;
   end
   
endmodule
