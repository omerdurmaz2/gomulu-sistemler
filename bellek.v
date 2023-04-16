module dual_port_ram (
    input clock,
    input [3:0] adr,
    input [15:0] wData,
    input writeEnable,
    output reg [15:0] rData
);

reg [15:0] mem[15:0];

always @(posedge clock) begin
    if(writeEnable) begin
        mem[adr] <= wData;
    end
end

always @(negedge clock) begin
    rData <= mem[adr];
end

endmodule