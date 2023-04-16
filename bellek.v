module dual_port_ram (
    input clk,
    input [3:0] address ,
    input [15:0] write_data,
    input write_enable,
    output reg [15:0] read_data
);

reg [15:0] mem[15:0];

always @(posedge clk) begin
    if(write_enable) begin
        mem[address] <= write_data;
    end
end

always @(negedge clk) begin
    read_data <= mem[address];
end

        
endmodule