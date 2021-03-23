
module display ( clk, rst_n, lcd_en, lcd_rs, lcd_rw, lcd_db, lcd_rst );
  output [7:0] lcd_db;
  input clk, rst_n;
  output lcd_en, lcd_rs, lcd_rw, lcd_rst;
  wire   \*Logic1* , \*Logic0* , lcd_rst, N8, N9, N10, N11, N13, N14, N17, N18,
         N19, N20, N21, N22, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156;
  wire   [6:1] cnt_lcd;
  assign lcd_rs = \*Logic1* ;
  assign lcd_db[7] = \*Logic0* ;
  assign lcd_rw = \*Logic0* ;
  assign lcd_rst = rst_n;

  DFFRHQ \cnt_lcd_reg[0]  ( .D(n155), .CK(clk), .RN(n154), .Q(lcd_en) );
  DFFRHQ \cnt_lcd_reg[1]  ( .D(N17), .CK(clk), .RN(n154), .Q(cnt_lcd[1]) );
  DFFRHQ \cnt_lcd_reg[2]  ( .D(N18), .CK(clk), .RN(n154), .Q(cnt_lcd[2]) );
  DFFRHQ \cnt_lcd_reg[3]  ( .D(N19), .CK(clk), .RN(n154), .Q(cnt_lcd[3]) );
  DFFRHQ \cnt_lcd_reg[4]  ( .D(N20), .CK(clk), .RN(n154), .Q(cnt_lcd[4]) );
  DFFRHQ \cnt_lcd_reg[5]  ( .D(N21), .CK(clk), .RN(n154), .Q(cnt_lcd[5]) );
  DFFRHQ \cnt_lcd_reg[6]  ( .D(N22), .CK(clk), .RN(n154), .Q(cnt_lcd[6]) );
  DFFRHQ \lcd_db_reg[0]  ( .D(N8), .CK(clk), .RN(n154), .Q(lcd_db[0]) );
  DFFRHQ \lcd_db_reg[2]  ( .D(N10), .CK(clk), .RN(n154), .Q(lcd_db[2]) );
  DFFRHQ \lcd_db_reg[6]  ( .D(N14), .CK(clk), .RN(n154), .Q(lcd_db[6]) );
  DFFRHQ \lcd_db_reg[3]  ( .D(N11), .CK(clk), .RN(n154), .Q(lcd_db[3]) );
  DFFRHQ \lcd_db_reg[5]  ( .D(N13), .CK(clk), .RN(n154), .Q(lcd_db[5]) );
  DFFRHQ \lcd_db_reg[4]  ( .D(n156), .CK(clk), .RN(n154), .Q(lcd_db[4]) );
  DFFRHQ \lcd_db_reg[1]  ( .D(N9), .CK(clk), .RN(n154), .Q(lcd_db[1]) );
  LOGIC_0 U81 ( .LOGIC_0_PIN(\*Logic0* ) );
  AND2 U82 ( .A(cnt_lcd[1]), .B(lcd_en), .Y(n73) );
  AND2 U83 ( .A(cnt_lcd[2]), .B(n73), .Y(n74) );
  AND2 U84 ( .A(cnt_lcd[3]), .B(n74), .Y(n75) );
  AND2 U85 ( .A(cnt_lcd[4]), .B(n75), .Y(n76) );
  AND2 U86 ( .A(cnt_lcd[5]), .B(n76), .Y(n77) );
  INV U87 ( .A(n92), .Y(n78) );
  LOGIC_1 U88 ( .LOGIC_1_PIN(\*Logic1* ) );
  XOR2 U89 ( .A(cnt_lcd[1]), .B(lcd_en), .Y(N17) );
  XOR2 U90 ( .A(cnt_lcd[2]), .B(n73), .Y(N18) );
  XOR2 U91 ( .A(cnt_lcd[3]), .B(n74), .Y(N19) );
  XOR2 U92 ( .A(cnt_lcd[4]), .B(n75), .Y(N20) );
  XOR2 U93 ( .A(cnt_lcd[5]), .B(n76), .Y(N21) );
  XOR2 U94 ( .A(cnt_lcd[6]), .B(n77), .Y(N22) );
  INV U95 ( .A(lcd_rst), .Y(n154) );
  NAND3B U96 ( .AN(n79), .B(n80), .C(n81), .Y(n156) );
  AOI32 U97 ( .A0(n82), .A1(n83), .A2(cnt_lcd[3]), .B0(n84), .B1(cnt_lcd[2]), 
        .Y(n81) );
  MX2 U98 ( .A(n85), .B(n86), .S0(cnt_lcd[1]), .Y(n79) );
  NOR2B U99 ( .AN(n87), .B(n88), .Y(n85) );
  OAI221 U100 ( .A0(n89), .A1(n90), .B0(n91), .B1(n92), .C0(n93), .Y(N9) );
  AOI22 U101 ( .A0(cnt_lcd[3]), .A1(n94), .B0(n95), .B1(n96), .Y(n93) );
  AOI2BB1 U102 ( .A0N(n97), .A1N(cnt_lcd[4]), .B0(n98), .Y(n91) );
  AOI2BB1 U103 ( .A0N(cnt_lcd[3]), .A1N(n99), .B0(n100), .Y(n97) );
  NOR2B U104 ( .AN(n88), .B(n101), .Y(n89) );
  NAND2B U105 ( .AN(n102), .B(n103), .Y(N8) );
  AOI222 U106 ( .A0(n101), .A1(cnt_lcd[4]), .B0(n104), .B1(n105), .C0(n106), 
        .C1(n107), .Y(n103) );
  OAI211 U107 ( .A0(n108), .A1(n109), .B0(n110), .C0(n111), .Y(n107) );
  MX2 U108 ( .A(cnt_lcd[1]), .B(n112), .S0(cnt_lcd[4]), .Y(n111) );
  OAI221 U109 ( .A0(cnt_lcd[1]), .A1(n113), .B0(n114), .B1(n90), .C0(n115), 
        .Y(n102) );
  NOR2B U110 ( .AN(n116), .B(n98), .Y(n113) );
  OAI32 U111 ( .A0(n117), .A1(n118), .A2(n108), .B0(n119), .B1(n120), .Y(n98)
         );
  OAI211 U112 ( .A0(n121), .A1(n122), .B0(n123), .C0(n124), .Y(N14) );
  AOI222 U113 ( .A0(n95), .A1(n106), .B0(n125), .B1(n126), .C0(n104), .C1(n127), .Y(n124) );
  AOI31 U114 ( .A0(cnt_lcd[1]), .A1(n128), .A2(n87), .B0(n129), .Y(n123) );
  NOR2B U115 ( .AN(n119), .B(n101), .Y(n121) );
  NOR2B U116 ( .AN(n112), .B(n118), .Y(n101) );
  OAI21 U117 ( .A0(cnt_lcd[4]), .A1(n130), .B0(n131), .Y(N13) );
  INV U118 ( .A(n132), .Y(n131) );
  MX2 U119 ( .A(n133), .B(n86), .S0(cnt_lcd[1]), .Y(n132) );
  INV U120 ( .A(n134), .Y(n86) );
  AOI22 U121 ( .A0(n109), .A1(n94), .B0(n125), .B1(n100), .Y(n134) );
  NOR2B U122 ( .AN(n126), .B(n117), .Y(n133) );
  AOI21 U123 ( .A0(n135), .A1(n109), .B0(n82), .Y(n130) );
  OAI2BB1 U124 ( .A0N(cnt_lcd[1]), .A1N(n126), .B0(n119), .Y(n135) );
  OAI211 U125 ( .A0(n136), .A1(n99), .B0(n137), .C0(n138), .Y(N11) );
  AOI2BB1 U126 ( .A0N(n88), .A1N(n90), .B0(n139), .Y(n138) );
  MX2 U127 ( .A(n140), .B(n100), .S0(cnt_lcd[1]), .Y(n139) );
  NOR2B U128 ( .AN(n104), .B(n118), .Y(n140) );
  NOR2B U129 ( .AN(n125), .B(cnt_lcd[2]), .Y(n104) );
  NAND2B U130 ( .AN(n87), .B(n120), .Y(n90) );
  AOI32 U131 ( .A0(n82), .A1(n108), .A2(n87), .B0(cnt_lcd[3]), .B1(n141), .Y(
        n137) );
  OAI2BB1 U132 ( .A0N(n78), .A1N(n128), .B0(n142), .Y(n141) );
  INV U133 ( .A(n84), .Y(n142) );
  NOR2B U134 ( .AN(cnt_lcd[4]), .B(n114), .Y(n84) );
  INV U135 ( .A(n143), .Y(n114) );
  OAI21 U136 ( .A0(n118), .A1(n108), .B0(n88), .Y(n128) );
  NOR2B U137 ( .AN(n110), .B(n144), .Y(n136) );
  MX2 U138 ( .A(n145), .B(n146), .S0(cnt_lcd[1]), .Y(n144) );
  NOR2B U139 ( .AN(cnt_lcd[3]), .B(n122), .Y(n145) );
  NAND2B U140 ( .AN(n83), .B(n109), .Y(n110) );
  INV U141 ( .A(n146), .Y(n83) );
  NOR2B U142 ( .AN(n122), .B(cnt_lcd[2]), .Y(n146) );
  NAND2B U143 ( .AN(n147), .B(n148), .Y(N10) );
  AOI221 U144 ( .A0(n82), .A1(n122), .B0(n100), .B1(n87), .C0(n149), .Y(n148)
         );
  OAI21 U145 ( .A0(n150), .A1(n99), .B0(n115), .Y(n149) );
  NAND3 U146 ( .A(n78), .B(n94), .C(n122), .Y(n115) );
  NOR3B U147 ( .AN(n127), .B(n108), .C(cnt_lcd[5]), .Y(n94) );
  INV U148 ( .A(n105), .Y(n99) );
  AOI2BB2 U149 ( .B0(n112), .B1(cnt_lcd[4]), .A0N(n92), .A1N(n120), .Y(n150)
         );
  INV U150 ( .A(n125), .Y(n120) );
  NOR2B U151 ( .AN(n106), .B(cnt_lcd[2]), .Y(n100) );
  INV U152 ( .A(cnt_lcd[4]), .Y(n122) );
  OAI211 U153 ( .A0(n88), .A1(n151), .B0(n80), .C0(n152), .Y(n147) );
  MX2 U154 ( .A(n116), .B(n153), .S0(cnt_lcd[2]), .Y(n152) );
  AOI2BB1 U155 ( .A0N(n119), .A1N(n117), .B0(n82), .Y(n153) );
  NOR2B U156 ( .AN(n92), .B(n119), .Y(n82) );
  INV U157 ( .A(n129), .Y(n116) );
  NOR2B U158 ( .AN(n105), .B(n117), .Y(n129) );
  INV U159 ( .A(n87), .Y(n117) );
  NOR2B U160 ( .AN(cnt_lcd[3]), .B(cnt_lcd[4]), .Y(n87) );
  NOR2B U161 ( .AN(n127), .B(cnt_lcd[5]), .Y(n105) );
  AOI33 U162 ( .A0(n125), .A1(n92), .A2(n126), .B0(n143), .B1(n109), .B2(n108), 
        .Y(n80) );
  NOR2B U163 ( .AN(n78), .B(n119), .Y(n143) );
  INV U164 ( .A(n96), .Y(n119) );
  NOR2B U165 ( .AN(cnt_lcd[5]), .B(n118), .Y(n96) );
  INV U166 ( .A(n127), .Y(n118) );
  NOR2B U167 ( .AN(cnt_lcd[6]), .B(n155), .Y(n127) );
  INV U168 ( .A(lcd_en), .Y(n155) );
  NOR2B U169 ( .AN(n106), .B(n108), .Y(n126) );
  INV U170 ( .A(cnt_lcd[1]), .Y(n92) );
  NOR2B U171 ( .AN(cnt_lcd[4]), .B(cnt_lcd[3]), .Y(n125) );
  INV U172 ( .A(n95), .Y(n151) );
  NOR2B U173 ( .AN(n112), .B(n109), .Y(n95) );
  INV U174 ( .A(cnt_lcd[3]), .Y(n109) );
  NOR2B U175 ( .AN(n108), .B(n78), .Y(n112) );
  INV U176 ( .A(cnt_lcd[2]), .Y(n108) );
  INV U177 ( .A(n106), .Y(n88) );
  NOR3B U178 ( .AN(lcd_en), .B(cnt_lcd[5]), .C(cnt_lcd[6]), .Y(n106) );
endmodule

