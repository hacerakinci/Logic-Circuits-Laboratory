module data_bus_2to2_8bit_test();
    reg [7:0] data1;
    reg [7:0] data2;
    reg select;
    wire [7:0] dataOut1;
    wire [7:0] dataOut2;
        
    data_bus_2to2_8bit uut(data1, data2, select, dataOut1, dataOut2);
    
    initial begin
        data1 = 8'd1; data2 = 8'd2; select = 0; #250;
        data1 = 8'd1; data2 = 8'd2; select = 1; #250;
        data1 = 8'd2; data2 = 8'd1; select = 0; #250;
        data1 = 8'd2; data2 = 8'd1; select = 1; #250;
    end
endmodule
