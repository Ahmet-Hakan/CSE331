module memory_block (
    output reg [31:0] read_data,
    input byteOperations, // This is an optional signal for lb and sb operations
    input [17:0] address,
    input [31:0] write_data,
    input memRead,
    input memWrite
);
    // Memory array
    reg [7:0] memory [255:0];
    initial begin
        $readmemb("memory.mem", memory); // Read memory initialization file
    end

    

    // Write operation
    always @(*) begin
        if (memWrite) begin
            if (byteOperations) begin
                // Byte write operation (sb)
                memory[address [7:0]][7:0] <= write_data[7:0];
            end else begin
                // Word write operation
                memory[address [7:0] ] <= write_data[7:0];
                memory[address [7:0] +1] <= write_data[15:8];
                memory[address [7:0] +2] <= write_data[23:16];
                memory[address [7:0] +3] <= write_data[31:24];
            end
        end
    end

    // Read operation
    always @(*) begin
        if (memRead) begin
            if (byteOperations) begin
                // Byte read operation (lb)
                read_data[31:8] <= 24'b0;  // Zero-extend to 32 bits
                read_data[7:0] <= memory[address %256 ][7:0];  
            end else begin
                // Word read operation
                read_data[31:24] <= memory[address [7:0] +3];
                read_data[23:16] <= memory[address [7:0]+2];
                read_data[15:8] <= memory[address [7:0] +1];
                read_data[7:0] <= memory[address [7:0] ];
            end
        end
    end

 

    always @ ( memWrite) begin
        $writememb("memory.mem", memory);
    end
endmodule