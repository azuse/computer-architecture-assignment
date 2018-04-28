module cpu_div #(
    parameter MULTIPLE = 3
) (
    input clk_in,
    input rst,
    output clk_out
);
    reg [32:0] counter1 = 0;
    reg [32:0] counter2 = 0;
    if(MULTIPLE == 1) begin
        assign clk_out = rst ? 1'b0 : clk_in;
    end else
    if (MULTIPLE % 2 == 0) begin
        localparam M = MULTIPLE / 2;
        reg clk_out_r = 0;
        always @(posedge clk_in or posedge rst) begin
            if(rst) begin
                counter1 <= 0;
                clk_out_r <= 0;
            end
            else if(counter1 == 0) begin
                counter1 <= counter1 + 1;
                clk_out_r <= ~clk_out_r;
            end else if(counter1 == M) begin
                counter1 <= counter1 + 1;
                clk_out_r <= ~clk_out_r;
            end else if(counter1 == MULTIPLE - 1) begin
                counter1 <= 0;
            end else if(counter1 < MULTIPLE - 1) begin
                counter1 <= counter1 + 1;
            end else begin
                counter1 <= 0;
                clk_out_r <= 0;
            end
        end
        assign clk_out = clk_out_r;
    end else begin
        localparam M = MULTIPLE / 2;
        reg clk_out_1 = 0;
        reg clk_out_2 = 0;
        always @(posedge clk_in or posedge rst) begin
            if(rst) begin
                counter1 <= 0;
                clk_out_1 <= 0;
            end
            else if(counter1 == 0) begin
                counter1 <= counter1 + 1;
                clk_out_1 <= ~clk_out_1;
            end else if(counter1 == M) begin
                counter1 <= counter1 + 1;
                clk_out_1 <= ~clk_out_1;
            end else if(counter1 == MULTIPLE - 1) begin
                counter1 <= 0;
            end else if(counter1 < MULTIPLE - 1) begin
                counter1 <= counter1 + 1;
            end else begin
                counter1 <= 0;
                clk_out_1 <= 0;
            end
        end

        always @(negedge clk_in or posedge rst) begin
            if(rst) begin
                counter2 <= 0;
                clk_out_2 <= 0;
            end
            else if(counter2 == 0) begin
                counter2 <= counter2 + 1;
                clk_out_2 <= ~clk_out_2;
            end else if(counter2 == M) begin
                counter2 <= counter2 + 1;
                clk_out_2 <= ~clk_out_2;
            end else if(counter2 == MULTIPLE - 1) begin
                counter2 <= 0;
            end else if(counter2 < MULTIPLE - 1) begin
                counter2 <= counter2 + 1;
            end else begin
                counter2 <= 0;
                clk_out_2 <= 0;
            end
        end

        assign clk_out = clk_out_1 | clk_out_2;
    end
endmodule