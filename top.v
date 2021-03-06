module top(input hwclk,
           output led1,
           output led2,
           output led3,
           output led4);
   
   reg [31:0]     counter = 32'b0;

   assign led1 = counter[10];

   assign led2 = counter[25];

   assign led3 = counter[20];

   assign led4 = counter[15];

   always @(posedge hwclk) begin
      counter <= counter + 1;
   end
   
endmodule
