module ComplexAdd(
  input  [15:0] io_op1_re,
  input  [15:0] io_op1_im,
  input  [15:0] io_op2_re,
  input  [15:0] io_op2_im,
  output [15:0] io_res_re,
  output [15:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) + $signed(io_op2_re); // @[Butterfly.scala 23:13]
  assign io_res_im = $signed(io_op1_im) + $signed(io_op2_im); // @[Butterfly.scala 24:13]
endmodule
module ComplexSub(
  input  [15:0] io_op1_re,
  input  [15:0] io_op1_im,
  input  [15:0] io_op2_re,
  input  [15:0] io_op2_im,
  output [15:0] io_res_re,
  output [15:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) - $signed(io_op2_re); // @[Butterfly.scala 37:13]
  assign io_res_im = $signed(io_op1_im) - $signed(io_op2_im); // @[Butterfly.scala 38:13]
endmodule
module Butterfly4(
  input  [15:0] io_in1_re,
  input  [15:0] io_in1_im,
  input  [15:0] io_in2_re,
  input  [15:0] io_in2_im,
  input  [15:0] io_in3_re,
  input  [15:0] io_in3_im,
  input  [15:0] io_in4_re,
  input  [15:0] io_in4_im,
  output [15:0] io_out1_re,
  output [15:0] io_out1_im,
  output [15:0] io_out2_re,
  output [15:0] io_out2_im,
  output [15:0] io_out3_re,
  output [15:0] io_out3_im,
  output [15:0] io_out4_re,
  output [15:0] io_out4_im
);
  wire [15:0] ComplexAdd_io_op1_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_io_op1_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_io_op2_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_io_op2_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_io_res_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_io_res_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexSub_io_op1_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_io_op1_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_io_op2_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_io_op2_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_io_res_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_io_res_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexAdd_1_io_op1_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_1_io_op1_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_1_io_op2_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_1_io_op2_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_1_io_res_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_1_io_res_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexSub_1_io_op1_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_1_io_op1_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_1_io_op2_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_1_io_op2_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_1_io_res_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_1_io_res_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexAdd_2_io_op1_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_2_io_op1_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_2_io_op2_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_2_io_op2_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_2_io_res_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_2_io_res_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_3_io_op1_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_3_io_op1_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_3_io_op2_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_3_io_op2_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_3_io_res_re; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexAdd_3_io_res_im; // @[Butterfly.scala 28:22]
  wire [15:0] ComplexSub_2_io_op1_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_2_io_op1_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_2_io_op2_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_2_io_op2_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_2_io_res_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_2_io_res_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_3_io_op1_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_3_io_op1_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_3_io_op2_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_3_io_op2_im; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_3_io_res_re; // @[Butterfly.scala 42:22]
  wire [15:0] ComplexSub_3_io_res_im; // @[Butterfly.scala 42:22]
  ComplexAdd ComplexAdd ( // @[Butterfly.scala 28:22]
    .io_op1_re(ComplexAdd_io_op1_re),
    .io_op1_im(ComplexAdd_io_op1_im),
    .io_op2_re(ComplexAdd_io_op2_re),
    .io_op2_im(ComplexAdd_io_op2_im),
    .io_res_re(ComplexAdd_io_res_re),
    .io_res_im(ComplexAdd_io_res_im)
  );
  ComplexSub ComplexSub ( // @[Butterfly.scala 42:22]
    .io_op1_re(ComplexSub_io_op1_re),
    .io_op1_im(ComplexSub_io_op1_im),
    .io_op2_re(ComplexSub_io_op2_re),
    .io_op2_im(ComplexSub_io_op2_im),
    .io_res_re(ComplexSub_io_res_re),
    .io_res_im(ComplexSub_io_res_im)
  );
  ComplexAdd ComplexAdd_1 ( // @[Butterfly.scala 28:22]
    .io_op1_re(ComplexAdd_1_io_op1_re),
    .io_op1_im(ComplexAdd_1_io_op1_im),
    .io_op2_re(ComplexAdd_1_io_op2_re),
    .io_op2_im(ComplexAdd_1_io_op2_im),
    .io_res_re(ComplexAdd_1_io_res_re),
    .io_res_im(ComplexAdd_1_io_res_im)
  );
  ComplexSub ComplexSub_1 ( // @[Butterfly.scala 42:22]
    .io_op1_re(ComplexSub_1_io_op1_re),
    .io_op1_im(ComplexSub_1_io_op1_im),
    .io_op2_re(ComplexSub_1_io_op2_re),
    .io_op2_im(ComplexSub_1_io_op2_im),
    .io_res_re(ComplexSub_1_io_res_re),
    .io_res_im(ComplexSub_1_io_res_im)
  );
  ComplexAdd ComplexAdd_2 ( // @[Butterfly.scala 28:22]
    .io_op1_re(ComplexAdd_2_io_op1_re),
    .io_op1_im(ComplexAdd_2_io_op1_im),
    .io_op2_re(ComplexAdd_2_io_op2_re),
    .io_op2_im(ComplexAdd_2_io_op2_im),
    .io_res_re(ComplexAdd_2_io_res_re),
    .io_res_im(ComplexAdd_2_io_res_im)
  );
  ComplexAdd ComplexAdd_3 ( // @[Butterfly.scala 28:22]
    .io_op1_re(ComplexAdd_3_io_op1_re),
    .io_op1_im(ComplexAdd_3_io_op1_im),
    .io_op2_re(ComplexAdd_3_io_op2_re),
    .io_op2_im(ComplexAdd_3_io_op2_im),
    .io_res_re(ComplexAdd_3_io_res_re),
    .io_res_im(ComplexAdd_3_io_res_im)
  );
  ComplexSub ComplexSub_2 ( // @[Butterfly.scala 42:22]
    .io_op1_re(ComplexSub_2_io_op1_re),
    .io_op1_im(ComplexSub_2_io_op1_im),
    .io_op2_re(ComplexSub_2_io_op2_re),
    .io_op2_im(ComplexSub_2_io_op2_im),
    .io_res_re(ComplexSub_2_io_res_re),
    .io_res_im(ComplexSub_2_io_res_im)
  );
  ComplexSub ComplexSub_3 ( // @[Butterfly.scala 42:22]
    .io_op1_re(ComplexSub_3_io_op1_re),
    .io_op1_im(ComplexSub_3_io_op1_im),
    .io_op2_re(ComplexSub_3_io_op2_re),
    .io_op2_im(ComplexSub_3_io_op2_im),
    .io_res_re(ComplexSub_3_io_res_re),
    .io_res_im(ComplexSub_3_io_res_im)
  );
  assign io_out1_re = ComplexAdd_2_io_res_re; // @[Butterfly.scala 132:11]
  assign io_out1_im = ComplexAdd_2_io_res_im; // @[Butterfly.scala 132:11]
  assign io_out2_re = ComplexAdd_3_io_res_re; // @[Butterfly.scala 133:11]
  assign io_out2_im = ComplexAdd_3_io_res_im; // @[Butterfly.scala 133:11]
  assign io_out3_re = ComplexSub_2_io_res_re; // @[Butterfly.scala 134:11]
  assign io_out3_im = ComplexSub_2_io_res_im; // @[Butterfly.scala 134:11]
  assign io_out4_re = ComplexSub_3_io_res_re; // @[Butterfly.scala 135:11]
  assign io_out4_im = ComplexSub_3_io_res_im; // @[Butterfly.scala 135:11]
  assign ComplexAdd_io_op1_re = io_in1_re; // @[Butterfly.scala 29:17]
  assign ComplexAdd_io_op1_im = io_in1_im; // @[Butterfly.scala 29:17]
  assign ComplexAdd_io_op2_re = io_in3_re; // @[Butterfly.scala 30:17]
  assign ComplexAdd_io_op2_im = io_in3_im; // @[Butterfly.scala 30:17]
  assign ComplexSub_io_op1_re = io_in1_re; // @[Butterfly.scala 43:17]
  assign ComplexSub_io_op1_im = io_in1_im; // @[Butterfly.scala 43:17]
  assign ComplexSub_io_op2_re = io_in3_re; // @[Butterfly.scala 44:17]
  assign ComplexSub_io_op2_im = io_in3_im; // @[Butterfly.scala 44:17]
  assign ComplexAdd_1_io_op1_re = io_in2_re; // @[Butterfly.scala 29:17]
  assign ComplexAdd_1_io_op1_im = io_in2_im; // @[Butterfly.scala 29:17]
  assign ComplexAdd_1_io_op2_re = io_in4_re; // @[Butterfly.scala 30:17]
  assign ComplexAdd_1_io_op2_im = io_in4_im; // @[Butterfly.scala 30:17]
  assign ComplexSub_1_io_op1_re = io_in2_re; // @[Butterfly.scala 43:17]
  assign ComplexSub_1_io_op1_im = io_in2_im; // @[Butterfly.scala 43:17]
  assign ComplexSub_1_io_op2_re = io_in4_re; // @[Butterfly.scala 44:17]
  assign ComplexSub_1_io_op2_im = io_in4_im; // @[Butterfly.scala 44:17]
  assign ComplexAdd_2_io_op1_re = ComplexAdd_io_res_re; // @[Butterfly.scala 29:17]
  assign ComplexAdd_2_io_op1_im = ComplexAdd_io_res_im; // @[Butterfly.scala 29:17]
  assign ComplexAdd_2_io_op2_re = ComplexAdd_1_io_res_re; // @[Butterfly.scala 30:17]
  assign ComplexAdd_2_io_op2_im = ComplexAdd_1_io_res_im; // @[Butterfly.scala 30:17]
  assign ComplexAdd_3_io_op1_re = ComplexSub_io_res_re; // @[Butterfly.scala 29:17]
  assign ComplexAdd_3_io_op1_im = ComplexSub_io_res_im; // @[Butterfly.scala 29:17]
  assign ComplexAdd_3_io_op2_re = ComplexSub_1_io_res_im; // @[Butterfly.scala 30:17]
  assign ComplexAdd_3_io_op2_im = 16'sh0 - $signed(ComplexSub_1_io_res_re); // @[Butterfly.scala 30:17]
  assign ComplexSub_2_io_op1_re = ComplexAdd_io_res_re; // @[Butterfly.scala 43:17]
  assign ComplexSub_2_io_op1_im = ComplexAdd_io_res_im; // @[Butterfly.scala 43:17]
  assign ComplexSub_2_io_op2_re = ComplexAdd_1_io_res_re; // @[Butterfly.scala 44:17]
  assign ComplexSub_2_io_op2_im = ComplexAdd_1_io_res_im; // @[Butterfly.scala 44:17]
  assign ComplexSub_3_io_op1_re = ComplexSub_io_res_re; // @[Butterfly.scala 43:17]
  assign ComplexSub_3_io_op1_im = ComplexSub_io_res_im; // @[Butterfly.scala 43:17]
  assign ComplexSub_3_io_op2_re = ComplexSub_1_io_res_im; // @[Butterfly.scala 44:17]
  assign ComplexSub_3_io_op2_im = 16'sh0 - $signed(ComplexSub_1_io_res_re); // @[Butterfly.scala 44:17]
endmodule
module ComplexMul(
  input  [15:0] io_op1_re,
  input  [15:0] io_op1_im,
  input  [15:0] io_op2_re,
  input  [15:0] io_op2_im,
  output [15:0] io_res_re,
  output [15:0] io_res_im
);
  wire [31:0] _T = $signed(io_op1_re) * $signed(io_op2_re); // @[Butterfly.scala 59:28]
  wire [31:0] _T_1 = $signed(io_op1_im) * $signed(io_op2_im); // @[Butterfly.scala 59:52]
  wire [31:0] _T_4 = $signed(_T) - $signed(_T_1); // @[Butterfly.scala 59:40]
  wire [31:0] _T_5 = $signed(io_op1_re) * $signed(io_op2_im); // @[Butterfly.scala 60:28]
  wire [31:0] _T_6 = $signed(io_op1_im) * $signed(io_op2_re); // @[Butterfly.scala 60:52]
  wire [31:0] _T_9 = $signed(_T_5) + $signed(_T_6); // @[Butterfly.scala 60:40]
  wire [19:0] _GEN_0 = _T_4[31:12]; // @[Butterfly.scala 59:15]
  wire [19:0] _GEN_2 = _T_9[31:12]; // @[Butterfly.scala 60:15]
  assign io_res_re = _GEN_0[15:0]; // @[Butterfly.scala 59:15]
  assign io_res_im = _GEN_2[15:0]; // @[Butterfly.scala 60:15]
endmodule
module Butterfly4_TOP(
  input         clock,
  input         reset,
  input  [15:0] io_in_re,
  input  [15:0] io_in_im,
  input         io_in_valid,
  output [15:0] io_out_re,
  output [15:0] io_out_im,
  output        io_out_valid
);
  reg [15:0] ram0_re [0:0]; // @[Butterfly.scala 198:16]
  reg [31:0] _RAND_0;
  wire [15:0] ram0_re__T_18_data; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_18_addr; // @[Butterfly.scala 198:16]
  wire [15:0] ram0_re__T_10_data; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_addr; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_mask; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_en; // @[Butterfly.scala 198:16]
  reg [15:0] ram0_im [0:0]; // @[Butterfly.scala 198:16]
  reg [31:0] _RAND_1;
  wire [15:0] ram0_im__T_18_data; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_18_addr; // @[Butterfly.scala 198:16]
  wire [15:0] ram0_im__T_10_data; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_addr; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_mask; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_en; // @[Butterfly.scala 198:16]
  reg [15:0] ram1_re [0:0]; // @[Butterfly.scala 199:16]
  reg [31:0] _RAND_2;
  wire [15:0] ram1_re__T_19_data; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_19_addr; // @[Butterfly.scala 199:16]
  wire [15:0] ram1_re__T_12_data; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_addr; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_mask; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_en; // @[Butterfly.scala 199:16]
  reg [15:0] ram1_im [0:0]; // @[Butterfly.scala 199:16]
  reg [31:0] _RAND_3;
  wire [15:0] ram1_im__T_19_data; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_19_addr; // @[Butterfly.scala 199:16]
  wire [15:0] ram1_im__T_12_data; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_addr; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_mask; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_en; // @[Butterfly.scala 199:16]
  reg [15:0] ram2_re [0:0]; // @[Butterfly.scala 200:16]
  reg [31:0] _RAND_4;
  wire [15:0] ram2_re__T_20_data; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_20_addr; // @[Butterfly.scala 200:16]
  wire [15:0] ram2_re__T_14_data; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_addr; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_mask; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_en; // @[Butterfly.scala 200:16]
  reg [15:0] ram2_im [0:0]; // @[Butterfly.scala 200:16]
  reg [31:0] _RAND_5;
  wire [15:0] ram2_im__T_20_data; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_20_addr; // @[Butterfly.scala 200:16]
  wire [15:0] ram2_im__T_14_data; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_addr; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_mask; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_en; // @[Butterfly.scala 200:16]
  wire [15:0] Butterfly4_io_in1_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in1_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in2_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in2_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in3_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in3_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in4_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in4_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out1_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out1_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out2_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out2_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out3_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out3_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out4_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out4_im; // @[Butterfly.scala 139:22]
  wire [15:0] ComplexMul_io_op1_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op1_im; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op2_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op2_im; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_res_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_res_im; // @[Butterfly.scala 65:22]
  reg [9:0] in_counter; // @[Butterfly.scala 183:27]
  reg [31:0] _RAND_6;
  reg [9:0] out_counter; // @[Butterfly.scala 184:28]
  reg [31:0] _RAND_7;
  reg  out_flag; // @[Butterfly.scala 185:25]
  reg [31:0] _RAND_8;
  wire  _T = in_counter == 10'h2; // @[Butterfly.scala 188:49]
  wire  out_flag_start = io_in_valid & _T; // @[Butterfly.scala 188:36]
  wire [10:0] _T_2 = 11'h400 - 11'h1; // @[Butterfly.scala 189:51]
  wire [10:0] _GEN_109 = {{1'd0}, out_counter}; // @[Butterfly.scala 189:35]
  wire  out_flag_done = _GEN_109 == _T_2; // @[Butterfly.scala 189:35]
  wire [9:0] _T_4 = in_counter + 10'h1; // @[Butterfly.scala 191:46]
  wire  _GEN_1 = out_flag_done ? 1'h0 : out_flag; // @[Butterfly.scala 192:65]
  wire  _GEN_2 = out_flag_start | _GEN_1; // @[Butterfly.scala 192:24]
  wire [9:0] _T_7 = out_counter + 10'h1; // @[Butterfly.scala 193:51]
  wire [1:0] in_row = in_counter[1:0]; // @[Butterfly.scala 202:19 Butterfly.scala 203:13]
  wire  _T_15 = in_row == 2'h0; // @[Butterfly.scala 227:16]
  wire  _T_16 = in_row == 2'h1; // @[Butterfly.scala 233:22]
  wire  _T_17 = in_row == 2'h2; // @[Butterfly.scala 239:22]
  wire  _GEN_23 = _T_17 ? 1'h0 : 1'h1; // @[Butterfly.scala 239:30]
  wire  _GEN_31 = _T_16 ? 1'h0 : _GEN_23; // @[Butterfly.scala 233:30]
  wire  _GEN_39 = _T_15 | _GEN_31; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_24 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out2_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_33 = _T_16 ? $signed(io_in_im) : $signed(_GEN_24); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_42 = _T_15 ? $signed(io_in_im) : $signed(_GEN_33); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_25 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out2_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_34 = _T_16 ? $signed(io_in_re) : $signed(_GEN_25); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_43 = _T_15 ? $signed(io_in_re) : $signed(_GEN_34); // @[Butterfly.scala 227:24]
  wire  _GEN_30 = _T_16 | _GEN_23; // @[Butterfly.scala 233:30]
  wire  _GEN_40 = _T_15 ? 1'h0 : _GEN_30; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_26 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out3_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_35 = _T_16 ? $signed(io_in_im) : $signed(_GEN_26); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_44 = _T_15 ? $signed(io_in_im) : $signed(_GEN_35); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_27 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out3_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_36 = _T_16 ? $signed(io_in_re) : $signed(_GEN_27); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_45 = _T_15 ? $signed(io_in_re) : $signed(_GEN_36); // @[Butterfly.scala 227:24]
  wire  _GEN_32 = _T_16 ? 1'h0 : 1'h1; // @[Butterfly.scala 233:30]
  wire  _GEN_41 = _T_15 ? 1'h0 : _GEN_32; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_28 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out4_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_37 = _T_16 ? $signed(io_in_im) : $signed(_GEN_28); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_46 = _T_15 ? $signed(io_in_im) : $signed(_GEN_37); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_29 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out4_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_38 = _T_16 ? $signed(io_in_re) : $signed(_GEN_29); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_47 = _T_15 ? $signed(io_in_re) : $signed(_GEN_38); // @[Butterfly.scala 227:24]
  wire [1:0] out_row = out_counter[1:0]; // @[Butterfly.scala 265:19 Butterfly.scala 266:13]
  wire  _T_22 = out_row == 2'h0; // @[Butterfly.scala 270:13]
  wire  _T_23 = out_row == 2'h1; // @[Butterfly.scala 271:19]
  wire  _T_24 = out_row == 2'h2; // @[Butterfly.scala 272:19]
  wire [15:0] ram1_rdata_im = ram1_im__T_19_data; // @[Butterfly.scala 208:23 Butterfly.scala 261:16]
  wire [15:0] ram2_rdata_im = ram2_im__T_20_data; // @[Butterfly.scala 209:23 Butterfly.scala 262:16]
  wire [15:0] _GEN_57 = _T_24 ? $signed(ram1_rdata_im) : $signed(ram2_rdata_im); // @[Butterfly.scala 272:26]
  wire [15:0] ram1_rdata_re = ram1_re__T_19_data; // @[Butterfly.scala 208:23 Butterfly.scala 261:16]
  wire [15:0] ram2_rdata_re = ram2_re__T_20_data; // @[Butterfly.scala 209:23 Butterfly.scala 262:16]
  wire [15:0] _GEN_58 = _T_24 ? $signed(ram1_rdata_re) : $signed(ram2_rdata_re); // @[Butterfly.scala 272:26]
  wire [15:0] ram0_rdata_im = ram0_im__T_18_data; // @[Butterfly.scala 207:23 Butterfly.scala 260:16]
  wire [15:0] _GEN_59 = _T_23 ? $signed(ram0_rdata_im) : $signed(_GEN_57); // @[Butterfly.scala 271:26]
  wire [15:0] ram0_rdata_re = ram0_re__T_18_data; // @[Butterfly.scala 207:23 Butterfly.scala 260:16]
  wire [15:0] _GEN_60 = _T_23 ? $signed(ram0_rdata_re) : $signed(_GEN_58); // @[Butterfly.scala 271:26]
  wire [1:0] lut_adr_h = out_counter[3:2]; // @[Butterfly.scala 278:21 Butterfly.scala 280:19]
  wire [3:0] lut_adr = out_row * lut_adr_h; // @[Butterfly.scala 282:25]
  wire [15:0] _GEN_64 = 4'h1 == lut_adr ? $signed(16'shec8) : $signed(16'sh1000); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_65 = 4'h2 == lut_adr ? $signed(16'shb50) : $signed(_GEN_64); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_66 = 4'h3 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_65); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_67 = 4'h4 == lut_adr ? $signed(16'sh0) : $signed(_GEN_66); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_68 = 4'h5 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_67); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_69 = 4'h6 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_68); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_70 = 4'h7 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_69); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_71 = 4'h8 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_70); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_72 = 4'h9 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_71); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_73 = 4'ha == lut_adr ? $signed(-16'shb50) : $signed(_GEN_72); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_74 = 4'hb == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_73); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_75 = 4'hc == lut_adr ? $signed(16'sh0) : $signed(_GEN_74); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_76 = 4'hd == lut_adr ? $signed(16'sh61f) : $signed(_GEN_75); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_77 = 4'he == lut_adr ? $signed(16'shb50) : $signed(_GEN_76); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_80 = 4'h1 == lut_adr ? $signed(-16'sh61f) : $signed(16'sh0); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_81 = 4'h2 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_80); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_82 = 4'h3 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_81); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_83 = 4'h4 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_82); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_84 = 4'h5 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_83); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_85 = 4'h6 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_84); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_86 = 4'h7 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_85); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_87 = 4'h8 == lut_adr ? $signed(16'sh0) : $signed(_GEN_86); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_88 = 4'h9 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_87); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_89 = 4'ha == lut_adr ? $signed(16'shb50) : $signed(_GEN_88); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_90 = 4'hb == lut_adr ? $signed(16'shec8) : $signed(_GEN_89); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_91 = 4'hc == lut_adr ? $signed(16'sh1000) : $signed(_GEN_90); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_92 = 4'hd == lut_adr ? $signed(16'shec8) : $signed(_GEN_91); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_93 = 4'he == lut_adr ? $signed(16'shb50) : $signed(_GEN_92); // @[Butterfly.scala 176:12]
  reg [15:0] _T_31_re; // @[Butterfly.scala 295:24]
  reg [31:0] _RAND_9;
  reg [15:0] _T_31_im; // @[Butterfly.scala 295:24]
  reg [31:0] _RAND_10;
  reg  _T_32; // @[Butterfly.scala 296:24]
  reg [31:0] _RAND_11;
  Butterfly4 Butterfly4 ( // @[Butterfly.scala 139:22]
    .io_in1_re(Butterfly4_io_in1_re),
    .io_in1_im(Butterfly4_io_in1_im),
    .io_in2_re(Butterfly4_io_in2_re),
    .io_in2_im(Butterfly4_io_in2_im),
    .io_in3_re(Butterfly4_io_in3_re),
    .io_in3_im(Butterfly4_io_in3_im),
    .io_in4_re(Butterfly4_io_in4_re),
    .io_in4_im(Butterfly4_io_in4_im),
    .io_out1_re(Butterfly4_io_out1_re),
    .io_out1_im(Butterfly4_io_out1_im),
    .io_out2_re(Butterfly4_io_out2_re),
    .io_out2_im(Butterfly4_io_out2_im),
    .io_out3_re(Butterfly4_io_out3_re),
    .io_out3_im(Butterfly4_io_out3_im),
    .io_out4_re(Butterfly4_io_out4_re),
    .io_out4_im(Butterfly4_io_out4_im)
  );
  ComplexMul ComplexMul ( // @[Butterfly.scala 65:22]
    .io_op1_re(ComplexMul_io_op1_re),
    .io_op1_im(ComplexMul_io_op1_im),
    .io_op2_re(ComplexMul_io_op2_re),
    .io_op2_im(ComplexMul_io_op2_im),
    .io_res_re(ComplexMul_io_res_re),
    .io_res_im(ComplexMul_io_res_im)
  );
  assign ram0_re__T_18_addr = 1'h0;
  assign ram0_re__T_18_data = ram0_re[ram0_re__T_18_addr]; // @[Butterfly.scala 198:16]
  assign ram0_re__T_10_data = io_in_valid ? $signed(_GEN_43) : $signed(io_in_re);
  assign ram0_re__T_10_addr = 1'h0;
  assign ram0_re__T_10_mask = 1'h1;
  assign ram0_re__T_10_en = io_in_valid & _GEN_39;
  assign ram0_im__T_18_addr = 1'h0;
  assign ram0_im__T_18_data = ram0_im[ram0_im__T_18_addr]; // @[Butterfly.scala 198:16]
  assign ram0_im__T_10_data = io_in_valid ? $signed(_GEN_42) : $signed(io_in_im);
  assign ram0_im__T_10_addr = 1'h0;
  assign ram0_im__T_10_mask = 1'h1;
  assign ram0_im__T_10_en = io_in_valid & _GEN_39;
  assign ram1_re__T_19_addr = 1'h0;
  assign ram1_re__T_19_data = ram1_re[ram1_re__T_19_addr]; // @[Butterfly.scala 199:16]
  assign ram1_re__T_12_data = io_in_valid ? $signed(_GEN_45) : $signed(io_in_re);
  assign ram1_re__T_12_addr = 1'h0;
  assign ram1_re__T_12_mask = 1'h1;
  assign ram1_re__T_12_en = io_in_valid & _GEN_40;
  assign ram1_im__T_19_addr = 1'h0;
  assign ram1_im__T_19_data = ram1_im[ram1_im__T_19_addr]; // @[Butterfly.scala 199:16]
  assign ram1_im__T_12_data = io_in_valid ? $signed(_GEN_44) : $signed(io_in_im);
  assign ram1_im__T_12_addr = 1'h0;
  assign ram1_im__T_12_mask = 1'h1;
  assign ram1_im__T_12_en = io_in_valid & _GEN_40;
  assign ram2_re__T_20_addr = 1'h0;
  assign ram2_re__T_20_data = ram2_re[ram2_re__T_20_addr]; // @[Butterfly.scala 200:16]
  assign ram2_re__T_14_data = io_in_valid ? $signed(_GEN_47) : $signed(io_in_re);
  assign ram2_re__T_14_addr = 1'h0;
  assign ram2_re__T_14_mask = 1'h1;
  assign ram2_re__T_14_en = io_in_valid & _GEN_41;
  assign ram2_im__T_20_addr = 1'h0;
  assign ram2_im__T_20_data = ram2_im[ram2_im__T_20_addr]; // @[Butterfly.scala 200:16]
  assign ram2_im__T_14_data = io_in_valid ? $signed(_GEN_46) : $signed(io_in_im);
  assign ram2_im__T_14_addr = 1'h0;
  assign ram2_im__T_14_mask = 1'h1;
  assign ram2_im__T_14_en = io_in_valid & _GEN_41;
  assign io_out_re = _T_31_re; // @[Butterfly.scala 290:14 Butterfly.scala 295:14]
  assign io_out_im = _T_31_im; // @[Butterfly.scala 290:14 Butterfly.scala 295:14]
  assign io_out_valid = _T_32; // @[Butterfly.scala 291:14 Butterfly.scala 296:14]
  assign Butterfly4_io_in1_re = ram0_re__T_18_data; // @[Butterfly.scala 140:17]
  assign Butterfly4_io_in1_im = ram0_im__T_18_data; // @[Butterfly.scala 140:17]
  assign Butterfly4_io_in2_re = ram1_re__T_19_data; // @[Butterfly.scala 141:17]
  assign Butterfly4_io_in2_im = ram1_im__T_19_data; // @[Butterfly.scala 141:17]
  assign Butterfly4_io_in3_re = ram2_re__T_20_data; // @[Butterfly.scala 142:17]
  assign Butterfly4_io_in3_im = ram2_im__T_20_data; // @[Butterfly.scala 142:17]
  assign Butterfly4_io_in4_re = io_in_re; // @[Butterfly.scala 143:17]
  assign Butterfly4_io_in4_im = io_in_im; // @[Butterfly.scala 143:17]
  assign ComplexMul_io_op1_re = _T_22 ? $signed(Butterfly4_io_out1_re) : $signed(_GEN_60); // @[Butterfly.scala 66:17]
  assign ComplexMul_io_op1_im = _T_22 ? $signed(Butterfly4_io_out1_im) : $signed(_GEN_59); // @[Butterfly.scala 66:17]
  assign ComplexMul_io_op2_re = 4'hf == lut_adr ? $signed(16'shec8) : $signed(_GEN_77); // @[Butterfly.scala 67:17]
  assign ComplexMul_io_op2_im = 4'hf == lut_adr ? $signed(16'sh61f) : $signed(_GEN_93); // @[Butterfly.scala 67:17]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram0_re[initvar] = _RAND_0[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram0_im[initvar] = _RAND_1[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram1_re[initvar] = _RAND_2[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram1_im[initvar] = _RAND_3[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram2_re[initvar] = _RAND_4[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram2_im[initvar] = _RAND_5[15:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  in_counter = _RAND_6[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  out_counter = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  out_flag = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_31_re = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_31_im = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_32 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram0_re__T_10_en & ram0_re__T_10_mask) begin
      ram0_re[ram0_re__T_10_addr] <= ram0_re__T_10_data; // @[Butterfly.scala 198:16]
    end
    if(ram0_im__T_10_en & ram0_im__T_10_mask) begin
      ram0_im[ram0_im__T_10_addr] <= ram0_im__T_10_data; // @[Butterfly.scala 198:16]
    end
    if(ram1_re__T_12_en & ram1_re__T_12_mask) begin
      ram1_re[ram1_re__T_12_addr] <= ram1_re__T_12_data; // @[Butterfly.scala 199:16]
    end
    if(ram1_im__T_12_en & ram1_im__T_12_mask) begin
      ram1_im[ram1_im__T_12_addr] <= ram1_im__T_12_data; // @[Butterfly.scala 199:16]
    end
    if(ram2_re__T_14_en & ram2_re__T_14_mask) begin
      ram2_re[ram2_re__T_14_addr] <= ram2_re__T_14_data; // @[Butterfly.scala 200:16]
    end
    if(ram2_im__T_14_en & ram2_im__T_14_mask) begin
      ram2_im[ram2_im__T_14_addr] <= ram2_im__T_14_data; // @[Butterfly.scala 200:16]
    end
    if (reset) begin
      in_counter <= 10'h0;
    end else if (io_in_valid) begin
      in_counter <= _T_4;
    end
    if (reset) begin
      out_counter <= 10'h0;
    end else if (out_flag) begin
      out_counter <= _T_7;
    end
    if (reset) begin
      out_flag <= 1'h0;
    end else begin
      out_flag <= _GEN_2;
    end
    _T_31_re <= ComplexMul_io_res_re;
    _T_31_im <= ComplexMul_io_res_im;
    _T_32 <= out_flag;
  end
endmodule
module Butterfly4_TOP_1(
  input         clock,
  input         reset,
  input  [15:0] io_in_re,
  input  [15:0] io_in_im,
  input         io_in_valid,
  output [15:0] io_out_re,
  output [15:0] io_out_im,
  output        io_out_valid
);
  reg [15:0] ram0_re [0:3]; // @[Butterfly.scala 198:16]
  reg [31:0] _RAND_0;
  wire [15:0] ram0_re__T_19_data; // @[Butterfly.scala 198:16]
  wire [1:0] ram0_re__T_19_addr; // @[Butterfly.scala 198:16]
  wire [15:0] ram0_re__T_10_data; // @[Butterfly.scala 198:16]
  wire [1:0] ram0_re__T_10_addr; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_mask; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_en; // @[Butterfly.scala 198:16]
  reg [15:0] ram0_im [0:3]; // @[Butterfly.scala 198:16]
  reg [31:0] _RAND_1;
  wire [15:0] ram0_im__T_19_data; // @[Butterfly.scala 198:16]
  wire [1:0] ram0_im__T_19_addr; // @[Butterfly.scala 198:16]
  wire [15:0] ram0_im__T_10_data; // @[Butterfly.scala 198:16]
  wire [1:0] ram0_im__T_10_addr; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_mask; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_en; // @[Butterfly.scala 198:16]
  reg [15:0] ram1_re [0:3]; // @[Butterfly.scala 199:16]
  reg [31:0] _RAND_2;
  wire [15:0] ram1_re__T_21_data; // @[Butterfly.scala 199:16]
  wire [1:0] ram1_re__T_21_addr; // @[Butterfly.scala 199:16]
  wire [15:0] ram1_re__T_12_data; // @[Butterfly.scala 199:16]
  wire [1:0] ram1_re__T_12_addr; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_mask; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_en; // @[Butterfly.scala 199:16]
  reg [15:0] ram1_im [0:3]; // @[Butterfly.scala 199:16]
  reg [31:0] _RAND_3;
  wire [15:0] ram1_im__T_21_data; // @[Butterfly.scala 199:16]
  wire [1:0] ram1_im__T_21_addr; // @[Butterfly.scala 199:16]
  wire [15:0] ram1_im__T_12_data; // @[Butterfly.scala 199:16]
  wire [1:0] ram1_im__T_12_addr; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_mask; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_en; // @[Butterfly.scala 199:16]
  reg [15:0] ram2_re [0:3]; // @[Butterfly.scala 200:16]
  reg [31:0] _RAND_4;
  wire [15:0] ram2_re__T_23_data; // @[Butterfly.scala 200:16]
  wire [1:0] ram2_re__T_23_addr; // @[Butterfly.scala 200:16]
  wire [15:0] ram2_re__T_14_data; // @[Butterfly.scala 200:16]
  wire [1:0] ram2_re__T_14_addr; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_mask; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_en; // @[Butterfly.scala 200:16]
  reg [15:0] ram2_im [0:3]; // @[Butterfly.scala 200:16]
  reg [31:0] _RAND_5;
  wire [15:0] ram2_im__T_23_data; // @[Butterfly.scala 200:16]
  wire [1:0] ram2_im__T_23_addr; // @[Butterfly.scala 200:16]
  wire [15:0] ram2_im__T_14_data; // @[Butterfly.scala 200:16]
  wire [1:0] ram2_im__T_14_addr; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_mask; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_en; // @[Butterfly.scala 200:16]
  wire [15:0] Butterfly4_io_in1_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in1_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in2_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in2_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in3_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in3_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in4_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in4_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out1_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out1_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out2_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out2_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out3_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out3_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out4_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out4_im; // @[Butterfly.scala 139:22]
  wire [15:0] ComplexMul_io_op1_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op1_im; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op2_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op2_im; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_res_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_res_im; // @[Butterfly.scala 65:22]
  reg [9:0] in_counter; // @[Butterfly.scala 183:27]
  reg [31:0] _RAND_6;
  reg [9:0] out_counter; // @[Butterfly.scala 184:28]
  reg [31:0] _RAND_7;
  reg  out_flag; // @[Butterfly.scala 185:25]
  reg [31:0] _RAND_8;
  wire  _T = in_counter == 10'hb; // @[Butterfly.scala 188:49]
  wire  out_flag_start = io_in_valid & _T; // @[Butterfly.scala 188:36]
  wire [10:0] _T_2 = 11'h400 - 11'h1; // @[Butterfly.scala 189:51]
  wire [10:0] _GEN_229 = {{1'd0}, out_counter}; // @[Butterfly.scala 189:35]
  wire  out_flag_done = _GEN_229 == _T_2; // @[Butterfly.scala 189:35]
  wire [9:0] _T_4 = in_counter + 10'h1; // @[Butterfly.scala 191:46]
  wire  _GEN_1 = out_flag_done ? 1'h0 : out_flag; // @[Butterfly.scala 192:65]
  wire  _GEN_2 = out_flag_start | _GEN_1; // @[Butterfly.scala 192:24]
  wire [9:0] _T_7 = out_counter + 10'h1; // @[Butterfly.scala 193:51]
  wire [1:0] in_row = in_counter[3:2]; // @[Butterfly.scala 202:19 Butterfly.scala 203:13]
  wire  _T_15 = in_row == 2'h0; // @[Butterfly.scala 227:16]
  wire  _T_16 = in_row == 2'h1; // @[Butterfly.scala 233:22]
  wire  _T_17 = in_row == 2'h2; // @[Butterfly.scala 239:22]
  wire  _GEN_23 = _T_17 ? 1'h0 : 1'h1; // @[Butterfly.scala 239:30]
  wire  _GEN_31 = _T_16 ? 1'h0 : _GEN_23; // @[Butterfly.scala 233:30]
  wire  _GEN_39 = _T_15 | _GEN_31; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_24 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out2_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_33 = _T_16 ? $signed(io_in_im) : $signed(_GEN_24); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_42 = _T_15 ? $signed(io_in_im) : $signed(_GEN_33); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_25 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out2_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_34 = _T_16 ? $signed(io_in_re) : $signed(_GEN_25); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_43 = _T_15 ? $signed(io_in_re) : $signed(_GEN_34); // @[Butterfly.scala 227:24]
  wire  _GEN_30 = _T_16 | _GEN_23; // @[Butterfly.scala 233:30]
  wire  _GEN_40 = _T_15 ? 1'h0 : _GEN_30; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_26 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out3_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_35 = _T_16 ? $signed(io_in_im) : $signed(_GEN_26); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_44 = _T_15 ? $signed(io_in_im) : $signed(_GEN_35); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_27 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out3_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_36 = _T_16 ? $signed(io_in_re) : $signed(_GEN_27); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_45 = _T_15 ? $signed(io_in_re) : $signed(_GEN_36); // @[Butterfly.scala 227:24]
  wire  _GEN_32 = _T_16 ? 1'h0 : 1'h1; // @[Butterfly.scala 233:30]
  wire  _GEN_41 = _T_15 ? 1'h0 : _GEN_32; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_28 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out4_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_37 = _T_16 ? $signed(io_in_im) : $signed(_GEN_28); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_46 = _T_15 ? $signed(io_in_im) : $signed(_GEN_37); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_29 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out4_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_38 = _T_16 ? $signed(io_in_re) : $signed(_GEN_29); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_47 = _T_15 ? $signed(io_in_re) : $signed(_GEN_38); // @[Butterfly.scala 227:24]
  wire [1:0] out_row = out_counter[3:2]; // @[Butterfly.scala 265:19 Butterfly.scala 266:13]
  wire  _T_25 = out_row == 2'h0; // @[Butterfly.scala 270:13]
  wire  _T_26 = out_row == 2'h1; // @[Butterfly.scala 271:19]
  wire  _T_27 = out_row == 2'h2; // @[Butterfly.scala 272:19]
  wire [15:0] ram1_rdata_im = ram1_im__T_21_data; // @[Butterfly.scala 208:23 Butterfly.scala 261:16]
  wire [15:0] ram2_rdata_im = ram2_im__T_23_data; // @[Butterfly.scala 209:23 Butterfly.scala 262:16]
  wire [15:0] _GEN_57 = _T_27 ? $signed(ram1_rdata_im) : $signed(ram2_rdata_im); // @[Butterfly.scala 272:26]
  wire [15:0] ram1_rdata_re = ram1_re__T_21_data; // @[Butterfly.scala 208:23 Butterfly.scala 261:16]
  wire [15:0] ram2_rdata_re = ram2_re__T_23_data; // @[Butterfly.scala 209:23 Butterfly.scala 262:16]
  wire [15:0] _GEN_58 = _T_27 ? $signed(ram1_rdata_re) : $signed(ram2_rdata_re); // @[Butterfly.scala 272:26]
  wire [15:0] ram0_rdata_im = ram0_im__T_19_data; // @[Butterfly.scala 207:23 Butterfly.scala 260:16]
  wire [15:0] _GEN_59 = _T_26 ? $signed(ram0_rdata_im) : $signed(_GEN_57); // @[Butterfly.scala 271:26]
  wire [15:0] ram0_rdata_re = ram0_re__T_19_data; // @[Butterfly.scala 207:23 Butterfly.scala 260:16]
  wire [15:0] _GEN_60 = _T_26 ? $signed(ram0_rdata_re) : $signed(_GEN_58); // @[Butterfly.scala 271:26]
  wire [3:0] lut_adr_l = out_counter[3:0]; // @[Butterfly.scala 279:21 Butterfly.scala 281:19]
  wire [1:0] lut_adr_h = out_counter[5:4]; // @[Butterfly.scala 278:21 Butterfly.scala 280:19]
  wire [3:0] _GEN_230 = {{2'd0}, lut_adr_h}; // @[Butterfly.scala 282:25]
  wire [5:0] lut_adr = lut_adr_l * _GEN_230; // @[Butterfly.scala 282:25]
  wire [15:0] _GEN_64 = 6'h1 == lut_adr ? $signed(16'shfec) : $signed(16'sh1000); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_65 = 6'h2 == lut_adr ? $signed(16'shfb1) : $signed(_GEN_64); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_66 = 6'h3 == lut_adr ? $signed(16'shf50) : $signed(_GEN_65); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_67 = 6'h4 == lut_adr ? $signed(16'shec8) : $signed(_GEN_66); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_68 = 6'h5 == lut_adr ? $signed(16'she1c) : $signed(_GEN_67); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_69 = 6'h6 == lut_adr ? $signed(16'shd4e) : $signed(_GEN_68); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_70 = 6'h7 == lut_adr ? $signed(16'shc5e) : $signed(_GEN_69); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_71 = 6'h8 == lut_adr ? $signed(16'shb50) : $signed(_GEN_70); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_72 = 6'h9 == lut_adr ? $signed(16'sha26) : $signed(_GEN_71); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_73 = 6'ha == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_72); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_74 = 6'hb == lut_adr ? $signed(16'sh78b) : $signed(_GEN_73); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_75 = 6'hc == lut_adr ? $signed(16'sh61f) : $signed(_GEN_74); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_76 = 6'hd == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_75); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_77 = 6'he == lut_adr ? $signed(16'sh31f) : $signed(_GEN_76); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_78 = 6'hf == lut_adr ? $signed(16'sh191) : $signed(_GEN_77); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_79 = 6'h10 == lut_adr ? $signed(16'sh0) : $signed(_GEN_78); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_80 = 6'h11 == lut_adr ? $signed(-16'sh191) : $signed(_GEN_79); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_81 = 6'h12 == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_80); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_82 = 6'h13 == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_81); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_83 = 6'h14 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_82); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_84 = 6'h15 == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_83); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_85 = 6'h16 == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_84); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_86 = 6'h17 == lut_adr ? $signed(-16'sha26) : $signed(_GEN_85); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_87 = 6'h18 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_86); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_88 = 6'h19 == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_87); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_89 = 6'h1a == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_88); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_90 = 6'h1b == lut_adr ? $signed(-16'she1c) : $signed(_GEN_89); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_91 = 6'h1c == lut_adr ? $signed(-16'shec8) : $signed(_GEN_90); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_92 = 6'h1d == lut_adr ? $signed(-16'shf50) : $signed(_GEN_91); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_93 = 6'h1e == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_92); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_94 = 6'h1f == lut_adr ? $signed(-16'shfec) : $signed(_GEN_93); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_95 = 6'h20 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_94); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_96 = 6'h21 == lut_adr ? $signed(-16'shfec) : $signed(_GEN_95); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_97 = 6'h22 == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_96); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_98 = 6'h23 == lut_adr ? $signed(-16'shf50) : $signed(_GEN_97); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_99 = 6'h24 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_98); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_100 = 6'h25 == lut_adr ? $signed(-16'she1c) : $signed(_GEN_99); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_101 = 6'h26 == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_100); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_102 = 6'h27 == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_101); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_103 = 6'h28 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_102); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_104 = 6'h29 == lut_adr ? $signed(-16'sha26) : $signed(_GEN_103); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_105 = 6'h2a == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_104); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_106 = 6'h2b == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_105); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_107 = 6'h2c == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_106); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_108 = 6'h2d == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_107); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_109 = 6'h2e == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_108); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_110 = 6'h2f == lut_adr ? $signed(-16'sh191) : $signed(_GEN_109); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_111 = 6'h30 == lut_adr ? $signed(16'sh0) : $signed(_GEN_110); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_112 = 6'h31 == lut_adr ? $signed(16'sh191) : $signed(_GEN_111); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_113 = 6'h32 == lut_adr ? $signed(16'sh31f) : $signed(_GEN_112); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_114 = 6'h33 == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_113); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_115 = 6'h34 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_114); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_116 = 6'h35 == lut_adr ? $signed(16'sh78b) : $signed(_GEN_115); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_117 = 6'h36 == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_116); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_118 = 6'h37 == lut_adr ? $signed(16'sha26) : $signed(_GEN_117); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_119 = 6'h38 == lut_adr ? $signed(16'shb50) : $signed(_GEN_118); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_120 = 6'h39 == lut_adr ? $signed(16'shc5e) : $signed(_GEN_119); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_121 = 6'h3a == lut_adr ? $signed(16'shd4e) : $signed(_GEN_120); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_122 = 6'h3b == lut_adr ? $signed(16'she1c) : $signed(_GEN_121); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_123 = 6'h3c == lut_adr ? $signed(16'shec8) : $signed(_GEN_122); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_124 = 6'h3d == lut_adr ? $signed(16'shf50) : $signed(_GEN_123); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_125 = 6'h3e == lut_adr ? $signed(16'shfb1) : $signed(_GEN_124); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_128 = 6'h1 == lut_adr ? $signed(-16'sh191) : $signed(16'sh0); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_129 = 6'h2 == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_128); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_130 = 6'h3 == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_129); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_131 = 6'h4 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_130); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_132 = 6'h5 == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_131); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_133 = 6'h6 == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_132); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_134 = 6'h7 == lut_adr ? $signed(-16'sha26) : $signed(_GEN_133); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_135 = 6'h8 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_134); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_136 = 6'h9 == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_135); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_137 = 6'ha == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_136); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_138 = 6'hb == lut_adr ? $signed(-16'she1c) : $signed(_GEN_137); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_139 = 6'hc == lut_adr ? $signed(-16'shec8) : $signed(_GEN_138); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_140 = 6'hd == lut_adr ? $signed(-16'shf50) : $signed(_GEN_139); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_141 = 6'he == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_140); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_142 = 6'hf == lut_adr ? $signed(-16'shfec) : $signed(_GEN_141); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_143 = 6'h10 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_142); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_144 = 6'h11 == lut_adr ? $signed(-16'shfec) : $signed(_GEN_143); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_145 = 6'h12 == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_144); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_146 = 6'h13 == lut_adr ? $signed(-16'shf50) : $signed(_GEN_145); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_147 = 6'h14 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_146); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_148 = 6'h15 == lut_adr ? $signed(-16'she1c) : $signed(_GEN_147); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_149 = 6'h16 == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_148); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_150 = 6'h17 == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_149); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_151 = 6'h18 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_150); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_152 = 6'h19 == lut_adr ? $signed(-16'sha26) : $signed(_GEN_151); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_153 = 6'h1a == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_152); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_154 = 6'h1b == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_153); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_155 = 6'h1c == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_154); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_156 = 6'h1d == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_155); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_157 = 6'h1e == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_156); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_158 = 6'h1f == lut_adr ? $signed(-16'sh191) : $signed(_GEN_157); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_159 = 6'h20 == lut_adr ? $signed(16'sh0) : $signed(_GEN_158); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_160 = 6'h21 == lut_adr ? $signed(16'sh191) : $signed(_GEN_159); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_161 = 6'h22 == lut_adr ? $signed(16'sh31f) : $signed(_GEN_160); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_162 = 6'h23 == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_161); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_163 = 6'h24 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_162); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_164 = 6'h25 == lut_adr ? $signed(16'sh78b) : $signed(_GEN_163); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_165 = 6'h26 == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_164); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_166 = 6'h27 == lut_adr ? $signed(16'sha26) : $signed(_GEN_165); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_167 = 6'h28 == lut_adr ? $signed(16'shb50) : $signed(_GEN_166); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_168 = 6'h29 == lut_adr ? $signed(16'shc5e) : $signed(_GEN_167); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_169 = 6'h2a == lut_adr ? $signed(16'shd4e) : $signed(_GEN_168); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_170 = 6'h2b == lut_adr ? $signed(16'she1c) : $signed(_GEN_169); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_171 = 6'h2c == lut_adr ? $signed(16'shec8) : $signed(_GEN_170); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_172 = 6'h2d == lut_adr ? $signed(16'shf50) : $signed(_GEN_171); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_173 = 6'h2e == lut_adr ? $signed(16'shfb1) : $signed(_GEN_172); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_174 = 6'h2f == lut_adr ? $signed(16'shfec) : $signed(_GEN_173); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_175 = 6'h30 == lut_adr ? $signed(16'sh1000) : $signed(_GEN_174); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_176 = 6'h31 == lut_adr ? $signed(16'shfec) : $signed(_GEN_175); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_177 = 6'h32 == lut_adr ? $signed(16'shfb1) : $signed(_GEN_176); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_178 = 6'h33 == lut_adr ? $signed(16'shf50) : $signed(_GEN_177); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_179 = 6'h34 == lut_adr ? $signed(16'shec8) : $signed(_GEN_178); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_180 = 6'h35 == lut_adr ? $signed(16'she1c) : $signed(_GEN_179); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_181 = 6'h36 == lut_adr ? $signed(16'shd4e) : $signed(_GEN_180); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_182 = 6'h37 == lut_adr ? $signed(16'shc5e) : $signed(_GEN_181); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_183 = 6'h38 == lut_adr ? $signed(16'shb50) : $signed(_GEN_182); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_184 = 6'h39 == lut_adr ? $signed(16'sha26) : $signed(_GEN_183); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_185 = 6'h3a == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_184); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_186 = 6'h3b == lut_adr ? $signed(16'sh78b) : $signed(_GEN_185); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_187 = 6'h3c == lut_adr ? $signed(16'sh61f) : $signed(_GEN_186); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_188 = 6'h3d == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_187); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_189 = 6'h3e == lut_adr ? $signed(16'sh31f) : $signed(_GEN_188); // @[Butterfly.scala 176:12]
  reg [15:0] _T_34_re; // @[Butterfly.scala 295:24]
  reg [31:0] _RAND_9;
  reg [15:0] _T_34_im; // @[Butterfly.scala 295:24]
  reg [31:0] _RAND_10;
  reg  _T_35; // @[Butterfly.scala 296:24]
  reg [31:0] _RAND_11;
  Butterfly4 Butterfly4 ( // @[Butterfly.scala 139:22]
    .io_in1_re(Butterfly4_io_in1_re),
    .io_in1_im(Butterfly4_io_in1_im),
    .io_in2_re(Butterfly4_io_in2_re),
    .io_in2_im(Butterfly4_io_in2_im),
    .io_in3_re(Butterfly4_io_in3_re),
    .io_in3_im(Butterfly4_io_in3_im),
    .io_in4_re(Butterfly4_io_in4_re),
    .io_in4_im(Butterfly4_io_in4_im),
    .io_out1_re(Butterfly4_io_out1_re),
    .io_out1_im(Butterfly4_io_out1_im),
    .io_out2_re(Butterfly4_io_out2_re),
    .io_out2_im(Butterfly4_io_out2_im),
    .io_out3_re(Butterfly4_io_out3_re),
    .io_out3_im(Butterfly4_io_out3_im),
    .io_out4_re(Butterfly4_io_out4_re),
    .io_out4_im(Butterfly4_io_out4_im)
  );
  ComplexMul ComplexMul ( // @[Butterfly.scala 65:22]
    .io_op1_re(ComplexMul_io_op1_re),
    .io_op1_im(ComplexMul_io_op1_im),
    .io_op2_re(ComplexMul_io_op2_re),
    .io_op2_im(ComplexMul_io_op2_im),
    .io_res_re(ComplexMul_io_res_re),
    .io_res_im(ComplexMul_io_res_im)
  );
  assign ram0_re__T_19_addr = out_counter[1:0];
  assign ram0_re__T_19_data = ram0_re[ram0_re__T_19_addr]; // @[Butterfly.scala 198:16]
  assign ram0_re__T_10_data = io_in_valid ? $signed(_GEN_43) : $signed(io_in_re);
  assign ram0_re__T_10_addr = in_counter[1:0];
  assign ram0_re__T_10_mask = 1'h1;
  assign ram0_re__T_10_en = io_in_valid & _GEN_39;
  assign ram0_im__T_19_addr = out_counter[1:0];
  assign ram0_im__T_19_data = ram0_im[ram0_im__T_19_addr]; // @[Butterfly.scala 198:16]
  assign ram0_im__T_10_data = io_in_valid ? $signed(_GEN_42) : $signed(io_in_im);
  assign ram0_im__T_10_addr = in_counter[1:0];
  assign ram0_im__T_10_mask = 1'h1;
  assign ram0_im__T_10_en = io_in_valid & _GEN_39;
  assign ram1_re__T_21_addr = out_counter[1:0];
  assign ram1_re__T_21_data = ram1_re[ram1_re__T_21_addr]; // @[Butterfly.scala 199:16]
  assign ram1_re__T_12_data = io_in_valid ? $signed(_GEN_45) : $signed(io_in_re);
  assign ram1_re__T_12_addr = in_counter[1:0];
  assign ram1_re__T_12_mask = 1'h1;
  assign ram1_re__T_12_en = io_in_valid & _GEN_40;
  assign ram1_im__T_21_addr = out_counter[1:0];
  assign ram1_im__T_21_data = ram1_im[ram1_im__T_21_addr]; // @[Butterfly.scala 199:16]
  assign ram1_im__T_12_data = io_in_valid ? $signed(_GEN_44) : $signed(io_in_im);
  assign ram1_im__T_12_addr = in_counter[1:0];
  assign ram1_im__T_12_mask = 1'h1;
  assign ram1_im__T_12_en = io_in_valid & _GEN_40;
  assign ram2_re__T_23_addr = out_counter[1:0];
  assign ram2_re__T_23_data = ram2_re[ram2_re__T_23_addr]; // @[Butterfly.scala 200:16]
  assign ram2_re__T_14_data = io_in_valid ? $signed(_GEN_47) : $signed(io_in_re);
  assign ram2_re__T_14_addr = in_counter[1:0];
  assign ram2_re__T_14_mask = 1'h1;
  assign ram2_re__T_14_en = io_in_valid & _GEN_41;
  assign ram2_im__T_23_addr = out_counter[1:0];
  assign ram2_im__T_23_data = ram2_im[ram2_im__T_23_addr]; // @[Butterfly.scala 200:16]
  assign ram2_im__T_14_data = io_in_valid ? $signed(_GEN_46) : $signed(io_in_im);
  assign ram2_im__T_14_addr = in_counter[1:0];
  assign ram2_im__T_14_mask = 1'h1;
  assign ram2_im__T_14_en = io_in_valid & _GEN_41;
  assign io_out_re = _T_34_re; // @[Butterfly.scala 290:14 Butterfly.scala 295:14]
  assign io_out_im = _T_34_im; // @[Butterfly.scala 290:14 Butterfly.scala 295:14]
  assign io_out_valid = _T_35; // @[Butterfly.scala 291:14 Butterfly.scala 296:14]
  assign Butterfly4_io_in1_re = ram0_re__T_19_data; // @[Butterfly.scala 140:17]
  assign Butterfly4_io_in1_im = ram0_im__T_19_data; // @[Butterfly.scala 140:17]
  assign Butterfly4_io_in2_re = ram1_re__T_21_data; // @[Butterfly.scala 141:17]
  assign Butterfly4_io_in2_im = ram1_im__T_21_data; // @[Butterfly.scala 141:17]
  assign Butterfly4_io_in3_re = ram2_re__T_23_data; // @[Butterfly.scala 142:17]
  assign Butterfly4_io_in3_im = ram2_im__T_23_data; // @[Butterfly.scala 142:17]
  assign Butterfly4_io_in4_re = io_in_re; // @[Butterfly.scala 143:17]
  assign Butterfly4_io_in4_im = io_in_im; // @[Butterfly.scala 143:17]
  assign ComplexMul_io_op1_re = _T_25 ? $signed(Butterfly4_io_out1_re) : $signed(_GEN_60); // @[Butterfly.scala 66:17]
  assign ComplexMul_io_op1_im = _T_25 ? $signed(Butterfly4_io_out1_im) : $signed(_GEN_59); // @[Butterfly.scala 66:17]
  assign ComplexMul_io_op2_re = 6'h3f == lut_adr ? $signed(16'shfec) : $signed(_GEN_125); // @[Butterfly.scala 67:17]
  assign ComplexMul_io_op2_im = 6'h3f == lut_adr ? $signed(16'sh191) : $signed(_GEN_189); // @[Butterfly.scala 67:17]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram0_re[initvar] = _RAND_0[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram0_im[initvar] = _RAND_1[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram1_re[initvar] = _RAND_2[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram1_im[initvar] = _RAND_3[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram2_re[initvar] = _RAND_4[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram2_im[initvar] = _RAND_5[15:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  in_counter = _RAND_6[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  out_counter = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  out_flag = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_34_re = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_34_im = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_35 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram0_re__T_10_en & ram0_re__T_10_mask) begin
      ram0_re[ram0_re__T_10_addr] <= ram0_re__T_10_data; // @[Butterfly.scala 198:16]
    end
    if(ram0_im__T_10_en & ram0_im__T_10_mask) begin
      ram0_im[ram0_im__T_10_addr] <= ram0_im__T_10_data; // @[Butterfly.scala 198:16]
    end
    if(ram1_re__T_12_en & ram1_re__T_12_mask) begin
      ram1_re[ram1_re__T_12_addr] <= ram1_re__T_12_data; // @[Butterfly.scala 199:16]
    end
    if(ram1_im__T_12_en & ram1_im__T_12_mask) begin
      ram1_im[ram1_im__T_12_addr] <= ram1_im__T_12_data; // @[Butterfly.scala 199:16]
    end
    if(ram2_re__T_14_en & ram2_re__T_14_mask) begin
      ram2_re[ram2_re__T_14_addr] <= ram2_re__T_14_data; // @[Butterfly.scala 200:16]
    end
    if(ram2_im__T_14_en & ram2_im__T_14_mask) begin
      ram2_im[ram2_im__T_14_addr] <= ram2_im__T_14_data; // @[Butterfly.scala 200:16]
    end
    if (reset) begin
      in_counter <= 10'h0;
    end else if (io_in_valid) begin
      in_counter <= _T_4;
    end
    if (reset) begin
      out_counter <= 10'h0;
    end else if (out_flag) begin
      out_counter <= _T_7;
    end
    if (reset) begin
      out_flag <= 1'h0;
    end else begin
      out_flag <= _GEN_2;
    end
    _T_34_re <= ComplexMul_io_res_re;
    _T_34_im <= ComplexMul_io_res_im;
    _T_35 <= out_flag;
  end
endmodule
module Butterfly4_TOP_2(
  input         clock,
  input         reset,
  input  [15:0] io_in_re,
  input  [15:0] io_in_im,
  input         io_in_valid,
  output [15:0] io_out_re,
  output [15:0] io_out_im,
  output        io_out_valid
);
  reg [15:0] ram0_re [0:15]; // @[Butterfly.scala 198:16]
  reg [31:0] _RAND_0;
  wire [15:0] ram0_re__T_19_data; // @[Butterfly.scala 198:16]
  wire [3:0] ram0_re__T_19_addr; // @[Butterfly.scala 198:16]
  wire [15:0] ram0_re__T_10_data; // @[Butterfly.scala 198:16]
  wire [3:0] ram0_re__T_10_addr; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_mask; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_en; // @[Butterfly.scala 198:16]
  reg [15:0] ram0_im [0:15]; // @[Butterfly.scala 198:16]
  reg [31:0] _RAND_1;
  wire [15:0] ram0_im__T_19_data; // @[Butterfly.scala 198:16]
  wire [3:0] ram0_im__T_19_addr; // @[Butterfly.scala 198:16]
  wire [15:0] ram0_im__T_10_data; // @[Butterfly.scala 198:16]
  wire [3:0] ram0_im__T_10_addr; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_mask; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_en; // @[Butterfly.scala 198:16]
  reg [15:0] ram1_re [0:15]; // @[Butterfly.scala 199:16]
  reg [31:0] _RAND_2;
  wire [15:0] ram1_re__T_21_data; // @[Butterfly.scala 199:16]
  wire [3:0] ram1_re__T_21_addr; // @[Butterfly.scala 199:16]
  wire [15:0] ram1_re__T_12_data; // @[Butterfly.scala 199:16]
  wire [3:0] ram1_re__T_12_addr; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_mask; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_en; // @[Butterfly.scala 199:16]
  reg [15:0] ram1_im [0:15]; // @[Butterfly.scala 199:16]
  reg [31:0] _RAND_3;
  wire [15:0] ram1_im__T_21_data; // @[Butterfly.scala 199:16]
  wire [3:0] ram1_im__T_21_addr; // @[Butterfly.scala 199:16]
  wire [15:0] ram1_im__T_12_data; // @[Butterfly.scala 199:16]
  wire [3:0] ram1_im__T_12_addr; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_mask; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_en; // @[Butterfly.scala 199:16]
  reg [15:0] ram2_re [0:15]; // @[Butterfly.scala 200:16]
  reg [31:0] _RAND_4;
  wire [15:0] ram2_re__T_23_data; // @[Butterfly.scala 200:16]
  wire [3:0] ram2_re__T_23_addr; // @[Butterfly.scala 200:16]
  wire [15:0] ram2_re__T_14_data; // @[Butterfly.scala 200:16]
  wire [3:0] ram2_re__T_14_addr; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_mask; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_en; // @[Butterfly.scala 200:16]
  reg [15:0] ram2_im [0:15]; // @[Butterfly.scala 200:16]
  reg [31:0] _RAND_5;
  wire [15:0] ram2_im__T_23_data; // @[Butterfly.scala 200:16]
  wire [3:0] ram2_im__T_23_addr; // @[Butterfly.scala 200:16]
  wire [15:0] ram2_im__T_14_data; // @[Butterfly.scala 200:16]
  wire [3:0] ram2_im__T_14_addr; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_mask; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_en; // @[Butterfly.scala 200:16]
  wire [15:0] Butterfly4_io_in1_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in1_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in2_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in2_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in3_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in3_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in4_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in4_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out1_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out1_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out2_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out2_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out3_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out3_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out4_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out4_im; // @[Butterfly.scala 139:22]
  wire [15:0] ComplexMul_io_op1_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op1_im; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op2_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op2_im; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_res_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_res_im; // @[Butterfly.scala 65:22]
  reg [9:0] in_counter; // @[Butterfly.scala 183:27]
  reg [31:0] _RAND_6;
  reg [9:0] out_counter; // @[Butterfly.scala 184:28]
  reg [31:0] _RAND_7;
  reg  out_flag; // @[Butterfly.scala 185:25]
  reg [31:0] _RAND_8;
  wire  _T = in_counter == 10'h2f; // @[Butterfly.scala 188:49]
  wire  out_flag_start = io_in_valid & _T; // @[Butterfly.scala 188:36]
  wire [10:0] _T_2 = 11'h400 - 11'h1; // @[Butterfly.scala 189:51]
  wire [10:0] _GEN_709 = {{1'd0}, out_counter}; // @[Butterfly.scala 189:35]
  wire  out_flag_done = _GEN_709 == _T_2; // @[Butterfly.scala 189:35]
  wire [9:0] _T_4 = in_counter + 10'h1; // @[Butterfly.scala 191:46]
  wire  _GEN_1 = out_flag_done ? 1'h0 : out_flag; // @[Butterfly.scala 192:65]
  wire  _GEN_2 = out_flag_start | _GEN_1; // @[Butterfly.scala 192:24]
  wire [9:0] _T_7 = out_counter + 10'h1; // @[Butterfly.scala 193:51]
  wire [1:0] in_row = in_counter[5:4]; // @[Butterfly.scala 202:19 Butterfly.scala 203:13]
  wire  _T_15 = in_row == 2'h0; // @[Butterfly.scala 227:16]
  wire  _T_16 = in_row == 2'h1; // @[Butterfly.scala 233:22]
  wire  _T_17 = in_row == 2'h2; // @[Butterfly.scala 239:22]
  wire  _GEN_23 = _T_17 ? 1'h0 : 1'h1; // @[Butterfly.scala 239:30]
  wire  _GEN_31 = _T_16 ? 1'h0 : _GEN_23; // @[Butterfly.scala 233:30]
  wire  _GEN_39 = _T_15 | _GEN_31; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_24 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out2_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_33 = _T_16 ? $signed(io_in_im) : $signed(_GEN_24); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_42 = _T_15 ? $signed(io_in_im) : $signed(_GEN_33); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_25 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out2_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_34 = _T_16 ? $signed(io_in_re) : $signed(_GEN_25); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_43 = _T_15 ? $signed(io_in_re) : $signed(_GEN_34); // @[Butterfly.scala 227:24]
  wire  _GEN_30 = _T_16 | _GEN_23; // @[Butterfly.scala 233:30]
  wire  _GEN_40 = _T_15 ? 1'h0 : _GEN_30; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_26 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out3_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_35 = _T_16 ? $signed(io_in_im) : $signed(_GEN_26); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_44 = _T_15 ? $signed(io_in_im) : $signed(_GEN_35); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_27 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out3_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_36 = _T_16 ? $signed(io_in_re) : $signed(_GEN_27); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_45 = _T_15 ? $signed(io_in_re) : $signed(_GEN_36); // @[Butterfly.scala 227:24]
  wire  _GEN_32 = _T_16 ? 1'h0 : 1'h1; // @[Butterfly.scala 233:30]
  wire  _GEN_41 = _T_15 ? 1'h0 : _GEN_32; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_28 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out4_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_37 = _T_16 ? $signed(io_in_im) : $signed(_GEN_28); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_46 = _T_15 ? $signed(io_in_im) : $signed(_GEN_37); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_29 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out4_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_38 = _T_16 ? $signed(io_in_re) : $signed(_GEN_29); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_47 = _T_15 ? $signed(io_in_re) : $signed(_GEN_38); // @[Butterfly.scala 227:24]
  wire [1:0] out_row = out_counter[5:4]; // @[Butterfly.scala 265:19 Butterfly.scala 266:13]
  wire  _T_25 = out_row == 2'h0; // @[Butterfly.scala 270:13]
  wire  _T_26 = out_row == 2'h1; // @[Butterfly.scala 271:19]
  wire  _T_27 = out_row == 2'h2; // @[Butterfly.scala 272:19]
  wire [15:0] ram1_rdata_im = ram1_im__T_21_data; // @[Butterfly.scala 208:23 Butterfly.scala 261:16]
  wire [15:0] ram2_rdata_im = ram2_im__T_23_data; // @[Butterfly.scala 209:23 Butterfly.scala 262:16]
  wire [15:0] _GEN_57 = _T_27 ? $signed(ram1_rdata_im) : $signed(ram2_rdata_im); // @[Butterfly.scala 272:26]
  wire [15:0] ram1_rdata_re = ram1_re__T_21_data; // @[Butterfly.scala 208:23 Butterfly.scala 261:16]
  wire [15:0] ram2_rdata_re = ram2_re__T_23_data; // @[Butterfly.scala 209:23 Butterfly.scala 262:16]
  wire [15:0] _GEN_58 = _T_27 ? $signed(ram1_rdata_re) : $signed(ram2_rdata_re); // @[Butterfly.scala 272:26]
  wire [15:0] ram0_rdata_im = ram0_im__T_19_data; // @[Butterfly.scala 207:23 Butterfly.scala 260:16]
  wire [15:0] _GEN_59 = _T_26 ? $signed(ram0_rdata_im) : $signed(_GEN_57); // @[Butterfly.scala 271:26]
  wire [15:0] ram0_rdata_re = ram0_re__T_19_data; // @[Butterfly.scala 207:23 Butterfly.scala 260:16]
  wire [15:0] _GEN_60 = _T_26 ? $signed(ram0_rdata_re) : $signed(_GEN_58); // @[Butterfly.scala 271:26]
  wire [5:0] lut_adr_l = out_counter[5:0]; // @[Butterfly.scala 279:21 Butterfly.scala 281:19]
  wire [1:0] lut_adr_h = out_counter[7:6]; // @[Butterfly.scala 278:21 Butterfly.scala 280:19]
  wire [5:0] _GEN_710 = {{4'd0}, lut_adr_h}; // @[Butterfly.scala 282:25]
  wire [7:0] lut_adr = lut_adr_l * _GEN_710; // @[Butterfly.scala 282:25]
  wire [15:0] _GEN_64 = 8'h1 == lut_adr ? $signed(16'shfff) : $signed(16'sh1000); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_65 = 8'h2 == lut_adr ? $signed(16'shffb) : $signed(_GEN_64); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_66 = 8'h3 == lut_adr ? $signed(16'shff5) : $signed(_GEN_65); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_67 = 8'h4 == lut_adr ? $signed(16'shfec) : $signed(_GEN_66); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_68 = 8'h5 == lut_adr ? $signed(16'shfe1) : $signed(_GEN_67); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_69 = 8'h6 == lut_adr ? $signed(16'shfd4) : $signed(_GEN_68); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_70 = 8'h7 == lut_adr ? $signed(16'shfc4) : $signed(_GEN_69); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_71 = 8'h8 == lut_adr ? $signed(16'shfb1) : $signed(_GEN_70); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_72 = 8'h9 == lut_adr ? $signed(16'shf9c) : $signed(_GEN_71); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_73 = 8'ha == lut_adr ? $signed(16'shf85) : $signed(_GEN_72); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_74 = 8'hb == lut_adr ? $signed(16'shf6c) : $signed(_GEN_73); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_75 = 8'hc == lut_adr ? $signed(16'shf50) : $signed(_GEN_74); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_76 = 8'hd == lut_adr ? $signed(16'shf31) : $signed(_GEN_75); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_77 = 8'he == lut_adr ? $signed(16'shf11) : $signed(_GEN_76); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_78 = 8'hf == lut_adr ? $signed(16'sheee) : $signed(_GEN_77); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_79 = 8'h10 == lut_adr ? $signed(16'shec8) : $signed(_GEN_78); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_80 = 8'h11 == lut_adr ? $signed(16'shea1) : $signed(_GEN_79); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_81 = 8'h12 == lut_adr ? $signed(16'she77) : $signed(_GEN_80); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_82 = 8'h13 == lut_adr ? $signed(16'she4b) : $signed(_GEN_81); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_83 = 8'h14 == lut_adr ? $signed(16'she1c) : $signed(_GEN_82); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_84 = 8'h15 == lut_adr ? $signed(16'shdec) : $signed(_GEN_83); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_85 = 8'h16 == lut_adr ? $signed(16'shdb9) : $signed(_GEN_84); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_86 = 8'h17 == lut_adr ? $signed(16'shd85) : $signed(_GEN_85); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_87 = 8'h18 == lut_adr ? $signed(16'shd4e) : $signed(_GEN_86); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_88 = 8'h19 == lut_adr ? $signed(16'shd15) : $signed(_GEN_87); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_89 = 8'h1a == lut_adr ? $signed(16'shcda) : $signed(_GEN_88); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_90 = 8'h1b == lut_adr ? $signed(16'shc9d) : $signed(_GEN_89); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_91 = 8'h1c == lut_adr ? $signed(16'shc5e) : $signed(_GEN_90); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_92 = 8'h1d == lut_adr ? $signed(16'shc1e) : $signed(_GEN_91); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_93 = 8'h1e == lut_adr ? $signed(16'shbdb) : $signed(_GEN_92); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_94 = 8'h1f == lut_adr ? $signed(16'shb97) : $signed(_GEN_93); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_95 = 8'h20 == lut_adr ? $signed(16'shb50) : $signed(_GEN_94); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_96 = 8'h21 == lut_adr ? $signed(16'shb08) : $signed(_GEN_95); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_97 = 8'h22 == lut_adr ? $signed(16'shabf) : $signed(_GEN_96); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_98 = 8'h23 == lut_adr ? $signed(16'sha73) : $signed(_GEN_97); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_99 = 8'h24 == lut_adr ? $signed(16'sha26) : $signed(_GEN_98); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_100 = 8'h25 == lut_adr ? $signed(16'sh9d8) : $signed(_GEN_99); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_101 = 8'h26 == lut_adr ? $signed(16'sh988) : $signed(_GEN_100); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_102 = 8'h27 == lut_adr ? $signed(16'sh937) : $signed(_GEN_101); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_103 = 8'h28 == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_102); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_104 = 8'h29 == lut_adr ? $signed(16'sh88f) : $signed(_GEN_103); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_105 = 8'h2a == lut_adr ? $signed(16'sh83a) : $signed(_GEN_104); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_106 = 8'h2b == lut_adr ? $signed(16'sh7e3) : $signed(_GEN_105); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_107 = 8'h2c == lut_adr ? $signed(16'sh78b) : $signed(_GEN_106); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_108 = 8'h2d == lut_adr ? $signed(16'sh732) : $signed(_GEN_107); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_109 = 8'h2e == lut_adr ? $signed(16'sh6d7) : $signed(_GEN_108); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_110 = 8'h2f == lut_adr ? $signed(16'sh67c) : $signed(_GEN_109); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_111 = 8'h30 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_110); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_112 = 8'h31 == lut_adr ? $signed(16'sh5c2) : $signed(_GEN_111); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_113 = 8'h32 == lut_adr ? $signed(16'sh564) : $signed(_GEN_112); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_114 = 8'h33 == lut_adr ? $signed(16'sh505) : $signed(_GEN_113); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_115 = 8'h34 == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_114); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_116 = 8'h35 == lut_adr ? $signed(16'sh444) : $signed(_GEN_115); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_117 = 8'h36 == lut_adr ? $signed(16'sh3e3) : $signed(_GEN_116); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_118 = 8'h37 == lut_adr ? $signed(16'sh381) : $signed(_GEN_117); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_119 = 8'h38 == lut_adr ? $signed(16'sh31f) : $signed(_GEN_118); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_120 = 8'h39 == lut_adr ? $signed(16'sh2bc) : $signed(_GEN_119); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_121 = 8'h3a == lut_adr ? $signed(16'sh259) : $signed(_GEN_120); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_122 = 8'h3b == lut_adr ? $signed(16'sh1f5) : $signed(_GEN_121); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_123 = 8'h3c == lut_adr ? $signed(16'sh191) : $signed(_GEN_122); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_124 = 8'h3d == lut_adr ? $signed(16'sh12d) : $signed(_GEN_123); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_125 = 8'h3e == lut_adr ? $signed(16'shc9) : $signed(_GEN_124); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_126 = 8'h3f == lut_adr ? $signed(16'sh65) : $signed(_GEN_125); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_127 = 8'h40 == lut_adr ? $signed(16'sh0) : $signed(_GEN_126); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_128 = 8'h41 == lut_adr ? $signed(-16'sh65) : $signed(_GEN_127); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_129 = 8'h42 == lut_adr ? $signed(-16'shc9) : $signed(_GEN_128); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_130 = 8'h43 == lut_adr ? $signed(-16'sh12d) : $signed(_GEN_129); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_131 = 8'h44 == lut_adr ? $signed(-16'sh191) : $signed(_GEN_130); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_132 = 8'h45 == lut_adr ? $signed(-16'sh1f5) : $signed(_GEN_131); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_133 = 8'h46 == lut_adr ? $signed(-16'sh259) : $signed(_GEN_132); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_134 = 8'h47 == lut_adr ? $signed(-16'sh2bc) : $signed(_GEN_133); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_135 = 8'h48 == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_134); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_136 = 8'h49 == lut_adr ? $signed(-16'sh381) : $signed(_GEN_135); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_137 = 8'h4a == lut_adr ? $signed(-16'sh3e3) : $signed(_GEN_136); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_138 = 8'h4b == lut_adr ? $signed(-16'sh444) : $signed(_GEN_137); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_139 = 8'h4c == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_138); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_140 = 8'h4d == lut_adr ? $signed(-16'sh505) : $signed(_GEN_139); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_141 = 8'h4e == lut_adr ? $signed(-16'sh564) : $signed(_GEN_140); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_142 = 8'h4f == lut_adr ? $signed(-16'sh5c2) : $signed(_GEN_141); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_143 = 8'h50 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_142); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_144 = 8'h51 == lut_adr ? $signed(-16'sh67c) : $signed(_GEN_143); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_145 = 8'h52 == lut_adr ? $signed(-16'sh6d7) : $signed(_GEN_144); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_146 = 8'h53 == lut_adr ? $signed(-16'sh732) : $signed(_GEN_145); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_147 = 8'h54 == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_146); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_148 = 8'h55 == lut_adr ? $signed(-16'sh7e3) : $signed(_GEN_147); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_149 = 8'h56 == lut_adr ? $signed(-16'sh83a) : $signed(_GEN_148); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_150 = 8'h57 == lut_adr ? $signed(-16'sh88f) : $signed(_GEN_149); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_151 = 8'h58 == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_150); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_152 = 8'h59 == lut_adr ? $signed(-16'sh937) : $signed(_GEN_151); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_153 = 8'h5a == lut_adr ? $signed(-16'sh988) : $signed(_GEN_152); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_154 = 8'h5b == lut_adr ? $signed(-16'sh9d8) : $signed(_GEN_153); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_155 = 8'h5c == lut_adr ? $signed(-16'sha26) : $signed(_GEN_154); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_156 = 8'h5d == lut_adr ? $signed(-16'sha73) : $signed(_GEN_155); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_157 = 8'h5e == lut_adr ? $signed(-16'shabf) : $signed(_GEN_156); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_158 = 8'h5f == lut_adr ? $signed(-16'shb08) : $signed(_GEN_157); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_159 = 8'h60 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_158); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_160 = 8'h61 == lut_adr ? $signed(-16'shb97) : $signed(_GEN_159); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_161 = 8'h62 == lut_adr ? $signed(-16'shbdb) : $signed(_GEN_160); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_162 = 8'h63 == lut_adr ? $signed(-16'shc1e) : $signed(_GEN_161); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_163 = 8'h64 == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_162); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_164 = 8'h65 == lut_adr ? $signed(-16'shc9d) : $signed(_GEN_163); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_165 = 8'h66 == lut_adr ? $signed(-16'shcda) : $signed(_GEN_164); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_166 = 8'h67 == lut_adr ? $signed(-16'shd15) : $signed(_GEN_165); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_167 = 8'h68 == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_166); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_168 = 8'h69 == lut_adr ? $signed(-16'shd85) : $signed(_GEN_167); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_169 = 8'h6a == lut_adr ? $signed(-16'shdb9) : $signed(_GEN_168); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_170 = 8'h6b == lut_adr ? $signed(-16'shdec) : $signed(_GEN_169); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_171 = 8'h6c == lut_adr ? $signed(-16'she1c) : $signed(_GEN_170); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_172 = 8'h6d == lut_adr ? $signed(-16'she4b) : $signed(_GEN_171); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_173 = 8'h6e == lut_adr ? $signed(-16'she77) : $signed(_GEN_172); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_174 = 8'h6f == lut_adr ? $signed(-16'shea1) : $signed(_GEN_173); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_175 = 8'h70 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_174); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_176 = 8'h71 == lut_adr ? $signed(-16'sheee) : $signed(_GEN_175); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_177 = 8'h72 == lut_adr ? $signed(-16'shf11) : $signed(_GEN_176); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_178 = 8'h73 == lut_adr ? $signed(-16'shf31) : $signed(_GEN_177); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_179 = 8'h74 == lut_adr ? $signed(-16'shf50) : $signed(_GEN_178); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_180 = 8'h75 == lut_adr ? $signed(-16'shf6c) : $signed(_GEN_179); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_181 = 8'h76 == lut_adr ? $signed(-16'shf85) : $signed(_GEN_180); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_182 = 8'h77 == lut_adr ? $signed(-16'shf9c) : $signed(_GEN_181); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_183 = 8'h78 == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_182); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_184 = 8'h79 == lut_adr ? $signed(-16'shfc4) : $signed(_GEN_183); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_185 = 8'h7a == lut_adr ? $signed(-16'shfd4) : $signed(_GEN_184); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_186 = 8'h7b == lut_adr ? $signed(-16'shfe1) : $signed(_GEN_185); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_187 = 8'h7c == lut_adr ? $signed(-16'shfec) : $signed(_GEN_186); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_188 = 8'h7d == lut_adr ? $signed(-16'shff5) : $signed(_GEN_187); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_189 = 8'h7e == lut_adr ? $signed(-16'shffb) : $signed(_GEN_188); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_190 = 8'h7f == lut_adr ? $signed(-16'shfff) : $signed(_GEN_189); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_191 = 8'h80 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_190); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_192 = 8'h81 == lut_adr ? $signed(-16'shfff) : $signed(_GEN_191); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_193 = 8'h82 == lut_adr ? $signed(-16'shffb) : $signed(_GEN_192); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_194 = 8'h83 == lut_adr ? $signed(-16'shff5) : $signed(_GEN_193); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_195 = 8'h84 == lut_adr ? $signed(-16'shfec) : $signed(_GEN_194); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_196 = 8'h85 == lut_adr ? $signed(-16'shfe1) : $signed(_GEN_195); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_197 = 8'h86 == lut_adr ? $signed(-16'shfd4) : $signed(_GEN_196); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_198 = 8'h87 == lut_adr ? $signed(-16'shfc4) : $signed(_GEN_197); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_199 = 8'h88 == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_198); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_200 = 8'h89 == lut_adr ? $signed(-16'shf9c) : $signed(_GEN_199); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_201 = 8'h8a == lut_adr ? $signed(-16'shf85) : $signed(_GEN_200); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_202 = 8'h8b == lut_adr ? $signed(-16'shf6c) : $signed(_GEN_201); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_203 = 8'h8c == lut_adr ? $signed(-16'shf50) : $signed(_GEN_202); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_204 = 8'h8d == lut_adr ? $signed(-16'shf31) : $signed(_GEN_203); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_205 = 8'h8e == lut_adr ? $signed(-16'shf11) : $signed(_GEN_204); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_206 = 8'h8f == lut_adr ? $signed(-16'sheee) : $signed(_GEN_205); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_207 = 8'h90 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_206); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_208 = 8'h91 == lut_adr ? $signed(-16'shea1) : $signed(_GEN_207); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_209 = 8'h92 == lut_adr ? $signed(-16'she77) : $signed(_GEN_208); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_210 = 8'h93 == lut_adr ? $signed(-16'she4b) : $signed(_GEN_209); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_211 = 8'h94 == lut_adr ? $signed(-16'she1c) : $signed(_GEN_210); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_212 = 8'h95 == lut_adr ? $signed(-16'shdec) : $signed(_GEN_211); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_213 = 8'h96 == lut_adr ? $signed(-16'shdb9) : $signed(_GEN_212); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_214 = 8'h97 == lut_adr ? $signed(-16'shd85) : $signed(_GEN_213); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_215 = 8'h98 == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_214); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_216 = 8'h99 == lut_adr ? $signed(-16'shd15) : $signed(_GEN_215); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_217 = 8'h9a == lut_adr ? $signed(-16'shcda) : $signed(_GEN_216); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_218 = 8'h9b == lut_adr ? $signed(-16'shc9d) : $signed(_GEN_217); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_219 = 8'h9c == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_218); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_220 = 8'h9d == lut_adr ? $signed(-16'shc1e) : $signed(_GEN_219); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_221 = 8'h9e == lut_adr ? $signed(-16'shbdb) : $signed(_GEN_220); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_222 = 8'h9f == lut_adr ? $signed(-16'shb97) : $signed(_GEN_221); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_223 = 8'ha0 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_222); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_224 = 8'ha1 == lut_adr ? $signed(-16'shb08) : $signed(_GEN_223); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_225 = 8'ha2 == lut_adr ? $signed(-16'shabf) : $signed(_GEN_224); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_226 = 8'ha3 == lut_adr ? $signed(-16'sha73) : $signed(_GEN_225); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_227 = 8'ha4 == lut_adr ? $signed(-16'sha26) : $signed(_GEN_226); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_228 = 8'ha5 == lut_adr ? $signed(-16'sh9d8) : $signed(_GEN_227); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_229 = 8'ha6 == lut_adr ? $signed(-16'sh988) : $signed(_GEN_228); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_230 = 8'ha7 == lut_adr ? $signed(-16'sh937) : $signed(_GEN_229); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_231 = 8'ha8 == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_230); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_232 = 8'ha9 == lut_adr ? $signed(-16'sh88f) : $signed(_GEN_231); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_233 = 8'haa == lut_adr ? $signed(-16'sh83a) : $signed(_GEN_232); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_234 = 8'hab == lut_adr ? $signed(-16'sh7e3) : $signed(_GEN_233); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_235 = 8'hac == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_234); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_236 = 8'had == lut_adr ? $signed(-16'sh732) : $signed(_GEN_235); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_237 = 8'hae == lut_adr ? $signed(-16'sh6d7) : $signed(_GEN_236); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_238 = 8'haf == lut_adr ? $signed(-16'sh67c) : $signed(_GEN_237); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_239 = 8'hb0 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_238); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_240 = 8'hb1 == lut_adr ? $signed(-16'sh5c2) : $signed(_GEN_239); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_241 = 8'hb2 == lut_adr ? $signed(-16'sh564) : $signed(_GEN_240); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_242 = 8'hb3 == lut_adr ? $signed(-16'sh505) : $signed(_GEN_241); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_243 = 8'hb4 == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_242); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_244 = 8'hb5 == lut_adr ? $signed(-16'sh444) : $signed(_GEN_243); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_245 = 8'hb6 == lut_adr ? $signed(-16'sh3e3) : $signed(_GEN_244); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_246 = 8'hb7 == lut_adr ? $signed(-16'sh381) : $signed(_GEN_245); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_247 = 8'hb8 == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_246); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_248 = 8'hb9 == lut_adr ? $signed(-16'sh2bc) : $signed(_GEN_247); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_249 = 8'hba == lut_adr ? $signed(-16'sh259) : $signed(_GEN_248); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_250 = 8'hbb == lut_adr ? $signed(-16'sh1f5) : $signed(_GEN_249); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_251 = 8'hbc == lut_adr ? $signed(-16'sh191) : $signed(_GEN_250); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_252 = 8'hbd == lut_adr ? $signed(-16'sh12d) : $signed(_GEN_251); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_253 = 8'hbe == lut_adr ? $signed(-16'shc9) : $signed(_GEN_252); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_254 = 8'hbf == lut_adr ? $signed(-16'sh65) : $signed(_GEN_253); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_255 = 8'hc0 == lut_adr ? $signed(16'sh0) : $signed(_GEN_254); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_256 = 8'hc1 == lut_adr ? $signed(16'sh65) : $signed(_GEN_255); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_257 = 8'hc2 == lut_adr ? $signed(16'shc9) : $signed(_GEN_256); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_258 = 8'hc3 == lut_adr ? $signed(16'sh12d) : $signed(_GEN_257); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_259 = 8'hc4 == lut_adr ? $signed(16'sh191) : $signed(_GEN_258); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_260 = 8'hc5 == lut_adr ? $signed(16'sh1f5) : $signed(_GEN_259); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_261 = 8'hc6 == lut_adr ? $signed(16'sh259) : $signed(_GEN_260); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_262 = 8'hc7 == lut_adr ? $signed(16'sh2bc) : $signed(_GEN_261); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_263 = 8'hc8 == lut_adr ? $signed(16'sh31f) : $signed(_GEN_262); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_264 = 8'hc9 == lut_adr ? $signed(16'sh381) : $signed(_GEN_263); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_265 = 8'hca == lut_adr ? $signed(16'sh3e3) : $signed(_GEN_264); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_266 = 8'hcb == lut_adr ? $signed(16'sh444) : $signed(_GEN_265); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_267 = 8'hcc == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_266); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_268 = 8'hcd == lut_adr ? $signed(16'sh505) : $signed(_GEN_267); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_269 = 8'hce == lut_adr ? $signed(16'sh564) : $signed(_GEN_268); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_270 = 8'hcf == lut_adr ? $signed(16'sh5c2) : $signed(_GEN_269); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_271 = 8'hd0 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_270); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_272 = 8'hd1 == lut_adr ? $signed(16'sh67c) : $signed(_GEN_271); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_273 = 8'hd2 == lut_adr ? $signed(16'sh6d7) : $signed(_GEN_272); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_274 = 8'hd3 == lut_adr ? $signed(16'sh732) : $signed(_GEN_273); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_275 = 8'hd4 == lut_adr ? $signed(16'sh78b) : $signed(_GEN_274); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_276 = 8'hd5 == lut_adr ? $signed(16'sh7e3) : $signed(_GEN_275); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_277 = 8'hd6 == lut_adr ? $signed(16'sh83a) : $signed(_GEN_276); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_278 = 8'hd7 == lut_adr ? $signed(16'sh88f) : $signed(_GEN_277); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_279 = 8'hd8 == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_278); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_280 = 8'hd9 == lut_adr ? $signed(16'sh937) : $signed(_GEN_279); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_281 = 8'hda == lut_adr ? $signed(16'sh988) : $signed(_GEN_280); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_282 = 8'hdb == lut_adr ? $signed(16'sh9d8) : $signed(_GEN_281); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_283 = 8'hdc == lut_adr ? $signed(16'sha26) : $signed(_GEN_282); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_284 = 8'hdd == lut_adr ? $signed(16'sha73) : $signed(_GEN_283); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_285 = 8'hde == lut_adr ? $signed(16'shabf) : $signed(_GEN_284); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_286 = 8'hdf == lut_adr ? $signed(16'shb08) : $signed(_GEN_285); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_287 = 8'he0 == lut_adr ? $signed(16'shb50) : $signed(_GEN_286); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_288 = 8'he1 == lut_adr ? $signed(16'shb97) : $signed(_GEN_287); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_289 = 8'he2 == lut_adr ? $signed(16'shbdb) : $signed(_GEN_288); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_290 = 8'he3 == lut_adr ? $signed(16'shc1e) : $signed(_GEN_289); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_291 = 8'he4 == lut_adr ? $signed(16'shc5e) : $signed(_GEN_290); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_292 = 8'he5 == lut_adr ? $signed(16'shc9d) : $signed(_GEN_291); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_293 = 8'he6 == lut_adr ? $signed(16'shcda) : $signed(_GEN_292); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_294 = 8'he7 == lut_adr ? $signed(16'shd15) : $signed(_GEN_293); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_295 = 8'he8 == lut_adr ? $signed(16'shd4e) : $signed(_GEN_294); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_296 = 8'he9 == lut_adr ? $signed(16'shd85) : $signed(_GEN_295); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_297 = 8'hea == lut_adr ? $signed(16'shdb9) : $signed(_GEN_296); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_298 = 8'heb == lut_adr ? $signed(16'shdec) : $signed(_GEN_297); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_299 = 8'hec == lut_adr ? $signed(16'she1c) : $signed(_GEN_298); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_300 = 8'hed == lut_adr ? $signed(16'she4b) : $signed(_GEN_299); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_301 = 8'hee == lut_adr ? $signed(16'she77) : $signed(_GEN_300); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_302 = 8'hef == lut_adr ? $signed(16'shea1) : $signed(_GEN_301); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_303 = 8'hf0 == lut_adr ? $signed(16'shec8) : $signed(_GEN_302); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_304 = 8'hf1 == lut_adr ? $signed(16'sheee) : $signed(_GEN_303); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_305 = 8'hf2 == lut_adr ? $signed(16'shf11) : $signed(_GEN_304); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_306 = 8'hf3 == lut_adr ? $signed(16'shf31) : $signed(_GEN_305); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_307 = 8'hf4 == lut_adr ? $signed(16'shf50) : $signed(_GEN_306); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_308 = 8'hf5 == lut_adr ? $signed(16'shf6c) : $signed(_GEN_307); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_309 = 8'hf6 == lut_adr ? $signed(16'shf85) : $signed(_GEN_308); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_310 = 8'hf7 == lut_adr ? $signed(16'shf9c) : $signed(_GEN_309); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_311 = 8'hf8 == lut_adr ? $signed(16'shfb1) : $signed(_GEN_310); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_312 = 8'hf9 == lut_adr ? $signed(16'shfc4) : $signed(_GEN_311); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_313 = 8'hfa == lut_adr ? $signed(16'shfd4) : $signed(_GEN_312); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_314 = 8'hfb == lut_adr ? $signed(16'shfe1) : $signed(_GEN_313); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_315 = 8'hfc == lut_adr ? $signed(16'shfec) : $signed(_GEN_314); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_316 = 8'hfd == lut_adr ? $signed(16'shff5) : $signed(_GEN_315); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_317 = 8'hfe == lut_adr ? $signed(16'shffb) : $signed(_GEN_316); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_320 = 8'h1 == lut_adr ? $signed(-16'sh65) : $signed(16'sh0); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_321 = 8'h2 == lut_adr ? $signed(-16'shc9) : $signed(_GEN_320); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_322 = 8'h3 == lut_adr ? $signed(-16'sh12d) : $signed(_GEN_321); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_323 = 8'h4 == lut_adr ? $signed(-16'sh191) : $signed(_GEN_322); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_324 = 8'h5 == lut_adr ? $signed(-16'sh1f5) : $signed(_GEN_323); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_325 = 8'h6 == lut_adr ? $signed(-16'sh259) : $signed(_GEN_324); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_326 = 8'h7 == lut_adr ? $signed(-16'sh2bc) : $signed(_GEN_325); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_327 = 8'h8 == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_326); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_328 = 8'h9 == lut_adr ? $signed(-16'sh381) : $signed(_GEN_327); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_329 = 8'ha == lut_adr ? $signed(-16'sh3e3) : $signed(_GEN_328); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_330 = 8'hb == lut_adr ? $signed(-16'sh444) : $signed(_GEN_329); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_331 = 8'hc == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_330); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_332 = 8'hd == lut_adr ? $signed(-16'sh505) : $signed(_GEN_331); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_333 = 8'he == lut_adr ? $signed(-16'sh564) : $signed(_GEN_332); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_334 = 8'hf == lut_adr ? $signed(-16'sh5c2) : $signed(_GEN_333); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_335 = 8'h10 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_334); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_336 = 8'h11 == lut_adr ? $signed(-16'sh67c) : $signed(_GEN_335); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_337 = 8'h12 == lut_adr ? $signed(-16'sh6d7) : $signed(_GEN_336); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_338 = 8'h13 == lut_adr ? $signed(-16'sh732) : $signed(_GEN_337); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_339 = 8'h14 == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_338); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_340 = 8'h15 == lut_adr ? $signed(-16'sh7e3) : $signed(_GEN_339); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_341 = 8'h16 == lut_adr ? $signed(-16'sh83a) : $signed(_GEN_340); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_342 = 8'h17 == lut_adr ? $signed(-16'sh88f) : $signed(_GEN_341); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_343 = 8'h18 == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_342); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_344 = 8'h19 == lut_adr ? $signed(-16'sh937) : $signed(_GEN_343); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_345 = 8'h1a == lut_adr ? $signed(-16'sh988) : $signed(_GEN_344); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_346 = 8'h1b == lut_adr ? $signed(-16'sh9d8) : $signed(_GEN_345); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_347 = 8'h1c == lut_adr ? $signed(-16'sha26) : $signed(_GEN_346); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_348 = 8'h1d == lut_adr ? $signed(-16'sha73) : $signed(_GEN_347); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_349 = 8'h1e == lut_adr ? $signed(-16'shabf) : $signed(_GEN_348); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_350 = 8'h1f == lut_adr ? $signed(-16'shb08) : $signed(_GEN_349); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_351 = 8'h20 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_350); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_352 = 8'h21 == lut_adr ? $signed(-16'shb97) : $signed(_GEN_351); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_353 = 8'h22 == lut_adr ? $signed(-16'shbdb) : $signed(_GEN_352); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_354 = 8'h23 == lut_adr ? $signed(-16'shc1e) : $signed(_GEN_353); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_355 = 8'h24 == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_354); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_356 = 8'h25 == lut_adr ? $signed(-16'shc9d) : $signed(_GEN_355); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_357 = 8'h26 == lut_adr ? $signed(-16'shcda) : $signed(_GEN_356); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_358 = 8'h27 == lut_adr ? $signed(-16'shd15) : $signed(_GEN_357); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_359 = 8'h28 == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_358); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_360 = 8'h29 == lut_adr ? $signed(-16'shd85) : $signed(_GEN_359); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_361 = 8'h2a == lut_adr ? $signed(-16'shdb9) : $signed(_GEN_360); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_362 = 8'h2b == lut_adr ? $signed(-16'shdec) : $signed(_GEN_361); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_363 = 8'h2c == lut_adr ? $signed(-16'she1c) : $signed(_GEN_362); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_364 = 8'h2d == lut_adr ? $signed(-16'she4b) : $signed(_GEN_363); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_365 = 8'h2e == lut_adr ? $signed(-16'she77) : $signed(_GEN_364); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_366 = 8'h2f == lut_adr ? $signed(-16'shea1) : $signed(_GEN_365); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_367 = 8'h30 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_366); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_368 = 8'h31 == lut_adr ? $signed(-16'sheee) : $signed(_GEN_367); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_369 = 8'h32 == lut_adr ? $signed(-16'shf11) : $signed(_GEN_368); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_370 = 8'h33 == lut_adr ? $signed(-16'shf31) : $signed(_GEN_369); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_371 = 8'h34 == lut_adr ? $signed(-16'shf50) : $signed(_GEN_370); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_372 = 8'h35 == lut_adr ? $signed(-16'shf6c) : $signed(_GEN_371); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_373 = 8'h36 == lut_adr ? $signed(-16'shf85) : $signed(_GEN_372); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_374 = 8'h37 == lut_adr ? $signed(-16'shf9c) : $signed(_GEN_373); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_375 = 8'h38 == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_374); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_376 = 8'h39 == lut_adr ? $signed(-16'shfc4) : $signed(_GEN_375); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_377 = 8'h3a == lut_adr ? $signed(-16'shfd4) : $signed(_GEN_376); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_378 = 8'h3b == lut_adr ? $signed(-16'shfe1) : $signed(_GEN_377); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_379 = 8'h3c == lut_adr ? $signed(-16'shfec) : $signed(_GEN_378); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_380 = 8'h3d == lut_adr ? $signed(-16'shff5) : $signed(_GEN_379); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_381 = 8'h3e == lut_adr ? $signed(-16'shffb) : $signed(_GEN_380); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_382 = 8'h3f == lut_adr ? $signed(-16'shfff) : $signed(_GEN_381); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_383 = 8'h40 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_382); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_384 = 8'h41 == lut_adr ? $signed(-16'shfff) : $signed(_GEN_383); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_385 = 8'h42 == lut_adr ? $signed(-16'shffb) : $signed(_GEN_384); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_386 = 8'h43 == lut_adr ? $signed(-16'shff5) : $signed(_GEN_385); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_387 = 8'h44 == lut_adr ? $signed(-16'shfec) : $signed(_GEN_386); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_388 = 8'h45 == lut_adr ? $signed(-16'shfe1) : $signed(_GEN_387); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_389 = 8'h46 == lut_adr ? $signed(-16'shfd4) : $signed(_GEN_388); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_390 = 8'h47 == lut_adr ? $signed(-16'shfc4) : $signed(_GEN_389); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_391 = 8'h48 == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_390); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_392 = 8'h49 == lut_adr ? $signed(-16'shf9c) : $signed(_GEN_391); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_393 = 8'h4a == lut_adr ? $signed(-16'shf85) : $signed(_GEN_392); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_394 = 8'h4b == lut_adr ? $signed(-16'shf6c) : $signed(_GEN_393); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_395 = 8'h4c == lut_adr ? $signed(-16'shf50) : $signed(_GEN_394); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_396 = 8'h4d == lut_adr ? $signed(-16'shf31) : $signed(_GEN_395); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_397 = 8'h4e == lut_adr ? $signed(-16'shf11) : $signed(_GEN_396); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_398 = 8'h4f == lut_adr ? $signed(-16'sheee) : $signed(_GEN_397); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_399 = 8'h50 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_398); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_400 = 8'h51 == lut_adr ? $signed(-16'shea1) : $signed(_GEN_399); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_401 = 8'h52 == lut_adr ? $signed(-16'she77) : $signed(_GEN_400); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_402 = 8'h53 == lut_adr ? $signed(-16'she4b) : $signed(_GEN_401); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_403 = 8'h54 == lut_adr ? $signed(-16'she1c) : $signed(_GEN_402); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_404 = 8'h55 == lut_adr ? $signed(-16'shdec) : $signed(_GEN_403); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_405 = 8'h56 == lut_adr ? $signed(-16'shdb9) : $signed(_GEN_404); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_406 = 8'h57 == lut_adr ? $signed(-16'shd85) : $signed(_GEN_405); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_407 = 8'h58 == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_406); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_408 = 8'h59 == lut_adr ? $signed(-16'shd15) : $signed(_GEN_407); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_409 = 8'h5a == lut_adr ? $signed(-16'shcda) : $signed(_GEN_408); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_410 = 8'h5b == lut_adr ? $signed(-16'shc9d) : $signed(_GEN_409); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_411 = 8'h5c == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_410); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_412 = 8'h5d == lut_adr ? $signed(-16'shc1e) : $signed(_GEN_411); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_413 = 8'h5e == lut_adr ? $signed(-16'shbdb) : $signed(_GEN_412); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_414 = 8'h5f == lut_adr ? $signed(-16'shb97) : $signed(_GEN_413); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_415 = 8'h60 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_414); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_416 = 8'h61 == lut_adr ? $signed(-16'shb08) : $signed(_GEN_415); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_417 = 8'h62 == lut_adr ? $signed(-16'shabf) : $signed(_GEN_416); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_418 = 8'h63 == lut_adr ? $signed(-16'sha73) : $signed(_GEN_417); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_419 = 8'h64 == lut_adr ? $signed(-16'sha26) : $signed(_GEN_418); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_420 = 8'h65 == lut_adr ? $signed(-16'sh9d8) : $signed(_GEN_419); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_421 = 8'h66 == lut_adr ? $signed(-16'sh988) : $signed(_GEN_420); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_422 = 8'h67 == lut_adr ? $signed(-16'sh937) : $signed(_GEN_421); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_423 = 8'h68 == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_422); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_424 = 8'h69 == lut_adr ? $signed(-16'sh88f) : $signed(_GEN_423); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_425 = 8'h6a == lut_adr ? $signed(-16'sh83a) : $signed(_GEN_424); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_426 = 8'h6b == lut_adr ? $signed(-16'sh7e3) : $signed(_GEN_425); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_427 = 8'h6c == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_426); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_428 = 8'h6d == lut_adr ? $signed(-16'sh732) : $signed(_GEN_427); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_429 = 8'h6e == lut_adr ? $signed(-16'sh6d7) : $signed(_GEN_428); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_430 = 8'h6f == lut_adr ? $signed(-16'sh67c) : $signed(_GEN_429); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_431 = 8'h70 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_430); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_432 = 8'h71 == lut_adr ? $signed(-16'sh5c2) : $signed(_GEN_431); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_433 = 8'h72 == lut_adr ? $signed(-16'sh564) : $signed(_GEN_432); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_434 = 8'h73 == lut_adr ? $signed(-16'sh505) : $signed(_GEN_433); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_435 = 8'h74 == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_434); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_436 = 8'h75 == lut_adr ? $signed(-16'sh444) : $signed(_GEN_435); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_437 = 8'h76 == lut_adr ? $signed(-16'sh3e3) : $signed(_GEN_436); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_438 = 8'h77 == lut_adr ? $signed(-16'sh381) : $signed(_GEN_437); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_439 = 8'h78 == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_438); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_440 = 8'h79 == lut_adr ? $signed(-16'sh2bc) : $signed(_GEN_439); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_441 = 8'h7a == lut_adr ? $signed(-16'sh259) : $signed(_GEN_440); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_442 = 8'h7b == lut_adr ? $signed(-16'sh1f5) : $signed(_GEN_441); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_443 = 8'h7c == lut_adr ? $signed(-16'sh191) : $signed(_GEN_442); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_444 = 8'h7d == lut_adr ? $signed(-16'sh12d) : $signed(_GEN_443); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_445 = 8'h7e == lut_adr ? $signed(-16'shc9) : $signed(_GEN_444); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_446 = 8'h7f == lut_adr ? $signed(-16'sh65) : $signed(_GEN_445); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_447 = 8'h80 == lut_adr ? $signed(16'sh0) : $signed(_GEN_446); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_448 = 8'h81 == lut_adr ? $signed(16'sh65) : $signed(_GEN_447); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_449 = 8'h82 == lut_adr ? $signed(16'shc9) : $signed(_GEN_448); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_450 = 8'h83 == lut_adr ? $signed(16'sh12d) : $signed(_GEN_449); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_451 = 8'h84 == lut_adr ? $signed(16'sh191) : $signed(_GEN_450); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_452 = 8'h85 == lut_adr ? $signed(16'sh1f5) : $signed(_GEN_451); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_453 = 8'h86 == lut_adr ? $signed(16'sh259) : $signed(_GEN_452); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_454 = 8'h87 == lut_adr ? $signed(16'sh2bc) : $signed(_GEN_453); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_455 = 8'h88 == lut_adr ? $signed(16'sh31f) : $signed(_GEN_454); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_456 = 8'h89 == lut_adr ? $signed(16'sh381) : $signed(_GEN_455); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_457 = 8'h8a == lut_adr ? $signed(16'sh3e3) : $signed(_GEN_456); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_458 = 8'h8b == lut_adr ? $signed(16'sh444) : $signed(_GEN_457); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_459 = 8'h8c == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_458); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_460 = 8'h8d == lut_adr ? $signed(16'sh505) : $signed(_GEN_459); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_461 = 8'h8e == lut_adr ? $signed(16'sh564) : $signed(_GEN_460); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_462 = 8'h8f == lut_adr ? $signed(16'sh5c2) : $signed(_GEN_461); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_463 = 8'h90 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_462); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_464 = 8'h91 == lut_adr ? $signed(16'sh67c) : $signed(_GEN_463); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_465 = 8'h92 == lut_adr ? $signed(16'sh6d7) : $signed(_GEN_464); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_466 = 8'h93 == lut_adr ? $signed(16'sh732) : $signed(_GEN_465); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_467 = 8'h94 == lut_adr ? $signed(16'sh78b) : $signed(_GEN_466); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_468 = 8'h95 == lut_adr ? $signed(16'sh7e3) : $signed(_GEN_467); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_469 = 8'h96 == lut_adr ? $signed(16'sh83a) : $signed(_GEN_468); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_470 = 8'h97 == lut_adr ? $signed(16'sh88f) : $signed(_GEN_469); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_471 = 8'h98 == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_470); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_472 = 8'h99 == lut_adr ? $signed(16'sh937) : $signed(_GEN_471); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_473 = 8'h9a == lut_adr ? $signed(16'sh988) : $signed(_GEN_472); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_474 = 8'h9b == lut_adr ? $signed(16'sh9d8) : $signed(_GEN_473); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_475 = 8'h9c == lut_adr ? $signed(16'sha26) : $signed(_GEN_474); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_476 = 8'h9d == lut_adr ? $signed(16'sha73) : $signed(_GEN_475); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_477 = 8'h9e == lut_adr ? $signed(16'shabf) : $signed(_GEN_476); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_478 = 8'h9f == lut_adr ? $signed(16'shb08) : $signed(_GEN_477); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_479 = 8'ha0 == lut_adr ? $signed(16'shb50) : $signed(_GEN_478); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_480 = 8'ha1 == lut_adr ? $signed(16'shb97) : $signed(_GEN_479); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_481 = 8'ha2 == lut_adr ? $signed(16'shbdb) : $signed(_GEN_480); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_482 = 8'ha3 == lut_adr ? $signed(16'shc1e) : $signed(_GEN_481); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_483 = 8'ha4 == lut_adr ? $signed(16'shc5e) : $signed(_GEN_482); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_484 = 8'ha5 == lut_adr ? $signed(16'shc9d) : $signed(_GEN_483); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_485 = 8'ha6 == lut_adr ? $signed(16'shcda) : $signed(_GEN_484); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_486 = 8'ha7 == lut_adr ? $signed(16'shd15) : $signed(_GEN_485); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_487 = 8'ha8 == lut_adr ? $signed(16'shd4e) : $signed(_GEN_486); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_488 = 8'ha9 == lut_adr ? $signed(16'shd85) : $signed(_GEN_487); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_489 = 8'haa == lut_adr ? $signed(16'shdb9) : $signed(_GEN_488); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_490 = 8'hab == lut_adr ? $signed(16'shdec) : $signed(_GEN_489); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_491 = 8'hac == lut_adr ? $signed(16'she1c) : $signed(_GEN_490); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_492 = 8'had == lut_adr ? $signed(16'she4b) : $signed(_GEN_491); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_493 = 8'hae == lut_adr ? $signed(16'she77) : $signed(_GEN_492); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_494 = 8'haf == lut_adr ? $signed(16'shea1) : $signed(_GEN_493); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_495 = 8'hb0 == lut_adr ? $signed(16'shec8) : $signed(_GEN_494); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_496 = 8'hb1 == lut_adr ? $signed(16'sheee) : $signed(_GEN_495); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_497 = 8'hb2 == lut_adr ? $signed(16'shf11) : $signed(_GEN_496); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_498 = 8'hb3 == lut_adr ? $signed(16'shf31) : $signed(_GEN_497); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_499 = 8'hb4 == lut_adr ? $signed(16'shf50) : $signed(_GEN_498); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_500 = 8'hb5 == lut_adr ? $signed(16'shf6c) : $signed(_GEN_499); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_501 = 8'hb6 == lut_adr ? $signed(16'shf85) : $signed(_GEN_500); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_502 = 8'hb7 == lut_adr ? $signed(16'shf9c) : $signed(_GEN_501); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_503 = 8'hb8 == lut_adr ? $signed(16'shfb1) : $signed(_GEN_502); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_504 = 8'hb9 == lut_adr ? $signed(16'shfc4) : $signed(_GEN_503); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_505 = 8'hba == lut_adr ? $signed(16'shfd4) : $signed(_GEN_504); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_506 = 8'hbb == lut_adr ? $signed(16'shfe1) : $signed(_GEN_505); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_507 = 8'hbc == lut_adr ? $signed(16'shfec) : $signed(_GEN_506); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_508 = 8'hbd == lut_adr ? $signed(16'shff5) : $signed(_GEN_507); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_509 = 8'hbe == lut_adr ? $signed(16'shffb) : $signed(_GEN_508); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_510 = 8'hbf == lut_adr ? $signed(16'shfff) : $signed(_GEN_509); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_511 = 8'hc0 == lut_adr ? $signed(16'sh1000) : $signed(_GEN_510); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_512 = 8'hc1 == lut_adr ? $signed(16'shfff) : $signed(_GEN_511); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_513 = 8'hc2 == lut_adr ? $signed(16'shffb) : $signed(_GEN_512); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_514 = 8'hc3 == lut_adr ? $signed(16'shff5) : $signed(_GEN_513); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_515 = 8'hc4 == lut_adr ? $signed(16'shfec) : $signed(_GEN_514); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_516 = 8'hc5 == lut_adr ? $signed(16'shfe1) : $signed(_GEN_515); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_517 = 8'hc6 == lut_adr ? $signed(16'shfd4) : $signed(_GEN_516); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_518 = 8'hc7 == lut_adr ? $signed(16'shfc4) : $signed(_GEN_517); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_519 = 8'hc8 == lut_adr ? $signed(16'shfb1) : $signed(_GEN_518); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_520 = 8'hc9 == lut_adr ? $signed(16'shf9c) : $signed(_GEN_519); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_521 = 8'hca == lut_adr ? $signed(16'shf85) : $signed(_GEN_520); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_522 = 8'hcb == lut_adr ? $signed(16'shf6c) : $signed(_GEN_521); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_523 = 8'hcc == lut_adr ? $signed(16'shf50) : $signed(_GEN_522); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_524 = 8'hcd == lut_adr ? $signed(16'shf31) : $signed(_GEN_523); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_525 = 8'hce == lut_adr ? $signed(16'shf11) : $signed(_GEN_524); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_526 = 8'hcf == lut_adr ? $signed(16'sheee) : $signed(_GEN_525); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_527 = 8'hd0 == lut_adr ? $signed(16'shec8) : $signed(_GEN_526); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_528 = 8'hd1 == lut_adr ? $signed(16'shea1) : $signed(_GEN_527); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_529 = 8'hd2 == lut_adr ? $signed(16'she77) : $signed(_GEN_528); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_530 = 8'hd3 == lut_adr ? $signed(16'she4b) : $signed(_GEN_529); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_531 = 8'hd4 == lut_adr ? $signed(16'she1c) : $signed(_GEN_530); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_532 = 8'hd5 == lut_adr ? $signed(16'shdec) : $signed(_GEN_531); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_533 = 8'hd6 == lut_adr ? $signed(16'shdb9) : $signed(_GEN_532); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_534 = 8'hd7 == lut_adr ? $signed(16'shd85) : $signed(_GEN_533); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_535 = 8'hd8 == lut_adr ? $signed(16'shd4e) : $signed(_GEN_534); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_536 = 8'hd9 == lut_adr ? $signed(16'shd15) : $signed(_GEN_535); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_537 = 8'hda == lut_adr ? $signed(16'shcda) : $signed(_GEN_536); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_538 = 8'hdb == lut_adr ? $signed(16'shc9d) : $signed(_GEN_537); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_539 = 8'hdc == lut_adr ? $signed(16'shc5e) : $signed(_GEN_538); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_540 = 8'hdd == lut_adr ? $signed(16'shc1e) : $signed(_GEN_539); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_541 = 8'hde == lut_adr ? $signed(16'shbdb) : $signed(_GEN_540); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_542 = 8'hdf == lut_adr ? $signed(16'shb97) : $signed(_GEN_541); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_543 = 8'he0 == lut_adr ? $signed(16'shb50) : $signed(_GEN_542); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_544 = 8'he1 == lut_adr ? $signed(16'shb08) : $signed(_GEN_543); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_545 = 8'he2 == lut_adr ? $signed(16'shabf) : $signed(_GEN_544); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_546 = 8'he3 == lut_adr ? $signed(16'sha73) : $signed(_GEN_545); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_547 = 8'he4 == lut_adr ? $signed(16'sha26) : $signed(_GEN_546); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_548 = 8'he5 == lut_adr ? $signed(16'sh9d8) : $signed(_GEN_547); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_549 = 8'he6 == lut_adr ? $signed(16'sh988) : $signed(_GEN_548); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_550 = 8'he7 == lut_adr ? $signed(16'sh937) : $signed(_GEN_549); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_551 = 8'he8 == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_550); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_552 = 8'he9 == lut_adr ? $signed(16'sh88f) : $signed(_GEN_551); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_553 = 8'hea == lut_adr ? $signed(16'sh83a) : $signed(_GEN_552); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_554 = 8'heb == lut_adr ? $signed(16'sh7e3) : $signed(_GEN_553); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_555 = 8'hec == lut_adr ? $signed(16'sh78b) : $signed(_GEN_554); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_556 = 8'hed == lut_adr ? $signed(16'sh732) : $signed(_GEN_555); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_557 = 8'hee == lut_adr ? $signed(16'sh6d7) : $signed(_GEN_556); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_558 = 8'hef == lut_adr ? $signed(16'sh67c) : $signed(_GEN_557); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_559 = 8'hf0 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_558); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_560 = 8'hf1 == lut_adr ? $signed(16'sh5c2) : $signed(_GEN_559); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_561 = 8'hf2 == lut_adr ? $signed(16'sh564) : $signed(_GEN_560); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_562 = 8'hf3 == lut_adr ? $signed(16'sh505) : $signed(_GEN_561); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_563 = 8'hf4 == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_562); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_564 = 8'hf5 == lut_adr ? $signed(16'sh444) : $signed(_GEN_563); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_565 = 8'hf6 == lut_adr ? $signed(16'sh3e3) : $signed(_GEN_564); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_566 = 8'hf7 == lut_adr ? $signed(16'sh381) : $signed(_GEN_565); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_567 = 8'hf8 == lut_adr ? $signed(16'sh31f) : $signed(_GEN_566); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_568 = 8'hf9 == lut_adr ? $signed(16'sh2bc) : $signed(_GEN_567); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_569 = 8'hfa == lut_adr ? $signed(16'sh259) : $signed(_GEN_568); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_570 = 8'hfb == lut_adr ? $signed(16'sh1f5) : $signed(_GEN_569); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_571 = 8'hfc == lut_adr ? $signed(16'sh191) : $signed(_GEN_570); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_572 = 8'hfd == lut_adr ? $signed(16'sh12d) : $signed(_GEN_571); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_573 = 8'hfe == lut_adr ? $signed(16'shc9) : $signed(_GEN_572); // @[Butterfly.scala 176:12]
  reg [15:0] _T_34_re; // @[Butterfly.scala 295:24]
  reg [31:0] _RAND_9;
  reg [15:0] _T_34_im; // @[Butterfly.scala 295:24]
  reg [31:0] _RAND_10;
  reg  _T_35; // @[Butterfly.scala 296:24]
  reg [31:0] _RAND_11;
  Butterfly4 Butterfly4 ( // @[Butterfly.scala 139:22]
    .io_in1_re(Butterfly4_io_in1_re),
    .io_in1_im(Butterfly4_io_in1_im),
    .io_in2_re(Butterfly4_io_in2_re),
    .io_in2_im(Butterfly4_io_in2_im),
    .io_in3_re(Butterfly4_io_in3_re),
    .io_in3_im(Butterfly4_io_in3_im),
    .io_in4_re(Butterfly4_io_in4_re),
    .io_in4_im(Butterfly4_io_in4_im),
    .io_out1_re(Butterfly4_io_out1_re),
    .io_out1_im(Butterfly4_io_out1_im),
    .io_out2_re(Butterfly4_io_out2_re),
    .io_out2_im(Butterfly4_io_out2_im),
    .io_out3_re(Butterfly4_io_out3_re),
    .io_out3_im(Butterfly4_io_out3_im),
    .io_out4_re(Butterfly4_io_out4_re),
    .io_out4_im(Butterfly4_io_out4_im)
  );
  ComplexMul ComplexMul ( // @[Butterfly.scala 65:22]
    .io_op1_re(ComplexMul_io_op1_re),
    .io_op1_im(ComplexMul_io_op1_im),
    .io_op2_re(ComplexMul_io_op2_re),
    .io_op2_im(ComplexMul_io_op2_im),
    .io_res_re(ComplexMul_io_res_re),
    .io_res_im(ComplexMul_io_res_im)
  );
  assign ram0_re__T_19_addr = out_counter[3:0];
  assign ram0_re__T_19_data = ram0_re[ram0_re__T_19_addr]; // @[Butterfly.scala 198:16]
  assign ram0_re__T_10_data = io_in_valid ? $signed(_GEN_43) : $signed(io_in_re);
  assign ram0_re__T_10_addr = in_counter[3:0];
  assign ram0_re__T_10_mask = 1'h1;
  assign ram0_re__T_10_en = io_in_valid & _GEN_39;
  assign ram0_im__T_19_addr = out_counter[3:0];
  assign ram0_im__T_19_data = ram0_im[ram0_im__T_19_addr]; // @[Butterfly.scala 198:16]
  assign ram0_im__T_10_data = io_in_valid ? $signed(_GEN_42) : $signed(io_in_im);
  assign ram0_im__T_10_addr = in_counter[3:0];
  assign ram0_im__T_10_mask = 1'h1;
  assign ram0_im__T_10_en = io_in_valid & _GEN_39;
  assign ram1_re__T_21_addr = out_counter[3:0];
  assign ram1_re__T_21_data = ram1_re[ram1_re__T_21_addr]; // @[Butterfly.scala 199:16]
  assign ram1_re__T_12_data = io_in_valid ? $signed(_GEN_45) : $signed(io_in_re);
  assign ram1_re__T_12_addr = in_counter[3:0];
  assign ram1_re__T_12_mask = 1'h1;
  assign ram1_re__T_12_en = io_in_valid & _GEN_40;
  assign ram1_im__T_21_addr = out_counter[3:0];
  assign ram1_im__T_21_data = ram1_im[ram1_im__T_21_addr]; // @[Butterfly.scala 199:16]
  assign ram1_im__T_12_data = io_in_valid ? $signed(_GEN_44) : $signed(io_in_im);
  assign ram1_im__T_12_addr = in_counter[3:0];
  assign ram1_im__T_12_mask = 1'h1;
  assign ram1_im__T_12_en = io_in_valid & _GEN_40;
  assign ram2_re__T_23_addr = out_counter[3:0];
  assign ram2_re__T_23_data = ram2_re[ram2_re__T_23_addr]; // @[Butterfly.scala 200:16]
  assign ram2_re__T_14_data = io_in_valid ? $signed(_GEN_47) : $signed(io_in_re);
  assign ram2_re__T_14_addr = in_counter[3:0];
  assign ram2_re__T_14_mask = 1'h1;
  assign ram2_re__T_14_en = io_in_valid & _GEN_41;
  assign ram2_im__T_23_addr = out_counter[3:0];
  assign ram2_im__T_23_data = ram2_im[ram2_im__T_23_addr]; // @[Butterfly.scala 200:16]
  assign ram2_im__T_14_data = io_in_valid ? $signed(_GEN_46) : $signed(io_in_im);
  assign ram2_im__T_14_addr = in_counter[3:0];
  assign ram2_im__T_14_mask = 1'h1;
  assign ram2_im__T_14_en = io_in_valid & _GEN_41;
  assign io_out_re = _T_34_re; // @[Butterfly.scala 290:14 Butterfly.scala 295:14]
  assign io_out_im = _T_34_im; // @[Butterfly.scala 290:14 Butterfly.scala 295:14]
  assign io_out_valid = _T_35; // @[Butterfly.scala 291:14 Butterfly.scala 296:14]
  assign Butterfly4_io_in1_re = ram0_re__T_19_data; // @[Butterfly.scala 140:17]
  assign Butterfly4_io_in1_im = ram0_im__T_19_data; // @[Butterfly.scala 140:17]
  assign Butterfly4_io_in2_re = ram1_re__T_21_data; // @[Butterfly.scala 141:17]
  assign Butterfly4_io_in2_im = ram1_im__T_21_data; // @[Butterfly.scala 141:17]
  assign Butterfly4_io_in3_re = ram2_re__T_23_data; // @[Butterfly.scala 142:17]
  assign Butterfly4_io_in3_im = ram2_im__T_23_data; // @[Butterfly.scala 142:17]
  assign Butterfly4_io_in4_re = io_in_re; // @[Butterfly.scala 143:17]
  assign Butterfly4_io_in4_im = io_in_im; // @[Butterfly.scala 143:17]
  assign ComplexMul_io_op1_re = _T_25 ? $signed(Butterfly4_io_out1_re) : $signed(_GEN_60); // @[Butterfly.scala 66:17]
  assign ComplexMul_io_op1_im = _T_25 ? $signed(Butterfly4_io_out1_im) : $signed(_GEN_59); // @[Butterfly.scala 66:17]
  assign ComplexMul_io_op2_re = 8'hff == lut_adr ? $signed(16'shfff) : $signed(_GEN_317); // @[Butterfly.scala 67:17]
  assign ComplexMul_io_op2_im = 8'hff == lut_adr ? $signed(16'sh65) : $signed(_GEN_573); // @[Butterfly.scala 67:17]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram0_re[initvar] = _RAND_0[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram0_im[initvar] = _RAND_1[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram1_re[initvar] = _RAND_2[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram1_im[initvar] = _RAND_3[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram2_re[initvar] = _RAND_4[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram2_im[initvar] = _RAND_5[15:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  in_counter = _RAND_6[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  out_counter = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  out_flag = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_34_re = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_34_im = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_35 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram0_re__T_10_en & ram0_re__T_10_mask) begin
      ram0_re[ram0_re__T_10_addr] <= ram0_re__T_10_data; // @[Butterfly.scala 198:16]
    end
    if(ram0_im__T_10_en & ram0_im__T_10_mask) begin
      ram0_im[ram0_im__T_10_addr] <= ram0_im__T_10_data; // @[Butterfly.scala 198:16]
    end
    if(ram1_re__T_12_en & ram1_re__T_12_mask) begin
      ram1_re[ram1_re__T_12_addr] <= ram1_re__T_12_data; // @[Butterfly.scala 199:16]
    end
    if(ram1_im__T_12_en & ram1_im__T_12_mask) begin
      ram1_im[ram1_im__T_12_addr] <= ram1_im__T_12_data; // @[Butterfly.scala 199:16]
    end
    if(ram2_re__T_14_en & ram2_re__T_14_mask) begin
      ram2_re[ram2_re__T_14_addr] <= ram2_re__T_14_data; // @[Butterfly.scala 200:16]
    end
    if(ram2_im__T_14_en & ram2_im__T_14_mask) begin
      ram2_im[ram2_im__T_14_addr] <= ram2_im__T_14_data; // @[Butterfly.scala 200:16]
    end
    if (reset) begin
      in_counter <= 10'h0;
    end else if (io_in_valid) begin
      in_counter <= _T_4;
    end
    if (reset) begin
      out_counter <= 10'h0;
    end else if (out_flag) begin
      out_counter <= _T_7;
    end
    if (reset) begin
      out_flag <= 1'h0;
    end else begin
      out_flag <= _GEN_2;
    end
    _T_34_re <= ComplexMul_io_res_re;
    _T_34_im <= ComplexMul_io_res_im;
    _T_35 <= out_flag;
  end
endmodule
module Butterfly4_TOP_3(
  input         clock,
  input         reset,
  input  [15:0] io_in_re,
  input  [15:0] io_in_im,
  input         io_in_valid,
  output [15:0] io_out_re,
  output [15:0] io_out_im,
  output        io_out_valid
);
  reg [15:0] ram0_re [0:63]; // @[Butterfly.scala 198:16]
  reg [31:0] _RAND_0;
  wire [15:0] ram0_re__T_19_data; // @[Butterfly.scala 198:16]
  wire [5:0] ram0_re__T_19_addr; // @[Butterfly.scala 198:16]
  wire [15:0] ram0_re__T_10_data; // @[Butterfly.scala 198:16]
  wire [5:0] ram0_re__T_10_addr; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_mask; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_en; // @[Butterfly.scala 198:16]
  reg [15:0] ram0_im [0:63]; // @[Butterfly.scala 198:16]
  reg [31:0] _RAND_1;
  wire [15:0] ram0_im__T_19_data; // @[Butterfly.scala 198:16]
  wire [5:0] ram0_im__T_19_addr; // @[Butterfly.scala 198:16]
  wire [15:0] ram0_im__T_10_data; // @[Butterfly.scala 198:16]
  wire [5:0] ram0_im__T_10_addr; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_mask; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_en; // @[Butterfly.scala 198:16]
  reg [15:0] ram1_re [0:63]; // @[Butterfly.scala 199:16]
  reg [31:0] _RAND_2;
  wire [15:0] ram1_re__T_21_data; // @[Butterfly.scala 199:16]
  wire [5:0] ram1_re__T_21_addr; // @[Butterfly.scala 199:16]
  wire [15:0] ram1_re__T_12_data; // @[Butterfly.scala 199:16]
  wire [5:0] ram1_re__T_12_addr; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_mask; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_en; // @[Butterfly.scala 199:16]
  reg [15:0] ram1_im [0:63]; // @[Butterfly.scala 199:16]
  reg [31:0] _RAND_3;
  wire [15:0] ram1_im__T_21_data; // @[Butterfly.scala 199:16]
  wire [5:0] ram1_im__T_21_addr; // @[Butterfly.scala 199:16]
  wire [15:0] ram1_im__T_12_data; // @[Butterfly.scala 199:16]
  wire [5:0] ram1_im__T_12_addr; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_mask; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_en; // @[Butterfly.scala 199:16]
  reg [15:0] ram2_re [0:63]; // @[Butterfly.scala 200:16]
  reg [31:0] _RAND_4;
  wire [15:0] ram2_re__T_23_data; // @[Butterfly.scala 200:16]
  wire [5:0] ram2_re__T_23_addr; // @[Butterfly.scala 200:16]
  wire [15:0] ram2_re__T_14_data; // @[Butterfly.scala 200:16]
  wire [5:0] ram2_re__T_14_addr; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_mask; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_en; // @[Butterfly.scala 200:16]
  reg [15:0] ram2_im [0:63]; // @[Butterfly.scala 200:16]
  reg [31:0] _RAND_5;
  wire [15:0] ram2_im__T_23_data; // @[Butterfly.scala 200:16]
  wire [5:0] ram2_im__T_23_addr; // @[Butterfly.scala 200:16]
  wire [15:0] ram2_im__T_14_data; // @[Butterfly.scala 200:16]
  wire [5:0] ram2_im__T_14_addr; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_mask; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_en; // @[Butterfly.scala 200:16]
  wire [15:0] Butterfly4_io_in1_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in1_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in2_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in2_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in3_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in3_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in4_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in4_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out1_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out1_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out2_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out2_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out3_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out3_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out4_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out4_im; // @[Butterfly.scala 139:22]
  wire [15:0] ComplexMul_io_op1_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op1_im; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op2_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op2_im; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_res_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_res_im; // @[Butterfly.scala 65:22]
  reg [9:0] in_counter; // @[Butterfly.scala 183:27]
  reg [31:0] _RAND_6;
  reg [9:0] out_counter; // @[Butterfly.scala 184:28]
  reg [31:0] _RAND_7;
  reg  out_flag; // @[Butterfly.scala 185:25]
  reg [31:0] _RAND_8;
  wire  _T = in_counter == 10'hbf; // @[Butterfly.scala 188:49]
  wire  out_flag_start = io_in_valid & _T; // @[Butterfly.scala 188:36]
  wire [10:0] _T_2 = 11'h400 - 11'h1; // @[Butterfly.scala 189:51]
  wire [10:0] _GEN_2623 = {{1'd0}, out_counter}; // @[Butterfly.scala 189:35]
  wire  out_flag_done = _GEN_2623 == _T_2; // @[Butterfly.scala 189:35]
  wire [9:0] _T_4 = in_counter + 10'h1; // @[Butterfly.scala 191:46]
  wire  _GEN_1 = out_flag_done ? 1'h0 : out_flag; // @[Butterfly.scala 192:65]
  wire  _GEN_2 = out_flag_start | _GEN_1; // @[Butterfly.scala 192:24]
  wire [9:0] _T_7 = out_counter + 10'h1; // @[Butterfly.scala 193:51]
  wire [1:0] in_row = in_counter[7:6]; // @[Butterfly.scala 202:19 Butterfly.scala 203:13]
  wire  _T_15 = in_row == 2'h0; // @[Butterfly.scala 227:16]
  wire  _T_16 = in_row == 2'h1; // @[Butterfly.scala 233:22]
  wire  _T_17 = in_row == 2'h2; // @[Butterfly.scala 239:22]
  wire  _GEN_23 = _T_17 ? 1'h0 : 1'h1; // @[Butterfly.scala 239:30]
  wire  _GEN_31 = _T_16 ? 1'h0 : _GEN_23; // @[Butterfly.scala 233:30]
  wire  _GEN_39 = _T_15 | _GEN_31; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_24 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out2_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_33 = _T_16 ? $signed(io_in_im) : $signed(_GEN_24); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_42 = _T_15 ? $signed(io_in_im) : $signed(_GEN_33); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_25 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out2_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_34 = _T_16 ? $signed(io_in_re) : $signed(_GEN_25); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_43 = _T_15 ? $signed(io_in_re) : $signed(_GEN_34); // @[Butterfly.scala 227:24]
  wire  _GEN_30 = _T_16 | _GEN_23; // @[Butterfly.scala 233:30]
  wire  _GEN_40 = _T_15 ? 1'h0 : _GEN_30; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_26 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out3_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_35 = _T_16 ? $signed(io_in_im) : $signed(_GEN_26); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_44 = _T_15 ? $signed(io_in_im) : $signed(_GEN_35); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_27 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out3_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_36 = _T_16 ? $signed(io_in_re) : $signed(_GEN_27); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_45 = _T_15 ? $signed(io_in_re) : $signed(_GEN_36); // @[Butterfly.scala 227:24]
  wire  _GEN_32 = _T_16 ? 1'h0 : 1'h1; // @[Butterfly.scala 233:30]
  wire  _GEN_41 = _T_15 ? 1'h0 : _GEN_32; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_28 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out4_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_37 = _T_16 ? $signed(io_in_im) : $signed(_GEN_28); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_46 = _T_15 ? $signed(io_in_im) : $signed(_GEN_37); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_29 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out4_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_38 = _T_16 ? $signed(io_in_re) : $signed(_GEN_29); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_47 = _T_15 ? $signed(io_in_re) : $signed(_GEN_38); // @[Butterfly.scala 227:24]
  wire [1:0] out_row = out_counter[7:6]; // @[Butterfly.scala 265:19 Butterfly.scala 266:13]
  wire  _T_25 = out_row == 2'h0; // @[Butterfly.scala 270:13]
  wire  _T_26 = out_row == 2'h1; // @[Butterfly.scala 271:19]
  wire  _T_27 = out_row == 2'h2; // @[Butterfly.scala 272:19]
  wire [15:0] ram1_rdata_im = ram1_im__T_21_data; // @[Butterfly.scala 208:23 Butterfly.scala 261:16]
  wire [15:0] ram2_rdata_im = ram2_im__T_23_data; // @[Butterfly.scala 209:23 Butterfly.scala 262:16]
  wire [15:0] _GEN_57 = _T_27 ? $signed(ram1_rdata_im) : $signed(ram2_rdata_im); // @[Butterfly.scala 272:26]
  wire [15:0] ram1_rdata_re = ram1_re__T_21_data; // @[Butterfly.scala 208:23 Butterfly.scala 261:16]
  wire [15:0] ram2_rdata_re = ram2_re__T_23_data; // @[Butterfly.scala 209:23 Butterfly.scala 262:16]
  wire [15:0] _GEN_58 = _T_27 ? $signed(ram1_rdata_re) : $signed(ram2_rdata_re); // @[Butterfly.scala 272:26]
  wire [15:0] ram0_rdata_im = ram0_im__T_19_data; // @[Butterfly.scala 207:23 Butterfly.scala 260:16]
  wire [15:0] _GEN_59 = _T_26 ? $signed(ram0_rdata_im) : $signed(_GEN_57); // @[Butterfly.scala 271:26]
  wire [15:0] ram0_rdata_re = ram0_re__T_19_data; // @[Butterfly.scala 207:23 Butterfly.scala 260:16]
  wire [15:0] _GEN_60 = _T_26 ? $signed(ram0_rdata_re) : $signed(_GEN_58); // @[Butterfly.scala 271:26]
  wire [1:0] lut_adr_h = out_counter[9:8]; // @[Butterfly.scala 280:34]
  wire [7:0] lut_adr_l = out_counter[7:0]; // @[Butterfly.scala 279:21 Butterfly.scala 281:19]
  wire [7:0] _GEN_2624 = {{6'd0}, lut_adr_h}; // @[Butterfly.scala 282:25]
  wire [9:0] lut_adr = lut_adr_l * _GEN_2624; // @[Butterfly.scala 282:25]
  wire [15:0] _GEN_66 = 10'h3 == lut_adr ? $signed(16'shfff) : $signed(16'sh1000); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_67 = 10'h4 == lut_adr ? $signed(16'shfff) : $signed(_GEN_66); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_68 = 10'h5 == lut_adr ? $signed(16'shffe) : $signed(_GEN_67); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_69 = 10'h6 == lut_adr ? $signed(16'shffd) : $signed(_GEN_68); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_70 = 10'h7 == lut_adr ? $signed(16'shffc) : $signed(_GEN_69); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_71 = 10'h8 == lut_adr ? $signed(16'shffb) : $signed(_GEN_70); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_72 = 10'h9 == lut_adr ? $signed(16'shffa) : $signed(_GEN_71); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_73 = 10'ha == lut_adr ? $signed(16'shff8) : $signed(_GEN_72); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_74 = 10'hb == lut_adr ? $signed(16'shff7) : $signed(_GEN_73); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_75 = 10'hc == lut_adr ? $signed(16'shff5) : $signed(_GEN_74); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_76 = 10'hd == lut_adr ? $signed(16'shff3) : $signed(_GEN_75); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_77 = 10'he == lut_adr ? $signed(16'shff1) : $signed(_GEN_76); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_78 = 10'hf == lut_adr ? $signed(16'shfef) : $signed(_GEN_77); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_79 = 10'h10 == lut_adr ? $signed(16'shfec) : $signed(_GEN_78); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_80 = 10'h11 == lut_adr ? $signed(16'shfea) : $signed(_GEN_79); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_81 = 10'h12 == lut_adr ? $signed(16'shfe7) : $signed(_GEN_80); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_82 = 10'h13 == lut_adr ? $signed(16'shfe4) : $signed(_GEN_81); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_83 = 10'h14 == lut_adr ? $signed(16'shfe1) : $signed(_GEN_82); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_84 = 10'h15 == lut_adr ? $signed(16'shfde) : $signed(_GEN_83); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_85 = 10'h16 == lut_adr ? $signed(16'shfdb) : $signed(_GEN_84); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_86 = 10'h17 == lut_adr ? $signed(16'shfd7) : $signed(_GEN_85); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_87 = 10'h18 == lut_adr ? $signed(16'shfd4) : $signed(_GEN_86); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_88 = 10'h19 == lut_adr ? $signed(16'shfd0) : $signed(_GEN_87); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_89 = 10'h1a == lut_adr ? $signed(16'shfcc) : $signed(_GEN_88); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_90 = 10'h1b == lut_adr ? $signed(16'shfc8) : $signed(_GEN_89); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_91 = 10'h1c == lut_adr ? $signed(16'shfc4) : $signed(_GEN_90); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_92 = 10'h1d == lut_adr ? $signed(16'shfbf) : $signed(_GEN_91); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_93 = 10'h1e == lut_adr ? $signed(16'shfbb) : $signed(_GEN_92); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_94 = 10'h1f == lut_adr ? $signed(16'shfb6) : $signed(_GEN_93); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_95 = 10'h20 == lut_adr ? $signed(16'shfb1) : $signed(_GEN_94); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_96 = 10'h21 == lut_adr ? $signed(16'shfac) : $signed(_GEN_95); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_97 = 10'h22 == lut_adr ? $signed(16'shfa7) : $signed(_GEN_96); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_98 = 10'h23 == lut_adr ? $signed(16'shfa2) : $signed(_GEN_97); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_99 = 10'h24 == lut_adr ? $signed(16'shf9c) : $signed(_GEN_98); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_100 = 10'h25 == lut_adr ? $signed(16'shf97) : $signed(_GEN_99); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_101 = 10'h26 == lut_adr ? $signed(16'shf91) : $signed(_GEN_100); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_102 = 10'h27 == lut_adr ? $signed(16'shf8b) : $signed(_GEN_101); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_103 = 10'h28 == lut_adr ? $signed(16'shf85) : $signed(_GEN_102); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_104 = 10'h29 == lut_adr ? $signed(16'shf7f) : $signed(_GEN_103); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_105 = 10'h2a == lut_adr ? $signed(16'shf79) : $signed(_GEN_104); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_106 = 10'h2b == lut_adr ? $signed(16'shf72) : $signed(_GEN_105); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_107 = 10'h2c == lut_adr ? $signed(16'shf6c) : $signed(_GEN_106); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_108 = 10'h2d == lut_adr ? $signed(16'shf65) : $signed(_GEN_107); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_109 = 10'h2e == lut_adr ? $signed(16'shf5e) : $signed(_GEN_108); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_110 = 10'h2f == lut_adr ? $signed(16'shf57) : $signed(_GEN_109); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_111 = 10'h30 == lut_adr ? $signed(16'shf50) : $signed(_GEN_110); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_112 = 10'h31 == lut_adr ? $signed(16'shf48) : $signed(_GEN_111); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_113 = 10'h32 == lut_adr ? $signed(16'shf41) : $signed(_GEN_112); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_114 = 10'h33 == lut_adr ? $signed(16'shf39) : $signed(_GEN_113); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_115 = 10'h34 == lut_adr ? $signed(16'shf31) : $signed(_GEN_114); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_116 = 10'h35 == lut_adr ? $signed(16'shf29) : $signed(_GEN_115); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_117 = 10'h36 == lut_adr ? $signed(16'shf21) : $signed(_GEN_116); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_118 = 10'h37 == lut_adr ? $signed(16'shf19) : $signed(_GEN_117); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_119 = 10'h38 == lut_adr ? $signed(16'shf11) : $signed(_GEN_118); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_120 = 10'h39 == lut_adr ? $signed(16'shf08) : $signed(_GEN_119); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_121 = 10'h3a == lut_adr ? $signed(16'sheff) : $signed(_GEN_120); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_122 = 10'h3b == lut_adr ? $signed(16'shef7) : $signed(_GEN_121); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_123 = 10'h3c == lut_adr ? $signed(16'sheee) : $signed(_GEN_122); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_124 = 10'h3d == lut_adr ? $signed(16'shee4) : $signed(_GEN_123); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_125 = 10'h3e == lut_adr ? $signed(16'shedb) : $signed(_GEN_124); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_126 = 10'h3f == lut_adr ? $signed(16'shed2) : $signed(_GEN_125); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_127 = 10'h40 == lut_adr ? $signed(16'shec8) : $signed(_GEN_126); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_128 = 10'h41 == lut_adr ? $signed(16'shebf) : $signed(_GEN_127); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_129 = 10'h42 == lut_adr ? $signed(16'sheb5) : $signed(_GEN_128); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_130 = 10'h43 == lut_adr ? $signed(16'sheab) : $signed(_GEN_129); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_131 = 10'h44 == lut_adr ? $signed(16'shea1) : $signed(_GEN_130); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_132 = 10'h45 == lut_adr ? $signed(16'she96) : $signed(_GEN_131); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_133 = 10'h46 == lut_adr ? $signed(16'she8c) : $signed(_GEN_132); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_134 = 10'h47 == lut_adr ? $signed(16'she81) : $signed(_GEN_133); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_135 = 10'h48 == lut_adr ? $signed(16'she77) : $signed(_GEN_134); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_136 = 10'h49 == lut_adr ? $signed(16'she6c) : $signed(_GEN_135); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_137 = 10'h4a == lut_adr ? $signed(16'she61) : $signed(_GEN_136); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_138 = 10'h4b == lut_adr ? $signed(16'she56) : $signed(_GEN_137); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_139 = 10'h4c == lut_adr ? $signed(16'she4b) : $signed(_GEN_138); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_140 = 10'h4d == lut_adr ? $signed(16'she3f) : $signed(_GEN_139); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_141 = 10'h4e == lut_adr ? $signed(16'she34) : $signed(_GEN_140); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_142 = 10'h4f == lut_adr ? $signed(16'she28) : $signed(_GEN_141); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_143 = 10'h50 == lut_adr ? $signed(16'she1c) : $signed(_GEN_142); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_144 = 10'h51 == lut_adr ? $signed(16'she10) : $signed(_GEN_143); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_145 = 10'h52 == lut_adr ? $signed(16'she04) : $signed(_GEN_144); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_146 = 10'h53 == lut_adr ? $signed(16'shdf8) : $signed(_GEN_145); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_147 = 10'h54 == lut_adr ? $signed(16'shdec) : $signed(_GEN_146); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_148 = 10'h55 == lut_adr ? $signed(16'shddf) : $signed(_GEN_147); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_149 = 10'h56 == lut_adr ? $signed(16'shdd3) : $signed(_GEN_148); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_150 = 10'h57 == lut_adr ? $signed(16'shdc6) : $signed(_GEN_149); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_151 = 10'h58 == lut_adr ? $signed(16'shdb9) : $signed(_GEN_150); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_152 = 10'h59 == lut_adr ? $signed(16'shdac) : $signed(_GEN_151); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_153 = 10'h5a == lut_adr ? $signed(16'shd9f) : $signed(_GEN_152); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_154 = 10'h5b == lut_adr ? $signed(16'shd92) : $signed(_GEN_153); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_155 = 10'h5c == lut_adr ? $signed(16'shd85) : $signed(_GEN_154); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_156 = 10'h5d == lut_adr ? $signed(16'shd77) : $signed(_GEN_155); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_157 = 10'h5e == lut_adr ? $signed(16'shd69) : $signed(_GEN_156); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_158 = 10'h5f == lut_adr ? $signed(16'shd5c) : $signed(_GEN_157); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_159 = 10'h60 == lut_adr ? $signed(16'shd4e) : $signed(_GEN_158); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_160 = 10'h61 == lut_adr ? $signed(16'shd40) : $signed(_GEN_159); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_161 = 10'h62 == lut_adr ? $signed(16'shd32) : $signed(_GEN_160); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_162 = 10'h63 == lut_adr ? $signed(16'shd23) : $signed(_GEN_161); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_163 = 10'h64 == lut_adr ? $signed(16'shd15) : $signed(_GEN_162); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_164 = 10'h65 == lut_adr ? $signed(16'shd06) : $signed(_GEN_163); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_165 = 10'h66 == lut_adr ? $signed(16'shcf8) : $signed(_GEN_164); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_166 = 10'h67 == lut_adr ? $signed(16'shce9) : $signed(_GEN_165); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_167 = 10'h68 == lut_adr ? $signed(16'shcda) : $signed(_GEN_166); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_168 = 10'h69 == lut_adr ? $signed(16'shccb) : $signed(_GEN_167); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_169 = 10'h6a == lut_adr ? $signed(16'shcbc) : $signed(_GEN_168); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_170 = 10'h6b == lut_adr ? $signed(16'shcac) : $signed(_GEN_169); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_171 = 10'h6c == lut_adr ? $signed(16'shc9d) : $signed(_GEN_170); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_172 = 10'h6d == lut_adr ? $signed(16'shc8e) : $signed(_GEN_171); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_173 = 10'h6e == lut_adr ? $signed(16'shc7e) : $signed(_GEN_172); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_174 = 10'h6f == lut_adr ? $signed(16'shc6e) : $signed(_GEN_173); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_175 = 10'h70 == lut_adr ? $signed(16'shc5e) : $signed(_GEN_174); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_176 = 10'h71 == lut_adr ? $signed(16'shc4e) : $signed(_GEN_175); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_177 = 10'h72 == lut_adr ? $signed(16'shc3e) : $signed(_GEN_176); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_178 = 10'h73 == lut_adr ? $signed(16'shc2e) : $signed(_GEN_177); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_179 = 10'h74 == lut_adr ? $signed(16'shc1e) : $signed(_GEN_178); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_180 = 10'h75 == lut_adr ? $signed(16'shc0d) : $signed(_GEN_179); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_181 = 10'h76 == lut_adr ? $signed(16'shbfc) : $signed(_GEN_180); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_182 = 10'h77 == lut_adr ? $signed(16'shbec) : $signed(_GEN_181); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_183 = 10'h78 == lut_adr ? $signed(16'shbdb) : $signed(_GEN_182); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_184 = 10'h79 == lut_adr ? $signed(16'shbca) : $signed(_GEN_183); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_185 = 10'h7a == lut_adr ? $signed(16'shbb9) : $signed(_GEN_184); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_186 = 10'h7b == lut_adr ? $signed(16'shba8) : $signed(_GEN_185); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_187 = 10'h7c == lut_adr ? $signed(16'shb97) : $signed(_GEN_186); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_188 = 10'h7d == lut_adr ? $signed(16'shb85) : $signed(_GEN_187); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_189 = 10'h7e == lut_adr ? $signed(16'shb74) : $signed(_GEN_188); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_190 = 10'h7f == lut_adr ? $signed(16'shb62) : $signed(_GEN_189); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_191 = 10'h80 == lut_adr ? $signed(16'shb50) : $signed(_GEN_190); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_192 = 10'h81 == lut_adr ? $signed(16'shb3e) : $signed(_GEN_191); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_193 = 10'h82 == lut_adr ? $signed(16'shb2d) : $signed(_GEN_192); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_194 = 10'h83 == lut_adr ? $signed(16'shb1b) : $signed(_GEN_193); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_195 = 10'h84 == lut_adr ? $signed(16'shb08) : $signed(_GEN_194); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_196 = 10'h85 == lut_adr ? $signed(16'shaf6) : $signed(_GEN_195); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_197 = 10'h86 == lut_adr ? $signed(16'shae4) : $signed(_GEN_196); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_198 = 10'h87 == lut_adr ? $signed(16'shad1) : $signed(_GEN_197); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_199 = 10'h88 == lut_adr ? $signed(16'shabf) : $signed(_GEN_198); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_200 = 10'h89 == lut_adr ? $signed(16'shaac) : $signed(_GEN_199); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_201 = 10'h8a == lut_adr ? $signed(16'sha99) : $signed(_GEN_200); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_202 = 10'h8b == lut_adr ? $signed(16'sha86) : $signed(_GEN_201); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_203 = 10'h8c == lut_adr ? $signed(16'sha73) : $signed(_GEN_202); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_204 = 10'h8d == lut_adr ? $signed(16'sha60) : $signed(_GEN_203); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_205 = 10'h8e == lut_adr ? $signed(16'sha4d) : $signed(_GEN_204); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_206 = 10'h8f == lut_adr ? $signed(16'sha3a) : $signed(_GEN_205); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_207 = 10'h90 == lut_adr ? $signed(16'sha26) : $signed(_GEN_206); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_208 = 10'h91 == lut_adr ? $signed(16'sha13) : $signed(_GEN_207); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_209 = 10'h92 == lut_adr ? $signed(16'sh9ff) : $signed(_GEN_208); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_210 = 10'h93 == lut_adr ? $signed(16'sh9ec) : $signed(_GEN_209); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_211 = 10'h94 == lut_adr ? $signed(16'sh9d8) : $signed(_GEN_210); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_212 = 10'h95 == lut_adr ? $signed(16'sh9c4) : $signed(_GEN_211); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_213 = 10'h96 == lut_adr ? $signed(16'sh9b0) : $signed(_GEN_212); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_214 = 10'h97 == lut_adr ? $signed(16'sh99c) : $signed(_GEN_213); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_215 = 10'h98 == lut_adr ? $signed(16'sh988) : $signed(_GEN_214); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_216 = 10'h99 == lut_adr ? $signed(16'sh974) : $signed(_GEN_215); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_217 = 10'h9a == lut_adr ? $signed(16'sh95f) : $signed(_GEN_216); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_218 = 10'h9b == lut_adr ? $signed(16'sh94b) : $signed(_GEN_217); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_219 = 10'h9c == lut_adr ? $signed(16'sh937) : $signed(_GEN_218); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_220 = 10'h9d == lut_adr ? $signed(16'sh922) : $signed(_GEN_219); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_221 = 10'h9e == lut_adr ? $signed(16'sh90d) : $signed(_GEN_220); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_222 = 10'h9f == lut_adr ? $signed(16'sh8f8) : $signed(_GEN_221); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_223 = 10'ha0 == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_222); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_224 = 10'ha1 == lut_adr ? $signed(16'sh8cf) : $signed(_GEN_223); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_225 = 10'ha2 == lut_adr ? $signed(16'sh8ba) : $signed(_GEN_224); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_226 = 10'ha3 == lut_adr ? $signed(16'sh8a5) : $signed(_GEN_225); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_227 = 10'ha4 == lut_adr ? $signed(16'sh88f) : $signed(_GEN_226); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_228 = 10'ha5 == lut_adr ? $signed(16'sh87a) : $signed(_GEN_227); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_229 = 10'ha6 == lut_adr ? $signed(16'sh865) : $signed(_GEN_228); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_230 = 10'ha7 == lut_adr ? $signed(16'sh84f) : $signed(_GEN_229); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_231 = 10'ha8 == lut_adr ? $signed(16'sh83a) : $signed(_GEN_230); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_232 = 10'ha9 == lut_adr ? $signed(16'sh824) : $signed(_GEN_231); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_233 = 10'haa == lut_adr ? $signed(16'sh80e) : $signed(_GEN_232); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_234 = 10'hab == lut_adr ? $signed(16'sh7f9) : $signed(_GEN_233); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_235 = 10'hac == lut_adr ? $signed(16'sh7e3) : $signed(_GEN_234); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_236 = 10'had == lut_adr ? $signed(16'sh7cd) : $signed(_GEN_235); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_237 = 10'hae == lut_adr ? $signed(16'sh7b7) : $signed(_GEN_236); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_238 = 10'haf == lut_adr ? $signed(16'sh7a1) : $signed(_GEN_237); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_239 = 10'hb0 == lut_adr ? $signed(16'sh78b) : $signed(_GEN_238); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_240 = 10'hb1 == lut_adr ? $signed(16'sh775) : $signed(_GEN_239); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_241 = 10'hb2 == lut_adr ? $signed(16'sh75e) : $signed(_GEN_240); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_242 = 10'hb3 == lut_adr ? $signed(16'sh748) : $signed(_GEN_241); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_243 = 10'hb4 == lut_adr ? $signed(16'sh732) : $signed(_GEN_242); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_244 = 10'hb5 == lut_adr ? $signed(16'sh71b) : $signed(_GEN_243); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_245 = 10'hb6 == lut_adr ? $signed(16'sh705) : $signed(_GEN_244); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_246 = 10'hb7 == lut_adr ? $signed(16'sh6ee) : $signed(_GEN_245); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_247 = 10'hb8 == lut_adr ? $signed(16'sh6d7) : $signed(_GEN_246); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_248 = 10'hb9 == lut_adr ? $signed(16'sh6c1) : $signed(_GEN_247); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_249 = 10'hba == lut_adr ? $signed(16'sh6aa) : $signed(_GEN_248); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_250 = 10'hbb == lut_adr ? $signed(16'sh693) : $signed(_GEN_249); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_251 = 10'hbc == lut_adr ? $signed(16'sh67c) : $signed(_GEN_250); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_252 = 10'hbd == lut_adr ? $signed(16'sh665) : $signed(_GEN_251); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_253 = 10'hbe == lut_adr ? $signed(16'sh64e) : $signed(_GEN_252); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_254 = 10'hbf == lut_adr ? $signed(16'sh637) : $signed(_GEN_253); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_255 = 10'hc0 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_254); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_256 = 10'hc1 == lut_adr ? $signed(16'sh608) : $signed(_GEN_255); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_257 = 10'hc2 == lut_adr ? $signed(16'sh5f1) : $signed(_GEN_256); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_258 = 10'hc3 == lut_adr ? $signed(16'sh5da) : $signed(_GEN_257); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_259 = 10'hc4 == lut_adr ? $signed(16'sh5c2) : $signed(_GEN_258); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_260 = 10'hc5 == lut_adr ? $signed(16'sh5ab) : $signed(_GEN_259); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_261 = 10'hc6 == lut_adr ? $signed(16'sh593) : $signed(_GEN_260); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_262 = 10'hc7 == lut_adr ? $signed(16'sh57c) : $signed(_GEN_261); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_263 = 10'hc8 == lut_adr ? $signed(16'sh564) : $signed(_GEN_262); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_264 = 10'hc9 == lut_adr ? $signed(16'sh54c) : $signed(_GEN_263); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_265 = 10'hca == lut_adr ? $signed(16'sh534) : $signed(_GEN_264); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_266 = 10'hcb == lut_adr ? $signed(16'sh51d) : $signed(_GEN_265); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_267 = 10'hcc == lut_adr ? $signed(16'sh505) : $signed(_GEN_266); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_268 = 10'hcd == lut_adr ? $signed(16'sh4ed) : $signed(_GEN_267); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_269 = 10'hce == lut_adr ? $signed(16'sh4d5) : $signed(_GEN_268); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_270 = 10'hcf == lut_adr ? $signed(16'sh4bd) : $signed(_GEN_269); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_271 = 10'hd0 == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_270); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_272 = 10'hd1 == lut_adr ? $signed(16'sh48d) : $signed(_GEN_271); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_273 = 10'hd2 == lut_adr ? $signed(16'sh475) : $signed(_GEN_272); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_274 = 10'hd3 == lut_adr ? $signed(16'sh45d) : $signed(_GEN_273); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_275 = 10'hd4 == lut_adr ? $signed(16'sh444) : $signed(_GEN_274); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_276 = 10'hd5 == lut_adr ? $signed(16'sh42c) : $signed(_GEN_275); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_277 = 10'hd6 == lut_adr ? $signed(16'sh414) : $signed(_GEN_276); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_278 = 10'hd7 == lut_adr ? $signed(16'sh3fc) : $signed(_GEN_277); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_279 = 10'hd8 == lut_adr ? $signed(16'sh3e3) : $signed(_GEN_278); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_280 = 10'hd9 == lut_adr ? $signed(16'sh3cb) : $signed(_GEN_279); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_281 = 10'hda == lut_adr ? $signed(16'sh3b2) : $signed(_GEN_280); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_282 = 10'hdb == lut_adr ? $signed(16'sh39a) : $signed(_GEN_281); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_283 = 10'hdc == lut_adr ? $signed(16'sh381) : $signed(_GEN_282); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_284 = 10'hdd == lut_adr ? $signed(16'sh369) : $signed(_GEN_283); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_285 = 10'hde == lut_adr ? $signed(16'sh350) : $signed(_GEN_284); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_286 = 10'hdf == lut_adr ? $signed(16'sh338) : $signed(_GEN_285); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_287 = 10'he0 == lut_adr ? $signed(16'sh31f) : $signed(_GEN_286); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_288 = 10'he1 == lut_adr ? $signed(16'sh306) : $signed(_GEN_287); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_289 = 10'he2 == lut_adr ? $signed(16'sh2ee) : $signed(_GEN_288); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_290 = 10'he3 == lut_adr ? $signed(16'sh2d5) : $signed(_GEN_289); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_291 = 10'he4 == lut_adr ? $signed(16'sh2bc) : $signed(_GEN_290); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_292 = 10'he5 == lut_adr ? $signed(16'sh2a3) : $signed(_GEN_291); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_293 = 10'he6 == lut_adr ? $signed(16'sh28b) : $signed(_GEN_292); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_294 = 10'he7 == lut_adr ? $signed(16'sh272) : $signed(_GEN_293); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_295 = 10'he8 == lut_adr ? $signed(16'sh259) : $signed(_GEN_294); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_296 = 10'he9 == lut_adr ? $signed(16'sh240) : $signed(_GEN_295); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_297 = 10'hea == lut_adr ? $signed(16'sh227) : $signed(_GEN_296); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_298 = 10'heb == lut_adr ? $signed(16'sh20e) : $signed(_GEN_297); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_299 = 10'hec == lut_adr ? $signed(16'sh1f5) : $signed(_GEN_298); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_300 = 10'hed == lut_adr ? $signed(16'sh1dc) : $signed(_GEN_299); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_301 = 10'hee == lut_adr ? $signed(16'sh1c3) : $signed(_GEN_300); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_302 = 10'hef == lut_adr ? $signed(16'sh1aa) : $signed(_GEN_301); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_303 = 10'hf0 == lut_adr ? $signed(16'sh191) : $signed(_GEN_302); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_304 = 10'hf1 == lut_adr ? $signed(16'sh178) : $signed(_GEN_303); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_305 = 10'hf2 == lut_adr ? $signed(16'sh15f) : $signed(_GEN_304); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_306 = 10'hf3 == lut_adr ? $signed(16'sh146) : $signed(_GEN_305); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_307 = 10'hf4 == lut_adr ? $signed(16'sh12d) : $signed(_GEN_306); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_308 = 10'hf5 == lut_adr ? $signed(16'sh114) : $signed(_GEN_307); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_309 = 10'hf6 == lut_adr ? $signed(16'shfb) : $signed(_GEN_308); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_310 = 10'hf7 == lut_adr ? $signed(16'she2) : $signed(_GEN_309); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_311 = 10'hf8 == lut_adr ? $signed(16'shc9) : $signed(_GEN_310); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_312 = 10'hf9 == lut_adr ? $signed(16'shb0) : $signed(_GEN_311); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_313 = 10'hfa == lut_adr ? $signed(16'sh97) : $signed(_GEN_312); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_314 = 10'hfb == lut_adr ? $signed(16'sh7e) : $signed(_GEN_313); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_315 = 10'hfc == lut_adr ? $signed(16'sh65) : $signed(_GEN_314); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_316 = 10'hfd == lut_adr ? $signed(16'sh4b) : $signed(_GEN_315); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_317 = 10'hfe == lut_adr ? $signed(16'sh32) : $signed(_GEN_316); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_318 = 10'hff == lut_adr ? $signed(16'sh19) : $signed(_GEN_317); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_319 = 10'h100 == lut_adr ? $signed(16'sh0) : $signed(_GEN_318); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_320 = 10'h101 == lut_adr ? $signed(-16'sh19) : $signed(_GEN_319); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_321 = 10'h102 == lut_adr ? $signed(-16'sh32) : $signed(_GEN_320); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_322 = 10'h103 == lut_adr ? $signed(-16'sh4b) : $signed(_GEN_321); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_323 = 10'h104 == lut_adr ? $signed(-16'sh65) : $signed(_GEN_322); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_324 = 10'h105 == lut_adr ? $signed(-16'sh7e) : $signed(_GEN_323); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_325 = 10'h106 == lut_adr ? $signed(-16'sh97) : $signed(_GEN_324); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_326 = 10'h107 == lut_adr ? $signed(-16'shb0) : $signed(_GEN_325); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_327 = 10'h108 == lut_adr ? $signed(-16'shc9) : $signed(_GEN_326); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_328 = 10'h109 == lut_adr ? $signed(-16'she2) : $signed(_GEN_327); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_329 = 10'h10a == lut_adr ? $signed(-16'shfb) : $signed(_GEN_328); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_330 = 10'h10b == lut_adr ? $signed(-16'sh114) : $signed(_GEN_329); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_331 = 10'h10c == lut_adr ? $signed(-16'sh12d) : $signed(_GEN_330); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_332 = 10'h10d == lut_adr ? $signed(-16'sh146) : $signed(_GEN_331); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_333 = 10'h10e == lut_adr ? $signed(-16'sh15f) : $signed(_GEN_332); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_334 = 10'h10f == lut_adr ? $signed(-16'sh178) : $signed(_GEN_333); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_335 = 10'h110 == lut_adr ? $signed(-16'sh191) : $signed(_GEN_334); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_336 = 10'h111 == lut_adr ? $signed(-16'sh1aa) : $signed(_GEN_335); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_337 = 10'h112 == lut_adr ? $signed(-16'sh1c3) : $signed(_GEN_336); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_338 = 10'h113 == lut_adr ? $signed(-16'sh1dc) : $signed(_GEN_337); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_339 = 10'h114 == lut_adr ? $signed(-16'sh1f5) : $signed(_GEN_338); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_340 = 10'h115 == lut_adr ? $signed(-16'sh20e) : $signed(_GEN_339); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_341 = 10'h116 == lut_adr ? $signed(-16'sh227) : $signed(_GEN_340); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_342 = 10'h117 == lut_adr ? $signed(-16'sh240) : $signed(_GEN_341); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_343 = 10'h118 == lut_adr ? $signed(-16'sh259) : $signed(_GEN_342); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_344 = 10'h119 == lut_adr ? $signed(-16'sh272) : $signed(_GEN_343); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_345 = 10'h11a == lut_adr ? $signed(-16'sh28b) : $signed(_GEN_344); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_346 = 10'h11b == lut_adr ? $signed(-16'sh2a3) : $signed(_GEN_345); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_347 = 10'h11c == lut_adr ? $signed(-16'sh2bc) : $signed(_GEN_346); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_348 = 10'h11d == lut_adr ? $signed(-16'sh2d5) : $signed(_GEN_347); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_349 = 10'h11e == lut_adr ? $signed(-16'sh2ee) : $signed(_GEN_348); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_350 = 10'h11f == lut_adr ? $signed(-16'sh306) : $signed(_GEN_349); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_351 = 10'h120 == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_350); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_352 = 10'h121 == lut_adr ? $signed(-16'sh338) : $signed(_GEN_351); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_353 = 10'h122 == lut_adr ? $signed(-16'sh350) : $signed(_GEN_352); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_354 = 10'h123 == lut_adr ? $signed(-16'sh369) : $signed(_GEN_353); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_355 = 10'h124 == lut_adr ? $signed(-16'sh381) : $signed(_GEN_354); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_356 = 10'h125 == lut_adr ? $signed(-16'sh39a) : $signed(_GEN_355); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_357 = 10'h126 == lut_adr ? $signed(-16'sh3b2) : $signed(_GEN_356); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_358 = 10'h127 == lut_adr ? $signed(-16'sh3cb) : $signed(_GEN_357); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_359 = 10'h128 == lut_adr ? $signed(-16'sh3e3) : $signed(_GEN_358); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_360 = 10'h129 == lut_adr ? $signed(-16'sh3fc) : $signed(_GEN_359); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_361 = 10'h12a == lut_adr ? $signed(-16'sh414) : $signed(_GEN_360); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_362 = 10'h12b == lut_adr ? $signed(-16'sh42c) : $signed(_GEN_361); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_363 = 10'h12c == lut_adr ? $signed(-16'sh444) : $signed(_GEN_362); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_364 = 10'h12d == lut_adr ? $signed(-16'sh45d) : $signed(_GEN_363); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_365 = 10'h12e == lut_adr ? $signed(-16'sh475) : $signed(_GEN_364); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_366 = 10'h12f == lut_adr ? $signed(-16'sh48d) : $signed(_GEN_365); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_367 = 10'h130 == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_366); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_368 = 10'h131 == lut_adr ? $signed(-16'sh4bd) : $signed(_GEN_367); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_369 = 10'h132 == lut_adr ? $signed(-16'sh4d5) : $signed(_GEN_368); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_370 = 10'h133 == lut_adr ? $signed(-16'sh4ed) : $signed(_GEN_369); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_371 = 10'h134 == lut_adr ? $signed(-16'sh505) : $signed(_GEN_370); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_372 = 10'h135 == lut_adr ? $signed(-16'sh51d) : $signed(_GEN_371); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_373 = 10'h136 == lut_adr ? $signed(-16'sh534) : $signed(_GEN_372); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_374 = 10'h137 == lut_adr ? $signed(-16'sh54c) : $signed(_GEN_373); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_375 = 10'h138 == lut_adr ? $signed(-16'sh564) : $signed(_GEN_374); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_376 = 10'h139 == lut_adr ? $signed(-16'sh57c) : $signed(_GEN_375); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_377 = 10'h13a == lut_adr ? $signed(-16'sh593) : $signed(_GEN_376); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_378 = 10'h13b == lut_adr ? $signed(-16'sh5ab) : $signed(_GEN_377); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_379 = 10'h13c == lut_adr ? $signed(-16'sh5c2) : $signed(_GEN_378); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_380 = 10'h13d == lut_adr ? $signed(-16'sh5da) : $signed(_GEN_379); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_381 = 10'h13e == lut_adr ? $signed(-16'sh5f1) : $signed(_GEN_380); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_382 = 10'h13f == lut_adr ? $signed(-16'sh608) : $signed(_GEN_381); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_383 = 10'h140 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_382); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_384 = 10'h141 == lut_adr ? $signed(-16'sh637) : $signed(_GEN_383); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_385 = 10'h142 == lut_adr ? $signed(-16'sh64e) : $signed(_GEN_384); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_386 = 10'h143 == lut_adr ? $signed(-16'sh665) : $signed(_GEN_385); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_387 = 10'h144 == lut_adr ? $signed(-16'sh67c) : $signed(_GEN_386); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_388 = 10'h145 == lut_adr ? $signed(-16'sh693) : $signed(_GEN_387); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_389 = 10'h146 == lut_adr ? $signed(-16'sh6aa) : $signed(_GEN_388); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_390 = 10'h147 == lut_adr ? $signed(-16'sh6c1) : $signed(_GEN_389); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_391 = 10'h148 == lut_adr ? $signed(-16'sh6d7) : $signed(_GEN_390); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_392 = 10'h149 == lut_adr ? $signed(-16'sh6ee) : $signed(_GEN_391); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_393 = 10'h14a == lut_adr ? $signed(-16'sh705) : $signed(_GEN_392); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_394 = 10'h14b == lut_adr ? $signed(-16'sh71b) : $signed(_GEN_393); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_395 = 10'h14c == lut_adr ? $signed(-16'sh732) : $signed(_GEN_394); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_396 = 10'h14d == lut_adr ? $signed(-16'sh748) : $signed(_GEN_395); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_397 = 10'h14e == lut_adr ? $signed(-16'sh75e) : $signed(_GEN_396); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_398 = 10'h14f == lut_adr ? $signed(-16'sh775) : $signed(_GEN_397); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_399 = 10'h150 == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_398); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_400 = 10'h151 == lut_adr ? $signed(-16'sh7a1) : $signed(_GEN_399); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_401 = 10'h152 == lut_adr ? $signed(-16'sh7b7) : $signed(_GEN_400); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_402 = 10'h153 == lut_adr ? $signed(-16'sh7cd) : $signed(_GEN_401); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_403 = 10'h154 == lut_adr ? $signed(-16'sh7e3) : $signed(_GEN_402); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_404 = 10'h155 == lut_adr ? $signed(-16'sh7f9) : $signed(_GEN_403); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_405 = 10'h156 == lut_adr ? $signed(-16'sh80e) : $signed(_GEN_404); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_406 = 10'h157 == lut_adr ? $signed(-16'sh824) : $signed(_GEN_405); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_407 = 10'h158 == lut_adr ? $signed(-16'sh83a) : $signed(_GEN_406); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_408 = 10'h159 == lut_adr ? $signed(-16'sh84f) : $signed(_GEN_407); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_409 = 10'h15a == lut_adr ? $signed(-16'sh865) : $signed(_GEN_408); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_410 = 10'h15b == lut_adr ? $signed(-16'sh87a) : $signed(_GEN_409); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_411 = 10'h15c == lut_adr ? $signed(-16'sh88f) : $signed(_GEN_410); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_412 = 10'h15d == lut_adr ? $signed(-16'sh8a5) : $signed(_GEN_411); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_413 = 10'h15e == lut_adr ? $signed(-16'sh8ba) : $signed(_GEN_412); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_414 = 10'h15f == lut_adr ? $signed(-16'sh8cf) : $signed(_GEN_413); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_415 = 10'h160 == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_414); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_416 = 10'h161 == lut_adr ? $signed(-16'sh8f8) : $signed(_GEN_415); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_417 = 10'h162 == lut_adr ? $signed(-16'sh90d) : $signed(_GEN_416); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_418 = 10'h163 == lut_adr ? $signed(-16'sh922) : $signed(_GEN_417); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_419 = 10'h164 == lut_adr ? $signed(-16'sh937) : $signed(_GEN_418); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_420 = 10'h165 == lut_adr ? $signed(-16'sh94b) : $signed(_GEN_419); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_421 = 10'h166 == lut_adr ? $signed(-16'sh95f) : $signed(_GEN_420); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_422 = 10'h167 == lut_adr ? $signed(-16'sh974) : $signed(_GEN_421); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_423 = 10'h168 == lut_adr ? $signed(-16'sh988) : $signed(_GEN_422); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_424 = 10'h169 == lut_adr ? $signed(-16'sh99c) : $signed(_GEN_423); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_425 = 10'h16a == lut_adr ? $signed(-16'sh9b0) : $signed(_GEN_424); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_426 = 10'h16b == lut_adr ? $signed(-16'sh9c4) : $signed(_GEN_425); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_427 = 10'h16c == lut_adr ? $signed(-16'sh9d8) : $signed(_GEN_426); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_428 = 10'h16d == lut_adr ? $signed(-16'sh9ec) : $signed(_GEN_427); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_429 = 10'h16e == lut_adr ? $signed(-16'sh9ff) : $signed(_GEN_428); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_430 = 10'h16f == lut_adr ? $signed(-16'sha13) : $signed(_GEN_429); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_431 = 10'h170 == lut_adr ? $signed(-16'sha26) : $signed(_GEN_430); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_432 = 10'h171 == lut_adr ? $signed(-16'sha3a) : $signed(_GEN_431); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_433 = 10'h172 == lut_adr ? $signed(-16'sha4d) : $signed(_GEN_432); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_434 = 10'h173 == lut_adr ? $signed(-16'sha60) : $signed(_GEN_433); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_435 = 10'h174 == lut_adr ? $signed(-16'sha73) : $signed(_GEN_434); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_436 = 10'h175 == lut_adr ? $signed(-16'sha86) : $signed(_GEN_435); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_437 = 10'h176 == lut_adr ? $signed(-16'sha99) : $signed(_GEN_436); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_438 = 10'h177 == lut_adr ? $signed(-16'shaac) : $signed(_GEN_437); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_439 = 10'h178 == lut_adr ? $signed(-16'shabf) : $signed(_GEN_438); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_440 = 10'h179 == lut_adr ? $signed(-16'shad1) : $signed(_GEN_439); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_441 = 10'h17a == lut_adr ? $signed(-16'shae4) : $signed(_GEN_440); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_442 = 10'h17b == lut_adr ? $signed(-16'shaf6) : $signed(_GEN_441); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_443 = 10'h17c == lut_adr ? $signed(-16'shb08) : $signed(_GEN_442); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_444 = 10'h17d == lut_adr ? $signed(-16'shb1b) : $signed(_GEN_443); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_445 = 10'h17e == lut_adr ? $signed(-16'shb2d) : $signed(_GEN_444); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_446 = 10'h17f == lut_adr ? $signed(-16'shb3e) : $signed(_GEN_445); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_447 = 10'h180 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_446); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_448 = 10'h181 == lut_adr ? $signed(-16'shb62) : $signed(_GEN_447); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_449 = 10'h182 == lut_adr ? $signed(-16'shb74) : $signed(_GEN_448); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_450 = 10'h183 == lut_adr ? $signed(-16'shb85) : $signed(_GEN_449); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_451 = 10'h184 == lut_adr ? $signed(-16'shb97) : $signed(_GEN_450); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_452 = 10'h185 == lut_adr ? $signed(-16'shba8) : $signed(_GEN_451); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_453 = 10'h186 == lut_adr ? $signed(-16'shbb9) : $signed(_GEN_452); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_454 = 10'h187 == lut_adr ? $signed(-16'shbca) : $signed(_GEN_453); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_455 = 10'h188 == lut_adr ? $signed(-16'shbdb) : $signed(_GEN_454); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_456 = 10'h189 == lut_adr ? $signed(-16'shbec) : $signed(_GEN_455); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_457 = 10'h18a == lut_adr ? $signed(-16'shbfc) : $signed(_GEN_456); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_458 = 10'h18b == lut_adr ? $signed(-16'shc0d) : $signed(_GEN_457); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_459 = 10'h18c == lut_adr ? $signed(-16'shc1e) : $signed(_GEN_458); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_460 = 10'h18d == lut_adr ? $signed(-16'shc2e) : $signed(_GEN_459); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_461 = 10'h18e == lut_adr ? $signed(-16'shc3e) : $signed(_GEN_460); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_462 = 10'h18f == lut_adr ? $signed(-16'shc4e) : $signed(_GEN_461); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_463 = 10'h190 == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_462); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_464 = 10'h191 == lut_adr ? $signed(-16'shc6e) : $signed(_GEN_463); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_465 = 10'h192 == lut_adr ? $signed(-16'shc7e) : $signed(_GEN_464); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_466 = 10'h193 == lut_adr ? $signed(-16'shc8e) : $signed(_GEN_465); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_467 = 10'h194 == lut_adr ? $signed(-16'shc9d) : $signed(_GEN_466); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_468 = 10'h195 == lut_adr ? $signed(-16'shcac) : $signed(_GEN_467); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_469 = 10'h196 == lut_adr ? $signed(-16'shcbc) : $signed(_GEN_468); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_470 = 10'h197 == lut_adr ? $signed(-16'shccb) : $signed(_GEN_469); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_471 = 10'h198 == lut_adr ? $signed(-16'shcda) : $signed(_GEN_470); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_472 = 10'h199 == lut_adr ? $signed(-16'shce9) : $signed(_GEN_471); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_473 = 10'h19a == lut_adr ? $signed(-16'shcf8) : $signed(_GEN_472); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_474 = 10'h19b == lut_adr ? $signed(-16'shd06) : $signed(_GEN_473); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_475 = 10'h19c == lut_adr ? $signed(-16'shd15) : $signed(_GEN_474); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_476 = 10'h19d == lut_adr ? $signed(-16'shd23) : $signed(_GEN_475); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_477 = 10'h19e == lut_adr ? $signed(-16'shd32) : $signed(_GEN_476); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_478 = 10'h19f == lut_adr ? $signed(-16'shd40) : $signed(_GEN_477); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_479 = 10'h1a0 == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_478); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_480 = 10'h1a1 == lut_adr ? $signed(-16'shd5c) : $signed(_GEN_479); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_481 = 10'h1a2 == lut_adr ? $signed(-16'shd69) : $signed(_GEN_480); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_482 = 10'h1a3 == lut_adr ? $signed(-16'shd77) : $signed(_GEN_481); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_483 = 10'h1a4 == lut_adr ? $signed(-16'shd85) : $signed(_GEN_482); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_484 = 10'h1a5 == lut_adr ? $signed(-16'shd92) : $signed(_GEN_483); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_485 = 10'h1a6 == lut_adr ? $signed(-16'shd9f) : $signed(_GEN_484); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_486 = 10'h1a7 == lut_adr ? $signed(-16'shdac) : $signed(_GEN_485); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_487 = 10'h1a8 == lut_adr ? $signed(-16'shdb9) : $signed(_GEN_486); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_488 = 10'h1a9 == lut_adr ? $signed(-16'shdc6) : $signed(_GEN_487); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_489 = 10'h1aa == lut_adr ? $signed(-16'shdd3) : $signed(_GEN_488); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_490 = 10'h1ab == lut_adr ? $signed(-16'shddf) : $signed(_GEN_489); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_491 = 10'h1ac == lut_adr ? $signed(-16'shdec) : $signed(_GEN_490); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_492 = 10'h1ad == lut_adr ? $signed(-16'shdf8) : $signed(_GEN_491); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_493 = 10'h1ae == lut_adr ? $signed(-16'she04) : $signed(_GEN_492); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_494 = 10'h1af == lut_adr ? $signed(-16'she10) : $signed(_GEN_493); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_495 = 10'h1b0 == lut_adr ? $signed(-16'she1c) : $signed(_GEN_494); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_496 = 10'h1b1 == lut_adr ? $signed(-16'she28) : $signed(_GEN_495); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_497 = 10'h1b2 == lut_adr ? $signed(-16'she34) : $signed(_GEN_496); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_498 = 10'h1b3 == lut_adr ? $signed(-16'she3f) : $signed(_GEN_497); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_499 = 10'h1b4 == lut_adr ? $signed(-16'she4b) : $signed(_GEN_498); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_500 = 10'h1b5 == lut_adr ? $signed(-16'she56) : $signed(_GEN_499); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_501 = 10'h1b6 == lut_adr ? $signed(-16'she61) : $signed(_GEN_500); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_502 = 10'h1b7 == lut_adr ? $signed(-16'she6c) : $signed(_GEN_501); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_503 = 10'h1b8 == lut_adr ? $signed(-16'she77) : $signed(_GEN_502); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_504 = 10'h1b9 == lut_adr ? $signed(-16'she81) : $signed(_GEN_503); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_505 = 10'h1ba == lut_adr ? $signed(-16'she8c) : $signed(_GEN_504); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_506 = 10'h1bb == lut_adr ? $signed(-16'she96) : $signed(_GEN_505); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_507 = 10'h1bc == lut_adr ? $signed(-16'shea1) : $signed(_GEN_506); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_508 = 10'h1bd == lut_adr ? $signed(-16'sheab) : $signed(_GEN_507); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_509 = 10'h1be == lut_adr ? $signed(-16'sheb5) : $signed(_GEN_508); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_510 = 10'h1bf == lut_adr ? $signed(-16'shebf) : $signed(_GEN_509); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_511 = 10'h1c0 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_510); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_512 = 10'h1c1 == lut_adr ? $signed(-16'shed2) : $signed(_GEN_511); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_513 = 10'h1c2 == lut_adr ? $signed(-16'shedb) : $signed(_GEN_512); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_514 = 10'h1c3 == lut_adr ? $signed(-16'shee4) : $signed(_GEN_513); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_515 = 10'h1c4 == lut_adr ? $signed(-16'sheee) : $signed(_GEN_514); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_516 = 10'h1c5 == lut_adr ? $signed(-16'shef7) : $signed(_GEN_515); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_517 = 10'h1c6 == lut_adr ? $signed(-16'sheff) : $signed(_GEN_516); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_518 = 10'h1c7 == lut_adr ? $signed(-16'shf08) : $signed(_GEN_517); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_519 = 10'h1c8 == lut_adr ? $signed(-16'shf11) : $signed(_GEN_518); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_520 = 10'h1c9 == lut_adr ? $signed(-16'shf19) : $signed(_GEN_519); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_521 = 10'h1ca == lut_adr ? $signed(-16'shf21) : $signed(_GEN_520); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_522 = 10'h1cb == lut_adr ? $signed(-16'shf29) : $signed(_GEN_521); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_523 = 10'h1cc == lut_adr ? $signed(-16'shf31) : $signed(_GEN_522); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_524 = 10'h1cd == lut_adr ? $signed(-16'shf39) : $signed(_GEN_523); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_525 = 10'h1ce == lut_adr ? $signed(-16'shf41) : $signed(_GEN_524); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_526 = 10'h1cf == lut_adr ? $signed(-16'shf48) : $signed(_GEN_525); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_527 = 10'h1d0 == lut_adr ? $signed(-16'shf50) : $signed(_GEN_526); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_528 = 10'h1d1 == lut_adr ? $signed(-16'shf57) : $signed(_GEN_527); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_529 = 10'h1d2 == lut_adr ? $signed(-16'shf5e) : $signed(_GEN_528); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_530 = 10'h1d3 == lut_adr ? $signed(-16'shf65) : $signed(_GEN_529); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_531 = 10'h1d4 == lut_adr ? $signed(-16'shf6c) : $signed(_GEN_530); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_532 = 10'h1d5 == lut_adr ? $signed(-16'shf72) : $signed(_GEN_531); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_533 = 10'h1d6 == lut_adr ? $signed(-16'shf79) : $signed(_GEN_532); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_534 = 10'h1d7 == lut_adr ? $signed(-16'shf7f) : $signed(_GEN_533); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_535 = 10'h1d8 == lut_adr ? $signed(-16'shf85) : $signed(_GEN_534); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_536 = 10'h1d9 == lut_adr ? $signed(-16'shf8b) : $signed(_GEN_535); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_537 = 10'h1da == lut_adr ? $signed(-16'shf91) : $signed(_GEN_536); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_538 = 10'h1db == lut_adr ? $signed(-16'shf97) : $signed(_GEN_537); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_539 = 10'h1dc == lut_adr ? $signed(-16'shf9c) : $signed(_GEN_538); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_540 = 10'h1dd == lut_adr ? $signed(-16'shfa2) : $signed(_GEN_539); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_541 = 10'h1de == lut_adr ? $signed(-16'shfa7) : $signed(_GEN_540); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_542 = 10'h1df == lut_adr ? $signed(-16'shfac) : $signed(_GEN_541); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_543 = 10'h1e0 == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_542); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_544 = 10'h1e1 == lut_adr ? $signed(-16'shfb6) : $signed(_GEN_543); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_545 = 10'h1e2 == lut_adr ? $signed(-16'shfbb) : $signed(_GEN_544); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_546 = 10'h1e3 == lut_adr ? $signed(-16'shfbf) : $signed(_GEN_545); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_547 = 10'h1e4 == lut_adr ? $signed(-16'shfc4) : $signed(_GEN_546); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_548 = 10'h1e5 == lut_adr ? $signed(-16'shfc8) : $signed(_GEN_547); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_549 = 10'h1e6 == lut_adr ? $signed(-16'shfcc) : $signed(_GEN_548); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_550 = 10'h1e7 == lut_adr ? $signed(-16'shfd0) : $signed(_GEN_549); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_551 = 10'h1e8 == lut_adr ? $signed(-16'shfd4) : $signed(_GEN_550); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_552 = 10'h1e9 == lut_adr ? $signed(-16'shfd7) : $signed(_GEN_551); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_553 = 10'h1ea == lut_adr ? $signed(-16'shfdb) : $signed(_GEN_552); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_554 = 10'h1eb == lut_adr ? $signed(-16'shfde) : $signed(_GEN_553); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_555 = 10'h1ec == lut_adr ? $signed(-16'shfe1) : $signed(_GEN_554); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_556 = 10'h1ed == lut_adr ? $signed(-16'shfe4) : $signed(_GEN_555); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_557 = 10'h1ee == lut_adr ? $signed(-16'shfe7) : $signed(_GEN_556); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_558 = 10'h1ef == lut_adr ? $signed(-16'shfea) : $signed(_GEN_557); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_559 = 10'h1f0 == lut_adr ? $signed(-16'shfec) : $signed(_GEN_558); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_560 = 10'h1f1 == lut_adr ? $signed(-16'shfef) : $signed(_GEN_559); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_561 = 10'h1f2 == lut_adr ? $signed(-16'shff1) : $signed(_GEN_560); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_562 = 10'h1f3 == lut_adr ? $signed(-16'shff3) : $signed(_GEN_561); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_563 = 10'h1f4 == lut_adr ? $signed(-16'shff5) : $signed(_GEN_562); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_564 = 10'h1f5 == lut_adr ? $signed(-16'shff7) : $signed(_GEN_563); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_565 = 10'h1f6 == lut_adr ? $signed(-16'shff8) : $signed(_GEN_564); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_566 = 10'h1f7 == lut_adr ? $signed(-16'shffa) : $signed(_GEN_565); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_567 = 10'h1f8 == lut_adr ? $signed(-16'shffb) : $signed(_GEN_566); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_568 = 10'h1f9 == lut_adr ? $signed(-16'shffc) : $signed(_GEN_567); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_569 = 10'h1fa == lut_adr ? $signed(-16'shffd) : $signed(_GEN_568); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_570 = 10'h1fb == lut_adr ? $signed(-16'shffe) : $signed(_GEN_569); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_571 = 10'h1fc == lut_adr ? $signed(-16'shfff) : $signed(_GEN_570); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_572 = 10'h1fd == lut_adr ? $signed(-16'shfff) : $signed(_GEN_571); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_573 = 10'h1fe == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_572); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_574 = 10'h1ff == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_573); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_575 = 10'h200 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_574); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_576 = 10'h201 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_575); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_577 = 10'h202 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_576); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_578 = 10'h203 == lut_adr ? $signed(-16'shfff) : $signed(_GEN_577); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_579 = 10'h204 == lut_adr ? $signed(-16'shfff) : $signed(_GEN_578); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_580 = 10'h205 == lut_adr ? $signed(-16'shffe) : $signed(_GEN_579); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_581 = 10'h206 == lut_adr ? $signed(-16'shffd) : $signed(_GEN_580); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_582 = 10'h207 == lut_adr ? $signed(-16'shffc) : $signed(_GEN_581); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_583 = 10'h208 == lut_adr ? $signed(-16'shffb) : $signed(_GEN_582); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_584 = 10'h209 == lut_adr ? $signed(-16'shffa) : $signed(_GEN_583); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_585 = 10'h20a == lut_adr ? $signed(-16'shff8) : $signed(_GEN_584); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_586 = 10'h20b == lut_adr ? $signed(-16'shff7) : $signed(_GEN_585); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_587 = 10'h20c == lut_adr ? $signed(-16'shff5) : $signed(_GEN_586); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_588 = 10'h20d == lut_adr ? $signed(-16'shff3) : $signed(_GEN_587); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_589 = 10'h20e == lut_adr ? $signed(-16'shff1) : $signed(_GEN_588); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_590 = 10'h20f == lut_adr ? $signed(-16'shfef) : $signed(_GEN_589); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_591 = 10'h210 == lut_adr ? $signed(-16'shfec) : $signed(_GEN_590); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_592 = 10'h211 == lut_adr ? $signed(-16'shfea) : $signed(_GEN_591); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_593 = 10'h212 == lut_adr ? $signed(-16'shfe7) : $signed(_GEN_592); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_594 = 10'h213 == lut_adr ? $signed(-16'shfe4) : $signed(_GEN_593); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_595 = 10'h214 == lut_adr ? $signed(-16'shfe1) : $signed(_GEN_594); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_596 = 10'h215 == lut_adr ? $signed(-16'shfde) : $signed(_GEN_595); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_597 = 10'h216 == lut_adr ? $signed(-16'shfdb) : $signed(_GEN_596); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_598 = 10'h217 == lut_adr ? $signed(-16'shfd7) : $signed(_GEN_597); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_599 = 10'h218 == lut_adr ? $signed(-16'shfd4) : $signed(_GEN_598); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_600 = 10'h219 == lut_adr ? $signed(-16'shfd0) : $signed(_GEN_599); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_601 = 10'h21a == lut_adr ? $signed(-16'shfcc) : $signed(_GEN_600); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_602 = 10'h21b == lut_adr ? $signed(-16'shfc8) : $signed(_GEN_601); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_603 = 10'h21c == lut_adr ? $signed(-16'shfc4) : $signed(_GEN_602); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_604 = 10'h21d == lut_adr ? $signed(-16'shfbf) : $signed(_GEN_603); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_605 = 10'h21e == lut_adr ? $signed(-16'shfbb) : $signed(_GEN_604); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_606 = 10'h21f == lut_adr ? $signed(-16'shfb6) : $signed(_GEN_605); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_607 = 10'h220 == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_606); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_608 = 10'h221 == lut_adr ? $signed(-16'shfac) : $signed(_GEN_607); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_609 = 10'h222 == lut_adr ? $signed(-16'shfa7) : $signed(_GEN_608); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_610 = 10'h223 == lut_adr ? $signed(-16'shfa2) : $signed(_GEN_609); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_611 = 10'h224 == lut_adr ? $signed(-16'shf9c) : $signed(_GEN_610); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_612 = 10'h225 == lut_adr ? $signed(-16'shf97) : $signed(_GEN_611); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_613 = 10'h226 == lut_adr ? $signed(-16'shf91) : $signed(_GEN_612); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_614 = 10'h227 == lut_adr ? $signed(-16'shf8b) : $signed(_GEN_613); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_615 = 10'h228 == lut_adr ? $signed(-16'shf85) : $signed(_GEN_614); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_616 = 10'h229 == lut_adr ? $signed(-16'shf7f) : $signed(_GEN_615); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_617 = 10'h22a == lut_adr ? $signed(-16'shf79) : $signed(_GEN_616); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_618 = 10'h22b == lut_adr ? $signed(-16'shf72) : $signed(_GEN_617); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_619 = 10'h22c == lut_adr ? $signed(-16'shf6c) : $signed(_GEN_618); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_620 = 10'h22d == lut_adr ? $signed(-16'shf65) : $signed(_GEN_619); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_621 = 10'h22e == lut_adr ? $signed(-16'shf5e) : $signed(_GEN_620); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_622 = 10'h22f == lut_adr ? $signed(-16'shf57) : $signed(_GEN_621); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_623 = 10'h230 == lut_adr ? $signed(-16'shf50) : $signed(_GEN_622); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_624 = 10'h231 == lut_adr ? $signed(-16'shf48) : $signed(_GEN_623); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_625 = 10'h232 == lut_adr ? $signed(-16'shf41) : $signed(_GEN_624); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_626 = 10'h233 == lut_adr ? $signed(-16'shf39) : $signed(_GEN_625); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_627 = 10'h234 == lut_adr ? $signed(-16'shf31) : $signed(_GEN_626); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_628 = 10'h235 == lut_adr ? $signed(-16'shf29) : $signed(_GEN_627); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_629 = 10'h236 == lut_adr ? $signed(-16'shf21) : $signed(_GEN_628); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_630 = 10'h237 == lut_adr ? $signed(-16'shf19) : $signed(_GEN_629); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_631 = 10'h238 == lut_adr ? $signed(-16'shf11) : $signed(_GEN_630); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_632 = 10'h239 == lut_adr ? $signed(-16'shf08) : $signed(_GEN_631); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_633 = 10'h23a == lut_adr ? $signed(-16'sheff) : $signed(_GEN_632); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_634 = 10'h23b == lut_adr ? $signed(-16'shef7) : $signed(_GEN_633); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_635 = 10'h23c == lut_adr ? $signed(-16'sheee) : $signed(_GEN_634); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_636 = 10'h23d == lut_adr ? $signed(-16'shee4) : $signed(_GEN_635); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_637 = 10'h23e == lut_adr ? $signed(-16'shedb) : $signed(_GEN_636); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_638 = 10'h23f == lut_adr ? $signed(-16'shed2) : $signed(_GEN_637); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_639 = 10'h240 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_638); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_640 = 10'h241 == lut_adr ? $signed(-16'shebf) : $signed(_GEN_639); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_641 = 10'h242 == lut_adr ? $signed(-16'sheb5) : $signed(_GEN_640); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_642 = 10'h243 == lut_adr ? $signed(-16'sheab) : $signed(_GEN_641); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_643 = 10'h244 == lut_adr ? $signed(-16'shea1) : $signed(_GEN_642); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_644 = 10'h245 == lut_adr ? $signed(-16'she96) : $signed(_GEN_643); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_645 = 10'h246 == lut_adr ? $signed(-16'she8c) : $signed(_GEN_644); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_646 = 10'h247 == lut_adr ? $signed(-16'she81) : $signed(_GEN_645); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_647 = 10'h248 == lut_adr ? $signed(-16'she77) : $signed(_GEN_646); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_648 = 10'h249 == lut_adr ? $signed(-16'she6c) : $signed(_GEN_647); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_649 = 10'h24a == lut_adr ? $signed(-16'she61) : $signed(_GEN_648); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_650 = 10'h24b == lut_adr ? $signed(-16'she56) : $signed(_GEN_649); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_651 = 10'h24c == lut_adr ? $signed(-16'she4b) : $signed(_GEN_650); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_652 = 10'h24d == lut_adr ? $signed(-16'she3f) : $signed(_GEN_651); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_653 = 10'h24e == lut_adr ? $signed(-16'she34) : $signed(_GEN_652); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_654 = 10'h24f == lut_adr ? $signed(-16'she28) : $signed(_GEN_653); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_655 = 10'h250 == lut_adr ? $signed(-16'she1c) : $signed(_GEN_654); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_656 = 10'h251 == lut_adr ? $signed(-16'she10) : $signed(_GEN_655); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_657 = 10'h252 == lut_adr ? $signed(-16'she04) : $signed(_GEN_656); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_658 = 10'h253 == lut_adr ? $signed(-16'shdf8) : $signed(_GEN_657); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_659 = 10'h254 == lut_adr ? $signed(-16'shdec) : $signed(_GEN_658); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_660 = 10'h255 == lut_adr ? $signed(-16'shddf) : $signed(_GEN_659); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_661 = 10'h256 == lut_adr ? $signed(-16'shdd3) : $signed(_GEN_660); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_662 = 10'h257 == lut_adr ? $signed(-16'shdc6) : $signed(_GEN_661); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_663 = 10'h258 == lut_adr ? $signed(-16'shdb9) : $signed(_GEN_662); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_664 = 10'h259 == lut_adr ? $signed(-16'shdac) : $signed(_GEN_663); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_665 = 10'h25a == lut_adr ? $signed(-16'shd9f) : $signed(_GEN_664); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_666 = 10'h25b == lut_adr ? $signed(-16'shd92) : $signed(_GEN_665); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_667 = 10'h25c == lut_adr ? $signed(-16'shd85) : $signed(_GEN_666); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_668 = 10'h25d == lut_adr ? $signed(-16'shd77) : $signed(_GEN_667); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_669 = 10'h25e == lut_adr ? $signed(-16'shd69) : $signed(_GEN_668); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_670 = 10'h25f == lut_adr ? $signed(-16'shd5c) : $signed(_GEN_669); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_671 = 10'h260 == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_670); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_672 = 10'h261 == lut_adr ? $signed(-16'shd40) : $signed(_GEN_671); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_673 = 10'h262 == lut_adr ? $signed(-16'shd32) : $signed(_GEN_672); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_674 = 10'h263 == lut_adr ? $signed(-16'shd23) : $signed(_GEN_673); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_675 = 10'h264 == lut_adr ? $signed(-16'shd15) : $signed(_GEN_674); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_676 = 10'h265 == lut_adr ? $signed(-16'shd06) : $signed(_GEN_675); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_677 = 10'h266 == lut_adr ? $signed(-16'shcf8) : $signed(_GEN_676); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_678 = 10'h267 == lut_adr ? $signed(-16'shce9) : $signed(_GEN_677); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_679 = 10'h268 == lut_adr ? $signed(-16'shcda) : $signed(_GEN_678); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_680 = 10'h269 == lut_adr ? $signed(-16'shccb) : $signed(_GEN_679); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_681 = 10'h26a == lut_adr ? $signed(-16'shcbc) : $signed(_GEN_680); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_682 = 10'h26b == lut_adr ? $signed(-16'shcac) : $signed(_GEN_681); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_683 = 10'h26c == lut_adr ? $signed(-16'shc9d) : $signed(_GEN_682); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_684 = 10'h26d == lut_adr ? $signed(-16'shc8e) : $signed(_GEN_683); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_685 = 10'h26e == lut_adr ? $signed(-16'shc7e) : $signed(_GEN_684); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_686 = 10'h26f == lut_adr ? $signed(-16'shc6e) : $signed(_GEN_685); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_687 = 10'h270 == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_686); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_688 = 10'h271 == lut_adr ? $signed(-16'shc4e) : $signed(_GEN_687); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_689 = 10'h272 == lut_adr ? $signed(-16'shc3e) : $signed(_GEN_688); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_690 = 10'h273 == lut_adr ? $signed(-16'shc2e) : $signed(_GEN_689); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_691 = 10'h274 == lut_adr ? $signed(-16'shc1e) : $signed(_GEN_690); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_692 = 10'h275 == lut_adr ? $signed(-16'shc0d) : $signed(_GEN_691); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_693 = 10'h276 == lut_adr ? $signed(-16'shbfc) : $signed(_GEN_692); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_694 = 10'h277 == lut_adr ? $signed(-16'shbec) : $signed(_GEN_693); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_695 = 10'h278 == lut_adr ? $signed(-16'shbdb) : $signed(_GEN_694); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_696 = 10'h279 == lut_adr ? $signed(-16'shbca) : $signed(_GEN_695); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_697 = 10'h27a == lut_adr ? $signed(-16'shbb9) : $signed(_GEN_696); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_698 = 10'h27b == lut_adr ? $signed(-16'shba8) : $signed(_GEN_697); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_699 = 10'h27c == lut_adr ? $signed(-16'shb97) : $signed(_GEN_698); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_700 = 10'h27d == lut_adr ? $signed(-16'shb85) : $signed(_GEN_699); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_701 = 10'h27e == lut_adr ? $signed(-16'shb74) : $signed(_GEN_700); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_702 = 10'h27f == lut_adr ? $signed(-16'shb62) : $signed(_GEN_701); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_703 = 10'h280 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_702); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_704 = 10'h281 == lut_adr ? $signed(-16'shb3e) : $signed(_GEN_703); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_705 = 10'h282 == lut_adr ? $signed(-16'shb2d) : $signed(_GEN_704); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_706 = 10'h283 == lut_adr ? $signed(-16'shb1b) : $signed(_GEN_705); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_707 = 10'h284 == lut_adr ? $signed(-16'shb08) : $signed(_GEN_706); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_708 = 10'h285 == lut_adr ? $signed(-16'shaf6) : $signed(_GEN_707); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_709 = 10'h286 == lut_adr ? $signed(-16'shae4) : $signed(_GEN_708); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_710 = 10'h287 == lut_adr ? $signed(-16'shad1) : $signed(_GEN_709); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_711 = 10'h288 == lut_adr ? $signed(-16'shabf) : $signed(_GEN_710); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_712 = 10'h289 == lut_adr ? $signed(-16'shaac) : $signed(_GEN_711); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_713 = 10'h28a == lut_adr ? $signed(-16'sha99) : $signed(_GEN_712); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_714 = 10'h28b == lut_adr ? $signed(-16'sha86) : $signed(_GEN_713); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_715 = 10'h28c == lut_adr ? $signed(-16'sha73) : $signed(_GEN_714); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_716 = 10'h28d == lut_adr ? $signed(-16'sha60) : $signed(_GEN_715); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_717 = 10'h28e == lut_adr ? $signed(-16'sha4d) : $signed(_GEN_716); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_718 = 10'h28f == lut_adr ? $signed(-16'sha3a) : $signed(_GEN_717); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_719 = 10'h290 == lut_adr ? $signed(-16'sha26) : $signed(_GEN_718); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_720 = 10'h291 == lut_adr ? $signed(-16'sha13) : $signed(_GEN_719); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_721 = 10'h292 == lut_adr ? $signed(-16'sh9ff) : $signed(_GEN_720); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_722 = 10'h293 == lut_adr ? $signed(-16'sh9ec) : $signed(_GEN_721); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_723 = 10'h294 == lut_adr ? $signed(-16'sh9d8) : $signed(_GEN_722); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_724 = 10'h295 == lut_adr ? $signed(-16'sh9c4) : $signed(_GEN_723); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_725 = 10'h296 == lut_adr ? $signed(-16'sh9b0) : $signed(_GEN_724); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_726 = 10'h297 == lut_adr ? $signed(-16'sh99c) : $signed(_GEN_725); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_727 = 10'h298 == lut_adr ? $signed(-16'sh988) : $signed(_GEN_726); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_728 = 10'h299 == lut_adr ? $signed(-16'sh974) : $signed(_GEN_727); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_729 = 10'h29a == lut_adr ? $signed(-16'sh95f) : $signed(_GEN_728); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_730 = 10'h29b == lut_adr ? $signed(-16'sh94b) : $signed(_GEN_729); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_731 = 10'h29c == lut_adr ? $signed(-16'sh937) : $signed(_GEN_730); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_732 = 10'h29d == lut_adr ? $signed(-16'sh922) : $signed(_GEN_731); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_733 = 10'h29e == lut_adr ? $signed(-16'sh90d) : $signed(_GEN_732); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_734 = 10'h29f == lut_adr ? $signed(-16'sh8f8) : $signed(_GEN_733); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_735 = 10'h2a0 == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_734); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_736 = 10'h2a1 == lut_adr ? $signed(-16'sh8cf) : $signed(_GEN_735); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_737 = 10'h2a2 == lut_adr ? $signed(-16'sh8ba) : $signed(_GEN_736); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_738 = 10'h2a3 == lut_adr ? $signed(-16'sh8a5) : $signed(_GEN_737); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_739 = 10'h2a4 == lut_adr ? $signed(-16'sh88f) : $signed(_GEN_738); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_740 = 10'h2a5 == lut_adr ? $signed(-16'sh87a) : $signed(_GEN_739); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_741 = 10'h2a6 == lut_adr ? $signed(-16'sh865) : $signed(_GEN_740); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_742 = 10'h2a7 == lut_adr ? $signed(-16'sh84f) : $signed(_GEN_741); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_743 = 10'h2a8 == lut_adr ? $signed(-16'sh83a) : $signed(_GEN_742); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_744 = 10'h2a9 == lut_adr ? $signed(-16'sh824) : $signed(_GEN_743); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_745 = 10'h2aa == lut_adr ? $signed(-16'sh80e) : $signed(_GEN_744); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_746 = 10'h2ab == lut_adr ? $signed(-16'sh7f9) : $signed(_GEN_745); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_747 = 10'h2ac == lut_adr ? $signed(-16'sh7e3) : $signed(_GEN_746); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_748 = 10'h2ad == lut_adr ? $signed(-16'sh7cd) : $signed(_GEN_747); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_749 = 10'h2ae == lut_adr ? $signed(-16'sh7b7) : $signed(_GEN_748); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_750 = 10'h2af == lut_adr ? $signed(-16'sh7a1) : $signed(_GEN_749); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_751 = 10'h2b0 == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_750); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_752 = 10'h2b1 == lut_adr ? $signed(-16'sh775) : $signed(_GEN_751); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_753 = 10'h2b2 == lut_adr ? $signed(-16'sh75e) : $signed(_GEN_752); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_754 = 10'h2b3 == lut_adr ? $signed(-16'sh748) : $signed(_GEN_753); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_755 = 10'h2b4 == lut_adr ? $signed(-16'sh732) : $signed(_GEN_754); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_756 = 10'h2b5 == lut_adr ? $signed(-16'sh71b) : $signed(_GEN_755); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_757 = 10'h2b6 == lut_adr ? $signed(-16'sh705) : $signed(_GEN_756); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_758 = 10'h2b7 == lut_adr ? $signed(-16'sh6ee) : $signed(_GEN_757); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_759 = 10'h2b8 == lut_adr ? $signed(-16'sh6d7) : $signed(_GEN_758); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_760 = 10'h2b9 == lut_adr ? $signed(-16'sh6c1) : $signed(_GEN_759); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_761 = 10'h2ba == lut_adr ? $signed(-16'sh6aa) : $signed(_GEN_760); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_762 = 10'h2bb == lut_adr ? $signed(-16'sh693) : $signed(_GEN_761); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_763 = 10'h2bc == lut_adr ? $signed(-16'sh67c) : $signed(_GEN_762); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_764 = 10'h2bd == lut_adr ? $signed(-16'sh665) : $signed(_GEN_763); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_765 = 10'h2be == lut_adr ? $signed(-16'sh64e) : $signed(_GEN_764); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_766 = 10'h2bf == lut_adr ? $signed(-16'sh637) : $signed(_GEN_765); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_767 = 10'h2c0 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_766); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_768 = 10'h2c1 == lut_adr ? $signed(-16'sh608) : $signed(_GEN_767); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_769 = 10'h2c2 == lut_adr ? $signed(-16'sh5f1) : $signed(_GEN_768); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_770 = 10'h2c3 == lut_adr ? $signed(-16'sh5da) : $signed(_GEN_769); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_771 = 10'h2c4 == lut_adr ? $signed(-16'sh5c2) : $signed(_GEN_770); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_772 = 10'h2c5 == lut_adr ? $signed(-16'sh5ab) : $signed(_GEN_771); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_773 = 10'h2c6 == lut_adr ? $signed(-16'sh593) : $signed(_GEN_772); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_774 = 10'h2c7 == lut_adr ? $signed(-16'sh57c) : $signed(_GEN_773); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_775 = 10'h2c8 == lut_adr ? $signed(-16'sh564) : $signed(_GEN_774); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_776 = 10'h2c9 == lut_adr ? $signed(-16'sh54c) : $signed(_GEN_775); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_777 = 10'h2ca == lut_adr ? $signed(-16'sh534) : $signed(_GEN_776); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_778 = 10'h2cb == lut_adr ? $signed(-16'sh51d) : $signed(_GEN_777); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_779 = 10'h2cc == lut_adr ? $signed(-16'sh505) : $signed(_GEN_778); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_780 = 10'h2cd == lut_adr ? $signed(-16'sh4ed) : $signed(_GEN_779); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_781 = 10'h2ce == lut_adr ? $signed(-16'sh4d5) : $signed(_GEN_780); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_782 = 10'h2cf == lut_adr ? $signed(-16'sh4bd) : $signed(_GEN_781); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_783 = 10'h2d0 == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_782); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_784 = 10'h2d1 == lut_adr ? $signed(-16'sh48d) : $signed(_GEN_783); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_785 = 10'h2d2 == lut_adr ? $signed(-16'sh475) : $signed(_GEN_784); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_786 = 10'h2d3 == lut_adr ? $signed(-16'sh45d) : $signed(_GEN_785); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_787 = 10'h2d4 == lut_adr ? $signed(-16'sh444) : $signed(_GEN_786); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_788 = 10'h2d5 == lut_adr ? $signed(-16'sh42c) : $signed(_GEN_787); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_789 = 10'h2d6 == lut_adr ? $signed(-16'sh414) : $signed(_GEN_788); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_790 = 10'h2d7 == lut_adr ? $signed(-16'sh3fc) : $signed(_GEN_789); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_791 = 10'h2d8 == lut_adr ? $signed(-16'sh3e3) : $signed(_GEN_790); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_792 = 10'h2d9 == lut_adr ? $signed(-16'sh3cb) : $signed(_GEN_791); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_793 = 10'h2da == lut_adr ? $signed(-16'sh3b2) : $signed(_GEN_792); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_794 = 10'h2db == lut_adr ? $signed(-16'sh39a) : $signed(_GEN_793); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_795 = 10'h2dc == lut_adr ? $signed(-16'sh381) : $signed(_GEN_794); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_796 = 10'h2dd == lut_adr ? $signed(-16'sh369) : $signed(_GEN_795); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_797 = 10'h2de == lut_adr ? $signed(-16'sh350) : $signed(_GEN_796); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_798 = 10'h2df == lut_adr ? $signed(-16'sh338) : $signed(_GEN_797); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_799 = 10'h2e0 == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_798); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_800 = 10'h2e1 == lut_adr ? $signed(-16'sh306) : $signed(_GEN_799); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_801 = 10'h2e2 == lut_adr ? $signed(-16'sh2ee) : $signed(_GEN_800); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_802 = 10'h2e3 == lut_adr ? $signed(-16'sh2d5) : $signed(_GEN_801); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_803 = 10'h2e4 == lut_adr ? $signed(-16'sh2bc) : $signed(_GEN_802); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_804 = 10'h2e5 == lut_adr ? $signed(-16'sh2a3) : $signed(_GEN_803); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_805 = 10'h2e6 == lut_adr ? $signed(-16'sh28b) : $signed(_GEN_804); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_806 = 10'h2e7 == lut_adr ? $signed(-16'sh272) : $signed(_GEN_805); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_807 = 10'h2e8 == lut_adr ? $signed(-16'sh259) : $signed(_GEN_806); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_808 = 10'h2e9 == lut_adr ? $signed(-16'sh240) : $signed(_GEN_807); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_809 = 10'h2ea == lut_adr ? $signed(-16'sh227) : $signed(_GEN_808); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_810 = 10'h2eb == lut_adr ? $signed(-16'sh20e) : $signed(_GEN_809); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_811 = 10'h2ec == lut_adr ? $signed(-16'sh1f5) : $signed(_GEN_810); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_812 = 10'h2ed == lut_adr ? $signed(-16'sh1dc) : $signed(_GEN_811); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_813 = 10'h2ee == lut_adr ? $signed(-16'sh1c3) : $signed(_GEN_812); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_814 = 10'h2ef == lut_adr ? $signed(-16'sh1aa) : $signed(_GEN_813); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_815 = 10'h2f0 == lut_adr ? $signed(-16'sh191) : $signed(_GEN_814); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_816 = 10'h2f1 == lut_adr ? $signed(-16'sh178) : $signed(_GEN_815); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_817 = 10'h2f2 == lut_adr ? $signed(-16'sh15f) : $signed(_GEN_816); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_818 = 10'h2f3 == lut_adr ? $signed(-16'sh146) : $signed(_GEN_817); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_819 = 10'h2f4 == lut_adr ? $signed(-16'sh12d) : $signed(_GEN_818); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_820 = 10'h2f5 == lut_adr ? $signed(-16'sh114) : $signed(_GEN_819); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_821 = 10'h2f6 == lut_adr ? $signed(-16'shfb) : $signed(_GEN_820); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_822 = 10'h2f7 == lut_adr ? $signed(-16'she2) : $signed(_GEN_821); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_823 = 10'h2f8 == lut_adr ? $signed(-16'shc9) : $signed(_GEN_822); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_824 = 10'h2f9 == lut_adr ? $signed(-16'shb0) : $signed(_GEN_823); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_825 = 10'h2fa == lut_adr ? $signed(-16'sh97) : $signed(_GEN_824); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_826 = 10'h2fb == lut_adr ? $signed(-16'sh7e) : $signed(_GEN_825); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_827 = 10'h2fc == lut_adr ? $signed(-16'sh65) : $signed(_GEN_826); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_828 = 10'h2fd == lut_adr ? $signed(-16'sh4b) : $signed(_GEN_827); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_829 = 10'h2fe == lut_adr ? $signed(-16'sh32) : $signed(_GEN_828); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_830 = 10'h2ff == lut_adr ? $signed(-16'sh19) : $signed(_GEN_829); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_831 = 10'h300 == lut_adr ? $signed(16'sh0) : $signed(_GEN_830); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_832 = 10'h301 == lut_adr ? $signed(16'sh19) : $signed(_GEN_831); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_833 = 10'h302 == lut_adr ? $signed(16'sh32) : $signed(_GEN_832); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_834 = 10'h303 == lut_adr ? $signed(16'sh4b) : $signed(_GEN_833); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_835 = 10'h304 == lut_adr ? $signed(16'sh65) : $signed(_GEN_834); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_836 = 10'h305 == lut_adr ? $signed(16'sh7e) : $signed(_GEN_835); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_837 = 10'h306 == lut_adr ? $signed(16'sh97) : $signed(_GEN_836); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_838 = 10'h307 == lut_adr ? $signed(16'shb0) : $signed(_GEN_837); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_839 = 10'h308 == lut_adr ? $signed(16'shc9) : $signed(_GEN_838); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_840 = 10'h309 == lut_adr ? $signed(16'she2) : $signed(_GEN_839); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_841 = 10'h30a == lut_adr ? $signed(16'shfb) : $signed(_GEN_840); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_842 = 10'h30b == lut_adr ? $signed(16'sh114) : $signed(_GEN_841); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_843 = 10'h30c == lut_adr ? $signed(16'sh12d) : $signed(_GEN_842); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_844 = 10'h30d == lut_adr ? $signed(16'sh146) : $signed(_GEN_843); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_845 = 10'h30e == lut_adr ? $signed(16'sh15f) : $signed(_GEN_844); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_846 = 10'h30f == lut_adr ? $signed(16'sh178) : $signed(_GEN_845); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_847 = 10'h310 == lut_adr ? $signed(16'sh191) : $signed(_GEN_846); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_848 = 10'h311 == lut_adr ? $signed(16'sh1aa) : $signed(_GEN_847); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_849 = 10'h312 == lut_adr ? $signed(16'sh1c3) : $signed(_GEN_848); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_850 = 10'h313 == lut_adr ? $signed(16'sh1dc) : $signed(_GEN_849); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_851 = 10'h314 == lut_adr ? $signed(16'sh1f5) : $signed(_GEN_850); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_852 = 10'h315 == lut_adr ? $signed(16'sh20e) : $signed(_GEN_851); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_853 = 10'h316 == lut_adr ? $signed(16'sh227) : $signed(_GEN_852); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_854 = 10'h317 == lut_adr ? $signed(16'sh240) : $signed(_GEN_853); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_855 = 10'h318 == lut_adr ? $signed(16'sh259) : $signed(_GEN_854); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_856 = 10'h319 == lut_adr ? $signed(16'sh272) : $signed(_GEN_855); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_857 = 10'h31a == lut_adr ? $signed(16'sh28b) : $signed(_GEN_856); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_858 = 10'h31b == lut_adr ? $signed(16'sh2a3) : $signed(_GEN_857); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_859 = 10'h31c == lut_adr ? $signed(16'sh2bc) : $signed(_GEN_858); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_860 = 10'h31d == lut_adr ? $signed(16'sh2d5) : $signed(_GEN_859); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_861 = 10'h31e == lut_adr ? $signed(16'sh2ee) : $signed(_GEN_860); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_862 = 10'h31f == lut_adr ? $signed(16'sh306) : $signed(_GEN_861); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_863 = 10'h320 == lut_adr ? $signed(16'sh31f) : $signed(_GEN_862); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_864 = 10'h321 == lut_adr ? $signed(16'sh338) : $signed(_GEN_863); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_865 = 10'h322 == lut_adr ? $signed(16'sh350) : $signed(_GEN_864); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_866 = 10'h323 == lut_adr ? $signed(16'sh369) : $signed(_GEN_865); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_867 = 10'h324 == lut_adr ? $signed(16'sh381) : $signed(_GEN_866); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_868 = 10'h325 == lut_adr ? $signed(16'sh39a) : $signed(_GEN_867); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_869 = 10'h326 == lut_adr ? $signed(16'sh3b2) : $signed(_GEN_868); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_870 = 10'h327 == lut_adr ? $signed(16'sh3cb) : $signed(_GEN_869); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_871 = 10'h328 == lut_adr ? $signed(16'sh3e3) : $signed(_GEN_870); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_872 = 10'h329 == lut_adr ? $signed(16'sh3fc) : $signed(_GEN_871); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_873 = 10'h32a == lut_adr ? $signed(16'sh414) : $signed(_GEN_872); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_874 = 10'h32b == lut_adr ? $signed(16'sh42c) : $signed(_GEN_873); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_875 = 10'h32c == lut_adr ? $signed(16'sh444) : $signed(_GEN_874); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_876 = 10'h32d == lut_adr ? $signed(16'sh45d) : $signed(_GEN_875); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_877 = 10'h32e == lut_adr ? $signed(16'sh475) : $signed(_GEN_876); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_878 = 10'h32f == lut_adr ? $signed(16'sh48d) : $signed(_GEN_877); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_879 = 10'h330 == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_878); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_880 = 10'h331 == lut_adr ? $signed(16'sh4bd) : $signed(_GEN_879); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_881 = 10'h332 == lut_adr ? $signed(16'sh4d5) : $signed(_GEN_880); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_882 = 10'h333 == lut_adr ? $signed(16'sh4ed) : $signed(_GEN_881); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_883 = 10'h334 == lut_adr ? $signed(16'sh505) : $signed(_GEN_882); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_884 = 10'h335 == lut_adr ? $signed(16'sh51d) : $signed(_GEN_883); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_885 = 10'h336 == lut_adr ? $signed(16'sh534) : $signed(_GEN_884); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_886 = 10'h337 == lut_adr ? $signed(16'sh54c) : $signed(_GEN_885); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_887 = 10'h338 == lut_adr ? $signed(16'sh564) : $signed(_GEN_886); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_888 = 10'h339 == lut_adr ? $signed(16'sh57c) : $signed(_GEN_887); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_889 = 10'h33a == lut_adr ? $signed(16'sh593) : $signed(_GEN_888); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_890 = 10'h33b == lut_adr ? $signed(16'sh5ab) : $signed(_GEN_889); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_891 = 10'h33c == lut_adr ? $signed(16'sh5c2) : $signed(_GEN_890); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_892 = 10'h33d == lut_adr ? $signed(16'sh5da) : $signed(_GEN_891); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_893 = 10'h33e == lut_adr ? $signed(16'sh5f1) : $signed(_GEN_892); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_894 = 10'h33f == lut_adr ? $signed(16'sh608) : $signed(_GEN_893); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_895 = 10'h340 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_894); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_896 = 10'h341 == lut_adr ? $signed(16'sh637) : $signed(_GEN_895); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_897 = 10'h342 == lut_adr ? $signed(16'sh64e) : $signed(_GEN_896); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_898 = 10'h343 == lut_adr ? $signed(16'sh665) : $signed(_GEN_897); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_899 = 10'h344 == lut_adr ? $signed(16'sh67c) : $signed(_GEN_898); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_900 = 10'h345 == lut_adr ? $signed(16'sh693) : $signed(_GEN_899); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_901 = 10'h346 == lut_adr ? $signed(16'sh6aa) : $signed(_GEN_900); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_902 = 10'h347 == lut_adr ? $signed(16'sh6c1) : $signed(_GEN_901); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_903 = 10'h348 == lut_adr ? $signed(16'sh6d7) : $signed(_GEN_902); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_904 = 10'h349 == lut_adr ? $signed(16'sh6ee) : $signed(_GEN_903); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_905 = 10'h34a == lut_adr ? $signed(16'sh705) : $signed(_GEN_904); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_906 = 10'h34b == lut_adr ? $signed(16'sh71b) : $signed(_GEN_905); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_907 = 10'h34c == lut_adr ? $signed(16'sh732) : $signed(_GEN_906); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_908 = 10'h34d == lut_adr ? $signed(16'sh748) : $signed(_GEN_907); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_909 = 10'h34e == lut_adr ? $signed(16'sh75e) : $signed(_GEN_908); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_910 = 10'h34f == lut_adr ? $signed(16'sh775) : $signed(_GEN_909); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_911 = 10'h350 == lut_adr ? $signed(16'sh78b) : $signed(_GEN_910); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_912 = 10'h351 == lut_adr ? $signed(16'sh7a1) : $signed(_GEN_911); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_913 = 10'h352 == lut_adr ? $signed(16'sh7b7) : $signed(_GEN_912); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_914 = 10'h353 == lut_adr ? $signed(16'sh7cd) : $signed(_GEN_913); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_915 = 10'h354 == lut_adr ? $signed(16'sh7e3) : $signed(_GEN_914); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_916 = 10'h355 == lut_adr ? $signed(16'sh7f9) : $signed(_GEN_915); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_917 = 10'h356 == lut_adr ? $signed(16'sh80e) : $signed(_GEN_916); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_918 = 10'h357 == lut_adr ? $signed(16'sh824) : $signed(_GEN_917); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_919 = 10'h358 == lut_adr ? $signed(16'sh83a) : $signed(_GEN_918); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_920 = 10'h359 == lut_adr ? $signed(16'sh84f) : $signed(_GEN_919); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_921 = 10'h35a == lut_adr ? $signed(16'sh865) : $signed(_GEN_920); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_922 = 10'h35b == lut_adr ? $signed(16'sh87a) : $signed(_GEN_921); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_923 = 10'h35c == lut_adr ? $signed(16'sh88f) : $signed(_GEN_922); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_924 = 10'h35d == lut_adr ? $signed(16'sh8a5) : $signed(_GEN_923); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_925 = 10'h35e == lut_adr ? $signed(16'sh8ba) : $signed(_GEN_924); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_926 = 10'h35f == lut_adr ? $signed(16'sh8cf) : $signed(_GEN_925); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_927 = 10'h360 == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_926); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_928 = 10'h361 == lut_adr ? $signed(16'sh8f8) : $signed(_GEN_927); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_929 = 10'h362 == lut_adr ? $signed(16'sh90d) : $signed(_GEN_928); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_930 = 10'h363 == lut_adr ? $signed(16'sh922) : $signed(_GEN_929); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_931 = 10'h364 == lut_adr ? $signed(16'sh937) : $signed(_GEN_930); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_932 = 10'h365 == lut_adr ? $signed(16'sh94b) : $signed(_GEN_931); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_933 = 10'h366 == lut_adr ? $signed(16'sh95f) : $signed(_GEN_932); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_934 = 10'h367 == lut_adr ? $signed(16'sh974) : $signed(_GEN_933); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_935 = 10'h368 == lut_adr ? $signed(16'sh988) : $signed(_GEN_934); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_936 = 10'h369 == lut_adr ? $signed(16'sh99c) : $signed(_GEN_935); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_937 = 10'h36a == lut_adr ? $signed(16'sh9b0) : $signed(_GEN_936); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_938 = 10'h36b == lut_adr ? $signed(16'sh9c4) : $signed(_GEN_937); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_939 = 10'h36c == lut_adr ? $signed(16'sh9d8) : $signed(_GEN_938); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_940 = 10'h36d == lut_adr ? $signed(16'sh9ec) : $signed(_GEN_939); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_941 = 10'h36e == lut_adr ? $signed(16'sh9ff) : $signed(_GEN_940); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_942 = 10'h36f == lut_adr ? $signed(16'sha13) : $signed(_GEN_941); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_943 = 10'h370 == lut_adr ? $signed(16'sha26) : $signed(_GEN_942); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_944 = 10'h371 == lut_adr ? $signed(16'sha3a) : $signed(_GEN_943); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_945 = 10'h372 == lut_adr ? $signed(16'sha4d) : $signed(_GEN_944); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_946 = 10'h373 == lut_adr ? $signed(16'sha60) : $signed(_GEN_945); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_947 = 10'h374 == lut_adr ? $signed(16'sha73) : $signed(_GEN_946); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_948 = 10'h375 == lut_adr ? $signed(16'sha86) : $signed(_GEN_947); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_949 = 10'h376 == lut_adr ? $signed(16'sha99) : $signed(_GEN_948); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_950 = 10'h377 == lut_adr ? $signed(16'shaac) : $signed(_GEN_949); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_951 = 10'h378 == lut_adr ? $signed(16'shabf) : $signed(_GEN_950); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_952 = 10'h379 == lut_adr ? $signed(16'shad1) : $signed(_GEN_951); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_953 = 10'h37a == lut_adr ? $signed(16'shae4) : $signed(_GEN_952); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_954 = 10'h37b == lut_adr ? $signed(16'shaf6) : $signed(_GEN_953); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_955 = 10'h37c == lut_adr ? $signed(16'shb08) : $signed(_GEN_954); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_956 = 10'h37d == lut_adr ? $signed(16'shb1b) : $signed(_GEN_955); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_957 = 10'h37e == lut_adr ? $signed(16'shb2d) : $signed(_GEN_956); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_958 = 10'h37f == lut_adr ? $signed(16'shb3e) : $signed(_GEN_957); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_959 = 10'h380 == lut_adr ? $signed(16'shb50) : $signed(_GEN_958); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_960 = 10'h381 == lut_adr ? $signed(16'shb62) : $signed(_GEN_959); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_961 = 10'h382 == lut_adr ? $signed(16'shb74) : $signed(_GEN_960); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_962 = 10'h383 == lut_adr ? $signed(16'shb85) : $signed(_GEN_961); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_963 = 10'h384 == lut_adr ? $signed(16'shb97) : $signed(_GEN_962); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_964 = 10'h385 == lut_adr ? $signed(16'shba8) : $signed(_GEN_963); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_965 = 10'h386 == lut_adr ? $signed(16'shbb9) : $signed(_GEN_964); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_966 = 10'h387 == lut_adr ? $signed(16'shbca) : $signed(_GEN_965); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_967 = 10'h388 == lut_adr ? $signed(16'shbdb) : $signed(_GEN_966); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_968 = 10'h389 == lut_adr ? $signed(16'shbec) : $signed(_GEN_967); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_969 = 10'h38a == lut_adr ? $signed(16'shbfc) : $signed(_GEN_968); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_970 = 10'h38b == lut_adr ? $signed(16'shc0d) : $signed(_GEN_969); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_971 = 10'h38c == lut_adr ? $signed(16'shc1e) : $signed(_GEN_970); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_972 = 10'h38d == lut_adr ? $signed(16'shc2e) : $signed(_GEN_971); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_973 = 10'h38e == lut_adr ? $signed(16'shc3e) : $signed(_GEN_972); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_974 = 10'h38f == lut_adr ? $signed(16'shc4e) : $signed(_GEN_973); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_975 = 10'h390 == lut_adr ? $signed(16'shc5e) : $signed(_GEN_974); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_976 = 10'h391 == lut_adr ? $signed(16'shc6e) : $signed(_GEN_975); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_977 = 10'h392 == lut_adr ? $signed(16'shc7e) : $signed(_GEN_976); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_978 = 10'h393 == lut_adr ? $signed(16'shc8e) : $signed(_GEN_977); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_979 = 10'h394 == lut_adr ? $signed(16'shc9d) : $signed(_GEN_978); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_980 = 10'h395 == lut_adr ? $signed(16'shcac) : $signed(_GEN_979); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_981 = 10'h396 == lut_adr ? $signed(16'shcbc) : $signed(_GEN_980); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_982 = 10'h397 == lut_adr ? $signed(16'shccb) : $signed(_GEN_981); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_983 = 10'h398 == lut_adr ? $signed(16'shcda) : $signed(_GEN_982); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_984 = 10'h399 == lut_adr ? $signed(16'shce9) : $signed(_GEN_983); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_985 = 10'h39a == lut_adr ? $signed(16'shcf8) : $signed(_GEN_984); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_986 = 10'h39b == lut_adr ? $signed(16'shd06) : $signed(_GEN_985); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_987 = 10'h39c == lut_adr ? $signed(16'shd15) : $signed(_GEN_986); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_988 = 10'h39d == lut_adr ? $signed(16'shd23) : $signed(_GEN_987); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_989 = 10'h39e == lut_adr ? $signed(16'shd32) : $signed(_GEN_988); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_990 = 10'h39f == lut_adr ? $signed(16'shd40) : $signed(_GEN_989); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_991 = 10'h3a0 == lut_adr ? $signed(16'shd4e) : $signed(_GEN_990); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_992 = 10'h3a1 == lut_adr ? $signed(16'shd5c) : $signed(_GEN_991); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_993 = 10'h3a2 == lut_adr ? $signed(16'shd69) : $signed(_GEN_992); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_994 = 10'h3a3 == lut_adr ? $signed(16'shd77) : $signed(_GEN_993); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_995 = 10'h3a4 == lut_adr ? $signed(16'shd85) : $signed(_GEN_994); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_996 = 10'h3a5 == lut_adr ? $signed(16'shd92) : $signed(_GEN_995); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_997 = 10'h3a6 == lut_adr ? $signed(16'shd9f) : $signed(_GEN_996); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_998 = 10'h3a7 == lut_adr ? $signed(16'shdac) : $signed(_GEN_997); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_999 = 10'h3a8 == lut_adr ? $signed(16'shdb9) : $signed(_GEN_998); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1000 = 10'h3a9 == lut_adr ? $signed(16'shdc6) : $signed(_GEN_999); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1001 = 10'h3aa == lut_adr ? $signed(16'shdd3) : $signed(_GEN_1000); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1002 = 10'h3ab == lut_adr ? $signed(16'shddf) : $signed(_GEN_1001); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1003 = 10'h3ac == lut_adr ? $signed(16'shdec) : $signed(_GEN_1002); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1004 = 10'h3ad == lut_adr ? $signed(16'shdf8) : $signed(_GEN_1003); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1005 = 10'h3ae == lut_adr ? $signed(16'she04) : $signed(_GEN_1004); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1006 = 10'h3af == lut_adr ? $signed(16'she10) : $signed(_GEN_1005); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1007 = 10'h3b0 == lut_adr ? $signed(16'she1c) : $signed(_GEN_1006); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1008 = 10'h3b1 == lut_adr ? $signed(16'she28) : $signed(_GEN_1007); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1009 = 10'h3b2 == lut_adr ? $signed(16'she34) : $signed(_GEN_1008); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1010 = 10'h3b3 == lut_adr ? $signed(16'she3f) : $signed(_GEN_1009); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1011 = 10'h3b4 == lut_adr ? $signed(16'she4b) : $signed(_GEN_1010); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1012 = 10'h3b5 == lut_adr ? $signed(16'she56) : $signed(_GEN_1011); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1013 = 10'h3b6 == lut_adr ? $signed(16'she61) : $signed(_GEN_1012); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1014 = 10'h3b7 == lut_adr ? $signed(16'she6c) : $signed(_GEN_1013); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1015 = 10'h3b8 == lut_adr ? $signed(16'she77) : $signed(_GEN_1014); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1016 = 10'h3b9 == lut_adr ? $signed(16'she81) : $signed(_GEN_1015); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1017 = 10'h3ba == lut_adr ? $signed(16'she8c) : $signed(_GEN_1016); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1018 = 10'h3bb == lut_adr ? $signed(16'she96) : $signed(_GEN_1017); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1019 = 10'h3bc == lut_adr ? $signed(16'shea1) : $signed(_GEN_1018); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1020 = 10'h3bd == lut_adr ? $signed(16'sheab) : $signed(_GEN_1019); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1021 = 10'h3be == lut_adr ? $signed(16'sheb5) : $signed(_GEN_1020); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1022 = 10'h3bf == lut_adr ? $signed(16'shebf) : $signed(_GEN_1021); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1023 = 10'h3c0 == lut_adr ? $signed(16'shec8) : $signed(_GEN_1022); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1024 = 10'h3c1 == lut_adr ? $signed(16'shed2) : $signed(_GEN_1023); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1025 = 10'h3c2 == lut_adr ? $signed(16'shedb) : $signed(_GEN_1024); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1026 = 10'h3c3 == lut_adr ? $signed(16'shee4) : $signed(_GEN_1025); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1027 = 10'h3c4 == lut_adr ? $signed(16'sheee) : $signed(_GEN_1026); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1028 = 10'h3c5 == lut_adr ? $signed(16'shef7) : $signed(_GEN_1027); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1029 = 10'h3c6 == lut_adr ? $signed(16'sheff) : $signed(_GEN_1028); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1030 = 10'h3c7 == lut_adr ? $signed(16'shf08) : $signed(_GEN_1029); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1031 = 10'h3c8 == lut_adr ? $signed(16'shf11) : $signed(_GEN_1030); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1032 = 10'h3c9 == lut_adr ? $signed(16'shf19) : $signed(_GEN_1031); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1033 = 10'h3ca == lut_adr ? $signed(16'shf21) : $signed(_GEN_1032); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1034 = 10'h3cb == lut_adr ? $signed(16'shf29) : $signed(_GEN_1033); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1035 = 10'h3cc == lut_adr ? $signed(16'shf31) : $signed(_GEN_1034); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1036 = 10'h3cd == lut_adr ? $signed(16'shf39) : $signed(_GEN_1035); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1037 = 10'h3ce == lut_adr ? $signed(16'shf41) : $signed(_GEN_1036); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1038 = 10'h3cf == lut_adr ? $signed(16'shf48) : $signed(_GEN_1037); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1039 = 10'h3d0 == lut_adr ? $signed(16'shf50) : $signed(_GEN_1038); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1040 = 10'h3d1 == lut_adr ? $signed(16'shf57) : $signed(_GEN_1039); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1041 = 10'h3d2 == lut_adr ? $signed(16'shf5e) : $signed(_GEN_1040); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1042 = 10'h3d3 == lut_adr ? $signed(16'shf65) : $signed(_GEN_1041); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1043 = 10'h3d4 == lut_adr ? $signed(16'shf6c) : $signed(_GEN_1042); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1044 = 10'h3d5 == lut_adr ? $signed(16'shf72) : $signed(_GEN_1043); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1045 = 10'h3d6 == lut_adr ? $signed(16'shf79) : $signed(_GEN_1044); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1046 = 10'h3d7 == lut_adr ? $signed(16'shf7f) : $signed(_GEN_1045); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1047 = 10'h3d8 == lut_adr ? $signed(16'shf85) : $signed(_GEN_1046); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1048 = 10'h3d9 == lut_adr ? $signed(16'shf8b) : $signed(_GEN_1047); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1049 = 10'h3da == lut_adr ? $signed(16'shf91) : $signed(_GEN_1048); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1050 = 10'h3db == lut_adr ? $signed(16'shf97) : $signed(_GEN_1049); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1051 = 10'h3dc == lut_adr ? $signed(16'shf9c) : $signed(_GEN_1050); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1052 = 10'h3dd == lut_adr ? $signed(16'shfa2) : $signed(_GEN_1051); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1053 = 10'h3de == lut_adr ? $signed(16'shfa7) : $signed(_GEN_1052); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1054 = 10'h3df == lut_adr ? $signed(16'shfac) : $signed(_GEN_1053); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1055 = 10'h3e0 == lut_adr ? $signed(16'shfb1) : $signed(_GEN_1054); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1056 = 10'h3e1 == lut_adr ? $signed(16'shfb6) : $signed(_GEN_1055); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1057 = 10'h3e2 == lut_adr ? $signed(16'shfbb) : $signed(_GEN_1056); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1058 = 10'h3e3 == lut_adr ? $signed(16'shfbf) : $signed(_GEN_1057); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1059 = 10'h3e4 == lut_adr ? $signed(16'shfc4) : $signed(_GEN_1058); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1060 = 10'h3e5 == lut_adr ? $signed(16'shfc8) : $signed(_GEN_1059); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1061 = 10'h3e6 == lut_adr ? $signed(16'shfcc) : $signed(_GEN_1060); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1062 = 10'h3e7 == lut_adr ? $signed(16'shfd0) : $signed(_GEN_1061); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1063 = 10'h3e8 == lut_adr ? $signed(16'shfd4) : $signed(_GEN_1062); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1064 = 10'h3e9 == lut_adr ? $signed(16'shfd7) : $signed(_GEN_1063); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1065 = 10'h3ea == lut_adr ? $signed(16'shfdb) : $signed(_GEN_1064); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1066 = 10'h3eb == lut_adr ? $signed(16'shfde) : $signed(_GEN_1065); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1067 = 10'h3ec == lut_adr ? $signed(16'shfe1) : $signed(_GEN_1066); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1068 = 10'h3ed == lut_adr ? $signed(16'shfe4) : $signed(_GEN_1067); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1069 = 10'h3ee == lut_adr ? $signed(16'shfe7) : $signed(_GEN_1068); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1070 = 10'h3ef == lut_adr ? $signed(16'shfea) : $signed(_GEN_1069); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1071 = 10'h3f0 == lut_adr ? $signed(16'shfec) : $signed(_GEN_1070); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1072 = 10'h3f1 == lut_adr ? $signed(16'shfef) : $signed(_GEN_1071); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1073 = 10'h3f2 == lut_adr ? $signed(16'shff1) : $signed(_GEN_1072); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1074 = 10'h3f3 == lut_adr ? $signed(16'shff3) : $signed(_GEN_1073); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1075 = 10'h3f4 == lut_adr ? $signed(16'shff5) : $signed(_GEN_1074); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1076 = 10'h3f5 == lut_adr ? $signed(16'shff7) : $signed(_GEN_1075); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1077 = 10'h3f6 == lut_adr ? $signed(16'shff8) : $signed(_GEN_1076); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1078 = 10'h3f7 == lut_adr ? $signed(16'shffa) : $signed(_GEN_1077); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1079 = 10'h3f8 == lut_adr ? $signed(16'shffb) : $signed(_GEN_1078); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1080 = 10'h3f9 == lut_adr ? $signed(16'shffc) : $signed(_GEN_1079); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1081 = 10'h3fa == lut_adr ? $signed(16'shffd) : $signed(_GEN_1080); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1082 = 10'h3fb == lut_adr ? $signed(16'shffe) : $signed(_GEN_1081); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1083 = 10'h3fc == lut_adr ? $signed(16'shfff) : $signed(_GEN_1082); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1084 = 10'h3fd == lut_adr ? $signed(16'shfff) : $signed(_GEN_1083); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1085 = 10'h3fe == lut_adr ? $signed(16'sh1000) : $signed(_GEN_1084); // @[Butterfly.scala 175:12]
  wire [15:0] _GEN_1088 = 10'h1 == lut_adr ? $signed(-16'sh19) : $signed(16'sh0); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1089 = 10'h2 == lut_adr ? $signed(-16'sh32) : $signed(_GEN_1088); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1090 = 10'h3 == lut_adr ? $signed(-16'sh4b) : $signed(_GEN_1089); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1091 = 10'h4 == lut_adr ? $signed(-16'sh65) : $signed(_GEN_1090); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1092 = 10'h5 == lut_adr ? $signed(-16'sh7e) : $signed(_GEN_1091); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1093 = 10'h6 == lut_adr ? $signed(-16'sh97) : $signed(_GEN_1092); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1094 = 10'h7 == lut_adr ? $signed(-16'shb0) : $signed(_GEN_1093); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1095 = 10'h8 == lut_adr ? $signed(-16'shc9) : $signed(_GEN_1094); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1096 = 10'h9 == lut_adr ? $signed(-16'she2) : $signed(_GEN_1095); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1097 = 10'ha == lut_adr ? $signed(-16'shfb) : $signed(_GEN_1096); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1098 = 10'hb == lut_adr ? $signed(-16'sh114) : $signed(_GEN_1097); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1099 = 10'hc == lut_adr ? $signed(-16'sh12d) : $signed(_GEN_1098); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1100 = 10'hd == lut_adr ? $signed(-16'sh146) : $signed(_GEN_1099); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1101 = 10'he == lut_adr ? $signed(-16'sh15f) : $signed(_GEN_1100); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1102 = 10'hf == lut_adr ? $signed(-16'sh178) : $signed(_GEN_1101); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1103 = 10'h10 == lut_adr ? $signed(-16'sh191) : $signed(_GEN_1102); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1104 = 10'h11 == lut_adr ? $signed(-16'sh1aa) : $signed(_GEN_1103); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1105 = 10'h12 == lut_adr ? $signed(-16'sh1c3) : $signed(_GEN_1104); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1106 = 10'h13 == lut_adr ? $signed(-16'sh1dc) : $signed(_GEN_1105); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1107 = 10'h14 == lut_adr ? $signed(-16'sh1f5) : $signed(_GEN_1106); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1108 = 10'h15 == lut_adr ? $signed(-16'sh20e) : $signed(_GEN_1107); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1109 = 10'h16 == lut_adr ? $signed(-16'sh227) : $signed(_GEN_1108); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1110 = 10'h17 == lut_adr ? $signed(-16'sh240) : $signed(_GEN_1109); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1111 = 10'h18 == lut_adr ? $signed(-16'sh259) : $signed(_GEN_1110); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1112 = 10'h19 == lut_adr ? $signed(-16'sh272) : $signed(_GEN_1111); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1113 = 10'h1a == lut_adr ? $signed(-16'sh28b) : $signed(_GEN_1112); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1114 = 10'h1b == lut_adr ? $signed(-16'sh2a3) : $signed(_GEN_1113); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1115 = 10'h1c == lut_adr ? $signed(-16'sh2bc) : $signed(_GEN_1114); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1116 = 10'h1d == lut_adr ? $signed(-16'sh2d5) : $signed(_GEN_1115); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1117 = 10'h1e == lut_adr ? $signed(-16'sh2ee) : $signed(_GEN_1116); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1118 = 10'h1f == lut_adr ? $signed(-16'sh306) : $signed(_GEN_1117); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1119 = 10'h20 == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_1118); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1120 = 10'h21 == lut_adr ? $signed(-16'sh338) : $signed(_GEN_1119); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1121 = 10'h22 == lut_adr ? $signed(-16'sh350) : $signed(_GEN_1120); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1122 = 10'h23 == lut_adr ? $signed(-16'sh369) : $signed(_GEN_1121); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1123 = 10'h24 == lut_adr ? $signed(-16'sh381) : $signed(_GEN_1122); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1124 = 10'h25 == lut_adr ? $signed(-16'sh39a) : $signed(_GEN_1123); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1125 = 10'h26 == lut_adr ? $signed(-16'sh3b2) : $signed(_GEN_1124); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1126 = 10'h27 == lut_adr ? $signed(-16'sh3cb) : $signed(_GEN_1125); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1127 = 10'h28 == lut_adr ? $signed(-16'sh3e3) : $signed(_GEN_1126); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1128 = 10'h29 == lut_adr ? $signed(-16'sh3fc) : $signed(_GEN_1127); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1129 = 10'h2a == lut_adr ? $signed(-16'sh414) : $signed(_GEN_1128); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1130 = 10'h2b == lut_adr ? $signed(-16'sh42c) : $signed(_GEN_1129); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1131 = 10'h2c == lut_adr ? $signed(-16'sh444) : $signed(_GEN_1130); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1132 = 10'h2d == lut_adr ? $signed(-16'sh45d) : $signed(_GEN_1131); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1133 = 10'h2e == lut_adr ? $signed(-16'sh475) : $signed(_GEN_1132); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1134 = 10'h2f == lut_adr ? $signed(-16'sh48d) : $signed(_GEN_1133); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1135 = 10'h30 == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_1134); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1136 = 10'h31 == lut_adr ? $signed(-16'sh4bd) : $signed(_GEN_1135); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1137 = 10'h32 == lut_adr ? $signed(-16'sh4d5) : $signed(_GEN_1136); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1138 = 10'h33 == lut_adr ? $signed(-16'sh4ed) : $signed(_GEN_1137); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1139 = 10'h34 == lut_adr ? $signed(-16'sh505) : $signed(_GEN_1138); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1140 = 10'h35 == lut_adr ? $signed(-16'sh51d) : $signed(_GEN_1139); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1141 = 10'h36 == lut_adr ? $signed(-16'sh534) : $signed(_GEN_1140); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1142 = 10'h37 == lut_adr ? $signed(-16'sh54c) : $signed(_GEN_1141); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1143 = 10'h38 == lut_adr ? $signed(-16'sh564) : $signed(_GEN_1142); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1144 = 10'h39 == lut_adr ? $signed(-16'sh57c) : $signed(_GEN_1143); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1145 = 10'h3a == lut_adr ? $signed(-16'sh593) : $signed(_GEN_1144); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1146 = 10'h3b == lut_adr ? $signed(-16'sh5ab) : $signed(_GEN_1145); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1147 = 10'h3c == lut_adr ? $signed(-16'sh5c2) : $signed(_GEN_1146); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1148 = 10'h3d == lut_adr ? $signed(-16'sh5da) : $signed(_GEN_1147); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1149 = 10'h3e == lut_adr ? $signed(-16'sh5f1) : $signed(_GEN_1148); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1150 = 10'h3f == lut_adr ? $signed(-16'sh608) : $signed(_GEN_1149); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1151 = 10'h40 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_1150); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1152 = 10'h41 == lut_adr ? $signed(-16'sh637) : $signed(_GEN_1151); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1153 = 10'h42 == lut_adr ? $signed(-16'sh64e) : $signed(_GEN_1152); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1154 = 10'h43 == lut_adr ? $signed(-16'sh665) : $signed(_GEN_1153); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1155 = 10'h44 == lut_adr ? $signed(-16'sh67c) : $signed(_GEN_1154); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1156 = 10'h45 == lut_adr ? $signed(-16'sh693) : $signed(_GEN_1155); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1157 = 10'h46 == lut_adr ? $signed(-16'sh6aa) : $signed(_GEN_1156); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1158 = 10'h47 == lut_adr ? $signed(-16'sh6c1) : $signed(_GEN_1157); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1159 = 10'h48 == lut_adr ? $signed(-16'sh6d7) : $signed(_GEN_1158); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1160 = 10'h49 == lut_adr ? $signed(-16'sh6ee) : $signed(_GEN_1159); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1161 = 10'h4a == lut_adr ? $signed(-16'sh705) : $signed(_GEN_1160); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1162 = 10'h4b == lut_adr ? $signed(-16'sh71b) : $signed(_GEN_1161); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1163 = 10'h4c == lut_adr ? $signed(-16'sh732) : $signed(_GEN_1162); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1164 = 10'h4d == lut_adr ? $signed(-16'sh748) : $signed(_GEN_1163); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1165 = 10'h4e == lut_adr ? $signed(-16'sh75e) : $signed(_GEN_1164); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1166 = 10'h4f == lut_adr ? $signed(-16'sh775) : $signed(_GEN_1165); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1167 = 10'h50 == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_1166); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1168 = 10'h51 == lut_adr ? $signed(-16'sh7a1) : $signed(_GEN_1167); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1169 = 10'h52 == lut_adr ? $signed(-16'sh7b7) : $signed(_GEN_1168); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1170 = 10'h53 == lut_adr ? $signed(-16'sh7cd) : $signed(_GEN_1169); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1171 = 10'h54 == lut_adr ? $signed(-16'sh7e3) : $signed(_GEN_1170); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1172 = 10'h55 == lut_adr ? $signed(-16'sh7f9) : $signed(_GEN_1171); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1173 = 10'h56 == lut_adr ? $signed(-16'sh80e) : $signed(_GEN_1172); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1174 = 10'h57 == lut_adr ? $signed(-16'sh824) : $signed(_GEN_1173); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1175 = 10'h58 == lut_adr ? $signed(-16'sh83a) : $signed(_GEN_1174); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1176 = 10'h59 == lut_adr ? $signed(-16'sh84f) : $signed(_GEN_1175); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1177 = 10'h5a == lut_adr ? $signed(-16'sh865) : $signed(_GEN_1176); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1178 = 10'h5b == lut_adr ? $signed(-16'sh87a) : $signed(_GEN_1177); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1179 = 10'h5c == lut_adr ? $signed(-16'sh88f) : $signed(_GEN_1178); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1180 = 10'h5d == lut_adr ? $signed(-16'sh8a5) : $signed(_GEN_1179); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1181 = 10'h5e == lut_adr ? $signed(-16'sh8ba) : $signed(_GEN_1180); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1182 = 10'h5f == lut_adr ? $signed(-16'sh8cf) : $signed(_GEN_1181); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1183 = 10'h60 == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_1182); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1184 = 10'h61 == lut_adr ? $signed(-16'sh8f8) : $signed(_GEN_1183); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1185 = 10'h62 == lut_adr ? $signed(-16'sh90d) : $signed(_GEN_1184); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1186 = 10'h63 == lut_adr ? $signed(-16'sh922) : $signed(_GEN_1185); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1187 = 10'h64 == lut_adr ? $signed(-16'sh937) : $signed(_GEN_1186); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1188 = 10'h65 == lut_adr ? $signed(-16'sh94b) : $signed(_GEN_1187); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1189 = 10'h66 == lut_adr ? $signed(-16'sh95f) : $signed(_GEN_1188); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1190 = 10'h67 == lut_adr ? $signed(-16'sh974) : $signed(_GEN_1189); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1191 = 10'h68 == lut_adr ? $signed(-16'sh988) : $signed(_GEN_1190); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1192 = 10'h69 == lut_adr ? $signed(-16'sh99c) : $signed(_GEN_1191); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1193 = 10'h6a == lut_adr ? $signed(-16'sh9b0) : $signed(_GEN_1192); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1194 = 10'h6b == lut_adr ? $signed(-16'sh9c4) : $signed(_GEN_1193); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1195 = 10'h6c == lut_adr ? $signed(-16'sh9d8) : $signed(_GEN_1194); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1196 = 10'h6d == lut_adr ? $signed(-16'sh9ec) : $signed(_GEN_1195); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1197 = 10'h6e == lut_adr ? $signed(-16'sh9ff) : $signed(_GEN_1196); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1198 = 10'h6f == lut_adr ? $signed(-16'sha13) : $signed(_GEN_1197); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1199 = 10'h70 == lut_adr ? $signed(-16'sha26) : $signed(_GEN_1198); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1200 = 10'h71 == lut_adr ? $signed(-16'sha3a) : $signed(_GEN_1199); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1201 = 10'h72 == lut_adr ? $signed(-16'sha4d) : $signed(_GEN_1200); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1202 = 10'h73 == lut_adr ? $signed(-16'sha60) : $signed(_GEN_1201); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1203 = 10'h74 == lut_adr ? $signed(-16'sha73) : $signed(_GEN_1202); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1204 = 10'h75 == lut_adr ? $signed(-16'sha86) : $signed(_GEN_1203); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1205 = 10'h76 == lut_adr ? $signed(-16'sha99) : $signed(_GEN_1204); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1206 = 10'h77 == lut_adr ? $signed(-16'shaac) : $signed(_GEN_1205); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1207 = 10'h78 == lut_adr ? $signed(-16'shabf) : $signed(_GEN_1206); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1208 = 10'h79 == lut_adr ? $signed(-16'shad1) : $signed(_GEN_1207); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1209 = 10'h7a == lut_adr ? $signed(-16'shae4) : $signed(_GEN_1208); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1210 = 10'h7b == lut_adr ? $signed(-16'shaf6) : $signed(_GEN_1209); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1211 = 10'h7c == lut_adr ? $signed(-16'shb08) : $signed(_GEN_1210); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1212 = 10'h7d == lut_adr ? $signed(-16'shb1b) : $signed(_GEN_1211); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1213 = 10'h7e == lut_adr ? $signed(-16'shb2d) : $signed(_GEN_1212); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1214 = 10'h7f == lut_adr ? $signed(-16'shb3e) : $signed(_GEN_1213); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1215 = 10'h80 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_1214); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1216 = 10'h81 == lut_adr ? $signed(-16'shb62) : $signed(_GEN_1215); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1217 = 10'h82 == lut_adr ? $signed(-16'shb74) : $signed(_GEN_1216); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1218 = 10'h83 == lut_adr ? $signed(-16'shb85) : $signed(_GEN_1217); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1219 = 10'h84 == lut_adr ? $signed(-16'shb97) : $signed(_GEN_1218); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1220 = 10'h85 == lut_adr ? $signed(-16'shba8) : $signed(_GEN_1219); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1221 = 10'h86 == lut_adr ? $signed(-16'shbb9) : $signed(_GEN_1220); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1222 = 10'h87 == lut_adr ? $signed(-16'shbca) : $signed(_GEN_1221); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1223 = 10'h88 == lut_adr ? $signed(-16'shbdb) : $signed(_GEN_1222); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1224 = 10'h89 == lut_adr ? $signed(-16'shbec) : $signed(_GEN_1223); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1225 = 10'h8a == lut_adr ? $signed(-16'shbfc) : $signed(_GEN_1224); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1226 = 10'h8b == lut_adr ? $signed(-16'shc0d) : $signed(_GEN_1225); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1227 = 10'h8c == lut_adr ? $signed(-16'shc1e) : $signed(_GEN_1226); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1228 = 10'h8d == lut_adr ? $signed(-16'shc2e) : $signed(_GEN_1227); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1229 = 10'h8e == lut_adr ? $signed(-16'shc3e) : $signed(_GEN_1228); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1230 = 10'h8f == lut_adr ? $signed(-16'shc4e) : $signed(_GEN_1229); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1231 = 10'h90 == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_1230); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1232 = 10'h91 == lut_adr ? $signed(-16'shc6e) : $signed(_GEN_1231); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1233 = 10'h92 == lut_adr ? $signed(-16'shc7e) : $signed(_GEN_1232); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1234 = 10'h93 == lut_adr ? $signed(-16'shc8e) : $signed(_GEN_1233); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1235 = 10'h94 == lut_adr ? $signed(-16'shc9d) : $signed(_GEN_1234); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1236 = 10'h95 == lut_adr ? $signed(-16'shcac) : $signed(_GEN_1235); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1237 = 10'h96 == lut_adr ? $signed(-16'shcbc) : $signed(_GEN_1236); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1238 = 10'h97 == lut_adr ? $signed(-16'shccb) : $signed(_GEN_1237); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1239 = 10'h98 == lut_adr ? $signed(-16'shcda) : $signed(_GEN_1238); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1240 = 10'h99 == lut_adr ? $signed(-16'shce9) : $signed(_GEN_1239); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1241 = 10'h9a == lut_adr ? $signed(-16'shcf8) : $signed(_GEN_1240); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1242 = 10'h9b == lut_adr ? $signed(-16'shd06) : $signed(_GEN_1241); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1243 = 10'h9c == lut_adr ? $signed(-16'shd15) : $signed(_GEN_1242); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1244 = 10'h9d == lut_adr ? $signed(-16'shd23) : $signed(_GEN_1243); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1245 = 10'h9e == lut_adr ? $signed(-16'shd32) : $signed(_GEN_1244); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1246 = 10'h9f == lut_adr ? $signed(-16'shd40) : $signed(_GEN_1245); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1247 = 10'ha0 == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_1246); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1248 = 10'ha1 == lut_adr ? $signed(-16'shd5c) : $signed(_GEN_1247); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1249 = 10'ha2 == lut_adr ? $signed(-16'shd69) : $signed(_GEN_1248); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1250 = 10'ha3 == lut_adr ? $signed(-16'shd77) : $signed(_GEN_1249); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1251 = 10'ha4 == lut_adr ? $signed(-16'shd85) : $signed(_GEN_1250); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1252 = 10'ha5 == lut_adr ? $signed(-16'shd92) : $signed(_GEN_1251); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1253 = 10'ha6 == lut_adr ? $signed(-16'shd9f) : $signed(_GEN_1252); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1254 = 10'ha7 == lut_adr ? $signed(-16'shdac) : $signed(_GEN_1253); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1255 = 10'ha8 == lut_adr ? $signed(-16'shdb9) : $signed(_GEN_1254); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1256 = 10'ha9 == lut_adr ? $signed(-16'shdc6) : $signed(_GEN_1255); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1257 = 10'haa == lut_adr ? $signed(-16'shdd3) : $signed(_GEN_1256); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1258 = 10'hab == lut_adr ? $signed(-16'shddf) : $signed(_GEN_1257); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1259 = 10'hac == lut_adr ? $signed(-16'shdec) : $signed(_GEN_1258); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1260 = 10'had == lut_adr ? $signed(-16'shdf8) : $signed(_GEN_1259); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1261 = 10'hae == lut_adr ? $signed(-16'she04) : $signed(_GEN_1260); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1262 = 10'haf == lut_adr ? $signed(-16'she10) : $signed(_GEN_1261); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1263 = 10'hb0 == lut_adr ? $signed(-16'she1c) : $signed(_GEN_1262); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1264 = 10'hb1 == lut_adr ? $signed(-16'she28) : $signed(_GEN_1263); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1265 = 10'hb2 == lut_adr ? $signed(-16'she34) : $signed(_GEN_1264); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1266 = 10'hb3 == lut_adr ? $signed(-16'she3f) : $signed(_GEN_1265); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1267 = 10'hb4 == lut_adr ? $signed(-16'she4b) : $signed(_GEN_1266); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1268 = 10'hb5 == lut_adr ? $signed(-16'she56) : $signed(_GEN_1267); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1269 = 10'hb6 == lut_adr ? $signed(-16'she61) : $signed(_GEN_1268); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1270 = 10'hb7 == lut_adr ? $signed(-16'she6c) : $signed(_GEN_1269); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1271 = 10'hb8 == lut_adr ? $signed(-16'she77) : $signed(_GEN_1270); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1272 = 10'hb9 == lut_adr ? $signed(-16'she81) : $signed(_GEN_1271); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1273 = 10'hba == lut_adr ? $signed(-16'she8c) : $signed(_GEN_1272); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1274 = 10'hbb == lut_adr ? $signed(-16'she96) : $signed(_GEN_1273); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1275 = 10'hbc == lut_adr ? $signed(-16'shea1) : $signed(_GEN_1274); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1276 = 10'hbd == lut_adr ? $signed(-16'sheab) : $signed(_GEN_1275); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1277 = 10'hbe == lut_adr ? $signed(-16'sheb5) : $signed(_GEN_1276); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1278 = 10'hbf == lut_adr ? $signed(-16'shebf) : $signed(_GEN_1277); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1279 = 10'hc0 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_1278); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1280 = 10'hc1 == lut_adr ? $signed(-16'shed2) : $signed(_GEN_1279); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1281 = 10'hc2 == lut_adr ? $signed(-16'shedb) : $signed(_GEN_1280); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1282 = 10'hc3 == lut_adr ? $signed(-16'shee4) : $signed(_GEN_1281); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1283 = 10'hc4 == lut_adr ? $signed(-16'sheee) : $signed(_GEN_1282); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1284 = 10'hc5 == lut_adr ? $signed(-16'shef7) : $signed(_GEN_1283); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1285 = 10'hc6 == lut_adr ? $signed(-16'sheff) : $signed(_GEN_1284); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1286 = 10'hc7 == lut_adr ? $signed(-16'shf08) : $signed(_GEN_1285); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1287 = 10'hc8 == lut_adr ? $signed(-16'shf11) : $signed(_GEN_1286); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1288 = 10'hc9 == lut_adr ? $signed(-16'shf19) : $signed(_GEN_1287); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1289 = 10'hca == lut_adr ? $signed(-16'shf21) : $signed(_GEN_1288); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1290 = 10'hcb == lut_adr ? $signed(-16'shf29) : $signed(_GEN_1289); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1291 = 10'hcc == lut_adr ? $signed(-16'shf31) : $signed(_GEN_1290); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1292 = 10'hcd == lut_adr ? $signed(-16'shf39) : $signed(_GEN_1291); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1293 = 10'hce == lut_adr ? $signed(-16'shf41) : $signed(_GEN_1292); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1294 = 10'hcf == lut_adr ? $signed(-16'shf48) : $signed(_GEN_1293); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1295 = 10'hd0 == lut_adr ? $signed(-16'shf50) : $signed(_GEN_1294); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1296 = 10'hd1 == lut_adr ? $signed(-16'shf57) : $signed(_GEN_1295); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1297 = 10'hd2 == lut_adr ? $signed(-16'shf5e) : $signed(_GEN_1296); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1298 = 10'hd3 == lut_adr ? $signed(-16'shf65) : $signed(_GEN_1297); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1299 = 10'hd4 == lut_adr ? $signed(-16'shf6c) : $signed(_GEN_1298); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1300 = 10'hd5 == lut_adr ? $signed(-16'shf72) : $signed(_GEN_1299); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1301 = 10'hd6 == lut_adr ? $signed(-16'shf79) : $signed(_GEN_1300); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1302 = 10'hd7 == lut_adr ? $signed(-16'shf7f) : $signed(_GEN_1301); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1303 = 10'hd8 == lut_adr ? $signed(-16'shf85) : $signed(_GEN_1302); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1304 = 10'hd9 == lut_adr ? $signed(-16'shf8b) : $signed(_GEN_1303); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1305 = 10'hda == lut_adr ? $signed(-16'shf91) : $signed(_GEN_1304); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1306 = 10'hdb == lut_adr ? $signed(-16'shf97) : $signed(_GEN_1305); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1307 = 10'hdc == lut_adr ? $signed(-16'shf9c) : $signed(_GEN_1306); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1308 = 10'hdd == lut_adr ? $signed(-16'shfa2) : $signed(_GEN_1307); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1309 = 10'hde == lut_adr ? $signed(-16'shfa7) : $signed(_GEN_1308); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1310 = 10'hdf == lut_adr ? $signed(-16'shfac) : $signed(_GEN_1309); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1311 = 10'he0 == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_1310); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1312 = 10'he1 == lut_adr ? $signed(-16'shfb6) : $signed(_GEN_1311); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1313 = 10'he2 == lut_adr ? $signed(-16'shfbb) : $signed(_GEN_1312); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1314 = 10'he3 == lut_adr ? $signed(-16'shfbf) : $signed(_GEN_1313); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1315 = 10'he4 == lut_adr ? $signed(-16'shfc4) : $signed(_GEN_1314); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1316 = 10'he5 == lut_adr ? $signed(-16'shfc8) : $signed(_GEN_1315); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1317 = 10'he6 == lut_adr ? $signed(-16'shfcc) : $signed(_GEN_1316); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1318 = 10'he7 == lut_adr ? $signed(-16'shfd0) : $signed(_GEN_1317); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1319 = 10'he8 == lut_adr ? $signed(-16'shfd4) : $signed(_GEN_1318); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1320 = 10'he9 == lut_adr ? $signed(-16'shfd7) : $signed(_GEN_1319); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1321 = 10'hea == lut_adr ? $signed(-16'shfdb) : $signed(_GEN_1320); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1322 = 10'heb == lut_adr ? $signed(-16'shfde) : $signed(_GEN_1321); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1323 = 10'hec == lut_adr ? $signed(-16'shfe1) : $signed(_GEN_1322); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1324 = 10'hed == lut_adr ? $signed(-16'shfe4) : $signed(_GEN_1323); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1325 = 10'hee == lut_adr ? $signed(-16'shfe7) : $signed(_GEN_1324); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1326 = 10'hef == lut_adr ? $signed(-16'shfea) : $signed(_GEN_1325); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1327 = 10'hf0 == lut_adr ? $signed(-16'shfec) : $signed(_GEN_1326); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1328 = 10'hf1 == lut_adr ? $signed(-16'shfef) : $signed(_GEN_1327); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1329 = 10'hf2 == lut_adr ? $signed(-16'shff1) : $signed(_GEN_1328); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1330 = 10'hf3 == lut_adr ? $signed(-16'shff3) : $signed(_GEN_1329); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1331 = 10'hf4 == lut_adr ? $signed(-16'shff5) : $signed(_GEN_1330); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1332 = 10'hf5 == lut_adr ? $signed(-16'shff7) : $signed(_GEN_1331); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1333 = 10'hf6 == lut_adr ? $signed(-16'shff8) : $signed(_GEN_1332); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1334 = 10'hf7 == lut_adr ? $signed(-16'shffa) : $signed(_GEN_1333); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1335 = 10'hf8 == lut_adr ? $signed(-16'shffb) : $signed(_GEN_1334); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1336 = 10'hf9 == lut_adr ? $signed(-16'shffc) : $signed(_GEN_1335); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1337 = 10'hfa == lut_adr ? $signed(-16'shffd) : $signed(_GEN_1336); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1338 = 10'hfb == lut_adr ? $signed(-16'shffe) : $signed(_GEN_1337); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1339 = 10'hfc == lut_adr ? $signed(-16'shfff) : $signed(_GEN_1338); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1340 = 10'hfd == lut_adr ? $signed(-16'shfff) : $signed(_GEN_1339); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1341 = 10'hfe == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_1340); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1342 = 10'hff == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_1341); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1343 = 10'h100 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_1342); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1344 = 10'h101 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_1343); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1345 = 10'h102 == lut_adr ? $signed(-16'sh1000) : $signed(_GEN_1344); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1346 = 10'h103 == lut_adr ? $signed(-16'shfff) : $signed(_GEN_1345); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1347 = 10'h104 == lut_adr ? $signed(-16'shfff) : $signed(_GEN_1346); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1348 = 10'h105 == lut_adr ? $signed(-16'shffe) : $signed(_GEN_1347); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1349 = 10'h106 == lut_adr ? $signed(-16'shffd) : $signed(_GEN_1348); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1350 = 10'h107 == lut_adr ? $signed(-16'shffc) : $signed(_GEN_1349); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1351 = 10'h108 == lut_adr ? $signed(-16'shffb) : $signed(_GEN_1350); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1352 = 10'h109 == lut_adr ? $signed(-16'shffa) : $signed(_GEN_1351); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1353 = 10'h10a == lut_adr ? $signed(-16'shff8) : $signed(_GEN_1352); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1354 = 10'h10b == lut_adr ? $signed(-16'shff7) : $signed(_GEN_1353); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1355 = 10'h10c == lut_adr ? $signed(-16'shff5) : $signed(_GEN_1354); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1356 = 10'h10d == lut_adr ? $signed(-16'shff3) : $signed(_GEN_1355); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1357 = 10'h10e == lut_adr ? $signed(-16'shff1) : $signed(_GEN_1356); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1358 = 10'h10f == lut_adr ? $signed(-16'shfef) : $signed(_GEN_1357); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1359 = 10'h110 == lut_adr ? $signed(-16'shfec) : $signed(_GEN_1358); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1360 = 10'h111 == lut_adr ? $signed(-16'shfea) : $signed(_GEN_1359); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1361 = 10'h112 == lut_adr ? $signed(-16'shfe7) : $signed(_GEN_1360); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1362 = 10'h113 == lut_adr ? $signed(-16'shfe4) : $signed(_GEN_1361); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1363 = 10'h114 == lut_adr ? $signed(-16'shfe1) : $signed(_GEN_1362); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1364 = 10'h115 == lut_adr ? $signed(-16'shfde) : $signed(_GEN_1363); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1365 = 10'h116 == lut_adr ? $signed(-16'shfdb) : $signed(_GEN_1364); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1366 = 10'h117 == lut_adr ? $signed(-16'shfd7) : $signed(_GEN_1365); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1367 = 10'h118 == lut_adr ? $signed(-16'shfd4) : $signed(_GEN_1366); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1368 = 10'h119 == lut_adr ? $signed(-16'shfd0) : $signed(_GEN_1367); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1369 = 10'h11a == lut_adr ? $signed(-16'shfcc) : $signed(_GEN_1368); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1370 = 10'h11b == lut_adr ? $signed(-16'shfc8) : $signed(_GEN_1369); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1371 = 10'h11c == lut_adr ? $signed(-16'shfc4) : $signed(_GEN_1370); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1372 = 10'h11d == lut_adr ? $signed(-16'shfbf) : $signed(_GEN_1371); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1373 = 10'h11e == lut_adr ? $signed(-16'shfbb) : $signed(_GEN_1372); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1374 = 10'h11f == lut_adr ? $signed(-16'shfb6) : $signed(_GEN_1373); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1375 = 10'h120 == lut_adr ? $signed(-16'shfb1) : $signed(_GEN_1374); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1376 = 10'h121 == lut_adr ? $signed(-16'shfac) : $signed(_GEN_1375); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1377 = 10'h122 == lut_adr ? $signed(-16'shfa7) : $signed(_GEN_1376); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1378 = 10'h123 == lut_adr ? $signed(-16'shfa2) : $signed(_GEN_1377); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1379 = 10'h124 == lut_adr ? $signed(-16'shf9c) : $signed(_GEN_1378); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1380 = 10'h125 == lut_adr ? $signed(-16'shf97) : $signed(_GEN_1379); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1381 = 10'h126 == lut_adr ? $signed(-16'shf91) : $signed(_GEN_1380); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1382 = 10'h127 == lut_adr ? $signed(-16'shf8b) : $signed(_GEN_1381); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1383 = 10'h128 == lut_adr ? $signed(-16'shf85) : $signed(_GEN_1382); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1384 = 10'h129 == lut_adr ? $signed(-16'shf7f) : $signed(_GEN_1383); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1385 = 10'h12a == lut_adr ? $signed(-16'shf79) : $signed(_GEN_1384); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1386 = 10'h12b == lut_adr ? $signed(-16'shf72) : $signed(_GEN_1385); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1387 = 10'h12c == lut_adr ? $signed(-16'shf6c) : $signed(_GEN_1386); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1388 = 10'h12d == lut_adr ? $signed(-16'shf65) : $signed(_GEN_1387); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1389 = 10'h12e == lut_adr ? $signed(-16'shf5e) : $signed(_GEN_1388); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1390 = 10'h12f == lut_adr ? $signed(-16'shf57) : $signed(_GEN_1389); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1391 = 10'h130 == lut_adr ? $signed(-16'shf50) : $signed(_GEN_1390); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1392 = 10'h131 == lut_adr ? $signed(-16'shf48) : $signed(_GEN_1391); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1393 = 10'h132 == lut_adr ? $signed(-16'shf41) : $signed(_GEN_1392); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1394 = 10'h133 == lut_adr ? $signed(-16'shf39) : $signed(_GEN_1393); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1395 = 10'h134 == lut_adr ? $signed(-16'shf31) : $signed(_GEN_1394); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1396 = 10'h135 == lut_adr ? $signed(-16'shf29) : $signed(_GEN_1395); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1397 = 10'h136 == lut_adr ? $signed(-16'shf21) : $signed(_GEN_1396); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1398 = 10'h137 == lut_adr ? $signed(-16'shf19) : $signed(_GEN_1397); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1399 = 10'h138 == lut_adr ? $signed(-16'shf11) : $signed(_GEN_1398); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1400 = 10'h139 == lut_adr ? $signed(-16'shf08) : $signed(_GEN_1399); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1401 = 10'h13a == lut_adr ? $signed(-16'sheff) : $signed(_GEN_1400); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1402 = 10'h13b == lut_adr ? $signed(-16'shef7) : $signed(_GEN_1401); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1403 = 10'h13c == lut_adr ? $signed(-16'sheee) : $signed(_GEN_1402); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1404 = 10'h13d == lut_adr ? $signed(-16'shee4) : $signed(_GEN_1403); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1405 = 10'h13e == lut_adr ? $signed(-16'shedb) : $signed(_GEN_1404); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1406 = 10'h13f == lut_adr ? $signed(-16'shed2) : $signed(_GEN_1405); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1407 = 10'h140 == lut_adr ? $signed(-16'shec8) : $signed(_GEN_1406); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1408 = 10'h141 == lut_adr ? $signed(-16'shebf) : $signed(_GEN_1407); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1409 = 10'h142 == lut_adr ? $signed(-16'sheb5) : $signed(_GEN_1408); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1410 = 10'h143 == lut_adr ? $signed(-16'sheab) : $signed(_GEN_1409); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1411 = 10'h144 == lut_adr ? $signed(-16'shea1) : $signed(_GEN_1410); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1412 = 10'h145 == lut_adr ? $signed(-16'she96) : $signed(_GEN_1411); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1413 = 10'h146 == lut_adr ? $signed(-16'she8c) : $signed(_GEN_1412); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1414 = 10'h147 == lut_adr ? $signed(-16'she81) : $signed(_GEN_1413); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1415 = 10'h148 == lut_adr ? $signed(-16'she77) : $signed(_GEN_1414); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1416 = 10'h149 == lut_adr ? $signed(-16'she6c) : $signed(_GEN_1415); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1417 = 10'h14a == lut_adr ? $signed(-16'she61) : $signed(_GEN_1416); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1418 = 10'h14b == lut_adr ? $signed(-16'she56) : $signed(_GEN_1417); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1419 = 10'h14c == lut_adr ? $signed(-16'she4b) : $signed(_GEN_1418); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1420 = 10'h14d == lut_adr ? $signed(-16'she3f) : $signed(_GEN_1419); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1421 = 10'h14e == lut_adr ? $signed(-16'she34) : $signed(_GEN_1420); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1422 = 10'h14f == lut_adr ? $signed(-16'she28) : $signed(_GEN_1421); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1423 = 10'h150 == lut_adr ? $signed(-16'she1c) : $signed(_GEN_1422); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1424 = 10'h151 == lut_adr ? $signed(-16'she10) : $signed(_GEN_1423); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1425 = 10'h152 == lut_adr ? $signed(-16'she04) : $signed(_GEN_1424); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1426 = 10'h153 == lut_adr ? $signed(-16'shdf8) : $signed(_GEN_1425); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1427 = 10'h154 == lut_adr ? $signed(-16'shdec) : $signed(_GEN_1426); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1428 = 10'h155 == lut_adr ? $signed(-16'shddf) : $signed(_GEN_1427); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1429 = 10'h156 == lut_adr ? $signed(-16'shdd3) : $signed(_GEN_1428); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1430 = 10'h157 == lut_adr ? $signed(-16'shdc6) : $signed(_GEN_1429); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1431 = 10'h158 == lut_adr ? $signed(-16'shdb9) : $signed(_GEN_1430); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1432 = 10'h159 == lut_adr ? $signed(-16'shdac) : $signed(_GEN_1431); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1433 = 10'h15a == lut_adr ? $signed(-16'shd9f) : $signed(_GEN_1432); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1434 = 10'h15b == lut_adr ? $signed(-16'shd92) : $signed(_GEN_1433); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1435 = 10'h15c == lut_adr ? $signed(-16'shd85) : $signed(_GEN_1434); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1436 = 10'h15d == lut_adr ? $signed(-16'shd77) : $signed(_GEN_1435); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1437 = 10'h15e == lut_adr ? $signed(-16'shd69) : $signed(_GEN_1436); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1438 = 10'h15f == lut_adr ? $signed(-16'shd5c) : $signed(_GEN_1437); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1439 = 10'h160 == lut_adr ? $signed(-16'shd4e) : $signed(_GEN_1438); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1440 = 10'h161 == lut_adr ? $signed(-16'shd40) : $signed(_GEN_1439); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1441 = 10'h162 == lut_adr ? $signed(-16'shd32) : $signed(_GEN_1440); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1442 = 10'h163 == lut_adr ? $signed(-16'shd23) : $signed(_GEN_1441); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1443 = 10'h164 == lut_adr ? $signed(-16'shd15) : $signed(_GEN_1442); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1444 = 10'h165 == lut_adr ? $signed(-16'shd06) : $signed(_GEN_1443); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1445 = 10'h166 == lut_adr ? $signed(-16'shcf8) : $signed(_GEN_1444); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1446 = 10'h167 == lut_adr ? $signed(-16'shce9) : $signed(_GEN_1445); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1447 = 10'h168 == lut_adr ? $signed(-16'shcda) : $signed(_GEN_1446); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1448 = 10'h169 == lut_adr ? $signed(-16'shccb) : $signed(_GEN_1447); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1449 = 10'h16a == lut_adr ? $signed(-16'shcbc) : $signed(_GEN_1448); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1450 = 10'h16b == lut_adr ? $signed(-16'shcac) : $signed(_GEN_1449); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1451 = 10'h16c == lut_adr ? $signed(-16'shc9d) : $signed(_GEN_1450); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1452 = 10'h16d == lut_adr ? $signed(-16'shc8e) : $signed(_GEN_1451); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1453 = 10'h16e == lut_adr ? $signed(-16'shc7e) : $signed(_GEN_1452); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1454 = 10'h16f == lut_adr ? $signed(-16'shc6e) : $signed(_GEN_1453); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1455 = 10'h170 == lut_adr ? $signed(-16'shc5e) : $signed(_GEN_1454); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1456 = 10'h171 == lut_adr ? $signed(-16'shc4e) : $signed(_GEN_1455); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1457 = 10'h172 == lut_adr ? $signed(-16'shc3e) : $signed(_GEN_1456); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1458 = 10'h173 == lut_adr ? $signed(-16'shc2e) : $signed(_GEN_1457); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1459 = 10'h174 == lut_adr ? $signed(-16'shc1e) : $signed(_GEN_1458); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1460 = 10'h175 == lut_adr ? $signed(-16'shc0d) : $signed(_GEN_1459); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1461 = 10'h176 == lut_adr ? $signed(-16'shbfc) : $signed(_GEN_1460); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1462 = 10'h177 == lut_adr ? $signed(-16'shbec) : $signed(_GEN_1461); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1463 = 10'h178 == lut_adr ? $signed(-16'shbdb) : $signed(_GEN_1462); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1464 = 10'h179 == lut_adr ? $signed(-16'shbca) : $signed(_GEN_1463); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1465 = 10'h17a == lut_adr ? $signed(-16'shbb9) : $signed(_GEN_1464); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1466 = 10'h17b == lut_adr ? $signed(-16'shba8) : $signed(_GEN_1465); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1467 = 10'h17c == lut_adr ? $signed(-16'shb97) : $signed(_GEN_1466); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1468 = 10'h17d == lut_adr ? $signed(-16'shb85) : $signed(_GEN_1467); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1469 = 10'h17e == lut_adr ? $signed(-16'shb74) : $signed(_GEN_1468); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1470 = 10'h17f == lut_adr ? $signed(-16'shb62) : $signed(_GEN_1469); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1471 = 10'h180 == lut_adr ? $signed(-16'shb50) : $signed(_GEN_1470); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1472 = 10'h181 == lut_adr ? $signed(-16'shb3e) : $signed(_GEN_1471); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1473 = 10'h182 == lut_adr ? $signed(-16'shb2d) : $signed(_GEN_1472); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1474 = 10'h183 == lut_adr ? $signed(-16'shb1b) : $signed(_GEN_1473); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1475 = 10'h184 == lut_adr ? $signed(-16'shb08) : $signed(_GEN_1474); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1476 = 10'h185 == lut_adr ? $signed(-16'shaf6) : $signed(_GEN_1475); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1477 = 10'h186 == lut_adr ? $signed(-16'shae4) : $signed(_GEN_1476); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1478 = 10'h187 == lut_adr ? $signed(-16'shad1) : $signed(_GEN_1477); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1479 = 10'h188 == lut_adr ? $signed(-16'shabf) : $signed(_GEN_1478); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1480 = 10'h189 == lut_adr ? $signed(-16'shaac) : $signed(_GEN_1479); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1481 = 10'h18a == lut_adr ? $signed(-16'sha99) : $signed(_GEN_1480); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1482 = 10'h18b == lut_adr ? $signed(-16'sha86) : $signed(_GEN_1481); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1483 = 10'h18c == lut_adr ? $signed(-16'sha73) : $signed(_GEN_1482); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1484 = 10'h18d == lut_adr ? $signed(-16'sha60) : $signed(_GEN_1483); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1485 = 10'h18e == lut_adr ? $signed(-16'sha4d) : $signed(_GEN_1484); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1486 = 10'h18f == lut_adr ? $signed(-16'sha3a) : $signed(_GEN_1485); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1487 = 10'h190 == lut_adr ? $signed(-16'sha26) : $signed(_GEN_1486); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1488 = 10'h191 == lut_adr ? $signed(-16'sha13) : $signed(_GEN_1487); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1489 = 10'h192 == lut_adr ? $signed(-16'sh9ff) : $signed(_GEN_1488); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1490 = 10'h193 == lut_adr ? $signed(-16'sh9ec) : $signed(_GEN_1489); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1491 = 10'h194 == lut_adr ? $signed(-16'sh9d8) : $signed(_GEN_1490); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1492 = 10'h195 == lut_adr ? $signed(-16'sh9c4) : $signed(_GEN_1491); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1493 = 10'h196 == lut_adr ? $signed(-16'sh9b0) : $signed(_GEN_1492); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1494 = 10'h197 == lut_adr ? $signed(-16'sh99c) : $signed(_GEN_1493); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1495 = 10'h198 == lut_adr ? $signed(-16'sh988) : $signed(_GEN_1494); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1496 = 10'h199 == lut_adr ? $signed(-16'sh974) : $signed(_GEN_1495); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1497 = 10'h19a == lut_adr ? $signed(-16'sh95f) : $signed(_GEN_1496); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1498 = 10'h19b == lut_adr ? $signed(-16'sh94b) : $signed(_GEN_1497); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1499 = 10'h19c == lut_adr ? $signed(-16'sh937) : $signed(_GEN_1498); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1500 = 10'h19d == lut_adr ? $signed(-16'sh922) : $signed(_GEN_1499); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1501 = 10'h19e == lut_adr ? $signed(-16'sh90d) : $signed(_GEN_1500); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1502 = 10'h19f == lut_adr ? $signed(-16'sh8f8) : $signed(_GEN_1501); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1503 = 10'h1a0 == lut_adr ? $signed(-16'sh8e4) : $signed(_GEN_1502); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1504 = 10'h1a1 == lut_adr ? $signed(-16'sh8cf) : $signed(_GEN_1503); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1505 = 10'h1a2 == lut_adr ? $signed(-16'sh8ba) : $signed(_GEN_1504); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1506 = 10'h1a3 == lut_adr ? $signed(-16'sh8a5) : $signed(_GEN_1505); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1507 = 10'h1a4 == lut_adr ? $signed(-16'sh88f) : $signed(_GEN_1506); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1508 = 10'h1a5 == lut_adr ? $signed(-16'sh87a) : $signed(_GEN_1507); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1509 = 10'h1a6 == lut_adr ? $signed(-16'sh865) : $signed(_GEN_1508); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1510 = 10'h1a7 == lut_adr ? $signed(-16'sh84f) : $signed(_GEN_1509); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1511 = 10'h1a8 == lut_adr ? $signed(-16'sh83a) : $signed(_GEN_1510); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1512 = 10'h1a9 == lut_adr ? $signed(-16'sh824) : $signed(_GEN_1511); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1513 = 10'h1aa == lut_adr ? $signed(-16'sh80e) : $signed(_GEN_1512); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1514 = 10'h1ab == lut_adr ? $signed(-16'sh7f9) : $signed(_GEN_1513); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1515 = 10'h1ac == lut_adr ? $signed(-16'sh7e3) : $signed(_GEN_1514); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1516 = 10'h1ad == lut_adr ? $signed(-16'sh7cd) : $signed(_GEN_1515); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1517 = 10'h1ae == lut_adr ? $signed(-16'sh7b7) : $signed(_GEN_1516); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1518 = 10'h1af == lut_adr ? $signed(-16'sh7a1) : $signed(_GEN_1517); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1519 = 10'h1b0 == lut_adr ? $signed(-16'sh78b) : $signed(_GEN_1518); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1520 = 10'h1b1 == lut_adr ? $signed(-16'sh775) : $signed(_GEN_1519); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1521 = 10'h1b2 == lut_adr ? $signed(-16'sh75e) : $signed(_GEN_1520); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1522 = 10'h1b3 == lut_adr ? $signed(-16'sh748) : $signed(_GEN_1521); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1523 = 10'h1b4 == lut_adr ? $signed(-16'sh732) : $signed(_GEN_1522); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1524 = 10'h1b5 == lut_adr ? $signed(-16'sh71b) : $signed(_GEN_1523); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1525 = 10'h1b6 == lut_adr ? $signed(-16'sh705) : $signed(_GEN_1524); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1526 = 10'h1b7 == lut_adr ? $signed(-16'sh6ee) : $signed(_GEN_1525); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1527 = 10'h1b8 == lut_adr ? $signed(-16'sh6d7) : $signed(_GEN_1526); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1528 = 10'h1b9 == lut_adr ? $signed(-16'sh6c1) : $signed(_GEN_1527); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1529 = 10'h1ba == lut_adr ? $signed(-16'sh6aa) : $signed(_GEN_1528); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1530 = 10'h1bb == lut_adr ? $signed(-16'sh693) : $signed(_GEN_1529); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1531 = 10'h1bc == lut_adr ? $signed(-16'sh67c) : $signed(_GEN_1530); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1532 = 10'h1bd == lut_adr ? $signed(-16'sh665) : $signed(_GEN_1531); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1533 = 10'h1be == lut_adr ? $signed(-16'sh64e) : $signed(_GEN_1532); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1534 = 10'h1bf == lut_adr ? $signed(-16'sh637) : $signed(_GEN_1533); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1535 = 10'h1c0 == lut_adr ? $signed(-16'sh61f) : $signed(_GEN_1534); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1536 = 10'h1c1 == lut_adr ? $signed(-16'sh608) : $signed(_GEN_1535); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1537 = 10'h1c2 == lut_adr ? $signed(-16'sh5f1) : $signed(_GEN_1536); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1538 = 10'h1c3 == lut_adr ? $signed(-16'sh5da) : $signed(_GEN_1537); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1539 = 10'h1c4 == lut_adr ? $signed(-16'sh5c2) : $signed(_GEN_1538); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1540 = 10'h1c5 == lut_adr ? $signed(-16'sh5ab) : $signed(_GEN_1539); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1541 = 10'h1c6 == lut_adr ? $signed(-16'sh593) : $signed(_GEN_1540); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1542 = 10'h1c7 == lut_adr ? $signed(-16'sh57c) : $signed(_GEN_1541); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1543 = 10'h1c8 == lut_adr ? $signed(-16'sh564) : $signed(_GEN_1542); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1544 = 10'h1c9 == lut_adr ? $signed(-16'sh54c) : $signed(_GEN_1543); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1545 = 10'h1ca == lut_adr ? $signed(-16'sh534) : $signed(_GEN_1544); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1546 = 10'h1cb == lut_adr ? $signed(-16'sh51d) : $signed(_GEN_1545); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1547 = 10'h1cc == lut_adr ? $signed(-16'sh505) : $signed(_GEN_1546); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1548 = 10'h1cd == lut_adr ? $signed(-16'sh4ed) : $signed(_GEN_1547); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1549 = 10'h1ce == lut_adr ? $signed(-16'sh4d5) : $signed(_GEN_1548); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1550 = 10'h1cf == lut_adr ? $signed(-16'sh4bd) : $signed(_GEN_1549); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1551 = 10'h1d0 == lut_adr ? $signed(-16'sh4a5) : $signed(_GEN_1550); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1552 = 10'h1d1 == lut_adr ? $signed(-16'sh48d) : $signed(_GEN_1551); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1553 = 10'h1d2 == lut_adr ? $signed(-16'sh475) : $signed(_GEN_1552); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1554 = 10'h1d3 == lut_adr ? $signed(-16'sh45d) : $signed(_GEN_1553); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1555 = 10'h1d4 == lut_adr ? $signed(-16'sh444) : $signed(_GEN_1554); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1556 = 10'h1d5 == lut_adr ? $signed(-16'sh42c) : $signed(_GEN_1555); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1557 = 10'h1d6 == lut_adr ? $signed(-16'sh414) : $signed(_GEN_1556); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1558 = 10'h1d7 == lut_adr ? $signed(-16'sh3fc) : $signed(_GEN_1557); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1559 = 10'h1d8 == lut_adr ? $signed(-16'sh3e3) : $signed(_GEN_1558); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1560 = 10'h1d9 == lut_adr ? $signed(-16'sh3cb) : $signed(_GEN_1559); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1561 = 10'h1da == lut_adr ? $signed(-16'sh3b2) : $signed(_GEN_1560); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1562 = 10'h1db == lut_adr ? $signed(-16'sh39a) : $signed(_GEN_1561); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1563 = 10'h1dc == lut_adr ? $signed(-16'sh381) : $signed(_GEN_1562); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1564 = 10'h1dd == lut_adr ? $signed(-16'sh369) : $signed(_GEN_1563); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1565 = 10'h1de == lut_adr ? $signed(-16'sh350) : $signed(_GEN_1564); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1566 = 10'h1df == lut_adr ? $signed(-16'sh338) : $signed(_GEN_1565); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1567 = 10'h1e0 == lut_adr ? $signed(-16'sh31f) : $signed(_GEN_1566); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1568 = 10'h1e1 == lut_adr ? $signed(-16'sh306) : $signed(_GEN_1567); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1569 = 10'h1e2 == lut_adr ? $signed(-16'sh2ee) : $signed(_GEN_1568); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1570 = 10'h1e3 == lut_adr ? $signed(-16'sh2d5) : $signed(_GEN_1569); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1571 = 10'h1e4 == lut_adr ? $signed(-16'sh2bc) : $signed(_GEN_1570); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1572 = 10'h1e5 == lut_adr ? $signed(-16'sh2a3) : $signed(_GEN_1571); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1573 = 10'h1e6 == lut_adr ? $signed(-16'sh28b) : $signed(_GEN_1572); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1574 = 10'h1e7 == lut_adr ? $signed(-16'sh272) : $signed(_GEN_1573); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1575 = 10'h1e8 == lut_adr ? $signed(-16'sh259) : $signed(_GEN_1574); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1576 = 10'h1e9 == lut_adr ? $signed(-16'sh240) : $signed(_GEN_1575); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1577 = 10'h1ea == lut_adr ? $signed(-16'sh227) : $signed(_GEN_1576); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1578 = 10'h1eb == lut_adr ? $signed(-16'sh20e) : $signed(_GEN_1577); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1579 = 10'h1ec == lut_adr ? $signed(-16'sh1f5) : $signed(_GEN_1578); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1580 = 10'h1ed == lut_adr ? $signed(-16'sh1dc) : $signed(_GEN_1579); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1581 = 10'h1ee == lut_adr ? $signed(-16'sh1c3) : $signed(_GEN_1580); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1582 = 10'h1ef == lut_adr ? $signed(-16'sh1aa) : $signed(_GEN_1581); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1583 = 10'h1f0 == lut_adr ? $signed(-16'sh191) : $signed(_GEN_1582); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1584 = 10'h1f1 == lut_adr ? $signed(-16'sh178) : $signed(_GEN_1583); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1585 = 10'h1f2 == lut_adr ? $signed(-16'sh15f) : $signed(_GEN_1584); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1586 = 10'h1f3 == lut_adr ? $signed(-16'sh146) : $signed(_GEN_1585); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1587 = 10'h1f4 == lut_adr ? $signed(-16'sh12d) : $signed(_GEN_1586); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1588 = 10'h1f5 == lut_adr ? $signed(-16'sh114) : $signed(_GEN_1587); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1589 = 10'h1f6 == lut_adr ? $signed(-16'shfb) : $signed(_GEN_1588); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1590 = 10'h1f7 == lut_adr ? $signed(-16'she2) : $signed(_GEN_1589); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1591 = 10'h1f8 == lut_adr ? $signed(-16'shc9) : $signed(_GEN_1590); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1592 = 10'h1f9 == lut_adr ? $signed(-16'shb0) : $signed(_GEN_1591); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1593 = 10'h1fa == lut_adr ? $signed(-16'sh97) : $signed(_GEN_1592); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1594 = 10'h1fb == lut_adr ? $signed(-16'sh7e) : $signed(_GEN_1593); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1595 = 10'h1fc == lut_adr ? $signed(-16'sh65) : $signed(_GEN_1594); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1596 = 10'h1fd == lut_adr ? $signed(-16'sh4b) : $signed(_GEN_1595); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1597 = 10'h1fe == lut_adr ? $signed(-16'sh32) : $signed(_GEN_1596); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1598 = 10'h1ff == lut_adr ? $signed(-16'sh19) : $signed(_GEN_1597); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1599 = 10'h200 == lut_adr ? $signed(16'sh0) : $signed(_GEN_1598); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1600 = 10'h201 == lut_adr ? $signed(16'sh19) : $signed(_GEN_1599); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1601 = 10'h202 == lut_adr ? $signed(16'sh32) : $signed(_GEN_1600); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1602 = 10'h203 == lut_adr ? $signed(16'sh4b) : $signed(_GEN_1601); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1603 = 10'h204 == lut_adr ? $signed(16'sh65) : $signed(_GEN_1602); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1604 = 10'h205 == lut_adr ? $signed(16'sh7e) : $signed(_GEN_1603); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1605 = 10'h206 == lut_adr ? $signed(16'sh97) : $signed(_GEN_1604); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1606 = 10'h207 == lut_adr ? $signed(16'shb0) : $signed(_GEN_1605); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1607 = 10'h208 == lut_adr ? $signed(16'shc9) : $signed(_GEN_1606); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1608 = 10'h209 == lut_adr ? $signed(16'she2) : $signed(_GEN_1607); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1609 = 10'h20a == lut_adr ? $signed(16'shfb) : $signed(_GEN_1608); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1610 = 10'h20b == lut_adr ? $signed(16'sh114) : $signed(_GEN_1609); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1611 = 10'h20c == lut_adr ? $signed(16'sh12d) : $signed(_GEN_1610); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1612 = 10'h20d == lut_adr ? $signed(16'sh146) : $signed(_GEN_1611); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1613 = 10'h20e == lut_adr ? $signed(16'sh15f) : $signed(_GEN_1612); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1614 = 10'h20f == lut_adr ? $signed(16'sh178) : $signed(_GEN_1613); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1615 = 10'h210 == lut_adr ? $signed(16'sh191) : $signed(_GEN_1614); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1616 = 10'h211 == lut_adr ? $signed(16'sh1aa) : $signed(_GEN_1615); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1617 = 10'h212 == lut_adr ? $signed(16'sh1c3) : $signed(_GEN_1616); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1618 = 10'h213 == lut_adr ? $signed(16'sh1dc) : $signed(_GEN_1617); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1619 = 10'h214 == lut_adr ? $signed(16'sh1f5) : $signed(_GEN_1618); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1620 = 10'h215 == lut_adr ? $signed(16'sh20e) : $signed(_GEN_1619); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1621 = 10'h216 == lut_adr ? $signed(16'sh227) : $signed(_GEN_1620); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1622 = 10'h217 == lut_adr ? $signed(16'sh240) : $signed(_GEN_1621); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1623 = 10'h218 == lut_adr ? $signed(16'sh259) : $signed(_GEN_1622); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1624 = 10'h219 == lut_adr ? $signed(16'sh272) : $signed(_GEN_1623); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1625 = 10'h21a == lut_adr ? $signed(16'sh28b) : $signed(_GEN_1624); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1626 = 10'h21b == lut_adr ? $signed(16'sh2a3) : $signed(_GEN_1625); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1627 = 10'h21c == lut_adr ? $signed(16'sh2bc) : $signed(_GEN_1626); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1628 = 10'h21d == lut_adr ? $signed(16'sh2d5) : $signed(_GEN_1627); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1629 = 10'h21e == lut_adr ? $signed(16'sh2ee) : $signed(_GEN_1628); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1630 = 10'h21f == lut_adr ? $signed(16'sh306) : $signed(_GEN_1629); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1631 = 10'h220 == lut_adr ? $signed(16'sh31f) : $signed(_GEN_1630); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1632 = 10'h221 == lut_adr ? $signed(16'sh338) : $signed(_GEN_1631); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1633 = 10'h222 == lut_adr ? $signed(16'sh350) : $signed(_GEN_1632); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1634 = 10'h223 == lut_adr ? $signed(16'sh369) : $signed(_GEN_1633); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1635 = 10'h224 == lut_adr ? $signed(16'sh381) : $signed(_GEN_1634); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1636 = 10'h225 == lut_adr ? $signed(16'sh39a) : $signed(_GEN_1635); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1637 = 10'h226 == lut_adr ? $signed(16'sh3b2) : $signed(_GEN_1636); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1638 = 10'h227 == lut_adr ? $signed(16'sh3cb) : $signed(_GEN_1637); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1639 = 10'h228 == lut_adr ? $signed(16'sh3e3) : $signed(_GEN_1638); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1640 = 10'h229 == lut_adr ? $signed(16'sh3fc) : $signed(_GEN_1639); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1641 = 10'h22a == lut_adr ? $signed(16'sh414) : $signed(_GEN_1640); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1642 = 10'h22b == lut_adr ? $signed(16'sh42c) : $signed(_GEN_1641); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1643 = 10'h22c == lut_adr ? $signed(16'sh444) : $signed(_GEN_1642); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1644 = 10'h22d == lut_adr ? $signed(16'sh45d) : $signed(_GEN_1643); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1645 = 10'h22e == lut_adr ? $signed(16'sh475) : $signed(_GEN_1644); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1646 = 10'h22f == lut_adr ? $signed(16'sh48d) : $signed(_GEN_1645); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1647 = 10'h230 == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_1646); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1648 = 10'h231 == lut_adr ? $signed(16'sh4bd) : $signed(_GEN_1647); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1649 = 10'h232 == lut_adr ? $signed(16'sh4d5) : $signed(_GEN_1648); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1650 = 10'h233 == lut_adr ? $signed(16'sh4ed) : $signed(_GEN_1649); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1651 = 10'h234 == lut_adr ? $signed(16'sh505) : $signed(_GEN_1650); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1652 = 10'h235 == lut_adr ? $signed(16'sh51d) : $signed(_GEN_1651); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1653 = 10'h236 == lut_adr ? $signed(16'sh534) : $signed(_GEN_1652); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1654 = 10'h237 == lut_adr ? $signed(16'sh54c) : $signed(_GEN_1653); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1655 = 10'h238 == lut_adr ? $signed(16'sh564) : $signed(_GEN_1654); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1656 = 10'h239 == lut_adr ? $signed(16'sh57c) : $signed(_GEN_1655); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1657 = 10'h23a == lut_adr ? $signed(16'sh593) : $signed(_GEN_1656); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1658 = 10'h23b == lut_adr ? $signed(16'sh5ab) : $signed(_GEN_1657); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1659 = 10'h23c == lut_adr ? $signed(16'sh5c2) : $signed(_GEN_1658); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1660 = 10'h23d == lut_adr ? $signed(16'sh5da) : $signed(_GEN_1659); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1661 = 10'h23e == lut_adr ? $signed(16'sh5f1) : $signed(_GEN_1660); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1662 = 10'h23f == lut_adr ? $signed(16'sh608) : $signed(_GEN_1661); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1663 = 10'h240 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_1662); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1664 = 10'h241 == lut_adr ? $signed(16'sh637) : $signed(_GEN_1663); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1665 = 10'h242 == lut_adr ? $signed(16'sh64e) : $signed(_GEN_1664); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1666 = 10'h243 == lut_adr ? $signed(16'sh665) : $signed(_GEN_1665); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1667 = 10'h244 == lut_adr ? $signed(16'sh67c) : $signed(_GEN_1666); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1668 = 10'h245 == lut_adr ? $signed(16'sh693) : $signed(_GEN_1667); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1669 = 10'h246 == lut_adr ? $signed(16'sh6aa) : $signed(_GEN_1668); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1670 = 10'h247 == lut_adr ? $signed(16'sh6c1) : $signed(_GEN_1669); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1671 = 10'h248 == lut_adr ? $signed(16'sh6d7) : $signed(_GEN_1670); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1672 = 10'h249 == lut_adr ? $signed(16'sh6ee) : $signed(_GEN_1671); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1673 = 10'h24a == lut_adr ? $signed(16'sh705) : $signed(_GEN_1672); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1674 = 10'h24b == lut_adr ? $signed(16'sh71b) : $signed(_GEN_1673); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1675 = 10'h24c == lut_adr ? $signed(16'sh732) : $signed(_GEN_1674); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1676 = 10'h24d == lut_adr ? $signed(16'sh748) : $signed(_GEN_1675); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1677 = 10'h24e == lut_adr ? $signed(16'sh75e) : $signed(_GEN_1676); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1678 = 10'h24f == lut_adr ? $signed(16'sh775) : $signed(_GEN_1677); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1679 = 10'h250 == lut_adr ? $signed(16'sh78b) : $signed(_GEN_1678); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1680 = 10'h251 == lut_adr ? $signed(16'sh7a1) : $signed(_GEN_1679); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1681 = 10'h252 == lut_adr ? $signed(16'sh7b7) : $signed(_GEN_1680); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1682 = 10'h253 == lut_adr ? $signed(16'sh7cd) : $signed(_GEN_1681); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1683 = 10'h254 == lut_adr ? $signed(16'sh7e3) : $signed(_GEN_1682); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1684 = 10'h255 == lut_adr ? $signed(16'sh7f9) : $signed(_GEN_1683); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1685 = 10'h256 == lut_adr ? $signed(16'sh80e) : $signed(_GEN_1684); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1686 = 10'h257 == lut_adr ? $signed(16'sh824) : $signed(_GEN_1685); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1687 = 10'h258 == lut_adr ? $signed(16'sh83a) : $signed(_GEN_1686); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1688 = 10'h259 == lut_adr ? $signed(16'sh84f) : $signed(_GEN_1687); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1689 = 10'h25a == lut_adr ? $signed(16'sh865) : $signed(_GEN_1688); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1690 = 10'h25b == lut_adr ? $signed(16'sh87a) : $signed(_GEN_1689); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1691 = 10'h25c == lut_adr ? $signed(16'sh88f) : $signed(_GEN_1690); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1692 = 10'h25d == lut_adr ? $signed(16'sh8a5) : $signed(_GEN_1691); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1693 = 10'h25e == lut_adr ? $signed(16'sh8ba) : $signed(_GEN_1692); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1694 = 10'h25f == lut_adr ? $signed(16'sh8cf) : $signed(_GEN_1693); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1695 = 10'h260 == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_1694); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1696 = 10'h261 == lut_adr ? $signed(16'sh8f8) : $signed(_GEN_1695); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1697 = 10'h262 == lut_adr ? $signed(16'sh90d) : $signed(_GEN_1696); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1698 = 10'h263 == lut_adr ? $signed(16'sh922) : $signed(_GEN_1697); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1699 = 10'h264 == lut_adr ? $signed(16'sh937) : $signed(_GEN_1698); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1700 = 10'h265 == lut_adr ? $signed(16'sh94b) : $signed(_GEN_1699); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1701 = 10'h266 == lut_adr ? $signed(16'sh95f) : $signed(_GEN_1700); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1702 = 10'h267 == lut_adr ? $signed(16'sh974) : $signed(_GEN_1701); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1703 = 10'h268 == lut_adr ? $signed(16'sh988) : $signed(_GEN_1702); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1704 = 10'h269 == lut_adr ? $signed(16'sh99c) : $signed(_GEN_1703); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1705 = 10'h26a == lut_adr ? $signed(16'sh9b0) : $signed(_GEN_1704); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1706 = 10'h26b == lut_adr ? $signed(16'sh9c4) : $signed(_GEN_1705); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1707 = 10'h26c == lut_adr ? $signed(16'sh9d8) : $signed(_GEN_1706); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1708 = 10'h26d == lut_adr ? $signed(16'sh9ec) : $signed(_GEN_1707); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1709 = 10'h26e == lut_adr ? $signed(16'sh9ff) : $signed(_GEN_1708); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1710 = 10'h26f == lut_adr ? $signed(16'sha13) : $signed(_GEN_1709); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1711 = 10'h270 == lut_adr ? $signed(16'sha26) : $signed(_GEN_1710); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1712 = 10'h271 == lut_adr ? $signed(16'sha3a) : $signed(_GEN_1711); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1713 = 10'h272 == lut_adr ? $signed(16'sha4d) : $signed(_GEN_1712); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1714 = 10'h273 == lut_adr ? $signed(16'sha60) : $signed(_GEN_1713); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1715 = 10'h274 == lut_adr ? $signed(16'sha73) : $signed(_GEN_1714); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1716 = 10'h275 == lut_adr ? $signed(16'sha86) : $signed(_GEN_1715); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1717 = 10'h276 == lut_adr ? $signed(16'sha99) : $signed(_GEN_1716); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1718 = 10'h277 == lut_adr ? $signed(16'shaac) : $signed(_GEN_1717); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1719 = 10'h278 == lut_adr ? $signed(16'shabf) : $signed(_GEN_1718); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1720 = 10'h279 == lut_adr ? $signed(16'shad1) : $signed(_GEN_1719); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1721 = 10'h27a == lut_adr ? $signed(16'shae4) : $signed(_GEN_1720); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1722 = 10'h27b == lut_adr ? $signed(16'shaf6) : $signed(_GEN_1721); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1723 = 10'h27c == lut_adr ? $signed(16'shb08) : $signed(_GEN_1722); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1724 = 10'h27d == lut_adr ? $signed(16'shb1b) : $signed(_GEN_1723); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1725 = 10'h27e == lut_adr ? $signed(16'shb2d) : $signed(_GEN_1724); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1726 = 10'h27f == lut_adr ? $signed(16'shb3e) : $signed(_GEN_1725); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1727 = 10'h280 == lut_adr ? $signed(16'shb50) : $signed(_GEN_1726); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1728 = 10'h281 == lut_adr ? $signed(16'shb62) : $signed(_GEN_1727); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1729 = 10'h282 == lut_adr ? $signed(16'shb74) : $signed(_GEN_1728); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1730 = 10'h283 == lut_adr ? $signed(16'shb85) : $signed(_GEN_1729); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1731 = 10'h284 == lut_adr ? $signed(16'shb97) : $signed(_GEN_1730); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1732 = 10'h285 == lut_adr ? $signed(16'shba8) : $signed(_GEN_1731); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1733 = 10'h286 == lut_adr ? $signed(16'shbb9) : $signed(_GEN_1732); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1734 = 10'h287 == lut_adr ? $signed(16'shbca) : $signed(_GEN_1733); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1735 = 10'h288 == lut_adr ? $signed(16'shbdb) : $signed(_GEN_1734); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1736 = 10'h289 == lut_adr ? $signed(16'shbec) : $signed(_GEN_1735); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1737 = 10'h28a == lut_adr ? $signed(16'shbfc) : $signed(_GEN_1736); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1738 = 10'h28b == lut_adr ? $signed(16'shc0d) : $signed(_GEN_1737); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1739 = 10'h28c == lut_adr ? $signed(16'shc1e) : $signed(_GEN_1738); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1740 = 10'h28d == lut_adr ? $signed(16'shc2e) : $signed(_GEN_1739); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1741 = 10'h28e == lut_adr ? $signed(16'shc3e) : $signed(_GEN_1740); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1742 = 10'h28f == lut_adr ? $signed(16'shc4e) : $signed(_GEN_1741); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1743 = 10'h290 == lut_adr ? $signed(16'shc5e) : $signed(_GEN_1742); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1744 = 10'h291 == lut_adr ? $signed(16'shc6e) : $signed(_GEN_1743); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1745 = 10'h292 == lut_adr ? $signed(16'shc7e) : $signed(_GEN_1744); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1746 = 10'h293 == lut_adr ? $signed(16'shc8e) : $signed(_GEN_1745); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1747 = 10'h294 == lut_adr ? $signed(16'shc9d) : $signed(_GEN_1746); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1748 = 10'h295 == lut_adr ? $signed(16'shcac) : $signed(_GEN_1747); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1749 = 10'h296 == lut_adr ? $signed(16'shcbc) : $signed(_GEN_1748); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1750 = 10'h297 == lut_adr ? $signed(16'shccb) : $signed(_GEN_1749); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1751 = 10'h298 == lut_adr ? $signed(16'shcda) : $signed(_GEN_1750); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1752 = 10'h299 == lut_adr ? $signed(16'shce9) : $signed(_GEN_1751); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1753 = 10'h29a == lut_adr ? $signed(16'shcf8) : $signed(_GEN_1752); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1754 = 10'h29b == lut_adr ? $signed(16'shd06) : $signed(_GEN_1753); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1755 = 10'h29c == lut_adr ? $signed(16'shd15) : $signed(_GEN_1754); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1756 = 10'h29d == lut_adr ? $signed(16'shd23) : $signed(_GEN_1755); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1757 = 10'h29e == lut_adr ? $signed(16'shd32) : $signed(_GEN_1756); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1758 = 10'h29f == lut_adr ? $signed(16'shd40) : $signed(_GEN_1757); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1759 = 10'h2a0 == lut_adr ? $signed(16'shd4e) : $signed(_GEN_1758); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1760 = 10'h2a1 == lut_adr ? $signed(16'shd5c) : $signed(_GEN_1759); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1761 = 10'h2a2 == lut_adr ? $signed(16'shd69) : $signed(_GEN_1760); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1762 = 10'h2a3 == lut_adr ? $signed(16'shd77) : $signed(_GEN_1761); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1763 = 10'h2a4 == lut_adr ? $signed(16'shd85) : $signed(_GEN_1762); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1764 = 10'h2a5 == lut_adr ? $signed(16'shd92) : $signed(_GEN_1763); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1765 = 10'h2a6 == lut_adr ? $signed(16'shd9f) : $signed(_GEN_1764); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1766 = 10'h2a7 == lut_adr ? $signed(16'shdac) : $signed(_GEN_1765); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1767 = 10'h2a8 == lut_adr ? $signed(16'shdb9) : $signed(_GEN_1766); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1768 = 10'h2a9 == lut_adr ? $signed(16'shdc6) : $signed(_GEN_1767); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1769 = 10'h2aa == lut_adr ? $signed(16'shdd3) : $signed(_GEN_1768); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1770 = 10'h2ab == lut_adr ? $signed(16'shddf) : $signed(_GEN_1769); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1771 = 10'h2ac == lut_adr ? $signed(16'shdec) : $signed(_GEN_1770); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1772 = 10'h2ad == lut_adr ? $signed(16'shdf8) : $signed(_GEN_1771); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1773 = 10'h2ae == lut_adr ? $signed(16'she04) : $signed(_GEN_1772); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1774 = 10'h2af == lut_adr ? $signed(16'she10) : $signed(_GEN_1773); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1775 = 10'h2b0 == lut_adr ? $signed(16'she1c) : $signed(_GEN_1774); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1776 = 10'h2b1 == lut_adr ? $signed(16'she28) : $signed(_GEN_1775); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1777 = 10'h2b2 == lut_adr ? $signed(16'she34) : $signed(_GEN_1776); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1778 = 10'h2b3 == lut_adr ? $signed(16'she3f) : $signed(_GEN_1777); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1779 = 10'h2b4 == lut_adr ? $signed(16'she4b) : $signed(_GEN_1778); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1780 = 10'h2b5 == lut_adr ? $signed(16'she56) : $signed(_GEN_1779); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1781 = 10'h2b6 == lut_adr ? $signed(16'she61) : $signed(_GEN_1780); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1782 = 10'h2b7 == lut_adr ? $signed(16'she6c) : $signed(_GEN_1781); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1783 = 10'h2b8 == lut_adr ? $signed(16'she77) : $signed(_GEN_1782); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1784 = 10'h2b9 == lut_adr ? $signed(16'she81) : $signed(_GEN_1783); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1785 = 10'h2ba == lut_adr ? $signed(16'she8c) : $signed(_GEN_1784); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1786 = 10'h2bb == lut_adr ? $signed(16'she96) : $signed(_GEN_1785); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1787 = 10'h2bc == lut_adr ? $signed(16'shea1) : $signed(_GEN_1786); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1788 = 10'h2bd == lut_adr ? $signed(16'sheab) : $signed(_GEN_1787); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1789 = 10'h2be == lut_adr ? $signed(16'sheb5) : $signed(_GEN_1788); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1790 = 10'h2bf == lut_adr ? $signed(16'shebf) : $signed(_GEN_1789); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1791 = 10'h2c0 == lut_adr ? $signed(16'shec8) : $signed(_GEN_1790); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1792 = 10'h2c1 == lut_adr ? $signed(16'shed2) : $signed(_GEN_1791); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1793 = 10'h2c2 == lut_adr ? $signed(16'shedb) : $signed(_GEN_1792); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1794 = 10'h2c3 == lut_adr ? $signed(16'shee4) : $signed(_GEN_1793); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1795 = 10'h2c4 == lut_adr ? $signed(16'sheee) : $signed(_GEN_1794); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1796 = 10'h2c5 == lut_adr ? $signed(16'shef7) : $signed(_GEN_1795); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1797 = 10'h2c6 == lut_adr ? $signed(16'sheff) : $signed(_GEN_1796); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1798 = 10'h2c7 == lut_adr ? $signed(16'shf08) : $signed(_GEN_1797); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1799 = 10'h2c8 == lut_adr ? $signed(16'shf11) : $signed(_GEN_1798); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1800 = 10'h2c9 == lut_adr ? $signed(16'shf19) : $signed(_GEN_1799); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1801 = 10'h2ca == lut_adr ? $signed(16'shf21) : $signed(_GEN_1800); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1802 = 10'h2cb == lut_adr ? $signed(16'shf29) : $signed(_GEN_1801); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1803 = 10'h2cc == lut_adr ? $signed(16'shf31) : $signed(_GEN_1802); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1804 = 10'h2cd == lut_adr ? $signed(16'shf39) : $signed(_GEN_1803); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1805 = 10'h2ce == lut_adr ? $signed(16'shf41) : $signed(_GEN_1804); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1806 = 10'h2cf == lut_adr ? $signed(16'shf48) : $signed(_GEN_1805); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1807 = 10'h2d0 == lut_adr ? $signed(16'shf50) : $signed(_GEN_1806); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1808 = 10'h2d1 == lut_adr ? $signed(16'shf57) : $signed(_GEN_1807); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1809 = 10'h2d2 == lut_adr ? $signed(16'shf5e) : $signed(_GEN_1808); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1810 = 10'h2d3 == lut_adr ? $signed(16'shf65) : $signed(_GEN_1809); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1811 = 10'h2d4 == lut_adr ? $signed(16'shf6c) : $signed(_GEN_1810); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1812 = 10'h2d5 == lut_adr ? $signed(16'shf72) : $signed(_GEN_1811); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1813 = 10'h2d6 == lut_adr ? $signed(16'shf79) : $signed(_GEN_1812); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1814 = 10'h2d7 == lut_adr ? $signed(16'shf7f) : $signed(_GEN_1813); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1815 = 10'h2d8 == lut_adr ? $signed(16'shf85) : $signed(_GEN_1814); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1816 = 10'h2d9 == lut_adr ? $signed(16'shf8b) : $signed(_GEN_1815); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1817 = 10'h2da == lut_adr ? $signed(16'shf91) : $signed(_GEN_1816); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1818 = 10'h2db == lut_adr ? $signed(16'shf97) : $signed(_GEN_1817); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1819 = 10'h2dc == lut_adr ? $signed(16'shf9c) : $signed(_GEN_1818); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1820 = 10'h2dd == lut_adr ? $signed(16'shfa2) : $signed(_GEN_1819); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1821 = 10'h2de == lut_adr ? $signed(16'shfa7) : $signed(_GEN_1820); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1822 = 10'h2df == lut_adr ? $signed(16'shfac) : $signed(_GEN_1821); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1823 = 10'h2e0 == lut_adr ? $signed(16'shfb1) : $signed(_GEN_1822); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1824 = 10'h2e1 == lut_adr ? $signed(16'shfb6) : $signed(_GEN_1823); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1825 = 10'h2e2 == lut_adr ? $signed(16'shfbb) : $signed(_GEN_1824); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1826 = 10'h2e3 == lut_adr ? $signed(16'shfbf) : $signed(_GEN_1825); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1827 = 10'h2e4 == lut_adr ? $signed(16'shfc4) : $signed(_GEN_1826); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1828 = 10'h2e5 == lut_adr ? $signed(16'shfc8) : $signed(_GEN_1827); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1829 = 10'h2e6 == lut_adr ? $signed(16'shfcc) : $signed(_GEN_1828); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1830 = 10'h2e7 == lut_adr ? $signed(16'shfd0) : $signed(_GEN_1829); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1831 = 10'h2e8 == lut_adr ? $signed(16'shfd4) : $signed(_GEN_1830); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1832 = 10'h2e9 == lut_adr ? $signed(16'shfd7) : $signed(_GEN_1831); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1833 = 10'h2ea == lut_adr ? $signed(16'shfdb) : $signed(_GEN_1832); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1834 = 10'h2eb == lut_adr ? $signed(16'shfde) : $signed(_GEN_1833); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1835 = 10'h2ec == lut_adr ? $signed(16'shfe1) : $signed(_GEN_1834); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1836 = 10'h2ed == lut_adr ? $signed(16'shfe4) : $signed(_GEN_1835); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1837 = 10'h2ee == lut_adr ? $signed(16'shfe7) : $signed(_GEN_1836); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1838 = 10'h2ef == lut_adr ? $signed(16'shfea) : $signed(_GEN_1837); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1839 = 10'h2f0 == lut_adr ? $signed(16'shfec) : $signed(_GEN_1838); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1840 = 10'h2f1 == lut_adr ? $signed(16'shfef) : $signed(_GEN_1839); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1841 = 10'h2f2 == lut_adr ? $signed(16'shff1) : $signed(_GEN_1840); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1842 = 10'h2f3 == lut_adr ? $signed(16'shff3) : $signed(_GEN_1841); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1843 = 10'h2f4 == lut_adr ? $signed(16'shff5) : $signed(_GEN_1842); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1844 = 10'h2f5 == lut_adr ? $signed(16'shff7) : $signed(_GEN_1843); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1845 = 10'h2f6 == lut_adr ? $signed(16'shff8) : $signed(_GEN_1844); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1846 = 10'h2f7 == lut_adr ? $signed(16'shffa) : $signed(_GEN_1845); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1847 = 10'h2f8 == lut_adr ? $signed(16'shffb) : $signed(_GEN_1846); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1848 = 10'h2f9 == lut_adr ? $signed(16'shffc) : $signed(_GEN_1847); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1849 = 10'h2fa == lut_adr ? $signed(16'shffd) : $signed(_GEN_1848); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1850 = 10'h2fb == lut_adr ? $signed(16'shffe) : $signed(_GEN_1849); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1851 = 10'h2fc == lut_adr ? $signed(16'shfff) : $signed(_GEN_1850); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1852 = 10'h2fd == lut_adr ? $signed(16'shfff) : $signed(_GEN_1851); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1853 = 10'h2fe == lut_adr ? $signed(16'sh1000) : $signed(_GEN_1852); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1854 = 10'h2ff == lut_adr ? $signed(16'sh1000) : $signed(_GEN_1853); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1855 = 10'h300 == lut_adr ? $signed(16'sh1000) : $signed(_GEN_1854); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1856 = 10'h301 == lut_adr ? $signed(16'sh1000) : $signed(_GEN_1855); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1857 = 10'h302 == lut_adr ? $signed(16'sh1000) : $signed(_GEN_1856); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1858 = 10'h303 == lut_adr ? $signed(16'shfff) : $signed(_GEN_1857); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1859 = 10'h304 == lut_adr ? $signed(16'shfff) : $signed(_GEN_1858); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1860 = 10'h305 == lut_adr ? $signed(16'shffe) : $signed(_GEN_1859); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1861 = 10'h306 == lut_adr ? $signed(16'shffd) : $signed(_GEN_1860); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1862 = 10'h307 == lut_adr ? $signed(16'shffc) : $signed(_GEN_1861); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1863 = 10'h308 == lut_adr ? $signed(16'shffb) : $signed(_GEN_1862); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1864 = 10'h309 == lut_adr ? $signed(16'shffa) : $signed(_GEN_1863); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1865 = 10'h30a == lut_adr ? $signed(16'shff8) : $signed(_GEN_1864); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1866 = 10'h30b == lut_adr ? $signed(16'shff7) : $signed(_GEN_1865); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1867 = 10'h30c == lut_adr ? $signed(16'shff5) : $signed(_GEN_1866); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1868 = 10'h30d == lut_adr ? $signed(16'shff3) : $signed(_GEN_1867); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1869 = 10'h30e == lut_adr ? $signed(16'shff1) : $signed(_GEN_1868); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1870 = 10'h30f == lut_adr ? $signed(16'shfef) : $signed(_GEN_1869); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1871 = 10'h310 == lut_adr ? $signed(16'shfec) : $signed(_GEN_1870); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1872 = 10'h311 == lut_adr ? $signed(16'shfea) : $signed(_GEN_1871); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1873 = 10'h312 == lut_adr ? $signed(16'shfe7) : $signed(_GEN_1872); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1874 = 10'h313 == lut_adr ? $signed(16'shfe4) : $signed(_GEN_1873); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1875 = 10'h314 == lut_adr ? $signed(16'shfe1) : $signed(_GEN_1874); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1876 = 10'h315 == lut_adr ? $signed(16'shfde) : $signed(_GEN_1875); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1877 = 10'h316 == lut_adr ? $signed(16'shfdb) : $signed(_GEN_1876); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1878 = 10'h317 == lut_adr ? $signed(16'shfd7) : $signed(_GEN_1877); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1879 = 10'h318 == lut_adr ? $signed(16'shfd4) : $signed(_GEN_1878); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1880 = 10'h319 == lut_adr ? $signed(16'shfd0) : $signed(_GEN_1879); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1881 = 10'h31a == lut_adr ? $signed(16'shfcc) : $signed(_GEN_1880); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1882 = 10'h31b == lut_adr ? $signed(16'shfc8) : $signed(_GEN_1881); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1883 = 10'h31c == lut_adr ? $signed(16'shfc4) : $signed(_GEN_1882); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1884 = 10'h31d == lut_adr ? $signed(16'shfbf) : $signed(_GEN_1883); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1885 = 10'h31e == lut_adr ? $signed(16'shfbb) : $signed(_GEN_1884); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1886 = 10'h31f == lut_adr ? $signed(16'shfb6) : $signed(_GEN_1885); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1887 = 10'h320 == lut_adr ? $signed(16'shfb1) : $signed(_GEN_1886); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1888 = 10'h321 == lut_adr ? $signed(16'shfac) : $signed(_GEN_1887); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1889 = 10'h322 == lut_adr ? $signed(16'shfa7) : $signed(_GEN_1888); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1890 = 10'h323 == lut_adr ? $signed(16'shfa2) : $signed(_GEN_1889); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1891 = 10'h324 == lut_adr ? $signed(16'shf9c) : $signed(_GEN_1890); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1892 = 10'h325 == lut_adr ? $signed(16'shf97) : $signed(_GEN_1891); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1893 = 10'h326 == lut_adr ? $signed(16'shf91) : $signed(_GEN_1892); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1894 = 10'h327 == lut_adr ? $signed(16'shf8b) : $signed(_GEN_1893); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1895 = 10'h328 == lut_adr ? $signed(16'shf85) : $signed(_GEN_1894); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1896 = 10'h329 == lut_adr ? $signed(16'shf7f) : $signed(_GEN_1895); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1897 = 10'h32a == lut_adr ? $signed(16'shf79) : $signed(_GEN_1896); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1898 = 10'h32b == lut_adr ? $signed(16'shf72) : $signed(_GEN_1897); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1899 = 10'h32c == lut_adr ? $signed(16'shf6c) : $signed(_GEN_1898); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1900 = 10'h32d == lut_adr ? $signed(16'shf65) : $signed(_GEN_1899); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1901 = 10'h32e == lut_adr ? $signed(16'shf5e) : $signed(_GEN_1900); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1902 = 10'h32f == lut_adr ? $signed(16'shf57) : $signed(_GEN_1901); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1903 = 10'h330 == lut_adr ? $signed(16'shf50) : $signed(_GEN_1902); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1904 = 10'h331 == lut_adr ? $signed(16'shf48) : $signed(_GEN_1903); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1905 = 10'h332 == lut_adr ? $signed(16'shf41) : $signed(_GEN_1904); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1906 = 10'h333 == lut_adr ? $signed(16'shf39) : $signed(_GEN_1905); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1907 = 10'h334 == lut_adr ? $signed(16'shf31) : $signed(_GEN_1906); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1908 = 10'h335 == lut_adr ? $signed(16'shf29) : $signed(_GEN_1907); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1909 = 10'h336 == lut_adr ? $signed(16'shf21) : $signed(_GEN_1908); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1910 = 10'h337 == lut_adr ? $signed(16'shf19) : $signed(_GEN_1909); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1911 = 10'h338 == lut_adr ? $signed(16'shf11) : $signed(_GEN_1910); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1912 = 10'h339 == lut_adr ? $signed(16'shf08) : $signed(_GEN_1911); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1913 = 10'h33a == lut_adr ? $signed(16'sheff) : $signed(_GEN_1912); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1914 = 10'h33b == lut_adr ? $signed(16'shef7) : $signed(_GEN_1913); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1915 = 10'h33c == lut_adr ? $signed(16'sheee) : $signed(_GEN_1914); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1916 = 10'h33d == lut_adr ? $signed(16'shee4) : $signed(_GEN_1915); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1917 = 10'h33e == lut_adr ? $signed(16'shedb) : $signed(_GEN_1916); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1918 = 10'h33f == lut_adr ? $signed(16'shed2) : $signed(_GEN_1917); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1919 = 10'h340 == lut_adr ? $signed(16'shec8) : $signed(_GEN_1918); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1920 = 10'h341 == lut_adr ? $signed(16'shebf) : $signed(_GEN_1919); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1921 = 10'h342 == lut_adr ? $signed(16'sheb5) : $signed(_GEN_1920); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1922 = 10'h343 == lut_adr ? $signed(16'sheab) : $signed(_GEN_1921); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1923 = 10'h344 == lut_adr ? $signed(16'shea1) : $signed(_GEN_1922); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1924 = 10'h345 == lut_adr ? $signed(16'she96) : $signed(_GEN_1923); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1925 = 10'h346 == lut_adr ? $signed(16'she8c) : $signed(_GEN_1924); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1926 = 10'h347 == lut_adr ? $signed(16'she81) : $signed(_GEN_1925); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1927 = 10'h348 == lut_adr ? $signed(16'she77) : $signed(_GEN_1926); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1928 = 10'h349 == lut_adr ? $signed(16'she6c) : $signed(_GEN_1927); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1929 = 10'h34a == lut_adr ? $signed(16'she61) : $signed(_GEN_1928); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1930 = 10'h34b == lut_adr ? $signed(16'she56) : $signed(_GEN_1929); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1931 = 10'h34c == lut_adr ? $signed(16'she4b) : $signed(_GEN_1930); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1932 = 10'h34d == lut_adr ? $signed(16'she3f) : $signed(_GEN_1931); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1933 = 10'h34e == lut_adr ? $signed(16'she34) : $signed(_GEN_1932); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1934 = 10'h34f == lut_adr ? $signed(16'she28) : $signed(_GEN_1933); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1935 = 10'h350 == lut_adr ? $signed(16'she1c) : $signed(_GEN_1934); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1936 = 10'h351 == lut_adr ? $signed(16'she10) : $signed(_GEN_1935); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1937 = 10'h352 == lut_adr ? $signed(16'she04) : $signed(_GEN_1936); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1938 = 10'h353 == lut_adr ? $signed(16'shdf8) : $signed(_GEN_1937); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1939 = 10'h354 == lut_adr ? $signed(16'shdec) : $signed(_GEN_1938); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1940 = 10'h355 == lut_adr ? $signed(16'shddf) : $signed(_GEN_1939); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1941 = 10'h356 == lut_adr ? $signed(16'shdd3) : $signed(_GEN_1940); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1942 = 10'h357 == lut_adr ? $signed(16'shdc6) : $signed(_GEN_1941); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1943 = 10'h358 == lut_adr ? $signed(16'shdb9) : $signed(_GEN_1942); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1944 = 10'h359 == lut_adr ? $signed(16'shdac) : $signed(_GEN_1943); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1945 = 10'h35a == lut_adr ? $signed(16'shd9f) : $signed(_GEN_1944); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1946 = 10'h35b == lut_adr ? $signed(16'shd92) : $signed(_GEN_1945); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1947 = 10'h35c == lut_adr ? $signed(16'shd85) : $signed(_GEN_1946); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1948 = 10'h35d == lut_adr ? $signed(16'shd77) : $signed(_GEN_1947); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1949 = 10'h35e == lut_adr ? $signed(16'shd69) : $signed(_GEN_1948); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1950 = 10'h35f == lut_adr ? $signed(16'shd5c) : $signed(_GEN_1949); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1951 = 10'h360 == lut_adr ? $signed(16'shd4e) : $signed(_GEN_1950); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1952 = 10'h361 == lut_adr ? $signed(16'shd40) : $signed(_GEN_1951); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1953 = 10'h362 == lut_adr ? $signed(16'shd32) : $signed(_GEN_1952); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1954 = 10'h363 == lut_adr ? $signed(16'shd23) : $signed(_GEN_1953); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1955 = 10'h364 == lut_adr ? $signed(16'shd15) : $signed(_GEN_1954); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1956 = 10'h365 == lut_adr ? $signed(16'shd06) : $signed(_GEN_1955); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1957 = 10'h366 == lut_adr ? $signed(16'shcf8) : $signed(_GEN_1956); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1958 = 10'h367 == lut_adr ? $signed(16'shce9) : $signed(_GEN_1957); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1959 = 10'h368 == lut_adr ? $signed(16'shcda) : $signed(_GEN_1958); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1960 = 10'h369 == lut_adr ? $signed(16'shccb) : $signed(_GEN_1959); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1961 = 10'h36a == lut_adr ? $signed(16'shcbc) : $signed(_GEN_1960); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1962 = 10'h36b == lut_adr ? $signed(16'shcac) : $signed(_GEN_1961); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1963 = 10'h36c == lut_adr ? $signed(16'shc9d) : $signed(_GEN_1962); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1964 = 10'h36d == lut_adr ? $signed(16'shc8e) : $signed(_GEN_1963); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1965 = 10'h36e == lut_adr ? $signed(16'shc7e) : $signed(_GEN_1964); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1966 = 10'h36f == lut_adr ? $signed(16'shc6e) : $signed(_GEN_1965); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1967 = 10'h370 == lut_adr ? $signed(16'shc5e) : $signed(_GEN_1966); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1968 = 10'h371 == lut_adr ? $signed(16'shc4e) : $signed(_GEN_1967); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1969 = 10'h372 == lut_adr ? $signed(16'shc3e) : $signed(_GEN_1968); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1970 = 10'h373 == lut_adr ? $signed(16'shc2e) : $signed(_GEN_1969); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1971 = 10'h374 == lut_adr ? $signed(16'shc1e) : $signed(_GEN_1970); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1972 = 10'h375 == lut_adr ? $signed(16'shc0d) : $signed(_GEN_1971); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1973 = 10'h376 == lut_adr ? $signed(16'shbfc) : $signed(_GEN_1972); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1974 = 10'h377 == lut_adr ? $signed(16'shbec) : $signed(_GEN_1973); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1975 = 10'h378 == lut_adr ? $signed(16'shbdb) : $signed(_GEN_1974); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1976 = 10'h379 == lut_adr ? $signed(16'shbca) : $signed(_GEN_1975); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1977 = 10'h37a == lut_adr ? $signed(16'shbb9) : $signed(_GEN_1976); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1978 = 10'h37b == lut_adr ? $signed(16'shba8) : $signed(_GEN_1977); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1979 = 10'h37c == lut_adr ? $signed(16'shb97) : $signed(_GEN_1978); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1980 = 10'h37d == lut_adr ? $signed(16'shb85) : $signed(_GEN_1979); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1981 = 10'h37e == lut_adr ? $signed(16'shb74) : $signed(_GEN_1980); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1982 = 10'h37f == lut_adr ? $signed(16'shb62) : $signed(_GEN_1981); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1983 = 10'h380 == lut_adr ? $signed(16'shb50) : $signed(_GEN_1982); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1984 = 10'h381 == lut_adr ? $signed(16'shb3e) : $signed(_GEN_1983); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1985 = 10'h382 == lut_adr ? $signed(16'shb2d) : $signed(_GEN_1984); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1986 = 10'h383 == lut_adr ? $signed(16'shb1b) : $signed(_GEN_1985); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1987 = 10'h384 == lut_adr ? $signed(16'shb08) : $signed(_GEN_1986); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1988 = 10'h385 == lut_adr ? $signed(16'shaf6) : $signed(_GEN_1987); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1989 = 10'h386 == lut_adr ? $signed(16'shae4) : $signed(_GEN_1988); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1990 = 10'h387 == lut_adr ? $signed(16'shad1) : $signed(_GEN_1989); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1991 = 10'h388 == lut_adr ? $signed(16'shabf) : $signed(_GEN_1990); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1992 = 10'h389 == lut_adr ? $signed(16'shaac) : $signed(_GEN_1991); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1993 = 10'h38a == lut_adr ? $signed(16'sha99) : $signed(_GEN_1992); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1994 = 10'h38b == lut_adr ? $signed(16'sha86) : $signed(_GEN_1993); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1995 = 10'h38c == lut_adr ? $signed(16'sha73) : $signed(_GEN_1994); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1996 = 10'h38d == lut_adr ? $signed(16'sha60) : $signed(_GEN_1995); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1997 = 10'h38e == lut_adr ? $signed(16'sha4d) : $signed(_GEN_1996); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1998 = 10'h38f == lut_adr ? $signed(16'sha3a) : $signed(_GEN_1997); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_1999 = 10'h390 == lut_adr ? $signed(16'sha26) : $signed(_GEN_1998); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2000 = 10'h391 == lut_adr ? $signed(16'sha13) : $signed(_GEN_1999); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2001 = 10'h392 == lut_adr ? $signed(16'sh9ff) : $signed(_GEN_2000); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2002 = 10'h393 == lut_adr ? $signed(16'sh9ec) : $signed(_GEN_2001); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2003 = 10'h394 == lut_adr ? $signed(16'sh9d8) : $signed(_GEN_2002); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2004 = 10'h395 == lut_adr ? $signed(16'sh9c4) : $signed(_GEN_2003); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2005 = 10'h396 == lut_adr ? $signed(16'sh9b0) : $signed(_GEN_2004); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2006 = 10'h397 == lut_adr ? $signed(16'sh99c) : $signed(_GEN_2005); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2007 = 10'h398 == lut_adr ? $signed(16'sh988) : $signed(_GEN_2006); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2008 = 10'h399 == lut_adr ? $signed(16'sh974) : $signed(_GEN_2007); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2009 = 10'h39a == lut_adr ? $signed(16'sh95f) : $signed(_GEN_2008); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2010 = 10'h39b == lut_adr ? $signed(16'sh94b) : $signed(_GEN_2009); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2011 = 10'h39c == lut_adr ? $signed(16'sh937) : $signed(_GEN_2010); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2012 = 10'h39d == lut_adr ? $signed(16'sh922) : $signed(_GEN_2011); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2013 = 10'h39e == lut_adr ? $signed(16'sh90d) : $signed(_GEN_2012); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2014 = 10'h39f == lut_adr ? $signed(16'sh8f8) : $signed(_GEN_2013); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2015 = 10'h3a0 == lut_adr ? $signed(16'sh8e4) : $signed(_GEN_2014); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2016 = 10'h3a1 == lut_adr ? $signed(16'sh8cf) : $signed(_GEN_2015); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2017 = 10'h3a2 == lut_adr ? $signed(16'sh8ba) : $signed(_GEN_2016); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2018 = 10'h3a3 == lut_adr ? $signed(16'sh8a5) : $signed(_GEN_2017); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2019 = 10'h3a4 == lut_adr ? $signed(16'sh88f) : $signed(_GEN_2018); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2020 = 10'h3a5 == lut_adr ? $signed(16'sh87a) : $signed(_GEN_2019); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2021 = 10'h3a6 == lut_adr ? $signed(16'sh865) : $signed(_GEN_2020); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2022 = 10'h3a7 == lut_adr ? $signed(16'sh84f) : $signed(_GEN_2021); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2023 = 10'h3a8 == lut_adr ? $signed(16'sh83a) : $signed(_GEN_2022); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2024 = 10'h3a9 == lut_adr ? $signed(16'sh824) : $signed(_GEN_2023); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2025 = 10'h3aa == lut_adr ? $signed(16'sh80e) : $signed(_GEN_2024); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2026 = 10'h3ab == lut_adr ? $signed(16'sh7f9) : $signed(_GEN_2025); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2027 = 10'h3ac == lut_adr ? $signed(16'sh7e3) : $signed(_GEN_2026); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2028 = 10'h3ad == lut_adr ? $signed(16'sh7cd) : $signed(_GEN_2027); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2029 = 10'h3ae == lut_adr ? $signed(16'sh7b7) : $signed(_GEN_2028); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2030 = 10'h3af == lut_adr ? $signed(16'sh7a1) : $signed(_GEN_2029); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2031 = 10'h3b0 == lut_adr ? $signed(16'sh78b) : $signed(_GEN_2030); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2032 = 10'h3b1 == lut_adr ? $signed(16'sh775) : $signed(_GEN_2031); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2033 = 10'h3b2 == lut_adr ? $signed(16'sh75e) : $signed(_GEN_2032); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2034 = 10'h3b3 == lut_adr ? $signed(16'sh748) : $signed(_GEN_2033); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2035 = 10'h3b4 == lut_adr ? $signed(16'sh732) : $signed(_GEN_2034); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2036 = 10'h3b5 == lut_adr ? $signed(16'sh71b) : $signed(_GEN_2035); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2037 = 10'h3b6 == lut_adr ? $signed(16'sh705) : $signed(_GEN_2036); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2038 = 10'h3b7 == lut_adr ? $signed(16'sh6ee) : $signed(_GEN_2037); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2039 = 10'h3b8 == lut_adr ? $signed(16'sh6d7) : $signed(_GEN_2038); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2040 = 10'h3b9 == lut_adr ? $signed(16'sh6c1) : $signed(_GEN_2039); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2041 = 10'h3ba == lut_adr ? $signed(16'sh6aa) : $signed(_GEN_2040); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2042 = 10'h3bb == lut_adr ? $signed(16'sh693) : $signed(_GEN_2041); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2043 = 10'h3bc == lut_adr ? $signed(16'sh67c) : $signed(_GEN_2042); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2044 = 10'h3bd == lut_adr ? $signed(16'sh665) : $signed(_GEN_2043); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2045 = 10'h3be == lut_adr ? $signed(16'sh64e) : $signed(_GEN_2044); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2046 = 10'h3bf == lut_adr ? $signed(16'sh637) : $signed(_GEN_2045); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2047 = 10'h3c0 == lut_adr ? $signed(16'sh61f) : $signed(_GEN_2046); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2048 = 10'h3c1 == lut_adr ? $signed(16'sh608) : $signed(_GEN_2047); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2049 = 10'h3c2 == lut_adr ? $signed(16'sh5f1) : $signed(_GEN_2048); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2050 = 10'h3c3 == lut_adr ? $signed(16'sh5da) : $signed(_GEN_2049); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2051 = 10'h3c4 == lut_adr ? $signed(16'sh5c2) : $signed(_GEN_2050); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2052 = 10'h3c5 == lut_adr ? $signed(16'sh5ab) : $signed(_GEN_2051); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2053 = 10'h3c6 == lut_adr ? $signed(16'sh593) : $signed(_GEN_2052); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2054 = 10'h3c7 == lut_adr ? $signed(16'sh57c) : $signed(_GEN_2053); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2055 = 10'h3c8 == lut_adr ? $signed(16'sh564) : $signed(_GEN_2054); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2056 = 10'h3c9 == lut_adr ? $signed(16'sh54c) : $signed(_GEN_2055); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2057 = 10'h3ca == lut_adr ? $signed(16'sh534) : $signed(_GEN_2056); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2058 = 10'h3cb == lut_adr ? $signed(16'sh51d) : $signed(_GEN_2057); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2059 = 10'h3cc == lut_adr ? $signed(16'sh505) : $signed(_GEN_2058); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2060 = 10'h3cd == lut_adr ? $signed(16'sh4ed) : $signed(_GEN_2059); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2061 = 10'h3ce == lut_adr ? $signed(16'sh4d5) : $signed(_GEN_2060); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2062 = 10'h3cf == lut_adr ? $signed(16'sh4bd) : $signed(_GEN_2061); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2063 = 10'h3d0 == lut_adr ? $signed(16'sh4a5) : $signed(_GEN_2062); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2064 = 10'h3d1 == lut_adr ? $signed(16'sh48d) : $signed(_GEN_2063); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2065 = 10'h3d2 == lut_adr ? $signed(16'sh475) : $signed(_GEN_2064); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2066 = 10'h3d3 == lut_adr ? $signed(16'sh45d) : $signed(_GEN_2065); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2067 = 10'h3d4 == lut_adr ? $signed(16'sh444) : $signed(_GEN_2066); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2068 = 10'h3d5 == lut_adr ? $signed(16'sh42c) : $signed(_GEN_2067); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2069 = 10'h3d6 == lut_adr ? $signed(16'sh414) : $signed(_GEN_2068); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2070 = 10'h3d7 == lut_adr ? $signed(16'sh3fc) : $signed(_GEN_2069); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2071 = 10'h3d8 == lut_adr ? $signed(16'sh3e3) : $signed(_GEN_2070); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2072 = 10'h3d9 == lut_adr ? $signed(16'sh3cb) : $signed(_GEN_2071); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2073 = 10'h3da == lut_adr ? $signed(16'sh3b2) : $signed(_GEN_2072); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2074 = 10'h3db == lut_adr ? $signed(16'sh39a) : $signed(_GEN_2073); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2075 = 10'h3dc == lut_adr ? $signed(16'sh381) : $signed(_GEN_2074); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2076 = 10'h3dd == lut_adr ? $signed(16'sh369) : $signed(_GEN_2075); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2077 = 10'h3de == lut_adr ? $signed(16'sh350) : $signed(_GEN_2076); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2078 = 10'h3df == lut_adr ? $signed(16'sh338) : $signed(_GEN_2077); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2079 = 10'h3e0 == lut_adr ? $signed(16'sh31f) : $signed(_GEN_2078); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2080 = 10'h3e1 == lut_adr ? $signed(16'sh306) : $signed(_GEN_2079); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2081 = 10'h3e2 == lut_adr ? $signed(16'sh2ee) : $signed(_GEN_2080); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2082 = 10'h3e3 == lut_adr ? $signed(16'sh2d5) : $signed(_GEN_2081); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2083 = 10'h3e4 == lut_adr ? $signed(16'sh2bc) : $signed(_GEN_2082); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2084 = 10'h3e5 == lut_adr ? $signed(16'sh2a3) : $signed(_GEN_2083); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2085 = 10'h3e6 == lut_adr ? $signed(16'sh28b) : $signed(_GEN_2084); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2086 = 10'h3e7 == lut_adr ? $signed(16'sh272) : $signed(_GEN_2085); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2087 = 10'h3e8 == lut_adr ? $signed(16'sh259) : $signed(_GEN_2086); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2088 = 10'h3e9 == lut_adr ? $signed(16'sh240) : $signed(_GEN_2087); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2089 = 10'h3ea == lut_adr ? $signed(16'sh227) : $signed(_GEN_2088); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2090 = 10'h3eb == lut_adr ? $signed(16'sh20e) : $signed(_GEN_2089); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2091 = 10'h3ec == lut_adr ? $signed(16'sh1f5) : $signed(_GEN_2090); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2092 = 10'h3ed == lut_adr ? $signed(16'sh1dc) : $signed(_GEN_2091); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2093 = 10'h3ee == lut_adr ? $signed(16'sh1c3) : $signed(_GEN_2092); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2094 = 10'h3ef == lut_adr ? $signed(16'sh1aa) : $signed(_GEN_2093); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2095 = 10'h3f0 == lut_adr ? $signed(16'sh191) : $signed(_GEN_2094); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2096 = 10'h3f1 == lut_adr ? $signed(16'sh178) : $signed(_GEN_2095); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2097 = 10'h3f2 == lut_adr ? $signed(16'sh15f) : $signed(_GEN_2096); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2098 = 10'h3f3 == lut_adr ? $signed(16'sh146) : $signed(_GEN_2097); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2099 = 10'h3f4 == lut_adr ? $signed(16'sh12d) : $signed(_GEN_2098); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2100 = 10'h3f5 == lut_adr ? $signed(16'sh114) : $signed(_GEN_2099); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2101 = 10'h3f6 == lut_adr ? $signed(16'shfb) : $signed(_GEN_2100); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2102 = 10'h3f7 == lut_adr ? $signed(16'she2) : $signed(_GEN_2101); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2103 = 10'h3f8 == lut_adr ? $signed(16'shc9) : $signed(_GEN_2102); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2104 = 10'h3f9 == lut_adr ? $signed(16'shb0) : $signed(_GEN_2103); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2105 = 10'h3fa == lut_adr ? $signed(16'sh97) : $signed(_GEN_2104); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2106 = 10'h3fb == lut_adr ? $signed(16'sh7e) : $signed(_GEN_2105); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2107 = 10'h3fc == lut_adr ? $signed(16'sh65) : $signed(_GEN_2106); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2108 = 10'h3fd == lut_adr ? $signed(16'sh4b) : $signed(_GEN_2107); // @[Butterfly.scala 176:12]
  wire [15:0] _GEN_2109 = 10'h3fe == lut_adr ? $signed(16'sh32) : $signed(_GEN_2108); // @[Butterfly.scala 176:12]
  reg [15:0] _T_34_re; // @[Butterfly.scala 295:24]
  reg [31:0] _RAND_9;
  reg [15:0] _T_34_im; // @[Butterfly.scala 295:24]
  reg [31:0] _RAND_10;
  reg  _T_35; // @[Butterfly.scala 296:24]
  reg [31:0] _RAND_11;
  Butterfly4 Butterfly4 ( // @[Butterfly.scala 139:22]
    .io_in1_re(Butterfly4_io_in1_re),
    .io_in1_im(Butterfly4_io_in1_im),
    .io_in2_re(Butterfly4_io_in2_re),
    .io_in2_im(Butterfly4_io_in2_im),
    .io_in3_re(Butterfly4_io_in3_re),
    .io_in3_im(Butterfly4_io_in3_im),
    .io_in4_re(Butterfly4_io_in4_re),
    .io_in4_im(Butterfly4_io_in4_im),
    .io_out1_re(Butterfly4_io_out1_re),
    .io_out1_im(Butterfly4_io_out1_im),
    .io_out2_re(Butterfly4_io_out2_re),
    .io_out2_im(Butterfly4_io_out2_im),
    .io_out3_re(Butterfly4_io_out3_re),
    .io_out3_im(Butterfly4_io_out3_im),
    .io_out4_re(Butterfly4_io_out4_re),
    .io_out4_im(Butterfly4_io_out4_im)
  );
  ComplexMul ComplexMul ( // @[Butterfly.scala 65:22]
    .io_op1_re(ComplexMul_io_op1_re),
    .io_op1_im(ComplexMul_io_op1_im),
    .io_op2_re(ComplexMul_io_op2_re),
    .io_op2_im(ComplexMul_io_op2_im),
    .io_res_re(ComplexMul_io_res_re),
    .io_res_im(ComplexMul_io_res_im)
  );
  assign ram0_re__T_19_addr = out_counter[5:0];
  assign ram0_re__T_19_data = ram0_re[ram0_re__T_19_addr]; // @[Butterfly.scala 198:16]
  assign ram0_re__T_10_data = io_in_valid ? $signed(_GEN_43) : $signed(io_in_re);
  assign ram0_re__T_10_addr = in_counter[5:0];
  assign ram0_re__T_10_mask = 1'h1;
  assign ram0_re__T_10_en = io_in_valid & _GEN_39;
  assign ram0_im__T_19_addr = out_counter[5:0];
  assign ram0_im__T_19_data = ram0_im[ram0_im__T_19_addr]; // @[Butterfly.scala 198:16]
  assign ram0_im__T_10_data = io_in_valid ? $signed(_GEN_42) : $signed(io_in_im);
  assign ram0_im__T_10_addr = in_counter[5:0];
  assign ram0_im__T_10_mask = 1'h1;
  assign ram0_im__T_10_en = io_in_valid & _GEN_39;
  assign ram1_re__T_21_addr = out_counter[5:0];
  assign ram1_re__T_21_data = ram1_re[ram1_re__T_21_addr]; // @[Butterfly.scala 199:16]
  assign ram1_re__T_12_data = io_in_valid ? $signed(_GEN_45) : $signed(io_in_re);
  assign ram1_re__T_12_addr = in_counter[5:0];
  assign ram1_re__T_12_mask = 1'h1;
  assign ram1_re__T_12_en = io_in_valid & _GEN_40;
  assign ram1_im__T_21_addr = out_counter[5:0];
  assign ram1_im__T_21_data = ram1_im[ram1_im__T_21_addr]; // @[Butterfly.scala 199:16]
  assign ram1_im__T_12_data = io_in_valid ? $signed(_GEN_44) : $signed(io_in_im);
  assign ram1_im__T_12_addr = in_counter[5:0];
  assign ram1_im__T_12_mask = 1'h1;
  assign ram1_im__T_12_en = io_in_valid & _GEN_40;
  assign ram2_re__T_23_addr = out_counter[5:0];
  assign ram2_re__T_23_data = ram2_re[ram2_re__T_23_addr]; // @[Butterfly.scala 200:16]
  assign ram2_re__T_14_data = io_in_valid ? $signed(_GEN_47) : $signed(io_in_re);
  assign ram2_re__T_14_addr = in_counter[5:0];
  assign ram2_re__T_14_mask = 1'h1;
  assign ram2_re__T_14_en = io_in_valid & _GEN_41;
  assign ram2_im__T_23_addr = out_counter[5:0];
  assign ram2_im__T_23_data = ram2_im[ram2_im__T_23_addr]; // @[Butterfly.scala 200:16]
  assign ram2_im__T_14_data = io_in_valid ? $signed(_GEN_46) : $signed(io_in_im);
  assign ram2_im__T_14_addr = in_counter[5:0];
  assign ram2_im__T_14_mask = 1'h1;
  assign ram2_im__T_14_en = io_in_valid & _GEN_41;
  assign io_out_re = _T_34_re; // @[Butterfly.scala 290:14 Butterfly.scala 295:14]
  assign io_out_im = _T_34_im; // @[Butterfly.scala 290:14 Butterfly.scala 295:14]
  assign io_out_valid = _T_35; // @[Butterfly.scala 291:14 Butterfly.scala 296:14]
  assign Butterfly4_io_in1_re = ram0_re__T_19_data; // @[Butterfly.scala 140:17]
  assign Butterfly4_io_in1_im = ram0_im__T_19_data; // @[Butterfly.scala 140:17]
  assign Butterfly4_io_in2_re = ram1_re__T_21_data; // @[Butterfly.scala 141:17]
  assign Butterfly4_io_in2_im = ram1_im__T_21_data; // @[Butterfly.scala 141:17]
  assign Butterfly4_io_in3_re = ram2_re__T_23_data; // @[Butterfly.scala 142:17]
  assign Butterfly4_io_in3_im = ram2_im__T_23_data; // @[Butterfly.scala 142:17]
  assign Butterfly4_io_in4_re = io_in_re; // @[Butterfly.scala 143:17]
  assign Butterfly4_io_in4_im = io_in_im; // @[Butterfly.scala 143:17]
  assign ComplexMul_io_op1_re = _T_25 ? $signed(Butterfly4_io_out1_re) : $signed(_GEN_60); // @[Butterfly.scala 66:17]
  assign ComplexMul_io_op1_im = _T_25 ? $signed(Butterfly4_io_out1_im) : $signed(_GEN_59); // @[Butterfly.scala 66:17]
  assign ComplexMul_io_op2_re = 10'h3ff == lut_adr ? $signed(16'sh1000) : $signed(_GEN_1085); // @[Butterfly.scala 67:17]
  assign ComplexMul_io_op2_im = 10'h3ff == lut_adr ? $signed(16'sh19) : $signed(_GEN_2109); // @[Butterfly.scala 67:17]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram0_re[initvar] = _RAND_0[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram0_im[initvar] = _RAND_1[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram1_re[initvar] = _RAND_2[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram1_im[initvar] = _RAND_3[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram2_re[initvar] = _RAND_4[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram2_im[initvar] = _RAND_5[15:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  in_counter = _RAND_6[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  out_counter = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  out_flag = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_34_re = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_34_im = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_35 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram0_re__T_10_en & ram0_re__T_10_mask) begin
      ram0_re[ram0_re__T_10_addr] <= ram0_re__T_10_data; // @[Butterfly.scala 198:16]
    end
    if(ram0_im__T_10_en & ram0_im__T_10_mask) begin
      ram0_im[ram0_im__T_10_addr] <= ram0_im__T_10_data; // @[Butterfly.scala 198:16]
    end
    if(ram1_re__T_12_en & ram1_re__T_12_mask) begin
      ram1_re[ram1_re__T_12_addr] <= ram1_re__T_12_data; // @[Butterfly.scala 199:16]
    end
    if(ram1_im__T_12_en & ram1_im__T_12_mask) begin
      ram1_im[ram1_im__T_12_addr] <= ram1_im__T_12_data; // @[Butterfly.scala 199:16]
    end
    if(ram2_re__T_14_en & ram2_re__T_14_mask) begin
      ram2_re[ram2_re__T_14_addr] <= ram2_re__T_14_data; // @[Butterfly.scala 200:16]
    end
    if(ram2_im__T_14_en & ram2_im__T_14_mask) begin
      ram2_im[ram2_im__T_14_addr] <= ram2_im__T_14_data; // @[Butterfly.scala 200:16]
    end
    if (reset) begin
      in_counter <= 10'h0;
    end else if (io_in_valid) begin
      in_counter <= _T_4;
    end
    if (reset) begin
      out_counter <= 10'h0;
    end else if (out_flag) begin
      out_counter <= _T_7;
    end
    if (reset) begin
      out_flag <= 1'h0;
    end else begin
      out_flag <= _GEN_2;
    end
    _T_34_re <= ComplexMul_io_res_re;
    _T_34_im <= ComplexMul_io_res_im;
    _T_35 <= out_flag;
  end
endmodule
module Butterfly4_TOP_4(
  input         clock,
  input         reset,
  input  [15:0] io_in_re,
  input  [15:0] io_in_im,
  input         io_in_valid,
  output [15:0] io_out_re,
  output [15:0] io_out_im,
  output        io_out_valid
);
  reg [15:0] ram0_re [0:255]; // @[Butterfly.scala 198:16]
  reg [31:0] _RAND_0;
  wire [15:0] ram0_re__T_19_data; // @[Butterfly.scala 198:16]
  wire [7:0] ram0_re__T_19_addr; // @[Butterfly.scala 198:16]
  wire [15:0] ram0_re__T_10_data; // @[Butterfly.scala 198:16]
  wire [7:0] ram0_re__T_10_addr; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_mask; // @[Butterfly.scala 198:16]
  wire  ram0_re__T_10_en; // @[Butterfly.scala 198:16]
  reg [15:0] ram0_im [0:255]; // @[Butterfly.scala 198:16]
  reg [31:0] _RAND_1;
  wire [15:0] ram0_im__T_19_data; // @[Butterfly.scala 198:16]
  wire [7:0] ram0_im__T_19_addr; // @[Butterfly.scala 198:16]
  wire [15:0] ram0_im__T_10_data; // @[Butterfly.scala 198:16]
  wire [7:0] ram0_im__T_10_addr; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_mask; // @[Butterfly.scala 198:16]
  wire  ram0_im__T_10_en; // @[Butterfly.scala 198:16]
  reg [15:0] ram1_re [0:255]; // @[Butterfly.scala 199:16]
  reg [31:0] _RAND_2;
  wire [15:0] ram1_re__T_21_data; // @[Butterfly.scala 199:16]
  wire [7:0] ram1_re__T_21_addr; // @[Butterfly.scala 199:16]
  wire [15:0] ram1_re__T_12_data; // @[Butterfly.scala 199:16]
  wire [7:0] ram1_re__T_12_addr; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_mask; // @[Butterfly.scala 199:16]
  wire  ram1_re__T_12_en; // @[Butterfly.scala 199:16]
  reg [15:0] ram1_im [0:255]; // @[Butterfly.scala 199:16]
  reg [31:0] _RAND_3;
  wire [15:0] ram1_im__T_21_data; // @[Butterfly.scala 199:16]
  wire [7:0] ram1_im__T_21_addr; // @[Butterfly.scala 199:16]
  wire [15:0] ram1_im__T_12_data; // @[Butterfly.scala 199:16]
  wire [7:0] ram1_im__T_12_addr; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_mask; // @[Butterfly.scala 199:16]
  wire  ram1_im__T_12_en; // @[Butterfly.scala 199:16]
  reg [15:0] ram2_re [0:255]; // @[Butterfly.scala 200:16]
  reg [31:0] _RAND_4;
  wire [15:0] ram2_re__T_23_data; // @[Butterfly.scala 200:16]
  wire [7:0] ram2_re__T_23_addr; // @[Butterfly.scala 200:16]
  wire [15:0] ram2_re__T_14_data; // @[Butterfly.scala 200:16]
  wire [7:0] ram2_re__T_14_addr; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_mask; // @[Butterfly.scala 200:16]
  wire  ram2_re__T_14_en; // @[Butterfly.scala 200:16]
  reg [15:0] ram2_im [0:255]; // @[Butterfly.scala 200:16]
  reg [31:0] _RAND_5;
  wire [15:0] ram2_im__T_23_data; // @[Butterfly.scala 200:16]
  wire [7:0] ram2_im__T_23_addr; // @[Butterfly.scala 200:16]
  wire [15:0] ram2_im__T_14_data; // @[Butterfly.scala 200:16]
  wire [7:0] ram2_im__T_14_addr; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_mask; // @[Butterfly.scala 200:16]
  wire  ram2_im__T_14_en; // @[Butterfly.scala 200:16]
  wire [15:0] Butterfly4_io_in1_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in1_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in2_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in2_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in3_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in3_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in4_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_in4_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out1_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out1_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out2_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out2_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out3_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out3_im; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out4_re; // @[Butterfly.scala 139:22]
  wire [15:0] Butterfly4_io_out4_im; // @[Butterfly.scala 139:22]
  wire [15:0] ComplexMul_io_op1_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op1_im; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op2_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_op2_im; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_res_re; // @[Butterfly.scala 65:22]
  wire [15:0] ComplexMul_io_res_im; // @[Butterfly.scala 65:22]
  reg [9:0] in_counter; // @[Butterfly.scala 183:27]
  reg [31:0] _RAND_6;
  reg [9:0] out_counter; // @[Butterfly.scala 184:28]
  reg [31:0] _RAND_7;
  reg  out_flag; // @[Butterfly.scala 185:25]
  reg [31:0] _RAND_8;
  wire  _T = in_counter == 10'h2ff; // @[Butterfly.scala 188:49]
  wire  out_flag_start = io_in_valid & _T; // @[Butterfly.scala 188:36]
  wire [10:0] _T_2 = 11'h400 - 11'h1; // @[Butterfly.scala 189:51]
  wire [10:0] _GEN_2623 = {{1'd0}, out_counter}; // @[Butterfly.scala 189:35]
  wire  out_flag_done = _GEN_2623 == _T_2; // @[Butterfly.scala 189:35]
  wire [9:0] _T_4 = in_counter + 10'h1; // @[Butterfly.scala 191:46]
  wire  _GEN_1 = out_flag_done ? 1'h0 : out_flag; // @[Butterfly.scala 192:65]
  wire  _GEN_2 = out_flag_start | _GEN_1; // @[Butterfly.scala 192:24]
  wire [9:0] _T_7 = out_counter + 10'h1; // @[Butterfly.scala 193:51]
  wire [1:0] in_row = in_counter[9:8]; // @[Butterfly.scala 203:27]
  wire  _T_15 = in_row == 2'h0; // @[Butterfly.scala 227:16]
  wire  _T_16 = in_row == 2'h1; // @[Butterfly.scala 233:22]
  wire  _T_17 = in_row == 2'h2; // @[Butterfly.scala 239:22]
  wire  _GEN_23 = _T_17 ? 1'h0 : 1'h1; // @[Butterfly.scala 239:30]
  wire  _GEN_31 = _T_16 ? 1'h0 : _GEN_23; // @[Butterfly.scala 233:30]
  wire  _GEN_39 = _T_15 | _GEN_31; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_24 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out2_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_33 = _T_16 ? $signed(io_in_im) : $signed(_GEN_24); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_42 = _T_15 ? $signed(io_in_im) : $signed(_GEN_33); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_25 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out2_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_34 = _T_16 ? $signed(io_in_re) : $signed(_GEN_25); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_43 = _T_15 ? $signed(io_in_re) : $signed(_GEN_34); // @[Butterfly.scala 227:24]
  wire  _GEN_30 = _T_16 | _GEN_23; // @[Butterfly.scala 233:30]
  wire  _GEN_40 = _T_15 ? 1'h0 : _GEN_30; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_26 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out3_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_35 = _T_16 ? $signed(io_in_im) : $signed(_GEN_26); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_44 = _T_15 ? $signed(io_in_im) : $signed(_GEN_35); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_27 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out3_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_36 = _T_16 ? $signed(io_in_re) : $signed(_GEN_27); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_45 = _T_15 ? $signed(io_in_re) : $signed(_GEN_36); // @[Butterfly.scala 227:24]
  wire  _GEN_32 = _T_16 ? 1'h0 : 1'h1; // @[Butterfly.scala 233:30]
  wire  _GEN_41 = _T_15 ? 1'h0 : _GEN_32; // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_28 = _T_17 ? $signed(io_in_im) : $signed(Butterfly4_io_out4_im); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_37 = _T_16 ? $signed(io_in_im) : $signed(_GEN_28); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_46 = _T_15 ? $signed(io_in_im) : $signed(_GEN_37); // @[Butterfly.scala 227:24]
  wire [15:0] _GEN_29 = _T_17 ? $signed(io_in_re) : $signed(Butterfly4_io_out4_re); // @[Butterfly.scala 239:30]
  wire [15:0] _GEN_38 = _T_16 ? $signed(io_in_re) : $signed(_GEN_29); // @[Butterfly.scala 233:30]
  wire [15:0] _GEN_47 = _T_15 ? $signed(io_in_re) : $signed(_GEN_38); // @[Butterfly.scala 227:24]
  wire [1:0] out_row = out_counter[9:8]; // @[Butterfly.scala 266:28]
  wire  _T_25 = out_row == 2'h0; // @[Butterfly.scala 270:13]
  wire  _T_26 = out_row == 2'h1; // @[Butterfly.scala 271:19]
  wire  _T_27 = out_row == 2'h2; // @[Butterfly.scala 272:19]
  wire [15:0] ram1_rdata_im = ram1_im__T_21_data; // @[Butterfly.scala 208:23 Butterfly.scala 261:16]
  wire [15:0] ram2_rdata_im = ram2_im__T_23_data; // @[Butterfly.scala 209:23 Butterfly.scala 262:16]
  wire [15:0] _GEN_57 = _T_27 ? $signed(ram1_rdata_im) : $signed(ram2_rdata_im); // @[Butterfly.scala 272:26]
  wire [15:0] ram1_rdata_re = ram1_re__T_21_data; // @[Butterfly.scala 208:23 Butterfly.scala 261:16]
  wire [15:0] ram2_rdata_re = ram2_re__T_23_data; // @[Butterfly.scala 209:23 Butterfly.scala 262:16]
  wire [15:0] _GEN_58 = _T_27 ? $signed(ram1_rdata_re) : $signed(ram2_rdata_re); // @[Butterfly.scala 272:26]
  wire [15:0] ram0_rdata_im = ram0_im__T_19_data; // @[Butterfly.scala 207:23 Butterfly.scala 260:16]
  wire [15:0] _GEN_59 = _T_26 ? $signed(ram0_rdata_im) : $signed(_GEN_57); // @[Butterfly.scala 271:26]
  wire [15:0] ram0_rdata_re = ram0_re__T_19_data; // @[Butterfly.scala 207:23 Butterfly.scala 260:16]
  wire [15:0] _GEN_60 = _T_26 ? $signed(ram0_rdata_re) : $signed(_GEN_58); // @[Butterfly.scala 271:26]
  reg [15:0] _T_29_re; // @[Butterfly.scala 290:24]
  reg [31:0] _RAND_9;
  reg [15:0] _T_29_im; // @[Butterfly.scala 290:24]
  reg [31:0] _RAND_10;
  reg  _T_30; // @[Butterfly.scala 291:24]
  reg [31:0] _RAND_11;
  Butterfly4 Butterfly4 ( // @[Butterfly.scala 139:22]
    .io_in1_re(Butterfly4_io_in1_re),
    .io_in1_im(Butterfly4_io_in1_im),
    .io_in2_re(Butterfly4_io_in2_re),
    .io_in2_im(Butterfly4_io_in2_im),
    .io_in3_re(Butterfly4_io_in3_re),
    .io_in3_im(Butterfly4_io_in3_im),
    .io_in4_re(Butterfly4_io_in4_re),
    .io_in4_im(Butterfly4_io_in4_im),
    .io_out1_re(Butterfly4_io_out1_re),
    .io_out1_im(Butterfly4_io_out1_im),
    .io_out2_re(Butterfly4_io_out2_re),
    .io_out2_im(Butterfly4_io_out2_im),
    .io_out3_re(Butterfly4_io_out3_re),
    .io_out3_im(Butterfly4_io_out3_im),
    .io_out4_re(Butterfly4_io_out4_re),
    .io_out4_im(Butterfly4_io_out4_im)
  );
  ComplexMul ComplexMul ( // @[Butterfly.scala 65:22]
    .io_op1_re(ComplexMul_io_op1_re),
    .io_op1_im(ComplexMul_io_op1_im),
    .io_op2_re(ComplexMul_io_op2_re),
    .io_op2_im(ComplexMul_io_op2_im),
    .io_res_re(ComplexMul_io_res_re),
    .io_res_im(ComplexMul_io_res_im)
  );
  assign ram0_re__T_19_addr = out_counter[7:0];
  assign ram0_re__T_19_data = ram0_re[ram0_re__T_19_addr]; // @[Butterfly.scala 198:16]
  assign ram0_re__T_10_data = io_in_valid ? $signed(_GEN_43) : $signed(io_in_re);
  assign ram0_re__T_10_addr = in_counter[7:0];
  assign ram0_re__T_10_mask = 1'h1;
  assign ram0_re__T_10_en = io_in_valid & _GEN_39;
  assign ram0_im__T_19_addr = out_counter[7:0];
  assign ram0_im__T_19_data = ram0_im[ram0_im__T_19_addr]; // @[Butterfly.scala 198:16]
  assign ram0_im__T_10_data = io_in_valid ? $signed(_GEN_42) : $signed(io_in_im);
  assign ram0_im__T_10_addr = in_counter[7:0];
  assign ram0_im__T_10_mask = 1'h1;
  assign ram0_im__T_10_en = io_in_valid & _GEN_39;
  assign ram1_re__T_21_addr = out_counter[7:0];
  assign ram1_re__T_21_data = ram1_re[ram1_re__T_21_addr]; // @[Butterfly.scala 199:16]
  assign ram1_re__T_12_data = io_in_valid ? $signed(_GEN_45) : $signed(io_in_re);
  assign ram1_re__T_12_addr = in_counter[7:0];
  assign ram1_re__T_12_mask = 1'h1;
  assign ram1_re__T_12_en = io_in_valid & _GEN_40;
  assign ram1_im__T_21_addr = out_counter[7:0];
  assign ram1_im__T_21_data = ram1_im[ram1_im__T_21_addr]; // @[Butterfly.scala 199:16]
  assign ram1_im__T_12_data = io_in_valid ? $signed(_GEN_44) : $signed(io_in_im);
  assign ram1_im__T_12_addr = in_counter[7:0];
  assign ram1_im__T_12_mask = 1'h1;
  assign ram1_im__T_12_en = io_in_valid & _GEN_40;
  assign ram2_re__T_23_addr = out_counter[7:0];
  assign ram2_re__T_23_data = ram2_re[ram2_re__T_23_addr]; // @[Butterfly.scala 200:16]
  assign ram2_re__T_14_data = io_in_valid ? $signed(_GEN_47) : $signed(io_in_re);
  assign ram2_re__T_14_addr = in_counter[7:0];
  assign ram2_re__T_14_mask = 1'h1;
  assign ram2_re__T_14_en = io_in_valid & _GEN_41;
  assign ram2_im__T_23_addr = out_counter[7:0];
  assign ram2_im__T_23_data = ram2_im[ram2_im__T_23_addr]; // @[Butterfly.scala 200:16]
  assign ram2_im__T_14_data = io_in_valid ? $signed(_GEN_46) : $signed(io_in_im);
  assign ram2_im__T_14_addr = in_counter[7:0];
  assign ram2_im__T_14_mask = 1'h1;
  assign ram2_im__T_14_en = io_in_valid & _GEN_41;
  assign io_out_re = _T_29_re; // @[Butterfly.scala 290:14 Butterfly.scala 295:14]
  assign io_out_im = _T_29_im; // @[Butterfly.scala 290:14 Butterfly.scala 295:14]
  assign io_out_valid = _T_30; // @[Butterfly.scala 291:14 Butterfly.scala 296:14]
  assign Butterfly4_io_in1_re = ram0_re__T_19_data; // @[Butterfly.scala 140:17]
  assign Butterfly4_io_in1_im = ram0_im__T_19_data; // @[Butterfly.scala 140:17]
  assign Butterfly4_io_in2_re = ram1_re__T_21_data; // @[Butterfly.scala 141:17]
  assign Butterfly4_io_in2_im = ram1_im__T_21_data; // @[Butterfly.scala 141:17]
  assign Butterfly4_io_in3_re = ram2_re__T_23_data; // @[Butterfly.scala 142:17]
  assign Butterfly4_io_in3_im = ram2_im__T_23_data; // @[Butterfly.scala 142:17]
  assign Butterfly4_io_in4_re = io_in_re; // @[Butterfly.scala 143:17]
  assign Butterfly4_io_in4_im = io_in_im; // @[Butterfly.scala 143:17]
  assign ComplexMul_io_op1_re = _T_25 ? $signed(Butterfly4_io_out1_re) : $signed(_GEN_60); // @[Butterfly.scala 66:17]
  assign ComplexMul_io_op1_im = _T_25 ? $signed(Butterfly4_io_out1_im) : $signed(_GEN_59); // @[Butterfly.scala 66:17]
  assign ComplexMul_io_op2_re = _T_25 ? $signed(Butterfly4_io_out1_re) : $signed(_GEN_60); // @[Butterfly.scala 67:17]
  assign ComplexMul_io_op2_im = _T_25 ? $signed(Butterfly4_io_out1_im) : $signed(_GEN_59); // @[Butterfly.scala 67:17]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    ram0_re[initvar] = _RAND_0[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    ram0_im[initvar] = _RAND_1[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    ram1_re[initvar] = _RAND_2[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    ram1_im[initvar] = _RAND_3[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    ram2_re[initvar] = _RAND_4[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    ram2_im[initvar] = _RAND_5[15:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  in_counter = _RAND_6[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  out_counter = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  out_flag = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_29_re = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_29_im = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_30 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram0_re__T_10_en & ram0_re__T_10_mask) begin
      ram0_re[ram0_re__T_10_addr] <= ram0_re__T_10_data; // @[Butterfly.scala 198:16]
    end
    if(ram0_im__T_10_en & ram0_im__T_10_mask) begin
      ram0_im[ram0_im__T_10_addr] <= ram0_im__T_10_data; // @[Butterfly.scala 198:16]
    end
    if(ram1_re__T_12_en & ram1_re__T_12_mask) begin
      ram1_re[ram1_re__T_12_addr] <= ram1_re__T_12_data; // @[Butterfly.scala 199:16]
    end
    if(ram1_im__T_12_en & ram1_im__T_12_mask) begin
      ram1_im[ram1_im__T_12_addr] <= ram1_im__T_12_data; // @[Butterfly.scala 199:16]
    end
    if(ram2_re__T_14_en & ram2_re__T_14_mask) begin
      ram2_re[ram2_re__T_14_addr] <= ram2_re__T_14_data; // @[Butterfly.scala 200:16]
    end
    if(ram2_im__T_14_en & ram2_im__T_14_mask) begin
      ram2_im[ram2_im__T_14_addr] <= ram2_im__T_14_data; // @[Butterfly.scala 200:16]
    end
    if (reset) begin
      in_counter <= 10'h0;
    end else if (io_in_valid) begin
      in_counter <= _T_4;
    end
    if (reset) begin
      out_counter <= 10'h0;
    end else if (out_flag) begin
      out_counter <= _T_7;
    end
    if (reset) begin
      out_flag <= 1'h0;
    end else begin
      out_flag <= _GEN_2;
    end
    if (_T_25) begin
      _T_29_re <= Butterfly4_io_out1_re;
    end else if (_T_26) begin
      _T_29_re <= ram0_rdata_re;
    end else if (_T_27) begin
      _T_29_re <= ram1_rdata_re;
    end else begin
      _T_29_re <= ram2_rdata_re;
    end
    if (_T_25) begin
      _T_29_im <= Butterfly4_io_out1_im;
    end else if (_T_26) begin
      _T_29_im <= ram0_rdata_im;
    end else if (_T_27) begin
      _T_29_im <= ram1_rdata_im;
    end else begin
      _T_29_im <= ram2_rdata_im;
    end
    _T_30 <= out_flag;
  end
endmodule
module FFT_TOP(
  input         clock,
  input         reset,
  input  [15:0] io_in_re,
  input  [15:0] io_in_im,
  input         io_in_valid,
  output [15:0] io_out_re,
  output [15:0] io_out_im,
  output        io_out_valid
);
  wire  Butterfly4_TOP_clock; // @[Butterfly.scala 314:22]
  wire  Butterfly4_TOP_reset; // @[Butterfly.scala 314:22]
  wire [15:0] Butterfly4_TOP_io_in_re; // @[Butterfly.scala 314:22]
  wire [15:0] Butterfly4_TOP_io_in_im; // @[Butterfly.scala 314:22]
  wire  Butterfly4_TOP_io_in_valid; // @[Butterfly.scala 314:22]
  wire [15:0] Butterfly4_TOP_io_out_re; // @[Butterfly.scala 314:22]
  wire [15:0] Butterfly4_TOP_io_out_im; // @[Butterfly.scala 314:22]
  wire  Butterfly4_TOP_io_out_valid; // @[Butterfly.scala 314:22]
  wire  Butterfly4_TOP_1_clock; // @[Butterfly.scala 324:22]
  wire  Butterfly4_TOP_1_reset; // @[Butterfly.scala 324:22]
  wire [15:0] Butterfly4_TOP_1_io_in_re; // @[Butterfly.scala 324:22]
  wire [15:0] Butterfly4_TOP_1_io_in_im; // @[Butterfly.scala 324:22]
  wire  Butterfly4_TOP_1_io_in_valid; // @[Butterfly.scala 324:22]
  wire [15:0] Butterfly4_TOP_1_io_out_re; // @[Butterfly.scala 324:22]
  wire [15:0] Butterfly4_TOP_1_io_out_im; // @[Butterfly.scala 324:22]
  wire  Butterfly4_TOP_1_io_out_valid; // @[Butterfly.scala 324:22]
  wire  Butterfly4_TOP_2_clock; // @[Butterfly.scala 334:22]
  wire  Butterfly4_TOP_2_reset; // @[Butterfly.scala 334:22]
  wire [15:0] Butterfly4_TOP_2_io_in_re; // @[Butterfly.scala 334:22]
  wire [15:0] Butterfly4_TOP_2_io_in_im; // @[Butterfly.scala 334:22]
  wire  Butterfly4_TOP_2_io_in_valid; // @[Butterfly.scala 334:22]
  wire [15:0] Butterfly4_TOP_2_io_out_re; // @[Butterfly.scala 334:22]
  wire [15:0] Butterfly4_TOP_2_io_out_im; // @[Butterfly.scala 334:22]
  wire  Butterfly4_TOP_2_io_out_valid; // @[Butterfly.scala 334:22]
  wire  Butterfly4_TOP_3_clock; // @[Butterfly.scala 344:22]
  wire  Butterfly4_TOP_3_reset; // @[Butterfly.scala 344:22]
  wire [15:0] Butterfly4_TOP_3_io_in_re; // @[Butterfly.scala 344:22]
  wire [15:0] Butterfly4_TOP_3_io_in_im; // @[Butterfly.scala 344:22]
  wire  Butterfly4_TOP_3_io_in_valid; // @[Butterfly.scala 344:22]
  wire [15:0] Butterfly4_TOP_3_io_out_re; // @[Butterfly.scala 344:22]
  wire [15:0] Butterfly4_TOP_3_io_out_im; // @[Butterfly.scala 344:22]
  wire  Butterfly4_TOP_3_io_out_valid; // @[Butterfly.scala 344:22]
  wire  Butterfly4_TOP_4_clock; // @[Butterfly.scala 353:22]
  wire  Butterfly4_TOP_4_reset; // @[Butterfly.scala 353:22]
  wire [15:0] Butterfly4_TOP_4_io_in_re; // @[Butterfly.scala 353:22]
  wire [15:0] Butterfly4_TOP_4_io_in_im; // @[Butterfly.scala 353:22]
  wire  Butterfly4_TOP_4_io_in_valid; // @[Butterfly.scala 353:22]
  wire [15:0] Butterfly4_TOP_4_io_out_re; // @[Butterfly.scala 353:22]
  wire [15:0] Butterfly4_TOP_4_io_out_im; // @[Butterfly.scala 353:22]
  wire  Butterfly4_TOP_4_io_out_valid; // @[Butterfly.scala 353:22]
  reg [15:0] _T_54_re; // @[FFT.scala 144:27]
  reg [31:0] _RAND_0;
  reg [15:0] _T_54_im; // @[FFT.scala 144:27]
  reg [31:0] _RAND_1;
  reg  _T_55; // @[FFT.scala 145:27]
  reg [31:0] _RAND_2;
  Butterfly4_TOP Butterfly4_TOP ( // @[Butterfly.scala 314:22]
    .clock(Butterfly4_TOP_clock),
    .reset(Butterfly4_TOP_reset),
    .io_in_re(Butterfly4_TOP_io_in_re),
    .io_in_im(Butterfly4_TOP_io_in_im),
    .io_in_valid(Butterfly4_TOP_io_in_valid),
    .io_out_re(Butterfly4_TOP_io_out_re),
    .io_out_im(Butterfly4_TOP_io_out_im),
    .io_out_valid(Butterfly4_TOP_io_out_valid)
  );
  Butterfly4_TOP_1 Butterfly4_TOP_1 ( // @[Butterfly.scala 324:22]
    .clock(Butterfly4_TOP_1_clock),
    .reset(Butterfly4_TOP_1_reset),
    .io_in_re(Butterfly4_TOP_1_io_in_re),
    .io_in_im(Butterfly4_TOP_1_io_in_im),
    .io_in_valid(Butterfly4_TOP_1_io_in_valid),
    .io_out_re(Butterfly4_TOP_1_io_out_re),
    .io_out_im(Butterfly4_TOP_1_io_out_im),
    .io_out_valid(Butterfly4_TOP_1_io_out_valid)
  );
  Butterfly4_TOP_2 Butterfly4_TOP_2 ( // @[Butterfly.scala 334:22]
    .clock(Butterfly4_TOP_2_clock),
    .reset(Butterfly4_TOP_2_reset),
    .io_in_re(Butterfly4_TOP_2_io_in_re),
    .io_in_im(Butterfly4_TOP_2_io_in_im),
    .io_in_valid(Butterfly4_TOP_2_io_in_valid),
    .io_out_re(Butterfly4_TOP_2_io_out_re),
    .io_out_im(Butterfly4_TOP_2_io_out_im),
    .io_out_valid(Butterfly4_TOP_2_io_out_valid)
  );
  Butterfly4_TOP_3 Butterfly4_TOP_3 ( // @[Butterfly.scala 344:22]
    .clock(Butterfly4_TOP_3_clock),
    .reset(Butterfly4_TOP_3_reset),
    .io_in_re(Butterfly4_TOP_3_io_in_re),
    .io_in_im(Butterfly4_TOP_3_io_in_im),
    .io_in_valid(Butterfly4_TOP_3_io_in_valid),
    .io_out_re(Butterfly4_TOP_3_io_out_re),
    .io_out_im(Butterfly4_TOP_3_io_out_im),
    .io_out_valid(Butterfly4_TOP_3_io_out_valid)
  );
  Butterfly4_TOP_4 Butterfly4_TOP_4 ( // @[Butterfly.scala 353:22]
    .clock(Butterfly4_TOP_4_clock),
    .reset(Butterfly4_TOP_4_reset),
    .io_in_re(Butterfly4_TOP_4_io_in_re),
    .io_in_im(Butterfly4_TOP_4_io_in_im),
    .io_in_valid(Butterfly4_TOP_4_io_in_valid),
    .io_out_re(Butterfly4_TOP_4_io_out_re),
    .io_out_im(Butterfly4_TOP_4_io_out_im),
    .io_out_valid(Butterfly4_TOP_4_io_out_valid)
  );
  assign io_out_re = _T_54_re; // @[FFT.scala 144:17]
  assign io_out_im = _T_54_im; // @[FFT.scala 144:17]
  assign io_out_valid = _T_55; // @[FFT.scala 145:17]
  assign Butterfly4_TOP_clock = clock;
  assign Butterfly4_TOP_reset = reset;
  assign Butterfly4_TOP_io_in_re = io_in_re; // @[Butterfly.scala 315:16]
  assign Butterfly4_TOP_io_in_im = io_in_im; // @[Butterfly.scala 315:16]
  assign Butterfly4_TOP_io_in_valid = io_in_valid; // @[Butterfly.scala 316:22]
  assign Butterfly4_TOP_1_clock = clock;
  assign Butterfly4_TOP_1_reset = reset;
  assign Butterfly4_TOP_1_io_in_re = Butterfly4_TOP_io_out_re; // @[Butterfly.scala 325:16]
  assign Butterfly4_TOP_1_io_in_im = Butterfly4_TOP_io_out_im; // @[Butterfly.scala 325:16]
  assign Butterfly4_TOP_1_io_in_valid = Butterfly4_TOP_io_out_valid; // @[Butterfly.scala 326:22]
  assign Butterfly4_TOP_2_clock = clock;
  assign Butterfly4_TOP_2_reset = reset;
  assign Butterfly4_TOP_2_io_in_re = Butterfly4_TOP_1_io_out_re; // @[Butterfly.scala 335:16]
  assign Butterfly4_TOP_2_io_in_im = Butterfly4_TOP_1_io_out_im; // @[Butterfly.scala 335:16]
  assign Butterfly4_TOP_2_io_in_valid = Butterfly4_TOP_1_io_out_valid; // @[Butterfly.scala 336:22]
  assign Butterfly4_TOP_3_clock = clock;
  assign Butterfly4_TOP_3_reset = reset;
  assign Butterfly4_TOP_3_io_in_re = Butterfly4_TOP_2_io_out_re; // @[Butterfly.scala 345:16]
  assign Butterfly4_TOP_3_io_in_im = Butterfly4_TOP_2_io_out_im; // @[Butterfly.scala 345:16]
  assign Butterfly4_TOP_3_io_in_valid = Butterfly4_TOP_2_io_out_valid; // @[Butterfly.scala 346:22]
  assign Butterfly4_TOP_4_clock = clock;
  assign Butterfly4_TOP_4_reset = reset;
  assign Butterfly4_TOP_4_io_in_re = Butterfly4_TOP_3_io_out_re; // @[Butterfly.scala 354:16]
  assign Butterfly4_TOP_4_io_in_im = Butterfly4_TOP_3_io_out_im; // @[Butterfly.scala 354:16]
  assign Butterfly4_TOP_4_io_in_valid = Butterfly4_TOP_3_io_out_valid; // @[Butterfly.scala 355:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_54_re = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_54_im = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_55 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_54_re <= Butterfly4_TOP_4_io_out_re;
    _T_54_im <= Butterfly4_TOP_4_io_out_im;
    _T_55 <= Butterfly4_TOP_4_io_out_valid;
  end
endmodule
