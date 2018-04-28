`timescale 1ns/1ns
module PC(
  input clk,
  input rst,
  input wena,
  input [31:0] addr,
  output reg [31:0] pc
);

always @(posedge clk or posedge rst) begin
  if (rst) begin
    pc<=32'h00400000;
  end else if (wena) begin
    pc<=addr;
  end else begin
    pc<=pc+4;
  end
end
endmodule // PC

module IM(
  input [31:0] pc,
  output wire [31:0] instruction,
  output wire [31:0] pcout
);
wire [31:0] mpc;
assign mpc=pc-32'h00400000;
distMem IMem(
  .a(mpc[12:2]),
  .spo(instruction)
);
assign pcout=pc;
endmodule // IM

module DM(
  input clk,
  input wena,
  input [31:0] raddr,
  input [31:0] waddr,
  input [31:0] wdata,
  output [31:0] rdata
);
wire [31:0] mraddr;
wire [31:0] mwaddr;
assign mraddr=(raddr-32'h10010000)>>2;
assign mwaddr=(waddr-32'h10010000)>>2;
reg [31:0] DMem [0:65535];
assign rdata=DMem[mraddr];
always @(negedge clk) begin
  if (wena) begin
    DMem[mwaddr]<=wdata;
  end
end
endmodule // DM

module regfile(
  input clk,
  input rst,
  input wena,
  input [4:0]raddr1,
  input [4:0]raddr2,
  input [4:0]waddr,
  input [31:0] wdata,
  output [31:0] rdata1,
  output [31:0] rdata2
);
reg [31:0] array_reg [0:31];
assign rdata1=array_reg[raddr1];
assign rdata2=array_reg[raddr2];
always @(posedge rst) begin
  array_reg[0]<=0;
  array_reg[1]<=0;
  array_reg[2]<=0;
  array_reg[3]<=0;
  array_reg[4]<=0;
  array_reg[5]<=0;
  array_reg[6]<=0;
  array_reg[7]<=0;
  array_reg[8]<=0;
  array_reg[9]<=0;
  array_reg[10]<=0;
  array_reg[11]<=0;
  array_reg[12]<=0;
  array_reg[13]<=0;
  array_reg[14]<=0;
  array_reg[15]<=0;
  array_reg[16]<=0;
  array_reg[17]<=0;
  array_reg[18]<=0;
  array_reg[19]<=0;
  array_reg[20]<=0;
  array_reg[21]<=0;
  array_reg[22]<=0;
  array_reg[23]<=0;
  array_reg[24]<=0;
  array_reg[25]<=0;
  array_reg[26]<=0;
  array_reg[27]<=0;
  array_reg[28]<=0;
  array_reg[29]<=0;
  array_reg[30]<=0;
  array_reg[31]<=0;
end
always @(posedge clk) begin
  if (wena&&waddr) begin
    array_reg[waddr]<=wdata;
  end
end
endmodule // regfile

module ALU(
  input [31:0] lhs,
  input [31:0] rhs,
  input [3:0] aluop,
  output reg [31:0] res
);
wire [31:0] ulhs;
wire [31:0] urhs;
assign ulhs=lhs[31]?(~lhs+1):lhs;
assign urhs=rhs[31]?(~rhs+1):rhs;
always @(aluop or lhs or rhs) begin
  case (aluop)
    4'b0000: res=lhs+rhs;
    4'b0001: res=lhs-rhs;
    4'b0010: res=lhs&rhs;
    4'b0011: res=lhs|rhs;
    4'b0100: res=lhs^rhs;
    4'b0101: res=~(lhs|rhs);
    4'b0110: res=lhs[31]?(rhs[31]?urhs<ulhs:1):(rhs[31]?0:ulhs<urhs);
    4'b0111: res=lhs<rhs;
    4'b1000: res=lhs<<rhs;
    4'b1001: res=lhs>>rhs;
    4'b1010: res=({32{lhs[31]}}<<(32-rhs))|(lhs>>rhs);
    default: res=32'bz;
  endcase
end
endmodule // ALU


module ID_EXE(
  input [31:0] instruction,
  input [31:0] rdata1,
  input [31:0] rdata2,
  input [31:0] pc,
  input [31:0] rddata,
  output reg [4:0] raddr1,
  output reg [4:0] raddr2,
  output reg rwena,
  output reg [4:0] wraddr,
  output reg dwena,
  output reg [31:0] wddata,
  output reg [31:0] rdaddr,
  output reg pcwena,
  output reg [31:0] pcdata,
  output reg [3:0] aluop,
  output reg [31:0] lhs,
  output reg [31:0] rhs
);
wire [4:0] rs;
wire [4:0] rt;
wire [4:0] rd;
wire [31:0] npc;
assign rs=instruction[25:21];
assign rt=instruction[20:16];
assign rd=instruction[15:11];
assign npc=pc+4;
always @(*) begin
  if(instruction[31:26]==6'b000000) begin
    rwena=1;
    dwena=0;
    pcwena=0;
    raddr1=rs;
    raddr2=rt;
    wraddr=rd;
    lhs=rdata1;
    rhs=rdata2;
    case (instruction[5:0])
      6'b100000,6'b100001: aluop=4'b0000;
      6'b100010,6'b100011: aluop=4'b0001;
      6'b100100: aluop=4'b0010;
      6'b100101: aluop=4'b0011;
      6'b100110: aluop=4'b0100;
      6'b100111: aluop=4'b0101;
      6'b101010: aluop=4'b0110;
      6'b101011: aluop=4'b0111;
      6'b000000: begin
        aluop=4'b1000;
        lhs=rdata2;
        rhs={{27{1'b0}},instruction[10:6]};
      end
      6'b000010: begin
        aluop=4'b1001;
        lhs=rdata2;
        rhs={{27{1'b0}},instruction[10:6]};
      end
      6'b000011: begin
        aluop=4'b1010;
        lhs=rdata2;
        rhs={{27{1'b0}},instruction[10:6]};
      end
      6'b000100: begin
        aluop=4'b1000;
        lhs=rdata2;
        rhs=rdata1;
      end
      6'b000110: begin
        aluop=4'b1001;
        lhs=rdata2;
        rhs=rdata1;
      end
      6'b000111: begin
        aluop=4'b1010;
        lhs=rdata2;
        rhs=rdata1;
      end
      6'b001000: begin
        raddr1=rs;
        rwena=0;
        dwena=0;
        pcwena=1;
        pcdata=rdata1;
      end
      default: ;
    endcase
  end 
  else if (instruction[31:26]==6'b000010||instruction[31:26]==6'b000011) begin
    pcdata={npc[31:28],instruction[25:0],2'b00};
    pcwena=1;
    dwena=0;
    if(instruction[31:26]==6'b000011) begin
      rwena=1;
      lhs=pc;
      rhs=4;
      aluop=4'b0000;
      wraddr=5'b11111;
    end else begin
      rwena=0;
    end
  end else begin
    wraddr=rt;
    raddr1=rt;
    raddr2=rs;
    lhs=rdata2;
    rhs={{16{instruction[15]}},instruction[15:0]};
    if (instruction[31:26]==6'b101011) begin
      aluop=4'b0000;
      rwena=0;
      dwena=1;
      pcwena=0;
      wddata=rdata1;
    end else if(instruction[31:26]==6'b000100||instruction[31:26]==6'b000101) begin
      rwena=0;
      dwena=0;
      pcdata=pc+{{14{{instruction[15]}}},instruction[15:0],2'b0}+4;
      if (instruction[31:26]==6'b000100) begin
        pcwena=rdata1==rdata2;
      end else begin
        pcwena=rdata2!=rdata2;
      end
    end else begin
      pcwena=0;
      rwena=1;
      dwena=0;
      case (instruction[31:26])
        6'b001000,6'b001001: aluop=4'b0000;
        6'b001100: begin
          aluop=4'b0010;
          rhs={{16{1'b0}},instruction[15:0]};
        end
        6'b001101: begin
          aluop=4'b0011;
          rhs={{16{1'b0}},instruction[15:0]};
        end
        6'b001110: begin
          aluop=4'b0100;
          rhs={{16{1'b0}},instruction[15:0]};
        end
        6'b001111: begin
          aluop=4'b0000;
          lhs={instruction[15:0],{16{1'b0}}};
          rhs=0;
        end
        6'b100011: begin
          rdaddr=lhs+rhs;
          lhs=rddata;
          rhs=0;
          aluop=4'b0000;
        end
        6'b001010: aluop=4'b0110;
        6'b001011: aluop=4'b0111;
        default: ;
      endcase
    end
  end
end
endmodule // ID_EXE

module cpu(
  input clk,
  input rst,
  output [31:0] inst,
  output [31:0] pc_o,
  output [31:0] addr_o
);
wire [31:0] pc;
wire [31:0] instruction;
wire [31:0] pcout;
wire [31:0] rddata;
wire [31:0] rdata1;
wire [31:0] rdata2;
wire [31:0] res;
wire [4:0] raddr1;
wire [4:0] raddr2;
wire rwena;
wire [4:0] wraddr;
wire dwena;
wire [31:0] wddata;
wire [31:0] rdaddr;
wire pcwena;
wire [31:0] pcdata;
wire [3:0] aluop;
wire [31:0] lhs;
wire [31:0] rhs;
assign pc_o=pc;
assign inst=instruction;
assign addr_o=dwena?res:rdaddr;
PC pc_inst(
    .clk(clk),
    .rst(rst),
    .wena(pcwena),
    .addr(pcdata),
    .pc(pc)
);
IM im_inst(
    .pc(pc),
    .instruction(instruction),
    .pcout(pcout)
);
DM dm_inst(
    .clk(clk),
    .wena(dwena),
    .raddr(rdaddr),
    .waddr(res),
    .wdata(wddata),
    .rdata(rddata)
);
regfile cpu_ref(
    .clk(clk),
    .rst(rst),
    .wena(rwena),
    .raddr1(raddr1),
    .raddr2(raddr2),
    .waddr(wraddr),
    .wdata(res),
    .rdata1(rdata1),
    .rdata2(rdata2)
);
ALU alu_inst(
    .lhs(lhs),
    .rhs(rhs),
    .aluop(aluop),
    .res(res)
);
ID_EXE idExe_inst(
    .instruction(instruction),
    .rdata1(rdata1),
    .rdata2(rdata2),
    .pc(pcout),
    .rddata(rddata),
    .raddr1(raddr1),
    .raddr2(raddr2),
    .rwena(rwena),
    .wraddr(wraddr),
    .dwena(dwena),
    .wddata(wddata),
    .rdaddr(rdaddr),
    .pcwena(pcwena),
    .pcdata(pcdata),
    .aluop(aluop),
    .lhs(lhs),
    .rhs(rhs)
);
endmodule // cpu            

module sccomp_dataflow(
  input clk_in,
  input reset,
  output [31:0] inst,
  output [31:0] pc,
  output [31:0] addr
);
cpu sccpu(
  .clk(clk_in),
  .rst(reset),
  .inst(inst),
  .pc_o(pc),
  .addr_o(addr)
);
endmodule // sccomp_dataflow