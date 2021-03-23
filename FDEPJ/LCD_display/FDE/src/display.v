
module VeriInstrument_ex ( clk, rst_n, lcd_en, lcd_rs, lcd_rw, lcd_db, lcd_rst
 );
  output [7:0] lcd_db;
  input clk, rst_n;
  output lcd_en, lcd_rs, lcd_rw, lcd_rst;
  wire   \*Logic1* , \*Logic0* , lcd_rst, N8, N9, N10, N11, N12, N13, N14, N17,
         N18, N19, N20, N21, N22, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165;
  wire   [6:1] cnt_lcd;
  assign lcd_rs = \*Logic1* ;
  assign lcd_db[7] = \*Logic0* ;
  assign lcd_rw = \*Logic0* ;
  assign lcd_rst = rst_n;

  DFFRHQ \cnt_lcd_reg[0]  ( .D(n165), .CK(clk), .RN(n164), .Q(lcd_en) );
  DFFRHQ \cnt_lcd_reg[1]  ( .D(N17), .CK(clk), .RN(n164), .Q(cnt_lcd[1]) );
  DFFRHQ \cnt_lcd_reg[2]  ( .D(N18), .CK(clk), .RN(n164), .Q(cnt_lcd[2]) );
  DFFRHQ \cnt_lcd_reg[3]  ( .D(N19), .CK(clk), .RN(n164), .Q(cnt_lcd[3]) );
  DFFRHQ \cnt_lcd_reg[4]  ( .D(N20), .CK(clk), .RN(n164), .Q(cnt_lcd[4]) );
  DFFRHQ \cnt_lcd_reg[5]  ( .D(N21), .CK(clk), .RN(n164), .Q(cnt_lcd[5]) );
  DFFRHQ \cnt_lcd_reg[6]  ( .D(N22), .CK(clk), .RN(n164), .Q(cnt_lcd[6]) );
  DFFRHQ \lcd_db_reg[1]  ( .D(N9), .CK(clk), .RN(n164), .Q(lcd_db[1]) );
  DFFRHQ \lcd_db_reg[0]  ( .D(N8), .CK(clk), .RN(n164), .Q(lcd_db[0]) );
  DFFRHQ \lcd_db_reg[6]  ( .D(N14), .CK(clk), .RN(n164), .Q(lcd_db[6]) );
  DFFRHQ \lcd_db_reg[3]  ( .D(N11), .CK(clk), .RN(n164), .Q(lcd_db[3]) );
  DFFRHQ \lcd_db_reg[2]  ( .D(N10), .CK(clk), .RN(n164), .Q(lcd_db[2]) );
  DFFRHQ \lcd_db_reg[5]  ( .D(N13), .CK(clk), .RN(n164), .Q(lcd_db[5]) );
  DFFRHQ \lcd_db_reg[4]  ( .D(N12), .CK(clk), .RN(n164), .Q(lcd_db[4]) );
  LOGIC_0 U91 ( .LOGIC_0_PIN(\*Logic0* ) );
  INV U92 ( .A(cnt_lcd[1]), .Y(n81) );
  INV U93 ( .A(n81), .Y(n82) );
  INV U94 ( .A(cnt_lcd[4]), .Y(n83) );
  INV U95 ( .A(n83), .Y(n84) );
  AND2 U96 ( .A(n82), .B(lcd_en), .Y(n85) );
  AND2 U97 ( .A(cnt_lcd[2]), .B(n85), .Y(n86) );
  AND2 U98 ( .A(cnt_lcd[3]), .B(n86), .Y(n87) );
  AND2 U99 ( .A(n84), .B(n87), .Y(n88) );
  AND2 U100 ( .A(cnt_lcd[5]), .B(n88), .Y(n89) );
  LOGIC_1 U101 ( .LOGIC_1_PIN(\*Logic1* ) );
  XOR2 U102 ( .A(n82), .B(lcd_en), .Y(N17) );
  XOR2 U103 ( .A(cnt_lcd[2]), .B(n85), .Y(N18) );
  XOR2 U104 ( .A(cnt_lcd[3]), .B(n86), .Y(N19) );
  XOR2 U105 ( .A(n84), .B(n87), .Y(N20) );
  XOR2 U106 ( .A(cnt_lcd[5]), .B(n88), .Y(N21) );
  XOR2 U107 ( .A(cnt_lcd[6]), .B(n89), .Y(N22) );
  INV U108 ( .A(lcd_rst), .Y(n164) );
  OAI211 U109 ( .A0(n90), .A1(n81), .B0(n91), .C0(n92), .Y(N9) );
  AOI22 U110 ( .A0(cnt_lcd[3]), .A1(n93), .B0(n94), .B1(n95), .Y(n92) );
  AOI2BB2 U111 ( .B0(n96), .B1(n97), .A0N(n98), .A1N(n99), .Y(n91) );
  NOR2 U112 ( .A(n100), .B(n101), .Y(n99) );
  NOR2B U113 ( .AN(n102), .B(cnt_lcd[2]), .Y(n97) );
  AOI22 U114 ( .A0(n103), .A1(n104), .B0(n105), .B1(n83), .Y(n90) );
  INV U115 ( .A(n106), .Y(N8) );
  NOR4B U116 ( .AN(n107), .B(n108), .C(n109), .D(n110), .Y(n106) );
  OAI2BB2 U117 ( .B0(n111), .B1(n112), .A0N(n84), .A1N(n101), .Y(n110) );
  NOR2B U118 ( .AN(n113), .B(cnt_lcd[2]), .Y(n101) );
  NOR2 U119 ( .A(n114), .B(n115), .Y(n111) );
  XNOR2 U120 ( .A(n84), .B(n82), .Y(n115) );
  XOR2 U121 ( .A(cnt_lcd[2]), .B(n116), .Y(n114) );
  MX2 U122 ( .A(n117), .B(n118), .S0(n82), .Y(n109) );
  NOR2 U123 ( .A(n98), .B(n119), .Y(n118) );
  AOI22 U124 ( .A0(n113), .A1(n104), .B0(n120), .B1(n121), .Y(n107) );
  OAI2BB2 U125 ( .B0(n122), .B1(n121), .A0N(cnt_lcd[5]), .A1N(n123), .Y(n104)
         );
  OAI211 U126 ( .A0(n124), .A1(n125), .B0(n126), .C0(n127), .Y(N14) );
  AOI33 U127 ( .A0(n128), .A1(n129), .A2(n82), .B0(n103), .B1(n130), .B2(n84), 
        .Y(n127) );
  NOR2 U128 ( .A(cnt_lcd[2]), .B(n131), .Y(n130) );
  NOR3 U129 ( .A(n117), .B(n132), .C(n133), .Y(n126) );
  NAND2B U130 ( .AN(n134), .B(n135), .Y(N13) );
  OAI31 U131 ( .A0(n84), .A1(n131), .A2(n119), .B0(n136), .Y(n134) );
  OAI211 U132 ( .A0(n95), .A1(n137), .B0(cnt_lcd[2]), .C0(n100), .Y(n136) );
  INV U133 ( .A(n138), .Y(n137) );
  NOR2B U134 ( .AN(n116), .B(n81), .Y(n95) );
  OAI211 U135 ( .A0(n112), .A1(n138), .B0(n139), .C0(n140), .Y(N12) );
  NOR2B U136 ( .AN(n135), .B(n141), .Y(n139) );
  OAI31 U137 ( .A0(n119), .A1(n121), .A2(n125), .B0(n142), .Y(n141) );
  OAI21 U138 ( .A0(n102), .A1(n143), .B0(n132), .Y(n142) );
  NOR2 U139 ( .A(n121), .B(n81), .Y(n143) );
  OAI211 U140 ( .A0(n93), .A1(n144), .B0(n82), .C0(n145), .Y(n135) );
  INV U141 ( .A(cnt_lcd[3]), .Y(n145) );
  NOR2B U142 ( .AN(n84), .B(n124), .Y(n144) );
  INV U143 ( .A(n105), .Y(n124) );
  NOR2B U144 ( .AN(n100), .B(cnt_lcd[2]), .Y(n105) );
  OAI211 U145 ( .A0(cnt_lcd[2]), .A1(n146), .B0(n147), .C0(n148), .Y(N11) );
  OAI21 U146 ( .A0(n132), .A1(n128), .B0(n131), .Y(n148) );
  NOR2B U147 ( .AN(cnt_lcd[3]), .B(n81), .Y(n131) );
  OAI21 U148 ( .A0(n121), .A1(n149), .B0(n112), .Y(n128) );
  NOR2B U149 ( .AN(n84), .B(n119), .Y(n132) );
  AOI2BB2 U150 ( .B0(n94), .B1(n150), .A0N(n98), .A1N(n112), .Y(n147) );
  AOI21 U151 ( .A0(cnt_lcd[3]), .A1(n84), .B0(n116), .Y(n98) );
  NOR2 U152 ( .A(n84), .B(cnt_lcd[3]), .Y(n116) );
  NOR2B U153 ( .AN(n84), .B(n125), .Y(n150) );
  NOR2B U154 ( .AN(n151), .B(n152), .Y(n146) );
  NOR2 U155 ( .A(n119), .B(n138), .Y(n152) );
  NAND2B U156 ( .AN(n82), .B(n129), .Y(n138) );
  AOI222 U157 ( .A0(n100), .A1(n82), .B0(n123), .B1(n113), .C0(n94), .C1(n153), 
        .Y(n151) );
  NOR2 U158 ( .A(n84), .B(n102), .Y(n153) );
  NOR2B U159 ( .AN(n103), .B(n82), .Y(n113) );
  OAI211 U160 ( .A0(cnt_lcd[2]), .A1(n154), .B0(n140), .C0(n155), .Y(N10) );
  NOR2B U161 ( .AN(n156), .B(n108), .Y(n155) );
  NOR3B U162 ( .AN(n93), .B(n84), .C(n81), .Y(n108) );
  NOR2B U163 ( .AN(n94), .B(n121), .Y(n93) );
  AOI22 U164 ( .A0(n82), .A1(n120), .B0(n96), .B1(n157), .Y(n156) );
  OAI22 U165 ( .A0(n84), .A1(n82), .B0(n158), .B1(n121), .Y(n157) );
  NOR2 U166 ( .A(n129), .B(n81), .Y(n158) );
  INV U167 ( .A(n122), .Y(n129) );
  NOR2B U168 ( .AN(n123), .B(n159), .Y(n120) );
  INV U169 ( .A(n94), .Y(n159) );
  INV U170 ( .A(n160), .Y(n140) );
  MX2 U171 ( .A(n133), .B(n161), .S0(n82), .Y(n160) );
  NOR3 U172 ( .A(cnt_lcd[2]), .B(cnt_lcd[3]), .C(n119), .Y(n161) );
  INV U173 ( .A(n96), .Y(n119) );
  NOR2B U174 ( .AN(cnt_lcd[5]), .B(n149), .Y(n96) );
  INV U175 ( .A(n103), .Y(n149) );
  NOR3B U176 ( .AN(n123), .B(n112), .C(n121), .Y(n133) );
  INV U177 ( .A(cnt_lcd[2]), .Y(n121) );
  NOR2B U178 ( .AN(n84), .B(cnt_lcd[3]), .Y(n123) );
  AOI211 U179 ( .A0(n94), .A1(n162), .B0(n163), .C0(n117), .Y(n154) );
  NOR2B U180 ( .AN(n94), .B(n122), .Y(n117) );
  AOI21 U181 ( .A0(n122), .A1(n125), .B0(n112), .Y(n163) );
  INV U182 ( .A(n100), .Y(n112) );
  NOR3 U183 ( .A(cnt_lcd[6]), .B(cnt_lcd[5]), .C(n165), .Y(n100) );
  INV U184 ( .A(n102), .Y(n125) );
  NOR2B U185 ( .AN(cnt_lcd[3]), .B(n82), .Y(n102) );
  NAND2B U186 ( .AN(n84), .B(cnt_lcd[3]), .Y(n122) );
  NOR2B U187 ( .AN(n84), .B(n82), .Y(n162) );
  NOR2B U188 ( .AN(n103), .B(cnt_lcd[5]), .Y(n94) );
  NOR2B U189 ( .AN(cnt_lcd[6]), .B(n165), .Y(n103) );
  INV U190 ( .A(lcd_en), .Y(n165) );
endmodule

