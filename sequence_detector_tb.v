module sequence_detector_tb;

reg clk;
reg rst;
reg din;
wire detected;

sequence_detector dut(
    .clk(clk),
    .rst(rst),
    .din(din),
    .detected(detected)
);


always #5 clk = ~clk;


task send_bit;
    input bit_value;
    begin
        din = bit_value;
        #10;
    end
endtask

initial begin
    clk = 0;
    rst = 1;
    din = 0;

    #20;
    rst = 0;

    $display("\nTEST CASE 1 : 1011");
    send_bit(1);
    send_bit(0);
    send_bit(1);
    send_bit(1);

    #20;

  
    $display("\nTEST CASE 2 : Overlapping Sequence");
    rst = 1; #10;
    rst = 0;

    send_bit(1);
    send_bit(0);
    send_bit(1);
    send_bit(1); // First Detect

    send_bit(0);
    send_bit(1);
    send_bit(1); // Second Detect

    #20;


    $display("\nTEST CASE 3 : Invalid Sequence");
    rst = 1; #10;
    rst = 0;

    send_bit(1);
    send_bit(0);
    send_bit(0);
    send_bit(1);

    #20;

    $finish;
end

initial begin
    $monitor("Time=%0t | din=%b | detected=%b",
              $time, din, detected);
end

endmodule
