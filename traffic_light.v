module traffic_light(input clock,reset,output reg[2:0] light);

reg [1:0] countBlue = 2'd0;
reg [2:0] countGreen = 3'd0;
reg [3:0] countRed = 4'd0;

always @(posedge clock or negedge reset) begin
    if(!reset) begin
        countRed <= 4'd0;
        countGreen <= 3'd0;
        countBlue <= 2'd0;
    end
    else begin
        if(countRed < 4'd10) begin
            countRed <= countRed + 1;
            light <= 3'b101; 
        end
        else if(countGreen < 3'd5)begin
            countGreen <= countGreen + 1;
            light <= 3'b110; 
        end
        else if(countBlue < 2'd2) begin
            countBlue <= countBlue + 1;
            light <= 3'b011;
        end
        else begin
            countRed <= 4'd0;
            countGreen <= 3'd0;
            countBlue <= 2'd0;
        end
      
    end
end 
endmodule