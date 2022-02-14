// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Fri Feb 11 18:06:22 2022
//
// Verilog Description of module top
//

module top (reset_n, DCK, D1, D0, LPCLK, LP1, LP0, PIXCLK, VSYNC, 
            HSYNC, DE, PIXDATA) /* synthesis syn_module_defined=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(51[8:11])
    input reset_n;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(61[29:36])
    output DCK;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(63[29:32])
    output D1;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(77[25:27])
    output D0;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(78[25:27])
    output [1:0]LPCLK;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(84[25:30])
    output [1:0]LP1;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(93[25:28])
    output [1:0]LP0;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(96[25:28])
    input PIXCLK;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(99[29:35])
    input VSYNC;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(100[29:34])
    input HSYNC;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(101[29:34])
    input DE;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(102[29:31])
    input [23:0]PIXDATA;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(103[29:36])
    
    wire PIXCLK_c /* synthesis SET_AS_NETWORK=PIXCLK_c, is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(99[29:35])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[21:26])
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[28:33])
    wire byte_clk /* synthesis SET_AS_NETWORK=byte_clk, is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[35:43])
    
    wire GND_net, VCC_net, reset_n_c;
    wire [7:0]byte_D1;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(105[35:42])
    wire [7:0]byte_D0;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(105[44:51])
    wire [7:0]byte_D1_out;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(106[43:54])
    wire [7:0]byte_D0_out;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(106[56:67])
    wire [15:0]word_cnt;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(107[18:26])
    wire [1:0]lp_clk;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(108[17:23])
    wire [1:0]lp_data;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(109[17:24])
    wire [23:0]w_pixdata;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(110[28:37])
    
    wire done_sim, w_vsync, w_hsync, hs_en, hsxx_clk_en, dcs_data_en, 
        dcs_escape_en, dcs_stop_en, Lp, Ln, n18, n17, reset_n_N_15, 
        n966, n3900, n1496, n3899, n3897, n3896, n3894, n3893, 
        n3891, n3890, n3888, n3887, n3885, n3884, n3882, n1448, 
        n3881, n3879, n3233, n3878, n3876, n3875, n3873, n3872, 
        n2458, byte_clk_enable_16, n6, n3725, n3992, byte_clk_enable_15, 
        n747, n746, n745, n744, n743, n742, n741, n740, n739, 
        n738, n737, n736, n735, n734, n733, n732, n731, n730, 
        n729, n728, n727, n726, n725, n724, n723, n722, n721, 
        n720, n719, n718, n717, n716, n713, n712, n694, n693, 
        n692, n691, n690, n689, n688, n687, n686, n685, n684, 
        n683, n682, n681, n680, n679, n678, n677, n676, n675, 
        n674, n673, n672, n671, n670, n669, n668, n667, n666, 
        n665, n664, n663, n660, n659, n11, n3983, n3981, byte_clk_enable_59, 
        byte_clk_enable_60, n601, n600, n599, n598, n597, n586, 
        n585, n584, n583, n582, n581;
    wire [15:0]hs_en_high_cnt;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(103[12:26])
    
    wire n3976;
    wire [31:0]hold_data_0__31__N_41;
    
    wire hs_extended_15__N_153, hs_en_high_cnt_15__N_188, hs_clk, hs_D1, 
        hs_D0;
    wire [15:0]wait_cnt;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(63[16:24])
    wire [10:0]byte_cnt;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(65[16:24])
    wire [7:0]data_7__N_260;
    wire [31:0]oneh_data;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(62[18:27])
    
    wire q_enable, q_escape_en, n3969, n30, n28, n26, n3290, n3927, 
        n3926, n3924, n3923, n3921, n3920, n3918, n3917, n3915, 
        n3914, n3912, n3911, n22;
    wire [1:0]LP0_1__N_248;
    wire [1:0]LP1_1__N_251;
    
    VHI i2 (.Z(VCC_net));
    LUT4 n681_bdd_3_lut_3538 (.A(n597), .B(n682), .C(n735), .Z(n3899)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n681_bdd_3_lut_3538.init = 16'he4e4;
    LUT4 n681_bdd_3_lut (.A(n681), .B(n597), .C(n734), .Z(n3900)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n681_bdd_3_lut.init = 16'he2e2;
    LUT4 n665_bdd_3_lut_3514 (.A(n597), .B(n666), .C(n719), .Z(n3875)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n665_bdd_3_lut_3514.init = 16'he4e4;
    LUT4 i2097_3_lut_4_lut (.A(n584), .B(n3992), .C(n11), .D(n583), 
         .Z(n599)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i2097_3_lut_4_lut.init = 16'h7080;
    LUT4 n683_bdd_3_lut (.A(n683), .B(n597), .C(n736), .Z(n3912)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n683_bdd_3_lut.init = 16'he2e2;
    FD1S3AX \hold_data_0[[0__3580_reg_i0  (.D(n3981), .CK(byte_clk), .Q(n586));
    defparam \hold_data_0[[0__3580_reg_i0 .GSR = "DISABLED";
    LUT4 n685_bdd_3_lut_3547 (.A(n597), .B(n686), .C(n739), .Z(n3914)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n685_bdd_3_lut_3547.init = 16'he4e4;
    LUT4 n683_bdd_3_lut_3544 (.A(n597), .B(n684), .C(n737), .Z(n3911)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n683_bdd_3_lut_3544.init = 16'he4e4;
    LUT4 n685_bdd_3_lut (.A(n685), .B(n597), .C(n738), .Z(n3915)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n685_bdd_3_lut.init = 16'he2e2;
    PFUMX i3518 (.BLUT(n3879), .ALUT(n3878), .C0(n598), .Z(byte_D0_out[2]));
    LUT4 n669_bdd_3_lut (.A(n669), .B(n597), .C(n722), .Z(n3882)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n669_bdd_3_lut.init = 16'he2e2;
    LUT4 n687_bdd_3_lut_3550 (.A(n597), .B(n688), .C(n741), .Z(n3917)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n687_bdd_3_lut_3550.init = 16'he4e4;
    LUT4 n687_bdd_3_lut (.A(n687), .B(n597), .C(n740), .Z(n3918)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n687_bdd_3_lut.init = 16'he2e2;
    LUT4 i648_1_lut_rep_42 (.A(n586), .Z(n3981)) /* synthesis lut_function=(!(A)) */ ;
    defparam i648_1_lut_rep_42.init = 16'h5555;
    IB PIXCLK_pad (.I(PIXCLK), .O(PIXCLK_c));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(99[29:35])
    IB reset_n_pad (.I(reset_n), .O(reset_n_c));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(61[29:36])
    OBZ LP0_pad_0 (.I(LP0_1__N_248[0]), .T(GND_net), .O(LP0[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/io_controller_tx.v(114[13:16])
    OBZ LP0_pad_1 (.I(LP0_1__N_248[1]), .T(GND_net), .O(LP0[1]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/io_controller_tx.v(114[13:16])
    OBZ LP1_pad_0 (.I(lp_data[0]), .T(GND_net), .O(LP1[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/io_controller_tx.v(116[13:16])
    OBZ LP1_pad_1 (.I(LP1_1__N_251[1]), .T(GND_net), .O(LP1[1]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/io_controller_tx.v(116[13:16])
    LUT4 i2096_3_lut_4_lut (.A(n583), .B(n3976), .C(n11), .D(n582), 
         .Z(n598)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i2096_3_lut_4_lut.init = 16'h7080;
    PFUMX i3560 (.BLUT(n3927), .ALUT(n3926), .C0(n598), .Z(byte_D1_out[7]));
    OBZ LPCLK_pad_0 (.I(lp_clk[0]), .T(GND_net), .O(LPCLK[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/io_controller_tx.v(112[13:18])
    OBZ LPCLK_pad_1 (.I(lp_clk[1]), .T(GND_net), .O(LPCLK[1]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/io_controller_tx.v(112[13:18])
    OBZ D0_pad (.I(hs_D0), .T(n966), .O(D0));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/io_controller_tx.v(102[13:15])
    LUT4 i1_2_lut_2_lut (.A(n586), .B(n583), .Z(n6)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 n665_bdd_3_lut (.A(n665), .B(n597), .C(n718), .Z(n3876)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n665_bdd_3_lut.init = 16'he2e2;
    PFUMX i3557 (.BLUT(n3924), .ALUT(n3923), .C0(n598), .Z(byte_D1_out[6]));
    LUT4 i3260_2_lut (.A(n581), .B(n582), .Z(n713)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3260_2_lut.init = 16'h8888;
    LUT4 i15_2_lut (.A(n586), .B(n585), .Z(n601)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i4_4_lut (.A(n713), .B(n584), .C(n6), .D(n585), .Z(n11)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i4_4_lut.init = 16'hf7ff;
    LUT4 n689_bdd_3_lut_3553 (.A(n597), .B(n690), .C(n743), .Z(n3920)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n689_bdd_3_lut_3553.init = 16'he4e4;
    LUT4 i419_2_lut (.A(n582), .B(n581), .Z(n660)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i419_2_lut.init = 16'h2222;
    LUT4 i424_2_lut (.A(n582), .B(n581), .Z(n712)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i424_2_lut.init = 16'h4444;
    LUT4 i3437_2_lut (.A(n582), .B(n581), .Z(n659)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i3437_2_lut.init = 16'h1111;
    LUT4 n689_bdd_3_lut (.A(n689), .B(n597), .C(n742), .Z(n3921)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n689_bdd_3_lut.init = 16'he2e2;
    LUT4 n667_bdd_3_lut_3517 (.A(n597), .B(n668), .C(n721), .Z(n3878)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n667_bdd_3_lut_3517.init = 16'he4e4;
    LUT4 n671_bdd_3_lut_3523 (.A(n597), .B(n672), .C(n725), .Z(n3884)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n671_bdd_3_lut_3523.init = 16'he4e4;
    PFUMX i3554 (.BLUT(n3921), .ALUT(n3920), .C0(n598), .Z(byte_D1_out[5]));
    LUT4 n671_bdd_3_lut (.A(n671), .B(n597), .C(n724), .Z(n3885)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n671_bdd_3_lut.init = 16'he2e2;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i3515 (.BLUT(n3876), .ALUT(n3875), .C0(n598), .Z(byte_D0_out[1]));
    LUT4 n663_bdd_3_lut (.A(n663), .B(n597), .C(n716), .Z(n3873)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n663_bdd_3_lut.init = 16'he2e2;
    LUT4 n673_bdd_3_lut_3526 (.A(n597), .B(n674), .C(n727), .Z(n3887)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n673_bdd_3_lut_3526.init = 16'he4e4;
    LUT4 n693_bdd_3_lut_3556 (.A(n597), .B(n694), .C(n747), .Z(n3923)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n693_bdd_3_lut_3556.init = 16'he4e4;
    PFUMX i3551 (.BLUT(n3918), .ALUT(n3917), .C0(n598), .Z(byte_D1_out[4]));
    LUT4 n693_bdd_3_lut (.A(n693), .B(n597), .C(n746), .Z(n3924)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n693_bdd_3_lut.init = 16'he2e2;
    LUT4 n673_bdd_3_lut (.A(n673), .B(n597), .C(n726), .Z(n3888)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n673_bdd_3_lut.init = 16'he2e2;
    LUT4 n663_bdd_3_lut_3511 (.A(n597), .B(n664), .C(n717), .Z(n3872)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n663_bdd_3_lut_3511.init = 16'he4e4;
    LUT4 i2095_4_lut (.A(n581), .B(n11), .C(n582), .D(n3969), .Z(n597)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam i2095_4_lut.init = 16'h4888;
    LUT4 n675_bdd_3_lut_3529 (.A(n597), .B(n676), .C(n729), .Z(n3890)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n675_bdd_3_lut_3529.init = 16'he4e4;
    LUT4 n675_bdd_3_lut (.A(n675), .B(n597), .C(n728), .Z(n3891)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n675_bdd_3_lut.init = 16'he2e2;
    LUT4 n691_bdd_3_lut_3559 (.A(n597), .B(n692), .C(n745), .Z(n3926)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n691_bdd_3_lut_3559.init = 16'he4e4;
    LUT4 i3429_2_lut (.A(n3725), .B(hs_en_high_cnt_15__N_188), .Z(byte_clk_enable_60)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3429_2_lut.init = 16'heeee;
    PFUMX i3548 (.BLUT(n3915), .ALUT(n3914), .C0(n598), .Z(byte_D1_out[3]));
    LUT4 i3427_4_lut (.A(n17), .B(n30), .C(n26), .D(n18), .Z(n3725)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i3427_4_lut.init = 16'h7fff;
    LUT4 n677_bdd_3_lut_3532 (.A(n597), .B(n678), .C(n731), .Z(n3893)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n677_bdd_3_lut_3532.init = 16'he4e4;
    LUT4 i578_2_lut_rep_53 (.A(n585), .B(n586), .Z(n3992)) /* synthesis lut_function=(A (B)) */ ;
    defparam i578_2_lut_rep_53.init = 16'h8888;
    PFUMX i3545 (.BLUT(n3912), .ALUT(n3911), .C0(n598), .Z(byte_D1_out[2]));
    LUT4 n691_bdd_3_lut (.A(n691), .B(n597), .C(n744), .Z(n3927)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n691_bdd_3_lut.init = 16'he2e2;
    LUT4 i592_2_lut_rep_30_3_lut_4_lut (.A(n585), .B(n586), .C(n583), 
         .D(n584), .Z(n3969)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i592_2_lut_rep_30_3_lut_4_lut.init = 16'h8000;
    LUT4 i585_2_lut_rep_37_3_lut (.A(n585), .B(n586), .C(n584), .Z(n3976)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i585_2_lut_rep_37_3_lut.init = 16'h8080;
    LUT4 n677_bdd_3_lut (.A(n677), .B(n597), .C(n730), .Z(n3894)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n677_bdd_3_lut.init = 16'he2e2;
    LUT4 i1_2_lut (.A(hs_en_high_cnt[0]), .B(hs_en_high_cnt[4]), .Z(n17)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i14_4_lut (.A(hs_en_high_cnt[7]), .B(n28), .C(n22), .D(hs_en_high_cnt[9]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i14_4_lut.init = 16'h8000;
    LUT4 i2098_3_lut_4_lut (.A(n585), .B(n586), .C(n11), .D(n584), .Z(n600)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i2098_3_lut_4_lut.init = 16'h7080;
    LUT4 n679_bdd_3_lut_3535 (.A(n597), .B(n680), .C(n733), .Z(n3896)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n679_bdd_3_lut_3535.init = 16'he4e4;
    PFUMX i3539 (.BLUT(n3900), .ALUT(n3899), .C0(n598), .Z(byte_D1_out[1]));
    LUT4 i10_4_lut (.A(hs_en_high_cnt[1]), .B(hs_en_high_cnt[15]), .C(hs_en_high_cnt[11]), 
         .D(hs_en_high_cnt[2]), .Z(n26)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    LUT4 n679_bdd_3_lut (.A(n679), .B(n597), .C(n732), .Z(n3897)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n679_bdd_3_lut.init = 16'he2e2;
    LUT4 i2_2_lut (.A(hs_en_high_cnt[3]), .B(hs_en_high_cnt[12]), .Z(n18)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    PFUMX i3536 (.BLUT(n3897), .ALUT(n3896), .C0(n598), .Z(byte_D1_out[0]));
    LUT4 i12_4_lut (.A(hs_en_high_cnt[10]), .B(hs_en_high_cnt[5]), .C(hs_en_high_cnt[13]), 
         .D(hs_en_high_cnt[6]), .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i6_2_lut (.A(hs_en_high_cnt[14]), .B(hs_en_high_cnt[8]), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6_2_lut.init = 16'h8888;
    PFUMX i3533 (.BLUT(n3894), .ALUT(n3893), .C0(n598), .Z(byte_D0_out[7]));
    LUT4 i280_4_lut (.A(n2458), .B(hs_extended_15__N_153), .C(n1448), 
         .D(n3983), .Z(byte_clk_enable_59)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+!(C))) */ ;
    defparam i280_4_lut.init = 16'hcdcf;
    PFUMX i3530 (.BLUT(n3891), .ALUT(n3890), .C0(n598), .Z(byte_D0_out[6]));
    LUT4 n667_bdd_3_lut (.A(n667), .B(n597), .C(n720), .Z(n3879)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n667_bdd_3_lut.init = 16'he2e2;
    PFUMX i3527 (.BLUT(n3888), .ALUT(n3887), .C0(n598), .Z(byte_D0_out[5]));
    LUT4 n669_bdd_3_lut_3520 (.A(n597), .B(n670), .C(n723), .Z(n3881)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n669_bdd_3_lut_3520.init = 16'he4e4;
    DPR16X4C \hold_data_0[[0__3580_408_422_437_449_461  (.DI0(hold_data_0__31__N_41[3]), 
            .DI1(hold_data_0__31__N_41[2]), .DI2(hold_data_0__31__N_41[1]), 
            .DI3(hold_data_0__31__N_41[0]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n713), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n723), .DO1(n721), 
            .DO2(n719), .DO3(n717));
    defparam \hold_data_0[[0__3580_408_422_437_449_461 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_415_434_446_458  (.DI0(hold_data_0__31__N_41[3]), 
            .DI1(hold_data_0__31__N_41[2]), .DI2(hold_data_0__31__N_41[1]), 
            .DI3(hold_data_0__31__N_41[0]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n660), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n670), .DO1(n668), 
            .DO2(n666), .DO3(n664));
    defparam \hold_data_0[[0__3580_415_434_446_458 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_408_431_443_455  (.DI0(hold_data_0__31__N_41[3]), 
            .DI1(hold_data_0__31__N_41[2]), .DI2(hold_data_0__31__N_41[1]), 
            .DI3(hold_data_0__31__N_41[0]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n712), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n722), .DO1(n720), 
            .DO2(n718), .DO3(n716));
    defparam \hold_data_0[[0__3580_408_431_443_455 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_428_440_452  (.DI0(hold_data_0__31__N_41[3]), 
            .DI1(hold_data_0__31__N_41[2]), .DI2(hold_data_0__31__N_41[1]), 
            .DI3(hold_data_0__31__N_41[0]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n659), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n669), .DO1(n667), 
            .DO2(n665), .DO3(n663));
    defparam \hold_data_0[[0__3580_428_440_452 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_408_422_437_449  (.DI0(hold_data_0__31__N_41[7]), 
            .DI1(hold_data_0__31__N_41[6]), .DI2(hold_data_0__31__N_41[5]), 
            .DI3(hold_data_0__31__N_41[4]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n713), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n731), .DO1(n729), 
            .DO2(n727), .DO3(n725));
    defparam \hold_data_0[[0__3580_408_422_437_449 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_415_434_446  (.DI0(hold_data_0__31__N_41[7]), 
            .DI1(hold_data_0__31__N_41[6]), .DI2(hold_data_0__31__N_41[5]), 
            .DI3(hold_data_0__31__N_41[4]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n660), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n678), .DO1(n676), 
            .DO2(n674), .DO3(n672));
    defparam \hold_data_0[[0__3580_415_434_446 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_408_431_443  (.DI0(hold_data_0__31__N_41[7]), 
            .DI1(hold_data_0__31__N_41[6]), .DI2(hold_data_0__31__N_41[5]), 
            .DI3(hold_data_0__31__N_41[4]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n712), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n730), .DO1(n728), 
            .DO2(n726), .DO3(n724));
    defparam \hold_data_0[[0__3580_408_431_443 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_428_440  (.DI0(hold_data_0__31__N_41[7]), 
            .DI1(hold_data_0__31__N_41[6]), .DI2(hold_data_0__31__N_41[5]), 
            .DI3(hold_data_0__31__N_41[4]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n659), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n677), .DO1(n675), 
            .DO2(n673), .DO3(n671));
    defparam \hold_data_0[[0__3580_428_440 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_408_422_437  (.DI0(hold_data_0__31__N_41[11]), 
            .DI1(hold_data_0__31__N_41[10]), .DI2(hold_data_0__31__N_41[9]), 
            .DI3(hold_data_0__31__N_41[8]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n713), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n739), .DO1(n737), 
            .DO2(n735), .DO3(n733));
    defparam \hold_data_0[[0__3580_408_422_437 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_415_434  (.DI0(hold_data_0__31__N_41[11]), 
            .DI1(hold_data_0__31__N_41[10]), .DI2(hold_data_0__31__N_41[9]), 
            .DI3(hold_data_0__31__N_41[8]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n660), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n686), .DO1(n684), 
            .DO2(n682), .DO3(n680));
    defparam \hold_data_0[[0__3580_415_434 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_408_431  (.DI0(hold_data_0__31__N_41[11]), 
            .DI1(hold_data_0__31__N_41[10]), .DI2(hold_data_0__31__N_41[9]), 
            .DI3(hold_data_0__31__N_41[8]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n712), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n738), .DO1(n736), 
            .DO2(n734), .DO3(n732));
    defparam \hold_data_0[[0__3580_408_431 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_428  (.DI0(hold_data_0__31__N_41[11]), 
            .DI1(hold_data_0__31__N_41[10]), .DI2(hold_data_0__31__N_41[9]), 
            .DI3(hold_data_0__31__N_41[8]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n659), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n685), .DO1(n683), 
            .DO2(n681), .DO3(n679));
    defparam \hold_data_0[[0__3580_428 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_408_422  (.DI0(hold_data_0__31__N_41[14]), 
            .DI1(hold_data_0__31__N_41[15]), .DI2(hold_data_0__31__N_41[13]), 
            .DI3(hold_data_0__31__N_41[12]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n713), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n747), .DO1(n745), 
            .DO2(n743), .DO3(n741));
    defparam \hold_data_0[[0__3580_408_422 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_415  (.DI0(hold_data_0__31__N_41[14]), 
            .DI1(hold_data_0__31__N_41[15]), .DI2(hold_data_0__31__N_41[13]), 
            .DI3(hold_data_0__31__N_41[12]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n660), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n694), .DO1(n692), 
            .DO2(n690), .DO3(n688));
    defparam \hold_data_0[[0__3580_415 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580_408  (.DI0(hold_data_0__31__N_41[14]), 
            .DI1(hold_data_0__31__N_41[15]), .DI2(hold_data_0__31__N_41[13]), 
            .DI3(hold_data_0__31__N_41[12]), .WAD0(n586), .WAD1(n585), 
            .WAD2(n584), .WAD3(n583), .WCK(byte_clk), .WRE(n712), .RAD0(n3981), 
            .RAD1(n601), .RAD2(n600), .RAD3(n599), .DO0(n746), .DO1(n744), 
            .DO2(n742), .DO3(n740));
    defparam \hold_data_0[[0__3580_408 .initval = "0x0000000000000000";
    DPR16X4C \hold_data_0[[0__3580  (.DI0(hold_data_0__31__N_41[14]), .DI1(hold_data_0__31__N_41[15]), 
            .DI2(hold_data_0__31__N_41[13]), .DI3(hold_data_0__31__N_41[12]), 
            .WAD0(n586), .WAD1(n585), .WAD2(n584), .WAD3(n583), .WCK(byte_clk), 
            .WRE(n659), .RAD0(n3981), .RAD1(n601), .RAD2(n600), .RAD3(n599), 
            .DO0(n693), .DO1(n691), .DO2(n689), .DO3(n687));
    defparam \hold_data_0[[0__3580 .initval = "0x0000000000000000";
    DCS_ROM u_DCS_ROM (.wait_cnt({Open_0, wait_cnt[14:13], Open_1, Open_2, 
            Open_3, Open_4, Open_5, Open_6, Open_7, Open_8, Open_9, 
            Open_10, Open_11, Open_12, Open_13}), .GND_net(GND_net), 
            .byte_cnt({Open_14, Open_15, Open_16, Open_17, Open_18, 
            Open_19, byte_cnt[4], Open_20, Open_21, Open_22, Open_23}), 
            .n1496(n1496), .\byte_cnt[7] (byte_cnt[7]), .\byte_cnt[1] (byte_cnt[1]), 
            .\byte_cnt[6] (byte_cnt[6]), .\byte_cnt[5] (byte_cnt[5]), .\byte_cnt[0] (byte_cnt[0]), 
            .\byte_cnt[3] (byte_cnt[3]), .\byte_cnt[2] (byte_cnt[2]), .\wait_cnt[11] (wait_cnt[11]), 
            .\wait_cnt[12] (wait_cnt[12]), .data_7__N_260({data_7__N_260[7], 
            Open_24, Open_25, Open_26, Open_27, data_7__N_260[2], 
            Open_28, data_7__N_260[0]}), .\wait_cnt[15] (wait_cnt[15]), 
            .byte_clk(byte_clk), .\oneh_data[3] (oneh_data[3]), .\oneh_data[7] (oneh_data[7]), 
            .\oneh_data[11] (oneh_data[11]), .\oneh_data[15] (oneh_data[15]), 
            .\oneh_data[19] (oneh_data[19]), .\oneh_data[23] (oneh_data[23]), 
            .\oneh_data[27] (oneh_data[27]), .\data_7__N_260[1] (data_7__N_260[1]), 
            .\wait_cnt[10] (wait_cnt[10]), .\wait_cnt[5] (wait_cnt[5]), 
            .\wait_cnt[2] (wait_cnt[2]), .\oneh_data[31] (oneh_data[31]), 
            .dcs_data_en(dcs_data_en), .q_enable(q_enable), .byte_clk_enable_15(byte_clk_enable_15), 
            .q_escape_en(q_escape_en), .dcs_escape_en(dcs_escape_en), .byte_clk_enable_16(byte_clk_enable_16), 
            .lp_clk({lp_clk}), .done_sim(done_sim), .n3233(n3233), .n3290(n3290), 
            .dcs_stop_en(dcs_stop_en)) /* synthesis syn_module_defined=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(263[14] 273[7])
    PFUMX i3512 (.BLUT(n3873), .ALUT(n3872), .C0(n598), .Z(byte_D0_out[0]));
    VLO i1 (.Z(GND_net));
    PFUMX i3524 (.BLUT(n3885), .ALUT(n3884), .C0(n598), .Z(byte_D0_out[4]));
    FD1S3AX \hold_data_0[[0__3580_reg_i5  (.D(n597), .CK(byte_clk), .Q(n581));
    defparam \hold_data_0[[0__3580_reg_i5 .GSR = "DISABLED";
    PFUMX i3521 (.BLUT(n3882), .ALUT(n3881), .C0(n598), .Z(byte_D0_out[3]));
    FD1S3AX \hold_data_0[[0__3580_reg_i4  (.D(n598), .CK(byte_clk), .Q(n582));
    defparam \hold_data_0[[0__3580_reg_i4 .GSR = "DISABLED";
    FD1S3AX \hold_data_0[[0__3580_reg_i3  (.D(n599), .CK(byte_clk), .Q(n583));
    defparam \hold_data_0[[0__3580_reg_i3 .GSR = "DISABLED";
    FD1S3AX \hold_data_0[[0__3580_reg_i2  (.D(n600), .CK(byte_clk), .Q(n584));
    defparam \hold_data_0[[0__3580_reg_i2 .GSR = "DISABLED";
    OBZ D1_pad (.I(hs_D1), .T(n966), .O(D1));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/io_controller_tx.v(107[13:15])
    FD1S3AX \hold_data_0[[0__3580_reg_i1  (.D(n601), .CK(byte_clk), .Q(n585));
    defparam \hold_data_0[[0__3580_reg_i1 .GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    OBZ DCK_pad (.I(hs_clk), .T(n3233), .O(DCK));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/io_controller_tx.v(96[10:13])
    LP_HS_DELAY_CNTRL u_LP_HS_DELAY_CNTRL (.lp_clk({lp_clk}), .GND_net(GND_net), 
            .hs_en_high_cnt({hs_en_high_cnt}), .hs_en_high_cnt_15__N_188(hs_en_high_cnt_15__N_188), 
            .byte_clk(byte_clk), .n2458(n2458), .\LP1_1__N_251[1] (LP1_1__N_251[1]), 
            .n3983(n3983), .\lp_data[0] (lp_data[0]), .byte_D0({byte_D0}), 
            .hs_en(hs_en), .\hold_data_0__31__N_41[3] (hold_data_0__31__N_41[3]), 
            .\hold_data_0__31__N_41[2] (hold_data_0__31__N_41[2]), .\hold_data_0__31__N_41[1] (hold_data_0__31__N_41[1]), 
            .\hold_data_0__31__N_41[0] (hold_data_0__31__N_41[0]), .\hold_data_0__31__N_41[7] (hold_data_0__31__N_41[7]), 
            .\hold_data_0__31__N_41[6] (hold_data_0__31__N_41[6]), .byte_clk_enable_60(byte_clk_enable_60), 
            .\hold_data_0__31__N_41[5] (hold_data_0__31__N_41[5]), .byte_clk_enable_59(byte_clk_enable_59), 
            .hs_extended_15__N_153(hs_extended_15__N_153), .\hold_data_0__31__N_41[4] (hold_data_0__31__N_41[4]), 
            .byte_D1({byte_D1}), .\hold_data_0__31__N_41[11] (hold_data_0__31__N_41[11]), 
            .\hold_data_0__31__N_41[10] (hold_data_0__31__N_41[10]), .\hold_data_0__31__N_41[9] (hold_data_0__31__N_41[9]), 
            .\hold_data_0__31__N_41[8] (hold_data_0__31__N_41[8]), .\hold_data_0__31__N_41[14] (hold_data_0__31__N_41[14]), 
            .\hold_data_0__31__N_41[15] (hold_data_0__31__N_41[15]), .\hold_data_0__31__N_41[13] (hold_data_0__31__N_41[13]), 
            .\hold_data_0__31__N_41[12] (hold_data_0__31__N_41[12]), .Ln(Ln), 
            .done_sim(done_sim), .LP0_1__N_248({LP0_1__N_248}), .Lp(Lp), 
            .n966(n966), .n1448(n1448), .hsxx_clk_en(hsxx_clk_en)) /* synthesis syn_module_defined=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(160[6] 177[2])
    colorbar_gen_renamed_due_excessive_length_1 \genblk4.u_colorbar_gen  (.GND_net(GND_net), 
            .PIXCLK_c(PIXCLK_c), .\w_pixdata[0] (w_pixdata[0]), .\w_pixdata[11] (w_pixdata[11]), 
            .\w_pixdata[9] (w_pixdata[9]), .\w_pixdata[10] (w_pixdata[10]), 
            .\w_pixdata[7] (w_pixdata[7]), .\w_pixdata[8] (w_pixdata[8]), 
            .\w_pixdata[5] (w_pixdata[5]), .\w_pixdata[6] (w_pixdata[6]), 
            .\w_pixdata[3] (w_pixdata[3]), .\w_pixdata[4] (w_pixdata[4]), 
            .\word_cnt[10] (word_cnt[10]), .\w_pixdata[1] (w_pixdata[1]), 
            .\w_pixdata[2] (w_pixdata[2]), .w_hsync(w_hsync), .w_vsync(w_vsync)) /* synthesis syn_module_defined=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(300[11] 309[10])
    BYTE_PACKETIZER u_BYTE_PACKETIZER (.byte_clk(byte_clk), .reset_n_c(reset_n_c), 
            .GND_net(GND_net), .hs_en(hs_en), .byte_D1({byte_D1}), .byte_D0({byte_D0}), 
            .VCC_net(VCC_net), .PIXCLK_c(PIXCLK_c), .w_vsync(w_vsync), 
            .w_hsync(w_hsync), .\word_cnt[10] (word_cnt[10]), .\w_pixdata[11] (w_pixdata[11]), 
            .\w_pixdata[10] (w_pixdata[10]), .\w_pixdata[9] (w_pixdata[9]), 
            .\w_pixdata[8] (w_pixdata[8]), .\w_pixdata[7] (w_pixdata[7]), 
            .\w_pixdata[6] (w_pixdata[6]), .\w_pixdata[5] (w_pixdata[5]), 
            .\w_pixdata[4] (w_pixdata[4]), .\w_pixdata[3] (w_pixdata[3]), 
            .\w_pixdata[2] (w_pixdata[2]), .\w_pixdata[1] (w_pixdata[1]), 
            .\w_pixdata[0] (w_pixdata[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(138[6] 157[7])
    ROM256X1A byte_cnt_7__I_0_Mux_7 (.AD0(byte_cnt[0]), .AD1(byte_cnt[1]), 
            .AD2(byte_cnt[2]), .AD3(byte_cnt[3]), .AD4(byte_cnt[4]), .AD5(byte_cnt[5]), 
            .AD6(byte_cnt[6]), .AD7(byte_cnt[7]), .DO0(data_7__N_260[7])) /* synthesis initstate=0x00000000000000000000084280800212950000850000862128211A1442548421 */ ;
    defparam byte_cnt_7__I_0_Mux_7.initval = 256'h00000000000000000000084280800212950000850000862128211A1442548421;
    GSR GSR_INST (.GSR(reset_n_c));
    ROM256X1A byte_cnt_7__I_0_Mux_0 (.AD0(byte_cnt[0]), .AD1(byte_cnt[1]), 
            .AD2(byte_cnt[2]), .AD3(byte_cnt[3]), .AD4(byte_cnt[4]), .AD5(byte_cnt[5]), 
            .AD6(byte_cnt[6]), .AD7(byte_cnt[7]), .DO0(data_7__N_260[0])) /* synthesis initstate=0x0000000000000000000099CF1BE24FBDCC6E91DC99765C379823D074C739DC67 */ ;
    defparam byte_cnt_7__I_0_Mux_0.initval = 256'h0000000000000000000099CF1BE24FBDCC6E91DC99765C379823D074C739DC67;
    ROM256X1A byte_cnt_7__I_0_Mux_1 (.AD0(byte_cnt[0]), .AD1(byte_cnt[1]), 
            .AD2(byte_cnt[2]), .AD3(byte_cnt[3]), .AD4(byte_cnt[4]), .AD5(byte_cnt[5]), 
            .AD6(byte_cnt[6]), .AD7(byte_cnt[7]), .DO0(data_7__N_260[1])) /* synthesis initstate=0x00000000000000000000086312C26BD6D74A21469C52440509015F1F0252C621 */ ;
    defparam byte_cnt_7__I_0_Mux_1.initval = 256'h00000000000000000000086312C26BD6D74A21469C52440509015F1F0252C621;
    ROM256X1A byte_cnt_7__I_0_Mux_2 (.AD0(byte_cnt[0]), .AD1(byte_cnt[1]), 
            .AD2(byte_cnt[2]), .AD3(byte_cnt[3]), .AD4(byte_cnt[4]), .AD5(byte_cnt[5]), 
            .AD6(byte_cnt[6]), .AD7(byte_cnt[7]), .DO0(data_7__N_260[2])) /* synthesis initstate=0x00000000000000000000BCE610A00BBBCD63B10495C606213E157353ABBBDE63 */ ;
    defparam byte_cnt_7__I_0_Mux_2.initval = 256'h00000000000000000000BCE610A00BBBCD63B10495C606213E157353ABBBDE63;
    DCS_Encoder u_DCS_Encoder (.byte_clk(byte_clk), .byte_clk_enable_16(byte_clk_enable_16), 
            .byte_clk_enable_15(byte_clk_enable_15), .\oneh_data[3] (oneh_data[3]), 
            .dcs_stop_en(dcs_stop_en), .Lp(Lp), .\wait_cnt[5] (wait_cnt[5]), 
            .\wait_cnt[15] (wait_cnt[15]), .n1496(n1496), .\wait_cnt[12] (wait_cnt[12]), 
            .\wait_cnt[10] (wait_cnt[10]), .\wait_cnt[11] (wait_cnt[11]), 
            .\wait_cnt[2] (wait_cnt[2]), .\wait_cnt[13] (wait_cnt[13]), 
            .\wait_cnt[14] (wait_cnt[14]), .\oneh_data[7] (oneh_data[7]), 
            .dcs_escape_en(dcs_escape_en), .q_escape_en(q_escape_en), .\oneh_data[27] (oneh_data[27]), 
            .\oneh_data[31] (oneh_data[31]), .\oneh_data[23] (oneh_data[23]), 
            .\oneh_data[19] (oneh_data[19]), .\oneh_data[15] (oneh_data[15]), 
            .q_enable(q_enable), .dcs_data_en(dcs_data_en), .n3290(n3290), 
            .\oneh_data[11] (oneh_data[11]), .Ln(Ln)) /* synthesis syn_module_defined=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(274[18] 285[7])
    pll_pix2byte_RGB888_2lane \genblk2.u_pll_pix2byte_RGB888_2lane  (.PIXCLK_c(PIXCLK_c), 
            .reset_n_N_15(reset_n_N_15), .CLKOP(CLKOP), .CLKOS(CLKOS), 
            .byte_clk(byte_clk), .GND_net(GND_net)) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(125[36:154])
    DPHY_TX_INST u_DPHY_TX_INST (.reset_n_c(reset_n_c), .reset_n_N_15(reset_n_N_15), 
            .GND_net(GND_net), .hs_clk(hs_clk), .hsxx_clk_en(hsxx_clk_en), 
            .byte_D1_out({byte_D1_out}), .hs_D1(hs_D1), .byte_D0_out({byte_D0_out}), 
            .hs_D0(hs_D0), .CLKOS(CLKOS), .CLKOP(CLKOP), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(180[17] 252[2])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DCS_ROM
//

module DCS_ROM (wait_cnt, GND_net, byte_cnt, n1496, \byte_cnt[7] , 
            \byte_cnt[1] , \byte_cnt[6] , \byte_cnt[5] , \byte_cnt[0] , 
            \byte_cnt[3] , \byte_cnt[2] , \wait_cnt[11] , \wait_cnt[12] , 
            data_7__N_260, \wait_cnt[15] , byte_clk, \oneh_data[3] , 
            \oneh_data[7] , \oneh_data[11] , \oneh_data[15] , \oneh_data[19] , 
            \oneh_data[23] , \oneh_data[27] , \data_7__N_260[1] , \wait_cnt[10] , 
            \wait_cnt[5] , \wait_cnt[2] , \oneh_data[31] , dcs_data_en, 
            q_enable, byte_clk_enable_15, q_escape_en, dcs_escape_en, 
            byte_clk_enable_16, lp_clk, done_sim, n3233, n3290, dcs_stop_en) /* synthesis syn_module_defined=1 */ ;
    output [15:0]wait_cnt;
    input GND_net;
    output [10:0]byte_cnt;
    input n1496;
    output \byte_cnt[7] ;
    output \byte_cnt[1] ;
    output \byte_cnt[6] ;
    output \byte_cnt[5] ;
    output \byte_cnt[0] ;
    output \byte_cnt[3] ;
    output \byte_cnt[2] ;
    output \wait_cnt[11] ;
    output \wait_cnt[12] ;
    input [7:0]data_7__N_260;
    output \wait_cnt[15] ;
    input byte_clk;
    output \oneh_data[3] ;
    output \oneh_data[7] ;
    output \oneh_data[11] ;
    output \oneh_data[15] ;
    output \oneh_data[19] ;
    output \oneh_data[23] ;
    output \oneh_data[27] ;
    input \data_7__N_260[1] ;
    output \wait_cnt[10] ;
    output \wait_cnt[5] ;
    output \wait_cnt[2] ;
    output \oneh_data[31] ;
    output dcs_data_en;
    input q_enable;
    output byte_clk_enable_15;
    input q_escape_en;
    output dcs_escape_en;
    output byte_clk_enable_16;
    input [1:0]lp_clk;
    output done_sim;
    output n3233;
    input n3290;
    output dcs_stop_en;
    
    wire byte_clk /* synthesis SET_AS_NETWORK=byte_clk, is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[35:43])
    
    wire n3150;
    wire [15:0]n319;
    
    wire n3151, n13, n3553, n14, byte_clk_enable_58, byte_cnt_10__N_329, 
        n3974, n3972, wait_cnt_15__N_362, n1615, n3162;
    wire [10:0]byte_cnt_c;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(65[16:24])
    wire [10:0]n49;
    
    wire n3145;
    wire [15:0]wait_cnt_c;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(63[16:24])
    
    wire n3146;
    wire [31:0]wait_cnt_15__N_330;
    
    wire n3161, n3990, n3964, n3149, n3144, n3495, n6, n3160;
    wire [7:0]data_7__N_260_c;
    wire [31:0]wait_cnt_15__N_270;
    
    wire n3159, n3158, n3478, n13_adj_677, n3589, n14_adj_678, data_en_N_365, 
        n3148, n3988, n6_adj_679, escape_en_N_367, n7, n3637, stop_en_N_368, 
        n3147, n3601;
    
    CCU2D add_174_15 (.A0(wait_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wait_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3150), .COUT(n3151), .S0(n319[13]), .S1(n319[14]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(83[45:57])
    defparam add_174_15.INIT0 = 16'h5555;
    defparam add_174_15.INIT1 = 16'h5555;
    defparam add_174_15.INJECT1_0 = "NO";
    defparam add_174_15.INJECT1_1 = "NO";
    LUT4 i3_4_lut_rep_38 (.A(n13), .B(n3553), .C(byte_cnt[4]), .D(n14), 
         .Z(byte_clk_enable_58)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i3_4_lut_rep_38.init = 16'hffbf;
    LUT4 equal_36_i22_1_lut_4_lut (.A(n13), .B(n3553), .C(byte_cnt[4]), 
         .D(n14), .Z(byte_cnt_10__N_329)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam equal_36_i22_1_lut_4_lut.init = 16'h0040;
    LUT4 i3441_2_lut_2_lut_4_lut (.A(n3974), .B(n1496), .C(n3972), .D(wait_cnt_15__N_362), 
         .Z(n1615)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i3441_2_lut_2_lut_4_lut.init = 16'hff01;
    CCU2D byte_cnt_272_add_4_11 (.A0(byte_cnt_c[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(byte_cnt_c[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3162), .S0(n49[9]), .S1(n49[10]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272_add_4_11.INIT0 = 16'hfaaa;
    defparam byte_cnt_272_add_4_11.INIT1 = 16'hfaaa;
    defparam byte_cnt_272_add_4_11.INJECT1_0 = "NO";
    defparam byte_cnt_272_add_4_11.INJECT1_1 = "NO";
    CCU2D add_174_5 (.A0(wait_cnt_c[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wait_cnt_c[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3145), .COUT(n3146), .S0(n319[3]), .S1(n319[4]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(83[45:57])
    defparam add_174_5.INIT0 = 16'h5555;
    defparam add_174_5.INIT1 = 16'h5555;
    defparam add_174_5.INJECT1_0 = "NO";
    defparam add_174_5.INJECT1_1 = "NO";
    LUT4 i2105_2_lut_4_lut (.A(n3974), .B(n1496), .C(n3972), .D(n319[0]), 
         .Z(wait_cnt_15__N_330[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i2105_2_lut_4_lut.init = 16'hff01;
    CCU2D byte_cnt_272_add_4_9 (.A0(\byte_cnt[7] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(byte_cnt_c[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3161), .COUT(n3162), .S0(n49[7]), .S1(n49[8]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272_add_4_9.INIT0 = 16'hfaaa;
    defparam byte_cnt_272_add_4_9.INIT1 = 16'hfaaa;
    defparam byte_cnt_272_add_4_9.INJECT1_0 = "NO";
    defparam byte_cnt_272_add_4_9.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(\byte_cnt[1] ), .B(\byte_cnt[6] ), .C(byte_cnt_c[9]), 
         .D(byte_cnt_c[8]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(87[30:47])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i3250_2_lut (.A(\byte_cnt[5] ), .B(\byte_cnt[7] ), .Z(n3553)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3250_2_lut.init = 16'h8888;
    LUT4 i6_4_lut (.A(byte_cnt_c[10]), .B(\byte_cnt[0] ), .C(\byte_cnt[3] ), 
         .D(\byte_cnt[2] ), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(87[30:47])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_25_4_lut (.A(wait_cnt_c[1]), .B(n3990), .C(n1496), 
         .D(n3974), .Z(n3964)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_25_4_lut.init = 16'hfffe;
    CCU2D add_174_13 (.A0(\wait_cnt[11] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\wait_cnt[12] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3149), .COUT(n3150), .S0(n319[11]), .S1(n319[12]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(83[45:57])
    defparam add_174_13.INIT0 = 16'h5555;
    defparam add_174_13.INIT1 = 16'h5555;
    defparam add_174_13.INJECT1_0 = "NO";
    defparam add_174_13.INJECT1_1 = "NO";
    CCU2D add_174_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wait_cnt_c[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3144), .S1(n319[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(83[45:57])
    defparam add_174_1.INIT0 = 16'hF000;
    defparam add_174_1.INIT1 = 16'h5555;
    defparam add_174_1.INJECT1_0 = "NO";
    defparam add_174_1.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(data_7__N_260[0]), .B(n3495), .C(data_7__N_260[2]), 
         .D(n6), .Z(wait_cnt_15__N_362)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    CCU2D byte_cnt_272_add_4_7 (.A0(\byte_cnt[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\byte_cnt[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3160), .COUT(n3161), .S0(n49[5]), .S1(n49[6]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272_add_4_7.INIT0 = 16'hfaaa;
    defparam byte_cnt_272_add_4_7.INIT1 = 16'hfaaa;
    defparam byte_cnt_272_add_4_7.INJECT1_0 = "NO";
    defparam byte_cnt_272_add_4_7.INJECT1_1 = "NO";
    FD1S3IX wait_cnt_i15 (.D(n319[15]), .CK(byte_clk), .CD(n1615), .Q(\wait_cnt[15] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i15.GSR = "ENABLED";
    FD1S3AX current_data_i8 (.D(data_7__N_260[7]), .CK(byte_clk), .Q(\oneh_data[3] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam current_data_i8.GSR = "ENABLED";
    FD1S3AX current_data_i7 (.D(data_7__N_260_c[6]), .CK(byte_clk), .Q(\oneh_data[7] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam current_data_i7.GSR = "ENABLED";
    FD1S3AX current_data_i6 (.D(data_7__N_260_c[5]), .CK(byte_clk), .Q(\oneh_data[11] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam current_data_i6.GSR = "ENABLED";
    FD1S3AX current_data_i5 (.D(data_7__N_260_c[4]), .CK(byte_clk), .Q(\oneh_data[15] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam current_data_i5.GSR = "ENABLED";
    FD1S3AX current_data_i4 (.D(data_7__N_260_c[3]), .CK(byte_clk), .Q(\oneh_data[19] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam current_data_i4.GSR = "ENABLED";
    FD1S3AX current_data_i3 (.D(data_7__N_260[2]), .CK(byte_clk), .Q(\oneh_data[23] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam current_data_i3.GSR = "ENABLED";
    FD1S3AX current_data_i2 (.D(\data_7__N_260[1] ), .CK(byte_clk), .Q(\oneh_data[27] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam current_data_i2.GSR = "ENABLED";
    FD1S3IX wait_cnt_i14 (.D(n319[14]), .CK(byte_clk), .CD(n1615), .Q(wait_cnt[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i14.GSR = "ENABLED";
    FD1S3IX wait_cnt_i13 (.D(n319[13]), .CK(byte_clk), .CD(n1615), .Q(wait_cnt[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i13.GSR = "ENABLED";
    FD1S3IX wait_cnt_i12 (.D(n319[12]), .CK(byte_clk), .CD(n1615), .Q(\wait_cnt[12] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i12.GSR = "ENABLED";
    FD1S3IX wait_cnt_i11 (.D(n319[11]), .CK(byte_clk), .CD(n1615), .Q(\wait_cnt[11] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i11.GSR = "ENABLED";
    FD1S3IX wait_cnt_i10 (.D(n319[10]), .CK(byte_clk), .CD(n1615), .Q(\wait_cnt[10] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i10.GSR = "ENABLED";
    FD1S3AX wait_cnt_i9 (.D(wait_cnt_15__N_270[9]), .CK(byte_clk), .Q(wait_cnt_c[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i9.GSR = "ENABLED";
    FD1S3AX wait_cnt_i8 (.D(wait_cnt_15__N_270[8]), .CK(byte_clk), .Q(wait_cnt_c[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i8.GSR = "ENABLED";
    FD1S3AX wait_cnt_i7 (.D(wait_cnt_15__N_270[7]), .CK(byte_clk), .Q(wait_cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i7.GSR = "ENABLED";
    FD1S3AX wait_cnt_i6 (.D(wait_cnt_15__N_270[6]), .CK(byte_clk), .Q(wait_cnt_c[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i6.GSR = "ENABLED";
    FD1S3AX wait_cnt_i5 (.D(wait_cnt_15__N_270[5]), .CK(byte_clk), .Q(\wait_cnt[5] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i5.GSR = "ENABLED";
    FD1S3IX wait_cnt_i4 (.D(n319[4]), .CK(byte_clk), .CD(n1615), .Q(wait_cnt_c[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i4.GSR = "ENABLED";
    FD1S3AX wait_cnt_i3 (.D(wait_cnt_15__N_270[3]), .CK(byte_clk), .Q(wait_cnt_c[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i3.GSR = "ENABLED";
    FD1S3IX wait_cnt_i2 (.D(n319[2]), .CK(byte_clk), .CD(n1615), .Q(\wait_cnt[2] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i2.GSR = "ENABLED";
    FD1S3IX wait_cnt_i1 (.D(n319[1]), .CK(byte_clk), .CD(n1615), .Q(wait_cnt_c[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i1.GSR = "ENABLED";
    CCU2D byte_cnt_272_add_4_5 (.A0(\byte_cnt[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(byte_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3159), .COUT(n3160), .S0(n49[3]), .S1(n49[4]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272_add_4_5.INIT0 = 16'hfaaa;
    defparam byte_cnt_272_add_4_5.INIT1 = 16'hfaaa;
    defparam byte_cnt_272_add_4_5.INJECT1_0 = "NO";
    defparam byte_cnt_272_add_4_5.INJECT1_1 = "NO";
    CCU2D byte_cnt_272_add_4_3 (.A0(\byte_cnt[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\byte_cnt[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3158), .COUT(n3159), .S0(n49[1]), .S1(n49[2]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272_add_4_3.INIT0 = 16'hfaaa;
    defparam byte_cnt_272_add_4_3.INIT1 = 16'hfaaa;
    defparam byte_cnt_272_add_4_3.INJECT1_0 = "NO";
    defparam byte_cnt_272_add_4_3.INJECT1_1 = "NO";
    CCU2D byte_cnt_272_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3478), .B1(n3972), .C1(\byte_cnt[0] ), 
          .D1(GND_net), .COUT(n3158), .S1(n49[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272_add_4_1.INIT0 = 16'hF000;
    defparam byte_cnt_272_add_4_1.INIT1 = 16'hd2d2;
    defparam byte_cnt_272_add_4_1.INJECT1_0 = "NO";
    defparam byte_cnt_272_add_4_1.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_32 (.A(n13_adj_677), .B(n3589), .C(data_7__N_260_c[4]), 
         .D(n14_adj_678), .Z(n3495)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;
    defparam i4_4_lut_adj_32.init = 16'h0302;
    LUT4 i1_2_lut_3_lut (.A(wait_cnt_c[1]), .B(n3990), .C(n3478), .Z(data_en_N_365)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut (.A(\data_7__N_260[1] ), .B(data_7__N_260[7]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i5_4_lut_adj_33 (.A(\oneh_data[31] ), .B(\oneh_data[23] ), .C(\oneh_data[7] ), 
         .D(\oneh_data[15] ), .Z(n13_adj_677)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i5_4_lut_adj_33.init = 16'hfff7;
    LUT4 i3286_3_lut (.A(data_7__N_260_c[5]), .B(data_7__N_260_c[6]), .C(data_7__N_260_c[3]), 
         .Z(n3589)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3286_3_lut.init = 16'hfefe;
    CCU2D add_174_11 (.A0(wait_cnt_c[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\wait_cnt[10] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3148), .COUT(n3149), .S0(n319[9]), .S1(n319[10]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(83[45:57])
    defparam add_174_11.INIT0 = 16'h5555;
    defparam add_174_11.INIT1 = 16'h5555;
    defparam add_174_11.INJECT1_0 = "NO";
    defparam add_174_11.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_34 (.A(\oneh_data[19] ), .B(\oneh_data[3] ), .C(\oneh_data[11] ), 
         .D(\oneh_data[27] ), .Z(n14_adj_678)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i6_4_lut_adj_34.init = 16'hfbff;
    FD1P3AX byte_cnt_272__i0 (.D(n49[0]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(\byte_cnt[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i0.GSR = "ENABLED";
    LUT4 i2072_2_lut_rep_49 (.A(wait_cnt_c[3]), .B(wait_cnt_c[7]), .Z(n3988)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2072_2_lut_rep_49.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut (.A(wait_cnt_c[3]), .B(wait_cnt_c[7]), .C(n3990), 
         .D(wait_cnt_c[8]), .Z(n6_adj_679)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_rep_35_3_lut (.A(wait_cnt_c[3]), .B(wait_cnt_c[7]), .C(wait_cnt_c[8]), 
         .Z(n3974)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_rep_35_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_50 (.A(dcs_data_en), .B(q_enable), .Z(byte_clk_enable_15)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam i1_2_lut_rep_50.init = 16'h2222;
    LUT4 start_data_I_0_2_lut_rep_36_3_lut_4_lut (.A(dcs_data_en), .B(q_enable), 
         .C(q_escape_en), .D(dcs_escape_en), .Z(byte_clk_enable_16)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam start_data_I_0_2_lut_rep_36_3_lut_4_lut.init = 16'h2f22;
    LUT4 i2_3_lut_rep_51 (.A(wait_cnt_c[6]), .B(wait_cnt_c[9]), .C(wait_cnt_c[4]), 
         .Z(n3990)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_51.init = 16'hfefe;
    LUT4 i1_2_lut_rep_33_4_lut (.A(wait_cnt_c[6]), .B(wait_cnt_c[9]), .C(wait_cnt_c[4]), 
         .D(wait_cnt_c[1]), .Z(n3972)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_33_4_lut.init = 16'hfffe;
    LUT4 i3447_4_lut (.A(wait_cnt_c[1]), .B(n1496), .C(n6_adj_679), .D(wait_cnt_c[0]), 
         .Z(escape_en_N_367)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(85[30:43])
    defparam i3447_4_lut.init = 16'h0002;
    LUT4 i1996_3_lut (.A(n319[9]), .B(wait_cnt_15__N_362), .C(n3964), 
         .Z(wait_cnt_15__N_270[9])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(82[30] 83[62])
    defparam i1996_3_lut.init = 16'hecec;
    LUT4 i1997_3_lut (.A(n319[8]), .B(wait_cnt_15__N_362), .C(n3964), 
         .Z(wait_cnt_15__N_270[8])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(82[30] 83[62])
    defparam i1997_3_lut.init = 16'hecec;
    LUT4 i1998_3_lut (.A(n319[7]), .B(wait_cnt_15__N_362), .C(n3964), 
         .Z(wait_cnt_15__N_270[7])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(82[30] 83[62])
    defparam i1998_3_lut.init = 16'hecec;
    LUT4 i1999_3_lut (.A(n319[6]), .B(wait_cnt_15__N_362), .C(n3964), 
         .Z(wait_cnt_15__N_270[6])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(82[30] 83[62])
    defparam i1999_3_lut.init = 16'hecec;
    FD1P3AX byte_cnt_272__i10 (.D(n49[10]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(byte_cnt_c[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i10.GSR = "ENABLED";
    LUT4 i2000_3_lut (.A(n319[5]), .B(wait_cnt_15__N_362), .C(n3964), 
         .Z(wait_cnt_15__N_270[5])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(82[30] 83[62])
    defparam i2000_3_lut.init = 16'hecec;
    LUT4 i2001_3_lut (.A(n319[3]), .B(wait_cnt_15__N_362), .C(n3964), 
         .Z(wait_cnt_15__N_270[3])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(82[30] 83[62])
    defparam i2001_3_lut.init = 16'hecec;
    LUT4 i3444_4_lut (.A(n7), .B(n3637), .C(wait_cnt_c[8]), .D(wait_cnt_c[1]), 
         .Z(stop_en_N_368)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(86[30:56])
    defparam i3444_4_lut.init = 16'h0040;
    CCU2D add_174_9 (.A0(wait_cnt_c[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wait_cnt_c[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3147), .COUT(n3148), .S0(n319[7]), .S1(n319[8]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(83[45:57])
    defparam add_174_9.INIT0 = 16'h5555;
    defparam add_174_9.INIT1 = 16'h5555;
    defparam add_174_9.INJECT1_0 = "NO";
    defparam add_174_9.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(wait_cnt_c[0]), .B(n1496), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i3334_4_lut (.A(wait_cnt_c[9]), .B(wait_cnt_c[4]), .C(wait_cnt_c[3]), 
         .D(n3601), .Z(n3637)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3334_4_lut.init = 16'h8000;
    LUT4 i3298_2_lut (.A(wait_cnt_c[6]), .B(wait_cnt_c[7]), .Z(n3601)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3298_2_lut.init = 16'h8888;
    FD1P3AX byte_cnt_272__i9 (.D(n49[9]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(byte_cnt_c[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i9.GSR = "ENABLED";
    FD1P3AX byte_cnt_272__i8 (.D(n49[8]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(byte_cnt_c[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i8.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(lp_clk[1]), .B(lp_clk[0]), .C(done_sim), .Z(n3233)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam i2_3_lut.init = 16'hefef;
    FD1P3AX byte_cnt_272__i7 (.D(n49[7]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(\byte_cnt[7] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i7.GSR = "ENABLED";
    FD1P3AX byte_cnt_272__i6 (.D(n49[6]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(\byte_cnt[6] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i6.GSR = "ENABLED";
    FD1P3AX byte_cnt_272__i5 (.D(n49[5]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(\byte_cnt[5] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i5.GSR = "ENABLED";
    FD1P3AX byte_cnt_272__i4 (.D(n49[4]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(byte_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i4.GSR = "ENABLED";
    FD1P3AX byte_cnt_272__i3 (.D(n49[3]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(\byte_cnt[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i3.GSR = "ENABLED";
    FD1P3AX byte_cnt_272__i2 (.D(n49[2]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(\byte_cnt[2] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i2.GSR = "ENABLED";
    FD1P3AX byte_cnt_272__i1 (.D(n49[1]), .SP(byte_clk_enable_58), .CK(byte_clk), 
            .Q(\byte_cnt[1] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(81[54:66])
    defparam byte_cnt_272__i1.GSR = "ENABLED";
    CCU2D add_174_7 (.A0(\wait_cnt[5] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wait_cnt_c[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3146), .COUT(n3147), .S0(n319[5]), .S1(n319[6]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(83[45:57])
    defparam add_174_7.INIT0 = 16'h5555;
    defparam add_174_7.INIT1 = 16'h5555;
    defparam add_174_7.INJECT1_0 = "NO";
    defparam add_174_7.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n3988), .B(wait_cnt_c[0]), .C(n3290), .D(wait_cnt_c[8]), 
         .Z(n3478)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0004;
    ROM256X1A byte_cnt_7__I_0_Mux_5 (.AD0(\byte_cnt[0] ), .AD1(\byte_cnt[1] ), 
            .AD2(\byte_cnt[2] ), .AD3(\byte_cnt[3] ), .AD4(byte_cnt[4]), 
            .AD5(\byte_cnt[5] ), .AD6(\byte_cnt[6] ), .AD7(\byte_cnt[7] ), 
            .DO0(data_7__N_260_c[5])) /* synthesis initstate=0x00000000000000000000A121114464C2110016CA6000C80220329B2C24425080 */ ;
    defparam byte_cnt_7__I_0_Mux_5.initval = 256'h00000000000000000000A121114464C2110016CA6000C80220329B2C24425080;
    FD1S3IX wait_cnt_i0 (.D(wait_cnt_15__N_330[0]), .CK(byte_clk), .CD(wait_cnt_15__N_362), 
            .Q(wait_cnt_c[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam wait_cnt_i0.GSR = "ENABLED";
    FD1S3AX current_data_i1 (.D(data_7__N_260[0]), .CK(byte_clk), .Q(\oneh_data[31] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam current_data_i1.GSR = "ENABLED";
    FD1S3AX data_en_36 (.D(data_en_N_365), .CK(byte_clk), .Q(dcs_data_en)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam data_en_36.GSR = "ENABLED";
    FD1S3AX escape_en_37 (.D(escape_en_N_367), .CK(byte_clk), .Q(dcs_escape_en)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam escape_en_37.GSR = "ENABLED";
    FD1S3AX stop_en_38 (.D(stop_en_N_368), .CK(byte_clk), .Q(dcs_stop_en)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam stop_en_38.GSR = "ENABLED";
    FD1S3AX done_39 (.D(byte_cnt_10__N_329), .CK(byte_clk), .Q(done_sim)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=14, LSE_RCOL=7, LSE_LLINE=263, LSE_RLINE=273 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(78[13] 88[11])
    defparam done_39.GSR = "ENABLED";
    CCU2D add_174_17 (.A0(\wait_cnt[15] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3151), .S0(n319[15]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(83[45:57])
    defparam add_174_17.INIT0 = 16'h5555;
    defparam add_174_17.INIT1 = 16'h0000;
    defparam add_174_17.INJECT1_0 = "NO";
    defparam add_174_17.INJECT1_1 = "NO";
    ROM256X1A byte_cnt_7__I_0_Mux_6 (.AD0(\byte_cnt[0] ), .AD1(\byte_cnt[1] ), 
            .AD2(\byte_cnt[2] ), .AD3(\byte_cnt[3] ), .AD4(byte_cnt[4]), 
            .AD5(\byte_cnt[5] ), .AD6(\byte_cnt[6] ), .AD7(\byte_cnt[7] ), 
            .DO0(data_7__N_260_c[6])) /* synthesis initstate=0x0000000000000000000000000020008010000083000083A00600980D40440000 */ ;
    defparam byte_cnt_7__I_0_Mux_6.initval = 256'h0000000000000000000000000020008010000083000083A00600980D40440000;
    ROM256X1A byte_cnt_7__I_0_Mux_3 (.AD0(\byte_cnt[0] ), .AD1(\byte_cnt[1] ), 
            .AD2(\byte_cnt[2] ), .AD3(\byte_cnt[3] ), .AD4(byte_cnt[4]), 
            .AD5(\byte_cnt[5] ), .AD6(\byte_cnt[6] ), .AD7(\byte_cnt[7] ), 
            .DO0(data_7__N_260_c[3])) /* synthesis initstate=0x000000000000000000002500896025425127510B92E409928312D02C254C4080 */ ;
    defparam byte_cnt_7__I_0_Mux_3.initval = 256'h000000000000000000002500896025425127510B92E409928312D02C254C4080;
    ROM256X1A byte_cnt_7__I_0_Mux_4 (.AD0(\byte_cnt[0] ), .AD1(\byte_cnt[1] ), 
            .AD2(\byte_cnt[2] ), .AD3(\byte_cnt[3] ), .AD4(byte_cnt[4]), 
            .AD5(\byte_cnt[5] ), .AD6(\byte_cnt[6] ), .AD7(\byte_cnt[7] ), 
            .DO0(data_7__N_260_c[4])) /* synthesis initstate=0x000000000000000000000429912045E1091C8559A8385902B5A25327856B1810 */ ;
    defparam byte_cnt_7__I_0_Mux_4.initval = 256'h000000000000000000000429912045E1091C8559A8385902B5A25327856B1810;
    CCU2D add_174_3 (.A0(wait_cnt_c[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\wait_cnt[2] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3144), .COUT(n3145), .S0(n319[1]), .S1(n319[2]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_rom.v(83[45:57])
    defparam add_174_3.INIT0 = 16'h5555;
    defparam add_174_3.INIT1 = 16'h5555;
    defparam add_174_3.INJECT1_0 = "NO";
    defparam add_174_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module LP_HS_DELAY_CNTRL
//

module LP_HS_DELAY_CNTRL (lp_clk, GND_net, hs_en_high_cnt, hs_en_high_cnt_15__N_188, 
            byte_clk, n2458, \LP1_1__N_251[1] , n3983, \lp_data[0] , 
            byte_D0, hs_en, \hold_data_0__31__N_41[3] , \hold_data_0__31__N_41[2] , 
            \hold_data_0__31__N_41[1] , \hold_data_0__31__N_41[0] , \hold_data_0__31__N_41[7] , 
            \hold_data_0__31__N_41[6] , byte_clk_enable_60, \hold_data_0__31__N_41[5] , 
            byte_clk_enable_59, hs_extended_15__N_153, \hold_data_0__31__N_41[4] , 
            byte_D1, \hold_data_0__31__N_41[11] , \hold_data_0__31__N_41[10] , 
            \hold_data_0__31__N_41[9] , \hold_data_0__31__N_41[8] , \hold_data_0__31__N_41[14] , 
            \hold_data_0__31__N_41[15] , \hold_data_0__31__N_41[13] , \hold_data_0__31__N_41[12] , 
            Ln, done_sim, LP0_1__N_248, Lp, n966, n1448, hsxx_clk_en) /* synthesis syn_module_defined=1 */ ;
    output [1:0]lp_clk;
    input GND_net;
    output [15:0]hs_en_high_cnt;
    output hs_en_high_cnt_15__N_188;
    input byte_clk;
    output n2458;
    output \LP1_1__N_251[1] ;
    output n3983;
    output \lp_data[0] ;
    input [7:0]byte_D0;
    input hs_en;
    output \hold_data_0__31__N_41[3] ;
    output \hold_data_0__31__N_41[2] ;
    output \hold_data_0__31__N_41[1] ;
    output \hold_data_0__31__N_41[0] ;
    output \hold_data_0__31__N_41[7] ;
    output \hold_data_0__31__N_41[6] ;
    input byte_clk_enable_60;
    output \hold_data_0__31__N_41[5] ;
    input byte_clk_enable_59;
    output hs_extended_15__N_153;
    output \hold_data_0__31__N_41[4] ;
    input [7:0]byte_D1;
    output \hold_data_0__31__N_41[11] ;
    output \hold_data_0__31__N_41[10] ;
    output \hold_data_0__31__N_41[9] ;
    output \hold_data_0__31__N_41[8] ;
    output \hold_data_0__31__N_41[14] ;
    output \hold_data_0__31__N_41[15] ;
    output \hold_data_0__31__N_41[13] ;
    output \hold_data_0__31__N_41[12] ;
    input Ln;
    input done_sim;
    output [1:0]LP0_1__N_248;
    input Lp;
    output n966;
    output n1448;
    output hsxx_clk_en;
    
    wire byte_clk /* synthesis SET_AS_NETWORK=byte_clk, is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[35:43])
    
    wire n31, n31_adj_668, n3246;
    wire [1:0]lp_clk_1__N_35;
    wire [15:0]hs_extended;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(103[42:53])
    wire [15:0]n4029;
    
    wire n3186, n3185;
    wire [15:0]hs_en_low_cnt;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(103[28:41])
    wire [15:0]n4065;
    
    wire n3184, n3965, n3456, n31_adj_669, n1478, n3963, hsxx_clk_en_N_232, 
        n3621, byte_clk_enable_61, n3513, n3617, n3183, n1505, n3962, 
        n446;
    wire [15:0]n50;
    
    wire n3182;
    wire [1:0]lp_clk_1__N_226;
    
    wire n3181, n3180, n3982, n3179;
    wire [1:0]lp_data_1__N_39;
    
    wire n3178, n3520, n2062;
    wire [1:0]lp_data_1__N_229;
    
    wire n3177;
    wire [15:0]n4047;
    
    wire n3176, n3175, n3603, n3984, n3174, n3587, q_hs_en, n3173, 
        n3172, n22_adj_670, n18_adj_671, n20_adj_672, n14, n17, 
        n16, n3171, n6, n17_adj_673, n16_adj_674, n3170, n6_adj_675, 
        n6_adj_676, n3193, n8, n3615, n3631, n3192, n3191, n3190, 
        n3189, n3188, n3187;
    
    LUT4 i2_4_lut (.A(n31), .B(lp_clk[1]), .C(n31_adj_668), .D(n3246), 
         .Z(lp_clk_1__N_35[1])) /* synthesis lut_function=(!(A+!(B (C)+!B !((D)+!C)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(108[17:23])
    defparam i2_4_lut.init = 16'h4050;
    CCU2D add_3606_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(hs_extended[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3186), .S1(n4029[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(129[60:73])
    defparam add_3606_1.INIT0 = 16'hF000;
    defparam add_3606_1.INIT1 = 16'h5555;
    defparam add_3606_1.INJECT1_0 = "NO";
    defparam add_3606_1.INJECT1_1 = "NO";
    CCU2D add_3608_17 (.A0(hs_en_low_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3185), .S0(n4065[15]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(137[69:84])
    defparam add_3608_17.INIT0 = 16'h5aaa;
    defparam add_3608_17.INIT1 = 16'h0000;
    defparam add_3608_17.INJECT1_0 = "NO";
    defparam add_3608_17.INJECT1_1 = "NO";
    CCU2D add_3608_15 (.A0(hs_en_low_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_low_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3184), .COUT(n3185), .S0(n4065[13]), .S1(n4065[14]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(137[69:84])
    defparam add_3608_15.INIT0 = 16'h5aaa;
    defparam add_3608_15.INIT1 = 16'h5aaa;
    defparam add_3608_15.INJECT1_0 = "NO";
    defparam add_3608_15.INJECT1_1 = "NO";
    LUT4 i3464_3_lut_4_lut (.A(n3965), .B(hs_en_high_cnt[4]), .C(hs_en_high_cnt[3]), 
         .D(n3456), .Z(n31_adj_669)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3464_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_24 (.A(hs_en_low_cnt[4]), .B(n1478), .Z(n3963)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_24.init = 16'heeee;
    LUT4 i3450_2_lut_3_lut_4_lut (.A(hs_en_low_cnt[4]), .B(n1478), .C(hsxx_clk_en_N_232), 
         .D(n3621), .Z(byte_clk_enable_61)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i3450_2_lut_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i3456_4_lut (.A(hs_en_high_cnt[0]), .B(n3965), .C(hs_en_high_cnt[2]), 
         .D(n3513), .Z(n31)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(161[31:68])
    defparam i3456_4_lut.init = 16'h0002;
    LUT4 i3314_4_lut (.A(hs_en_low_cnt[11]), .B(hs_en_low_cnt[7]), .C(hs_en_low_cnt[15]), 
         .D(hs_en_low_cnt[10]), .Z(n3617)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3314_4_lut.init = 16'h8000;
    CCU2D add_3608_13 (.A0(hs_en_low_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_low_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3183), .COUT(n3184), .S0(n4065[11]), .S1(n4065[12]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(137[69:84])
    defparam add_3608_13.INIT0 = 16'h5aaa;
    defparam add_3608_13.INIT1 = 16'h5aaa;
    defparam add_3608_13.INJECT1_0 = "NO";
    defparam add_3608_13.INJECT1_1 = "NO";
    LUT4 i3318_3_lut (.A(hs_en_low_cnt[2]), .B(hs_en_low_cnt[3]), .C(hs_en_low_cnt[1]), 
         .Z(n3621)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3318_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_26 (.A(hs_en_high_cnt[5]), .B(n1505), .Z(n3965)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(161[31:68])
    defparam i1_2_lut_rep_26.init = 16'heeee;
    LUT4 i1_2_lut_rep_23_3_lut (.A(hs_en_high_cnt[5]), .B(n1505), .C(hs_en_high_cnt[4]), 
         .Z(n3962)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(161[31:68])
    defparam i1_2_lut_rep_23_3_lut.init = 16'hefef;
    LUT4 i1955_4_lut (.A(hs_en_low_cnt[14]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[14]), .D(n446), .Z(n50[14])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1955_4_lut.init = 16'hc088;
    LUT4 i1956_4_lut (.A(hs_en_low_cnt[13]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[13]), .D(n446), .Z(n50[13])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1956_4_lut.init = 16'hc088;
    LUT4 i1957_4_lut (.A(hs_en_low_cnt[12]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[12]), .D(n446), .Z(n50[12])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1957_4_lut.init = 16'hc088;
    LUT4 i1958_4_lut (.A(hs_en_low_cnt[11]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[11]), .D(n446), .Z(n50[11])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1958_4_lut.init = 16'hc088;
    LUT4 i1959_4_lut (.A(hs_en_low_cnt[10]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[10]), .D(n446), .Z(n50[10])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1959_4_lut.init = 16'hc088;
    LUT4 i1960_4_lut (.A(hs_en_low_cnt[9]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[9]), .D(n446), .Z(n50[9])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1960_4_lut.init = 16'hc088;
    LUT4 i1961_4_lut (.A(hs_en_low_cnt[8]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[8]), .D(n446), .Z(n50[8])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1961_4_lut.init = 16'hc088;
    LUT4 i1962_4_lut (.A(hs_en_low_cnt[7]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[7]), .D(n446), .Z(n50[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1962_4_lut.init = 16'hc088;
    LUT4 i1963_4_lut (.A(hs_en_low_cnt[6]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[6]), .D(n446), .Z(n50[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1963_4_lut.init = 16'hc088;
    CCU2D add_3608_11 (.A0(hs_en_low_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_low_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3182), .COUT(n3183), .S0(n4065[9]), .S1(n4065[10]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(137[69:84])
    defparam add_3608_11.INIT0 = 16'h5aaa;
    defparam add_3608_11.INIT1 = 16'h5aaa;
    defparam add_3608_11.INJECT1_0 = "NO";
    defparam add_3608_11.INJECT1_1 = "NO";
    LUT4 i1964_4_lut (.A(hs_en_low_cnt[5]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[5]), .D(n446), .Z(n50[5])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1964_4_lut.init = 16'hc088;
    FD1S3JX lp_clk_i0 (.D(lp_clk_1__N_226[0]), .CK(byte_clk), .PD(n31), 
            .Q(lp_clk[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(150[16] 169[14])
    defparam lp_clk_i0.GSR = "ENABLED";
    LUT4 i1968_4_lut (.A(hs_en_low_cnt[4]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[4]), .D(n446), .Z(n50[4])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1968_4_lut.init = 16'hc088;
    LUT4 i2161_3_lut (.A(hs_extended[1]), .B(hs_extended[3]), .C(hs_extended[2]), 
         .Z(n2458)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i2161_3_lut.init = 16'hecec;
    CCU2D add_3608_9 (.A0(hs_en_low_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_low_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3181), .COUT(n3182), .S0(n4065[7]), .S1(n4065[8]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(137[69:84])
    defparam add_3608_9.INIT0 = 16'h5aaa;
    defparam add_3608_9.INIT1 = 16'h5aaa;
    defparam add_3608_9.INJECT1_0 = "NO";
    defparam add_3608_9.INJECT1_1 = "NO";
    LUT4 i1969_4_lut (.A(hs_en_low_cnt[3]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[3]), .D(n446), .Z(n50[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1969_4_lut.init = 16'hc088;
    LUT4 i2100_3_lut (.A(lp_clk[0]), .B(n31_adj_668), .C(n3246), .Z(lp_clk_1__N_226[0])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(162[31] 163[85])
    defparam i2100_3_lut.init = 16'h8c8c;
    LUT4 i1970_4_lut (.A(hs_en_low_cnt[2]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[2]), .D(n446), .Z(n50[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1970_4_lut.init = 16'hc088;
    CCU2D add_3608_7 (.A0(hs_en_low_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_low_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3180), .COUT(n3181), .S0(n4065[5]), .S1(n4065[6]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(137[69:84])
    defparam add_3608_7.INIT0 = 16'h5aaa;
    defparam add_3608_7.INIT1 = 16'h5aaa;
    defparam add_3608_7.INJECT1_0 = "NO";
    defparam add_3608_7.INJECT1_1 = "NO";
    LUT4 i1971_4_lut (.A(hs_en_low_cnt[1]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[1]), .D(n446), .Z(n50[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1971_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_rep_43 (.A(hs_en_high_cnt[0]), .B(hs_en_high_cnt[1]), 
         .Z(n3982)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(161[31:68])
    defparam i1_2_lut_rep_43.init = 16'hbbbb;
    CCU2D add_3608_5 (.A0(hs_en_low_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_low_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3179), .COUT(n3180), .S0(n4065[3]), .S1(n4065[4]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(137[69:84])
    defparam add_3608_5.INIT0 = 16'h5aaa;
    defparam add_3608_5.INIT1 = 16'h5aaa;
    defparam add_3608_5.INJECT1_0 = "NO";
    defparam add_3608_5.INJECT1_1 = "NO";
    FD1S3AY lp_data_i1 (.D(lp_data_1__N_39[1]), .CK(byte_clk), .Q(\LP1_1__N_251[1] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(150[16] 169[14])
    defparam lp_data_i1.GSR = "ENABLED";
    CCU2D add_3608_3 (.A0(hs_en_low_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_low_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3178), .COUT(n3179), .S0(n4065[1]), .S1(n4065[2]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(137[69:84])
    defparam add_3608_3.INIT0 = 16'h5aaa;
    defparam add_3608_3.INIT1 = 16'h5aaa;
    defparam add_3608_3.INJECT1_0 = "NO";
    defparam add_3608_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(hs_en_high_cnt[0]), .B(hs_en_high_cnt[1]), .C(hs_en_high_cnt[2]), 
         .Z(n3456)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(161[31:68])
    defparam i1_2_lut_3_lut.init = 16'hbfbf;
    CCU2D add_3608_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(hs_en_low_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3178), .S1(n4065[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(137[69:84])
    defparam add_3608_1.INIT0 = 16'hF000;
    defparam add_3608_1.INIT1 = 16'h5555;
    defparam add_3608_1.INJECT1_0 = "NO";
    defparam add_3608_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_44 (.A(hs_extended[4]), .B(hs_extended[5]), .Z(n3983)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_44.init = 16'h8888;
    LUT4 i1_3_lut (.A(\lp_data[0] ), .B(n3520), .C(n2062), .Z(lp_data_1__N_229[0])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam i1_3_lut.init = 16'hb3b3;
    CCU2D add_3607_17 (.A0(hs_en_high_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3177), .S0(n4047[15]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(133[75:91])
    defparam add_3607_17.INIT0 = 16'h5aaa;
    defparam add_3607_17.INIT1 = 16'h0000;
    defparam add_3607_17.INJECT1_0 = "NO";
    defparam add_3607_17.INJECT1_1 = "NO";
    CCU2D add_3607_15 (.A0(hs_en_high_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_high_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3176), .COUT(n3177), .S0(n4047[13]), .S1(n4047[14]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(133[75:91])
    defparam add_3607_15.INIT0 = 16'h5aaa;
    defparam add_3607_15.INIT1 = 16'h5aaa;
    defparam add_3607_15.INJECT1_0 = "NO";
    defparam add_3607_15.INJECT1_1 = "NO";
    LUT4 i2055_2_lut (.A(byte_D0[3]), .B(hs_en), .Z(\hold_data_0__31__N_41[3] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2055_2_lut.init = 16'h8888;
    LUT4 i2056_2_lut (.A(byte_D0[2]), .B(hs_en), .Z(\hold_data_0__31__N_41[2] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2056_2_lut.init = 16'h8888;
    LUT4 i2057_2_lut (.A(byte_D0[1]), .B(hs_en), .Z(\hold_data_0__31__N_41[1] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2057_2_lut.init = 16'h8888;
    LUT4 i2030_2_lut (.A(byte_D0[0]), .B(hs_en), .Z(\hold_data_0__31__N_41[0] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2030_2_lut.init = 16'h8888;
    LUT4 i2047_2_lut (.A(byte_D0[7]), .B(hs_en), .Z(\hold_data_0__31__N_41[7] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2047_2_lut.init = 16'h8888;
    LUT4 i2048_2_lut (.A(byte_D0[6]), .B(hs_en), .Z(\hold_data_0__31__N_41[6] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2048_2_lut.init = 16'h8888;
    CCU2D add_3607_13 (.A0(hs_en_high_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_high_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3175), .COUT(n3176), .S0(n4047[11]), .S1(n4047[12]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(133[75:91])
    defparam add_3607_13.INIT0 = 16'h5aaa;
    defparam add_3607_13.INIT1 = 16'h5aaa;
    defparam add_3607_13.INJECT1_0 = "NO";
    defparam add_3607_13.INJECT1_1 = "NO";
    LUT4 i3300_3_lut_4_lut (.A(hs_extended[4]), .B(hs_extended[5]), .C(hs_extended[1]), 
         .D(hs_extended[2]), .Z(n3603)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3300_3_lut_4_lut.init = 16'h8000;
    FD1S3AY lp_clk_i1 (.D(lp_clk_1__N_35[1]), .CK(byte_clk), .Q(lp_clk[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(150[16] 169[14])
    defparam lp_clk_i1.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i15 (.D(n4047[15]), .SP(byte_clk_enable_60), 
            .CD(hs_en_high_cnt_15__N_188), .CK(byte_clk), .Q(hs_en_high_cnt[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i15.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i14 (.D(n4047[14]), .SP(byte_clk_enable_60), 
            .CD(hs_en_high_cnt_15__N_188), .CK(byte_clk), .Q(hs_en_high_cnt[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i14.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i13 (.D(n4047[13]), .SP(byte_clk_enable_60), 
            .CD(hs_en_high_cnt_15__N_188), .CK(byte_clk), .Q(hs_en_high_cnt[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i13.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i12 (.D(n4047[12]), .SP(byte_clk_enable_60), 
            .CD(hs_en_high_cnt_15__N_188), .CK(byte_clk), .Q(hs_en_high_cnt[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i12.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i11 (.D(n4047[11]), .SP(byte_clk_enable_60), 
            .CD(hs_en_high_cnt_15__N_188), .CK(byte_clk), .Q(hs_en_high_cnt[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i11.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i10 (.D(n4047[10]), .SP(byte_clk_enable_60), 
            .CD(hs_en_high_cnt_15__N_188), .CK(byte_clk), .Q(hs_en_high_cnt[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i10.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i9 (.D(n4047[9]), .SP(byte_clk_enable_60), .CD(hs_en_high_cnt_15__N_188), 
            .CK(byte_clk), .Q(hs_en_high_cnt[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i9.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i8 (.D(n4047[8]), .SP(byte_clk_enable_60), .CD(hs_en_high_cnt_15__N_188), 
            .CK(byte_clk), .Q(hs_en_high_cnt[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i8.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i7 (.D(n4047[7]), .SP(byte_clk_enable_60), .CD(hs_en_high_cnt_15__N_188), 
            .CK(byte_clk), .Q(hs_en_high_cnt[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i7.GSR = "ENABLED";
    LUT4 i2053_2_lut (.A(byte_D0[5]), .B(hs_en), .Z(\hold_data_0__31__N_41[5] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2053_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(hs_en_high_cnt[5]), .B(n3456), .C(n3984), .D(n1505), 
         .Z(n31_adj_668)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(166[31:68])
    defparam i3_4_lut.init = 16'hfffe;
    FD1P3IX hs_en_high_cnt__i6 (.D(n4047[6]), .SP(byte_clk_enable_60), .CD(hs_en_high_cnt_15__N_188), 
            .CK(byte_clk), .Q(hs_en_high_cnt[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i6.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i5 (.D(n4047[5]), .SP(byte_clk_enable_60), .CD(hs_en_high_cnt_15__N_188), 
            .CK(byte_clk), .Q(hs_en_high_cnt[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i5.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i4 (.D(n4047[4]), .SP(byte_clk_enable_60), .CD(hs_en_high_cnt_15__N_188), 
            .CK(byte_clk), .Q(hs_en_high_cnt[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i4.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i3 (.D(n4047[3]), .SP(byte_clk_enable_60), .CD(hs_en_high_cnt_15__N_188), 
            .CK(byte_clk), .Q(hs_en_high_cnt[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i3.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i2 (.D(n4047[2]), .SP(byte_clk_enable_60), .CD(hs_en_high_cnt_15__N_188), 
            .CK(byte_clk), .Q(hs_en_high_cnt[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i2.GSR = "ENABLED";
    FD1P3IX hs_en_high_cnt__i1 (.D(n4047[1]), .SP(byte_clk_enable_60), .CD(hs_en_high_cnt_15__N_188), 
            .CK(byte_clk), .Q(hs_en_high_cnt[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i1.GSR = "ENABLED";
    FD1P3IX hs_extended__i15 (.D(n4029[15]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i15.GSR = "ENABLED";
    LUT4 i2054_2_lut (.A(byte_D0[4]), .B(hs_en), .Z(\hold_data_0__31__N_41[4] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2054_2_lut.init = 16'h8888;
    CCU2D add_3607_11 (.A0(hs_en_high_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_high_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3174), .COUT(n3175), .S0(n4047[9]), .S1(n4047[10]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(133[75:91])
    defparam add_3607_11.INIT0 = 16'h5aaa;
    defparam add_3607_11.INIT1 = 16'h5aaa;
    defparam add_3607_11.INJECT1_0 = "NO";
    defparam add_3607_11.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(hs_en_low_cnt[3]), .B(n1478), .C(hs_en_low_cnt[1]), 
         .D(n3587), .Z(n3246)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(163[31:68])
    defparam i4_4_lut.init = 16'hfeff;
    FD1P3IX hs_extended__i14 (.D(n4029[14]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i14.GSR = "ENABLED";
    FD1P3IX hs_extended__i13 (.D(n4029[13]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i13.GSR = "ENABLED";
    FD1P3IX hs_extended__i12 (.D(n4029[12]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i12.GSR = "ENABLED";
    FD1P3IX hs_extended__i11 (.D(n4029[11]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i11.GSR = "ENABLED";
    FD1P3IX hs_extended__i10 (.D(n4029[10]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i10.GSR = "ENABLED";
    FD1P3IX hs_extended__i9 (.D(n4029[9]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i9.GSR = "ENABLED";
    FD1P3IX hs_extended__i8 (.D(n4029[8]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i8.GSR = "ENABLED";
    FD1P3IX hs_extended__i7 (.D(n4029[7]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i7.GSR = "ENABLED";
    FD1P3IX hs_extended__i6 (.D(n4029[6]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i6.GSR = "ENABLED";
    FD1P3IX hs_extended__i5 (.D(n4029[5]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i5.GSR = "ENABLED";
    FD1P3IX hs_extended__i4 (.D(n4029[4]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i4.GSR = "ENABLED";
    FD1P3IX hs_extended__i3 (.D(n4029[3]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i3.GSR = "ENABLED";
    FD1P3IX hs_extended__i2 (.D(n4029[2]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i2.GSR = "ENABLED";
    FD1P3IX hs_extended__i1 (.D(n4029[1]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i1.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i15 (.D(n50[15]), .CK(byte_clk), .Q(hs_en_low_cnt[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i15.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i14 (.D(n50[14]), .CK(byte_clk), .Q(hs_en_low_cnt[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i14.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i13 (.D(n50[13]), .CK(byte_clk), .Q(hs_en_low_cnt[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i13.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i12 (.D(n50[12]), .CK(byte_clk), .Q(hs_en_low_cnt[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i12.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i11 (.D(n50[11]), .CK(byte_clk), .Q(hs_en_low_cnt[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i11.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i10 (.D(n50[10]), .CK(byte_clk), .Q(hs_en_low_cnt[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i10.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i9 (.D(n50[9]), .CK(byte_clk), .Q(hs_en_low_cnt[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i9.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i8 (.D(n50[8]), .CK(byte_clk), .Q(hs_en_low_cnt[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i8.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i7 (.D(n50[7]), .CK(byte_clk), .Q(hs_en_low_cnt[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i7.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i6 (.D(n50[6]), .CK(byte_clk), .Q(hs_en_low_cnt[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i6.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i5 (.D(n50[5]), .CK(byte_clk), .Q(hs_en_low_cnt[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i5.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i4 (.D(n50[4]), .CK(byte_clk), .Q(hs_en_low_cnt[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i4.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i3 (.D(n50[3]), .CK(byte_clk), .Q(hs_en_low_cnt[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i3.GSR = "ENABLED";
    FD1S3AY hs_en_low_cnt__i2 (.D(n50[2]), .CK(byte_clk), .Q(hs_en_low_cnt[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_45 (.A(hs_en_high_cnt[3]), .B(hs_en_high_cnt[4]), 
         .Z(n3984)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(166[31:68])
    defparam i1_2_lut_rep_45.init = 16'heeee;
    FD1S3AY hs_en_low_cnt__i1 (.D(n50[1]), .CK(byte_clk), .Q(hs_en_low_cnt[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i1.GSR = "ENABLED";
    LUT4 i3284_2_lut (.A(hs_en_low_cnt[4]), .B(hs_en_low_cnt[2]), .Z(n3587)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3284_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(hs_en_high_cnt[3]), .B(hs_en_high_cnt[4]), 
         .C(hs_en_high_cnt[1]), .Z(n3513)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(166[31:68])
    defparam i1_2_lut_3_lut_adj_23.init = 16'hfefe;
    LUT4 hs_en_I_0_3591_2_lut (.A(hs_en), .B(q_hs_en), .Z(hs_extended_15__N_153)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(128[34:50])
    defparam hs_en_I_0_3591_2_lut.init = 16'h2222;
    LUT4 i2043_2_lut (.A(byte_D1[3]), .B(hs_en), .Z(\hold_data_0__31__N_41[11] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2043_2_lut.init = 16'h8888;
    LUT4 i2044_2_lut (.A(byte_D1[2]), .B(hs_en), .Z(\hold_data_0__31__N_41[10] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2044_2_lut.init = 16'h8888;
    LUT4 i2045_2_lut (.A(byte_D1[1]), .B(hs_en), .Z(\hold_data_0__31__N_41[9] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2045_2_lut.init = 16'h8888;
    LUT4 i2046_2_lut (.A(byte_D1[0]), .B(hs_en), .Z(\hold_data_0__31__N_41[8] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2046_2_lut.init = 16'h8888;
    LUT4 i2040_2_lut (.A(byte_D1[6]), .B(hs_en), .Z(\hold_data_0__31__N_41[14] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2040_2_lut.init = 16'h8888;
    LUT4 i2039_2_lut (.A(byte_D1[7]), .B(hs_en), .Z(\hold_data_0__31__N_41[15] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2039_2_lut.init = 16'h8888;
    LUT4 i2041_2_lut (.A(byte_D1[5]), .B(hs_en), .Z(\hold_data_0__31__N_41[13] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2041_2_lut.init = 16'h8888;
    LUT4 i2042_2_lut (.A(byte_D1[4]), .B(hs_en), .Z(\hold_data_0__31__N_41[12] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(114[26:83])
    defparam i2042_2_lut.init = 16'h8888;
    CCU2D add_3607_9 (.A0(hs_en_high_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_high_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3173), .COUT(n3174), .S0(n4047[7]), .S1(n4047[8]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(133[75:91])
    defparam add_3607_9.INIT0 = 16'h5aaa;
    defparam add_3607_9.INIT1 = 16'h5aaa;
    defparam add_3607_9.INJECT1_0 = "NO";
    defparam add_3607_9.INJECT1_1 = "NO";
    CCU2D add_3607_7 (.A0(hs_en_high_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_high_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3172), .COUT(n3173), .S0(n4047[5]), .S1(n4047[6]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(133[75:91])
    defparam add_3607_7.INIT0 = 16'h5aaa;
    defparam add_3607_7.INIT1 = 16'h5aaa;
    defparam add_3607_7.INJECT1_0 = "NO";
    defparam add_3607_7.INJECT1_1 = "NO";
    LUT4 i11_4_lut (.A(hs_en_low_cnt[6]), .B(n22_adj_670), .C(n18_adj_671), 
         .D(hs_en_low_cnt[9]), .Z(n1478)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(163[31:68])
    defparam i11_4_lut.init = 16'hfffd;
    LUT4 i10_4_lut (.A(hs_en_low_cnt[13]), .B(n20_adj_672), .C(n14), .D(hs_en_low_cnt[5]), 
         .Z(n22_adj_670)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(163[31:68])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(hs_en_low_cnt[12]), .B(hs_en_low_cnt[14]), .Z(n18_adj_671)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(163[31:68])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i8_4_lut (.A(hs_en_low_cnt[10]), .B(hs_en_low_cnt[0]), .C(hs_en_low_cnt[8]), 
         .D(hs_en_low_cnt[15]), .Z(n20_adj_672)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(163[31:68])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i2108_4_lut (.A(hs_en_low_cnt[0]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[0]), .D(n446), .Z(n50[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i2108_4_lut.init = 16'hc088;
    LUT4 i3460_4_lut (.A(n3982), .B(hs_en_high_cnt[2]), .C(n3962), .D(hs_en_high_cnt[3]), 
         .Z(hsxx_clk_en_N_232)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(155[31] 156[90])
    defparam i3460_4_lut.init = 16'h0001;
    LUT4 i2_2_lut (.A(hs_en_low_cnt[7]), .B(hs_en_low_cnt[11]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(163[31:68])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1781_3_lut (.A(Ln), .B(\lp_data[0] ), .C(done_sim), .Z(LP0_1__N_248[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(254[6:14])
    defparam i1781_3_lut.init = 16'hcaca;
    LUT4 i11_3_lut (.A(Lp), .B(\LP1_1__N_251[1] ), .C(done_sim), .Z(LP0_1__N_248[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(109[17:24])
    defparam i11_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(done_sim), .B(\lp_data[0] ), .C(\LP1_1__N_251[1] ), 
         .Z(n966)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(150[16] 169[14])
    defparam i2_3_lut.init = 16'hfdfd;
    LUT4 i9_4_lut (.A(n17), .B(hs_en_high_cnt[8]), .C(n16), .D(hs_en_high_cnt[10]), 
         .Z(n1505)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(166[31:68])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(hs_en_high_cnt[6]), .B(hs_en_high_cnt[11]), .C(hs_en_high_cnt[15]), 
         .D(hs_en_high_cnt[12]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(166[31:68])
    defparam i7_4_lut.init = 16'hfffe;
    CCU2D add_3607_5 (.A0(hs_en_high_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_high_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3171), .COUT(n3172), .S0(n4047[3]), .S1(n4047[4]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(133[75:91])
    defparam add_3607_5.INIT0 = 16'h5aaa;
    defparam add_3607_5.INIT1 = 16'h5aaa;
    defparam add_3607_5.INJECT1_0 = "NO";
    defparam add_3607_5.INJECT1_1 = "NO";
    LUT4 i3434_4_lut (.A(n1448), .B(n3603), .C(hs_extended[0]), .D(n6), 
         .Z(hs_en_high_cnt_15__N_188)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(132[34:72])
    defparam i3434_4_lut.init = 16'h0004;
    LUT4 i1_2_lut (.A(hs_en), .B(hs_extended[3]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(132[43:72])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i9_4_lut_adj_24 (.A(n17_adj_673), .B(hs_extended[12]), .C(n16_adj_674), 
         .D(hs_extended[9]), .Z(n1448)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(132[43:72])
    defparam i9_4_lut_adj_24.init = 16'hfffe;
    CCU2D add_3607_3 (.A0(hs_en_high_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_en_high_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3170), .COUT(n3171), .S0(n4047[1]), .S1(n4047[2]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(133[75:91])
    defparam add_3607_3.INIT0 = 16'h5aaa;
    defparam add_3607_3.INIT1 = 16'h5aaa;
    defparam add_3607_3.INJECT1_0 = "NO";
    defparam add_3607_3.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(hs_en_high_cnt[9]), .B(hs_en_high_cnt[13]), .C(hs_en_high_cnt[7]), 
         .D(hs_en_high_cnt[14]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(166[31:68])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(\LP1_1__N_251[1] ), .B(n31_adj_669), .C(n3520), 
         .D(n2062), .Z(lp_data_1__N_39[1])) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;
    defparam i1_4_lut.init = 16'h2303;
    CCU2D add_3607_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(hs_en_high_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3170), .S1(n4047[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(133[75:91])
    defparam add_3607_1.INIT0 = 16'hF000;
    defparam add_3607_1.INIT1 = 16'h5555;
    defparam add_3607_1.INJECT1_0 = "NO";
    defparam add_3607_1.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_25 (.A(hs_en_low_cnt[2]), .B(n3963), .C(hs_en_low_cnt[1]), 
         .D(n6_adj_675), .Z(n3520)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(167[31:68])
    defparam i4_4_lut_adj_25.init = 16'hffef;
    LUT4 i7_4_lut_adj_26 (.A(hs_extended[8]), .B(hs_extended[11]), .C(hs_extended[15]), 
         .D(hs_extended[10]), .Z(n17_adj_673)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(132[43:72])
    defparam i7_4_lut_adj_26.init = 16'hfffe;
    LUT4 i6_4_lut_adj_27 (.A(hs_extended[6]), .B(hs_extended[13]), .C(hs_extended[7]), 
         .D(hs_extended[14]), .Z(n16_adj_674)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(132[43:72])
    defparam i6_4_lut_adj_27.init = 16'hfffe;
    LUT4 i1_2_lut_adj_28 (.A(hs_en_low_cnt[3]), .B(n2062), .Z(n6_adj_675)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(167[31:68])
    defparam i1_2_lut_adj_28.init = 16'hbbbb;
    LUT4 i4_4_lut_adj_29 (.A(hs_en_high_cnt[2]), .B(n3513), .C(n1505), 
         .D(n6_adj_676), .Z(n2062)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(166[31:68])
    defparam i4_4_lut_adj_29.init = 16'hfffd;
    CCU2D add_3606_17 (.A0(hs_extended[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3193), .S0(n4029[15]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(129[60:73])
    defparam add_3606_17.INIT0 = 16'h5aaa;
    defparam add_3606_17.INIT1 = 16'h0000;
    defparam add_3606_17.INJECT1_0 = "NO";
    defparam add_3606_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_30 (.A(hs_en_high_cnt[0]), .B(hs_en_high_cnt[5]), 
         .Z(n6_adj_676)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(166[31:68])
    defparam i1_2_lut_adj_30.init = 16'hbbbb;
    LUT4 i1954_4_lut (.A(hs_en_low_cnt[15]), .B(hs_en_high_cnt_15__N_188), 
         .C(n4065[15]), .D(n446), .Z(n50[15])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam i1954_4_lut.init = 16'hc088;
    LUT4 i4_3_lut (.A(n3621), .B(n8), .C(hs_en_low_cnt[6]), .Z(n446)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i4_3_lut.init = 16'hdfdf;
    LUT4 i3_4_lut_adj_31 (.A(n3615), .B(hs_en_high_cnt_15__N_188), .C(n3631), 
         .D(hs_en_low_cnt[4]), .Z(n8)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i3_4_lut_adj_31.init = 16'h7fff;
    CCU2D add_3606_15 (.A0(hs_extended[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_extended[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3192), .COUT(n3193), .S0(n4029[13]), .S1(n4029[14]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(129[60:73])
    defparam add_3606_15.INIT0 = 16'h5aaa;
    defparam add_3606_15.INIT1 = 16'h5aaa;
    defparam add_3606_15.INJECT1_0 = "NO";
    defparam add_3606_15.INJECT1_1 = "NO";
    FD1S3AY hs_en_low_cnt__i0 (.D(n50[0]), .CK(byte_clk), .Q(hs_en_low_cnt[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_low_cnt__i0.GSR = "ENABLED";
    FD1P3IX hs_extended__i0 (.D(n4029[0]), .SP(byte_clk_enable_59), .CD(hs_extended_15__N_153), 
            .CK(byte_clk), .Q(hs_extended[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_extended__i0.GSR = "ENABLED";
    LUT4 i3312_4_lut (.A(hs_en_low_cnt[14]), .B(hs_en_low_cnt[9]), .C(hs_en_low_cnt[8]), 
         .D(hs_en_low_cnt[13]), .Z(n3615)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3312_4_lut.init = 16'h8000;
    FD1P3IX hs_en_high_cnt__i0 (.D(n4047[0]), .SP(byte_clk_enable_60), .CD(hs_en_high_cnt_15__N_188), 
            .CK(byte_clk), .Q(hs_en_high_cnt[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam hs_en_high_cnt__i0.GSR = "ENABLED";
    FD1S3AX q_hs_en_3584 (.D(hs_en), .CK(byte_clk), .Q(q_hs_en)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(126[16] 140[14])
    defparam q_hs_en_3584.GSR = "ENABLED";
    CCU2D add_3606_13 (.A0(hs_extended[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_extended[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3191), .COUT(n3192), .S0(n4029[11]), .S1(n4029[12]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(129[60:73])
    defparam add_3606_13.INIT0 = 16'h5aaa;
    defparam add_3606_13.INIT1 = 16'h5aaa;
    defparam add_3606_13.INJECT1_0 = "NO";
    defparam add_3606_13.INJECT1_1 = "NO";
    CCU2D add_3606_11 (.A0(hs_extended[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_extended[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3190), .COUT(n3191), .S0(n4029[9]), .S1(n4029[10]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(129[60:73])
    defparam add_3606_11.INIT0 = 16'h5aaa;
    defparam add_3606_11.INIT1 = 16'h5aaa;
    defparam add_3606_11.INJECT1_0 = "NO";
    defparam add_3606_11.INJECT1_1 = "NO";
    FD1P3AX hsxx_clk_en_3587 (.D(hsxx_clk_en_N_232), .SP(byte_clk_enable_61), 
            .CK(byte_clk), .Q(hsxx_clk_en)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(150[16] 169[14])
    defparam hsxx_clk_en_3587.GSR = "ENABLED";
    CCU2D add_3606_9 (.A0(hs_extended[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_extended[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3189), .COUT(n3190), .S0(n4029[7]), .S1(n4029[8]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(129[60:73])
    defparam add_3606_9.INIT0 = 16'h5aaa;
    defparam add_3606_9.INIT1 = 16'h5aaa;
    defparam add_3606_9.INJECT1_0 = "NO";
    defparam add_3606_9.INJECT1_1 = "NO";
    CCU2D add_3606_7 (.A0(hs_extended[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_extended[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3188), .COUT(n3189), .S0(n4029[5]), .S1(n4029[6]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(129[60:73])
    defparam add_3606_7.INIT0 = 16'h5aaa;
    defparam add_3606_7.INIT1 = 16'h5aaa;
    defparam add_3606_7.INJECT1_0 = "NO";
    defparam add_3606_7.INJECT1_1 = "NO";
    CCU2D add_3606_5 (.A0(hs_extended[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_extended[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3187), .COUT(n3188), .S0(n4029[3]), .S1(n4029[4]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(129[60:73])
    defparam add_3606_5.INIT0 = 16'h5aaa;
    defparam add_3606_5.INIT1 = 16'h5aaa;
    defparam add_3606_5.INJECT1_0 = "NO";
    defparam add_3606_5.INJECT1_1 = "NO";
    LUT4 i3328_4_lut (.A(hs_en_low_cnt[5]), .B(n3617), .C(hs_en_low_cnt[0]), 
         .D(hs_en_low_cnt[12]), .Z(n3631)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3328_4_lut.init = 16'h8000;
    FD1S3JX lp_data_i0 (.D(lp_data_1__N_229[0]), .CK(byte_clk), .PD(n31_adj_669), 
            .Q(\lp_data[0] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=160, LSE_RLINE=177 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(150[16] 169[14])
    defparam lp_data_i0.GSR = "ENABLED";
    CCU2D add_3606_3 (.A0(hs_extended[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hs_extended[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3186), .COUT(n3187), .S0(n4029[1]), .S1(n4029[2]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v(129[60:73])
    defparam add_3606_3.INIT0 = 16'h5aaa;
    defparam add_3606_3.INIT1 = 16'h5aaa;
    defparam add_3606_3.INJECT1_0 = "NO";
    defparam add_3606_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module colorbar_gen_renamed_due_excessive_length_1
//

module colorbar_gen_renamed_due_excessive_length_1 (GND_net, PIXCLK_c, \w_pixdata[0] , 
            \w_pixdata[11] , \w_pixdata[9] , \w_pixdata[10] , \w_pixdata[7] , 
            \w_pixdata[8] , \w_pixdata[5] , \w_pixdata[6] , \w_pixdata[3] , 
            \w_pixdata[4] , \word_cnt[10] , \w_pixdata[1] , \w_pixdata[2] , 
            w_hsync, w_vsync) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input PIXCLK_c;
    output \w_pixdata[0] ;
    output \w_pixdata[11] ;
    output \w_pixdata[9] ;
    output \w_pixdata[10] ;
    output \w_pixdata[7] ;
    output \w_pixdata[8] ;
    output \w_pixdata[5] ;
    output \w_pixdata[6] ;
    output \w_pixdata[3] ;
    output \w_pixdata[4] ;
    output \word_cnt[10] ;
    output \w_pixdata[1] ;
    output \w_pixdata[2] ;
    output w_hsync;
    output w_vsync;
    
    wire PIXCLK_c /* synthesis SET_AS_NETWORK=PIXCLK_c, is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(99[29:35])
    wire [11:0]pixcnt;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(74[16:22])
    wire [11:0]n53;
    
    wire n3164, n3978, n43, n40, n38, n3530, n3979, n16, n12, 
        PIXCLK_c_enable_12, n14, n47, n3970, n1161, n3980, n3985, 
        n2284, n3211, n3498, n5, n1616, n1614;
    wire [11:0]n53_adj_667;
    wire [11:0]linecnt;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(75[16:23])
    
    wire linecnt_11__N_606;
    wire [11:0]n361;
    
    wire n6, n8, n3625, n3764, n20, n3157, n3156, n3987, n21, 
        n3579, n3453, n3155, n3154, n3199, n3153, n5_adj_663, 
        n3611, lv_N_642, n3609, n3454, n3198, n3197, hsync_N_649, 
        n12_adj_664, n2464, vsync_N_646, n3258, n3196, n3195, n9, 
        n3194, n3152, n3169, n3168, n3167, n3166, n3165;
    
    CCU2D pixcnt_276_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pixcnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3164), .S1(n53[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276_add_4_1.INIT0 = 16'hF000;
    defparam pixcnt_276_add_4_1.INIT1 = 16'h0555;
    defparam pixcnt_276_add_4_1.INJECT1_0 = "NO";
    defparam pixcnt_276_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_39 (.A(pixcnt[8]), .B(pixcnt[7]), .Z(n3978)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam i1_2_lut_rep_39.init = 16'heeee;
    PFUMX i55 (.BLUT(n43), .ALUT(n40), .C0(pixcnt[5]), .Z(n38));
    LUT4 i1_3_lut_4_lut (.A(pixcnt[8]), .B(pixcnt[7]), .C(pixcnt[4]), 
         .D(pixcnt[2]), .Z(n3530)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_40 (.A(pixcnt[10]), .B(pixcnt[11]), .Z(n3979)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam i1_2_lut_rep_40.init = 16'heeee;
    LUT4 i8_4_lut (.A(pixcnt[3]), .B(n16), .C(n12), .D(pixcnt[4]), .Z(PIXCLK_c_enable_12)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(93[25:43])
    defparam i8_4_lut.init = 16'h0080;
    LUT4 i7_4_lut (.A(pixcnt[2]), .B(n14), .C(n47), .D(n3978), .Z(n16)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(93[25:43])
    defparam i7_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_31_3_lut (.A(pixcnt[10]), .B(pixcnt[11]), .C(pixcnt[9]), 
         .Z(n3970)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam i1_2_lut_rep_31_3_lut.init = 16'h1010;
    LUT4 i3_2_lut_3_lut_4_lut (.A(pixcnt[10]), .B(pixcnt[11]), .C(n1161), 
         .D(pixcnt[9]), .Z(n12)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam i3_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_41 (.A(pixcnt[5]), .B(pixcnt[6]), .Z(n3980)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_41.init = 16'h8888;
    LUT4 i5_2_lut_3_lut_4_lut (.A(pixcnt[1]), .B(pixcnt[0]), .C(pixcnt[6]), 
         .D(pixcnt[5]), .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(93[25:43])
    defparam i5_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut (.A(n3985), .B(n2284), .C(n3211), .D(n3498), .Z(n47)) /* synthesis lut_function=(!(A (B)+!A !(((D)+!C)+!B))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(93[25:43])
    defparam i1_4_lut.init = 16'h7737;
    LUT4 i1_2_lut_3_lut (.A(pixcnt[1]), .B(pixcnt[0]), .C(pixcnt[2]), 
         .Z(n5)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(93[25:43])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    FD1S3IX pixcnt_276__i0 (.D(n53[0]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i0.GSR = "ENABLED";
    FD1S3IX color_cntr_274__i1 (.D(n53_adj_667[0]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i1.GSR = "ENABLED";
    FD1P3IX linecnt__i11 (.D(n361[11]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i11.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(linecnt[3]), .B(linecnt[5]), .C(linecnt[4]), .D(n6), 
         .Z(n3211)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    FD1P3IX linecnt__i10 (.D(n361[10]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i10.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_15 (.A(linecnt[5]), .B(linecnt[0]), .C(n8), .D(linecnt[4]), 
         .Z(n3498)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(93[25:43])
    defparam i1_4_lut_adj_15.init = 16'h8000;
    LUT4 i3_3_lut (.A(linecnt[2]), .B(linecnt[3]), .C(linecnt[1]), .Z(n8)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(93[25:43])
    defparam i3_3_lut.init = 16'h0808;
    FD1P3IX linecnt__i9 (.D(n361[9]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i9.GSR = "ENABLED";
    FD1P3IX linecnt__i8 (.D(n361[8]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i8.GSR = "ENABLED";
    FD1P3IX linecnt__i7 (.D(n361[7]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i7.GSR = "ENABLED";
    FD1P3IX linecnt__i6 (.D(n361[6]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i6.GSR = "ENABLED";
    FD1P3IX linecnt__i5 (.D(n361[5]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i5.GSR = "ENABLED";
    FD1P3IX linecnt__i4 (.D(n361[4]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i4.GSR = "ENABLED";
    FD1P3IX linecnt__i3 (.D(n361[3]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i3.GSR = "ENABLED";
    FD1P3IX linecnt__i2 (.D(n361[2]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i2.GSR = "ENABLED";
    FD1P3IX linecnt__i1 (.D(n361[1]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i1.GSR = "ENABLED";
    LUT4 i3467_4_lut (.A(n3625), .B(n3764), .C(n20), .D(n2284), .Z(linecnt_11__N_606)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(93[25:43])
    defparam i3467_4_lut.init = 16'h0800;
    LUT4 i3322_4_lut (.A(pixcnt[0]), .B(pixcnt[1]), .C(n3980), .D(linecnt[5]), 
         .Z(n3625)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3322_4_lut.init = 16'h8000;
    CCU2D color_cntr_274_add_4_13 (.A0(\w_pixdata[11] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3157), .S0(n53_adj_667[11]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274_add_4_13.INIT0 = 16'hfaaa;
    defparam color_cntr_274_add_4_13.INIT1 = 16'h0000;
    defparam color_cntr_274_add_4_13.INJECT1_0 = "NO";
    defparam color_cntr_274_add_4_13.INJECT1_1 = "NO";
    CCU2D color_cntr_274_add_4_11 (.A0(\w_pixdata[9] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\w_pixdata[10] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3156), .COUT(n3157), .S0(n53_adj_667[9]), 
          .S1(n53_adj_667[10]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274_add_4_11.INIT0 = 16'hfaaa;
    defparam color_cntr_274_add_4_11.INIT1 = 16'hfaaa;
    defparam color_cntr_274_add_4_11.INJECT1_0 = "NO";
    defparam color_cntr_274_add_4_11.INJECT1_1 = "NO";
    LUT4 i2186_2_lut_rep_48 (.A(pixcnt[1]), .B(pixcnt[0]), .Z(n3987)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(74[16:22])
    defparam i2186_2_lut_rep_48.init = 16'heeee;
    LUT4 i3466_4_lut (.A(n21), .B(n3979), .C(n3579), .D(linecnt[0]), 
         .Z(n3764)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(93[25:43])
    defparam i3466_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_adj_16 (.A(pixcnt[1]), .B(pixcnt[0]), .C(pixcnt[3]), 
         .Z(n3453)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(74[16:22])
    defparam i1_2_lut_3_lut_adj_16.init = 16'hfefe;
    FD1S3IX pixcnt_276__i11 (.D(n53[11]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i11.GSR = "ENABLED";
    LUT4 i8_4_lut_adj_17 (.A(n1161), .B(linecnt[1]), .C(pixcnt[9]), .D(pixcnt[3]), 
         .Z(n21)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i8_4_lut_adj_17.init = 16'hefff;
    LUT4 i3276_2_lut (.A(linecnt[4]), .B(linecnt[2]), .Z(n3579)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3276_2_lut.init = 16'h8888;
    LUT4 i868_2_lut (.A(linecnt[10]), .B(linecnt[11]), .Z(n1161)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(97[43:61])
    defparam i868_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_46 (.A(linecnt[7]), .B(linecnt[6]), .Z(n3985)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_46.init = 16'heeee;
    LUT4 i1_3_lut (.A(linecnt[0]), .B(linecnt[2]), .C(linecnt[1]), .Z(n6)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    CCU2D color_cntr_274_add_4_9 (.A0(\w_pixdata[7] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\w_pixdata[8] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3155), .COUT(n3156), .S0(n53_adj_667[7]), 
          .S1(n53_adj_667[8]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274_add_4_9.INIT0 = 16'hfaaa;
    defparam color_cntr_274_add_4_9.INIT1 = 16'hfaaa;
    defparam color_cntr_274_add_4_9.INJECT1_0 = "NO";
    defparam color_cntr_274_add_4_9.INJECT1_1 = "NO";
    LUT4 i1991_2_lut (.A(linecnt[9]), .B(linecnt[8]), .Z(n2284)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1991_2_lut.init = 16'h8888;
    LUT4 i7_3_lut_4_lut (.A(linecnt[7]), .B(linecnt[6]), .C(linecnt[3]), 
         .D(n3530), .Z(n20)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i7_3_lut_4_lut.init = 16'hffef;
    CCU2D color_cntr_274_add_4_7 (.A0(\w_pixdata[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\w_pixdata[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3154), .COUT(n3155), .S0(n53_adj_667[5]), 
          .S1(n53_adj_667[6]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274_add_4_7.INIT0 = 16'hfaaa;
    defparam color_cntr_274_add_4_7.INIT1 = 16'hfaaa;
    defparam color_cntr_274_add_4_7.INJECT1_0 = "NO";
    defparam color_cntr_274_add_4_7.INJECT1_1 = "NO";
    CCU2D add_60_13 (.A0(linecnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3199), 
          .S0(n361[11]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(94[70:79])
    defparam add_60_13.INIT0 = 16'h5aaa;
    defparam add_60_13.INIT1 = 16'h0000;
    defparam add_60_13.INJECT1_0 = "NO";
    defparam add_60_13.INJECT1_1 = "NO";
    FD1S3IX pixcnt_276__i10 (.D(n53[10]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i10.GSR = "ENABLED";
    FD1S3IX pixcnt_276__i9 (.D(n53[9]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i9.GSR = "ENABLED";
    FD1S3IX pixcnt_276__i8 (.D(n53[8]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i8.GSR = "ENABLED";
    FD1S3IX pixcnt_276__i7 (.D(n53[7]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i7.GSR = "ENABLED";
    FD1S3IX pixcnt_276__i6 (.D(n53[6]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i6.GSR = "ENABLED";
    FD1S3IX pixcnt_276__i5 (.D(n53[5]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i5.GSR = "ENABLED";
    FD1S3IX pixcnt_276__i4 (.D(n53[4]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i4.GSR = "ENABLED";
    FD1S3IX pixcnt_276__i3 (.D(n53[3]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i3.GSR = "ENABLED";
    FD1S3IX pixcnt_276__i2 (.D(n53[2]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i2.GSR = "ENABLED";
    FD1S3IX pixcnt_276__i1 (.D(n53[1]), .CK(PIXCLK_c), .CD(n1616), .Q(pixcnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276__i1.GSR = "ENABLED";
    CCU2D color_cntr_274_add_4_5 (.A0(\w_pixdata[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\w_pixdata[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3153), .COUT(n3154), .S0(n53_adj_667[3]), 
          .S1(n53_adj_667[4]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274_add_4_5.INIT0 = 16'hfaaa;
    defparam color_cntr_274_add_4_5.INIT1 = 16'hfaaa;
    defparam color_cntr_274_add_4_5.INJECT1_0 = "NO";
    defparam color_cntr_274_add_4_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n5_adj_663), .B(pixcnt[9]), .C(n3611), .D(n1161), 
         .Z(lv_N_642)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_4_lut.init = 16'h0002;
    LUT4 i1_4_lut_adj_18 (.A(n3609), .B(n3454), .C(n3980), .D(pixcnt[7]), 
         .Z(n5_adj_663)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;
    defparam i1_4_lut_adj_18.init = 16'h4ccc;
    LUT4 i3308_4_lut (.A(linecnt[5]), .B(n3979), .C(n2284), .D(n3985), 
         .Z(n3611)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i3308_4_lut.init = 16'hfcec;
    LUT4 i3306_4_lut (.A(pixcnt[8]), .B(n3453), .C(pixcnt[2]), .D(pixcnt[4]), 
         .Z(n3609)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i3306_4_lut.init = 16'haaa8;
    LUT4 i3_4_lut (.A(pixcnt[5]), .B(pixcnt[6]), .C(n3453), .D(n3530), 
         .Z(n3454)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    CCU2D add_60_11 (.A0(linecnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(linecnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3198), .COUT(n3199), .S0(n361[9]), .S1(n361[10]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(94[70:79])
    defparam add_60_11.INIT0 = 16'h5aaa;
    defparam add_60_11.INIT1 = 16'h5aaa;
    defparam add_60_11.INJECT1_0 = "NO";
    defparam add_60_11.INJECT1_1 = "NO";
    FD1S3IX color_cntr_274__i12 (.D(n53_adj_667[11]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[11] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i12.GSR = "ENABLED";
    CCU2D add_60_9 (.A0(linecnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(linecnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3197), .COUT(n3198), .S0(n361[7]), .S1(n361[8]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(94[70:79])
    defparam add_60_9.INIT0 = 16'h5aaa;
    defparam add_60_9.INIT1 = 16'h5aaa;
    defparam add_60_9.INJECT1_0 = "NO";
    defparam add_60_9.INJECT1_1 = "NO";
    LUT4 i1316_1_lut (.A(\word_cnt[10] ), .Z(n1614)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam i1316_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_19 (.A(n3970), .B(n38), .C(pixcnt[6]), .D(n3978), 
         .Z(hsync_N_649)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_19.init = 16'h0008;
    LUT4 i6_4_lut (.A(n3985), .B(n12_adj_664), .C(linecnt[8]), .D(n2464), 
         .Z(vsync_N_646)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i6_4_lut.init = 16'h0040;
    LUT4 i5_4_lut (.A(n3258), .B(n1161), .C(linecnt[9]), .D(linecnt[5]), 
         .Z(n12_adj_664)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i5_4_lut.init = 16'h2000;
    LUT4 i2167_4_lut (.A(linecnt[1]), .B(linecnt[4]), .C(linecnt[3]), 
         .D(linecnt[2]), .Z(n2464)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i2167_4_lut.init = 16'hfcec;
    LUT4 i2_3_lut (.A(linecnt[4]), .B(linecnt[3]), .C(n6), .Z(n3258)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    CCU2D add_60_7 (.A0(linecnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(linecnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3196), .COUT(n3197), .S0(n361[5]), .S1(n361[6]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(94[70:79])
    defparam add_60_7.INIT0 = 16'h5aaa;
    defparam add_60_7.INIT1 = 16'h5aaa;
    defparam add_60_7.INJECT1_0 = "NO";
    defparam add_60_7.INJECT1_1 = "NO";
    CCU2D add_60_5 (.A0(linecnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(linecnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3195), .COUT(n3196), .S0(n361[3]), .S1(n361[4]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(94[70:79])
    defparam add_60_5.INIT0 = 16'h5aaa;
    defparam add_60_5.INIT1 = 16'h5aaa;
    defparam add_60_5.INJECT1_0 = "NO";
    defparam add_60_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_20 (.A(pixcnt[9]), .B(n3979), .C(n3978), .D(n9), 
         .Z(n1616)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam i1_4_lut_adj_20.init = 16'heeec;
    CCU2D add_60_3 (.A0(linecnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(linecnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3194), .COUT(n3195), .S0(n361[1]), .S1(n361[2]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(94[70:79])
    defparam add_60_3.INIT0 = 16'h5aaa;
    defparam add_60_3.INIT1 = 16'h5aaa;
    defparam add_60_3.INJECT1_0 = "NO";
    defparam add_60_3.INJECT1_1 = "NO";
    CCU2D add_60_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(linecnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3194), .S1(n361[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(94[70:79])
    defparam add_60_1.INIT0 = 16'hF000;
    defparam add_60_1.INIT1 = 16'h5555;
    defparam add_60_1.INJECT1_0 = "NO";
    defparam add_60_1.INJECT1_1 = "NO";
    CCU2D color_cntr_274_add_4_3 (.A0(\w_pixdata[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\w_pixdata[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3152), .COUT(n3153), .S0(n53_adj_667[1]), 
          .S1(n53_adj_667[2]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274_add_4_3.INIT0 = 16'hfaaa;
    defparam color_cntr_274_add_4_3.INIT1 = 16'hfaaa;
    defparam color_cntr_274_add_4_3.INJECT1_0 = "NO";
    defparam color_cntr_274_add_4_3.INJECT1_1 = "NO";
    FD1S3IX color_cntr_274__i11 (.D(n53_adj_667[10]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[10] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i11.GSR = "ENABLED";
    CCU2D pixcnt_276_add_4_13 (.A0(pixcnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3169), .S0(n53[11]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276_add_4_13.INIT0 = 16'hfaaa;
    defparam pixcnt_276_add_4_13.INIT1 = 16'h0000;
    defparam pixcnt_276_add_4_13.INJECT1_0 = "NO";
    defparam pixcnt_276_add_4_13.INJECT1_1 = "NO";
    FD1S3IX color_cntr_274__i10 (.D(n53_adj_667[9]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[9] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i10.GSR = "ENABLED";
    CCU2D pixcnt_276_add_4_11 (.A0(pixcnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pixcnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3168), .COUT(n3169), .S0(n53[9]), .S1(n53[10]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276_add_4_11.INIT0 = 16'hfaaa;
    defparam pixcnt_276_add_4_11.INIT1 = 16'hfaaa;
    defparam pixcnt_276_add_4_11.INJECT1_0 = "NO";
    defparam pixcnt_276_add_4_11.INJECT1_1 = "NO";
    FD1S3IX color_cntr_274__i9 (.D(n53_adj_667[8]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[8] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i9.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_21 (.A(n3980), .B(pixcnt[4]), .C(pixcnt[3]), .D(n5), 
         .Z(n9)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_21.init = 16'ha888;
    FD1S3IX color_cntr_274__i8 (.D(n53_adj_667[7]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[7] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i8.GSR = "ENABLED";
    FD1S3IX color_cntr_274__i7 (.D(n53_adj_667[6]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[6] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i7.GSR = "ENABLED";
    LUT4 i3327_4_lut (.A(pixcnt[4]), .B(pixcnt[3]), .C(n3987), .D(pixcnt[2]), 
         .Z(n40)) /* synthesis lut_function=(!(A (B+(C (D))))) */ ;
    defparam i3327_4_lut.init = 16'h5777;
    CCU2D pixcnt_276_add_4_9 (.A0(pixcnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pixcnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3167), .COUT(n3168), .S0(n53[7]), .S1(n53[8]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276_add_4_9.INIT0 = 16'hfaaa;
    defparam pixcnt_276_add_4_9.INIT1 = 16'hfaaa;
    defparam pixcnt_276_add_4_9.INJECT1_0 = "NO";
    defparam pixcnt_276_add_4_9.INJECT1_1 = "NO";
    FD1S3IX color_cntr_274__i6 (.D(n53_adj_667[5]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[5] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i6.GSR = "ENABLED";
    FD1S3IX color_cntr_274__i5 (.D(n53_adj_667[4]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[4] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i5.GSR = "ENABLED";
    FD1S3IX color_cntr_274__i4 (.D(n53_adj_667[3]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i4.GSR = "ENABLED";
    FD1S3IX color_cntr_274__i3 (.D(n53_adj_667[2]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[2] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_22 (.A(pixcnt[4]), .B(pixcnt[3]), .C(pixcnt[2]), 
         .D(n3987), .Z(n43)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_22.init = 16'heeea;
    FD1S3IX color_cntr_274__i2 (.D(n53_adj_667[1]), .CK(PIXCLK_c), .CD(n1614), 
            .Q(\w_pixdata[1] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274__i2.GSR = "ENABLED";
    CCU2D color_cntr_274_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\w_pixdata[0] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3152), .S1(n53_adj_667[0]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(108[30:42])
    defparam color_cntr_274_add_4_1.INIT0 = 16'hF000;
    defparam color_cntr_274_add_4_1.INIT1 = 16'h0555;
    defparam color_cntr_274_add_4_1.INJECT1_0 = "NO";
    defparam color_cntr_274_add_4_1.INJECT1_1 = "NO";
    FD1P3IX linecnt__i0 (.D(n361[0]), .SP(PIXCLK_c_enable_12), .CD(linecnt_11__N_606), 
            .CK(PIXCLK_c), .Q(linecnt[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam linecnt__i0.GSR = "ENABLED";
    CCU2D pixcnt_276_add_4_7 (.A0(pixcnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pixcnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3166), .COUT(n3167), .S0(n53[5]), .S1(n53[6]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276_add_4_7.INIT0 = 16'hfaaa;
    defparam pixcnt_276_add_4_7.INIT1 = 16'hfaaa;
    defparam pixcnt_276_add_4_7.INJECT1_0 = "NO";
    defparam pixcnt_276_add_4_7.INJECT1_1 = "NO";
    FD1S3AX lv_43 (.D(lv_N_642), .CK(PIXCLK_c), .Q(\word_cnt[10] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam lv_43.GSR = "ENABLED";
    CCU2D pixcnt_276_add_4_5 (.A0(pixcnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pixcnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3165), .COUT(n3166), .S0(n53[3]), .S1(n53[4]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276_add_4_5.INIT0 = 16'hfaaa;
    defparam pixcnt_276_add_4_5.INIT1 = 16'hfaaa;
    defparam pixcnt_276_add_4_5.INJECT1_0 = "NO";
    defparam pixcnt_276_add_4_5.INJECT1_1 = "NO";
    FD1S3AX hsync_45 (.D(hsync_N_649), .CK(PIXCLK_c), .Q(w_hsync)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam hsync_45.GSR = "ENABLED";
    FD1S3AX vsync_46 (.D(vsync_N_646), .CK(PIXCLK_c), .Q(w_vsync)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=10, LSE_LLINE=300, LSE_RLINE=309 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(90[13] 101[11])
    defparam vsync_46.GSR = "ENABLED";
    CCU2D pixcnt_276_add_4_3 (.A0(pixcnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pixcnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3164), .COUT(n3165), .S0(n53[1]), .S1(n53[2]));   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/colorbar_gen.v(91[45:53])
    defparam pixcnt_276_add_4_3.INIT0 = 16'hfaaa;
    defparam pixcnt_276_add_4_3.INIT1 = 16'hfaaa;
    defparam pixcnt_276_add_4_3.INJECT1_0 = "NO";
    defparam pixcnt_276_add_4_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module BYTE_PACKETIZER
//

module BYTE_PACKETIZER (byte_clk, reset_n_c, GND_net, hs_en, byte_D1, 
            byte_D0, VCC_net, PIXCLK_c, w_vsync, w_hsync, \word_cnt[10] , 
            \w_pixdata[11] , \w_pixdata[10] , \w_pixdata[9] , \w_pixdata[8] , 
            \w_pixdata[7] , \w_pixdata[6] , \w_pixdata[5] , \w_pixdata[4] , 
            \w_pixdata[3] , \w_pixdata[2] , \w_pixdata[1] , \w_pixdata[0] ) /* synthesis syn_module_defined=1 */ ;
    input byte_clk;
    input reset_n_c;
    input GND_net;
    output hs_en;
    output [7:0]byte_D1;
    output [7:0]byte_D0;
    input VCC_net;
    input PIXCLK_c;
    input w_vsync;
    input w_hsync;
    input \word_cnt[10] ;
    input \w_pixdata[11] ;
    input \w_pixdata[10] ;
    input \w_pixdata[9] ;
    input \w_pixdata[8] ;
    input \w_pixdata[7] ;
    input \w_pixdata[6] ;
    input \w_pixdata[5] ;
    input \w_pixdata[4] ;
    input \w_pixdata[3] ;
    input \w_pixdata[2] ;
    input \w_pixdata[1] ;
    input \w_pixdata[0] ;
    
    wire byte_clk /* synthesis SET_AS_NETWORK=byte_clk, is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[35:43])
    wire PIXCLK_c /* synthesis SET_AS_NETWORK=PIXCLK_c, is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(99[29:35])
    wire [31:0]byte_data;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(80[13:22])
    
    wire byte_en;
    wire [15:0]crc;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(83[13:16])
    
    wire chksum_rdy, n3993;
    wire [5:0]data_type;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(82[13:22])
    wire [15:0]q_WC;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(78[12:16])
    
    wire byte_D3_7__N_9, VSYNC_start, VSYNC_end, HSYNC_start, HSYNC_end, 
        q_DE, w_edge_detect;
    
    crc16_2lane_16d33800 \genblk2.u_crc16  (.reset(n3993), .clk(byte_clk), 
            .enable(byte_en), .data({byte_data[15:0]}), .ready(chksum_rdy), 
            .crc({crc})) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=7, LSE_LLINE=138, LSE_RLINE=157 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(154[27] 161[16])
    packetheader_2 u_packetheader (.reset_n(reset_n_c), .short_en(byte_D3_7__N_9), 
            .long_en(byte_en), .byte_clk(byte_clk), .byte_data({byte_data}), 
            .vc({GND_net, GND_net}), .dt({data_type}), .wc({GND_net, 
            GND_net, GND_net, GND_net, GND_net, q_WC[10], GND_net, 
            q_WC[10], q_WC[10], GND_net, q_WC[10], GND_net, GND_net, 
            GND_net, GND_net, GND_net}), .chksum_rdy(chksum_rdy), .chksum({crc}), 
            .bytepkt_en(hs_en), .bytepkt({Open_29, Open_30, Open_31, 
            Open_32, Open_33, Open_34, Open_35, Open_36, Open_37, 
            Open_38, Open_39, Open_40, Open_41, Open_42, Open_43, 
            Open_44, byte_D1, byte_D0}), .EoTp(VCC_net)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=7, LSE_LLINE=138, LSE_RLINE=157 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(123[9] 140[7])
    parallel2byte_24_2_6d62 u_parallel2byte (.reset_n(reset_n_c), .PIXCLK(PIXCLK_c), 
            .DE(\word_cnt[10] ), .PIXDATA({GND_net, GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net, GND_net, \w_pixdata[11] , \w_pixdata[10] , 
            \w_pixdata[9] , \w_pixdata[8] , \w_pixdata[7] , \w_pixdata[6] , 
            \w_pixdata[5] , \w_pixdata[4] , \w_pixdata[3] , \w_pixdata[2] , 
            \w_pixdata[1] , \w_pixdata[0] }), .byte_en(byte_en), .byte_clk(byte_clk), 
            .byte_data({byte_data}), .VSYNC(w_vsync), .HSYNC(w_hsync), 
            .VSYNC_start(VSYNC_start), .VSYNC_end(VSYNC_end), .HSYNC_start(HSYNC_start), 
            .HSYNC_end(HSYNC_end), .data_type({data_type})) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=7, LSE_LLINE=138, LSE_RLINE=157 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(89[9] 106[7])
    LUT4 i3_4_lut (.A(VSYNC_start), .B(HSYNC_end), .C(VSYNC_end), .D(HSYNC_start), 
         .Z(byte_D3_7__N_9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(126[22:71])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 crc_15__I_0_2_lut_rep_54 (.A(q_DE), .B(\word_cnt[10] ), .Z(n3993)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(108[82:90])
    defparam crc_15__I_0_2_lut_rep_54.init = 16'h4444;
    LUT4 i1_2_lut_3_lut (.A(q_DE), .B(\word_cnt[10] ), .C(byte_D3_7__N_9), 
         .Z(w_edge_detect)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(108[82:90])
    defparam i1_2_lut_3_lut.init = 16'hf4f4;
    FD1P3AX q_WC__i1 (.D(\word_cnt[10] ), .SP(w_edge_detect), .CK(byte_clk), 
            .Q(q_WC[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=7, LSE_LLINE=138, LSE_RLINE=157 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(115[16] 119[14])
    defparam q_WC__i1.GSR = "ENABLED";
    FD1S3AX q_DE_22 (.D(\word_cnt[10] ), .CK(byte_clk), .Q(q_DE)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=7, LSE_LLINE=138, LSE_RLINE=157 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(115[16] 119[14])
    defparam q_DE_22.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module crc16_2lane_16d33800
//

module crc16_2lane_16d33800 (reset, clk, enable, data, ready, crc);   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/crc16_2lane_bb.v(49[8:19])
    input reset;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/crc16_2lane_bb.v(52[12:17])
    input clk;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/crc16_2lane_bb.v(53[12:15])
    input enable;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/crc16_2lane_bb.v(54[12:18])
    input [15:0]data;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/crc16_2lane_bb.v(55[19:23])
    output ready;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/crc16_2lane_bb.v(56[17:22])
    output [15:0]crc;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/crc16_2lane_bb.v(57[24:27])
    
    
    
endmodule
//
// Verilog Description of module packetheader_2
//

module packetheader_2 (reset_n, short_en, long_en, byte_clk, byte_data, 
            vc, dt, wc, chksum_rdy, chksum, bytepkt_en, bytepkt, 
            EoTp);   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(49[8:20])
    input reset_n;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(52[19:26])
    input short_en;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(53[19:27])
    input long_en;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(54[19:26])
    input byte_clk;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(55[19:27])
    input [31:0]byte_data;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(56[19:28])
    input [1:0]vc;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(58[19:21])
    input [5:0]dt;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(59[19:21])
    input [15:0]wc;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(60[19:21])
    input chksum_rdy;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(62[19:29])
    input [15:0]chksum;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(63[19:25])
    output bytepkt_en;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(65[23:33])
    output [31:0]bytepkt;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(66[23:30])
    input EoTp;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/packetheader_bb.v(67[23:27])
    
    
    
endmodule
//
// Verilog Description of module parallel2byte_24_2_6d62
//

module parallel2byte_24_2_6d62 (reset_n, PIXCLK, DE, PIXDATA, byte_en, 
            byte_clk, byte_data, VSYNC, HSYNC, VSYNC_start, VSYNC_end, 
            HSYNC_start, HSYNC_end, data_type);   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(49[8:21])
    input reset_n;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(54[29:36])
    input PIXCLK;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(55[29:35])
    input DE;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(56[29:31])
    input [23:0]PIXDATA;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(57[29:36])
    output byte_en;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(59[29:36])
    input byte_clk;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(60[29:37])
    output [31:0]byte_data;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(61[29:38])
    input VSYNC;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(64[29:34])
    input HSYNC;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(65[29:34])
    output VSYNC_start;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(66[29:40])
    output VSYNC_end;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(67[29:38])
    output HSYNC_start;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(68[29:40])
    output HSYNC_end;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(69[29:38])
    output [5:0]data_type;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/parallel2byte_bb.v(70[29:38])
    
    
    
endmodule
//
// Verilog Description of module DCS_Encoder
//

module DCS_Encoder (byte_clk, byte_clk_enable_16, byte_clk_enable_15, 
            \oneh_data[3] , dcs_stop_en, Lp, \wait_cnt[5] , \wait_cnt[15] , 
            n1496, \wait_cnt[12] , \wait_cnt[10] , \wait_cnt[11] , \wait_cnt[2] , 
            \wait_cnt[13] , \wait_cnt[14] , \oneh_data[7] , dcs_escape_en, 
            q_escape_en, \oneh_data[27] , \oneh_data[31] , \oneh_data[23] , 
            \oneh_data[19] , \oneh_data[15] , q_enable, dcs_data_en, 
            n3290, \oneh_data[11] , Ln) /* synthesis syn_module_defined=1 */ ;
    input byte_clk;
    input byte_clk_enable_16;
    input byte_clk_enable_15;
    input \oneh_data[3] ;
    input dcs_stop_en;
    output Lp;
    input \wait_cnt[5] ;
    input \wait_cnt[15] ;
    output n1496;
    input \wait_cnt[12] ;
    input \wait_cnt[10] ;
    input \wait_cnt[11] ;
    input \wait_cnt[2] ;
    input \wait_cnt[13] ;
    input \wait_cnt[14] ;
    input \oneh_data[7] ;
    input dcs_escape_en;
    output q_escape_en;
    input \oneh_data[27] ;
    input \oneh_data[31] ;
    input \oneh_data[23] ;
    input \oneh_data[19] ;
    input \oneh_data[15] ;
    output q_enable;
    input dcs_data_en;
    output n3290;
    input \oneh_data[11] ;
    output Ln;
    
    wire byte_clk /* synthesis SET_AS_NETWORK=byte_clk, is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[35:43])
    wire [5:0]bitcntr;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(63[16:23])
    wire [31:0]bitcntr_5__N_369;
    
    wire n1613, n3967;
    wire [7:0]Lp_N_492;
    wire [31:0]q_oneh_data;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(65[17:28])
    wire [31:0]q_oneh_data_31__N_377;
    
    wire n1608, n1610, n1602, n1604, n1606, n1600, n1598, n1596, 
        n1594, n1590, n1592, n1588, n3986;
    wire [31:0]oneh_data;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(62[18:27])
    
    wire n7, n3996, n3680, n3691, n3688, n3681, n3700, n3697, 
        n3684, n3686, n3687, n3995, n3994, n3971, n3683, Lp_N_482, 
        Lp_N_491, n1361, n3689, n3690, n3695, n3696, n3998, n3997, 
        n3699, n7_adj_652, q_stop_en, stop_data, n3698, n3973, n3968, 
        byte_clk_enable_62, n1612, n14, n10, n3991, n3536, n3966, 
        n3999, n3537;
    
    FD1S3AX bitcntr_i4 (.D(bitcntr_5__N_369[4]), .CK(byte_clk), .Q(bitcntr[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam bitcntr_i4.GSR = "ENABLED";
    FD1S3IX bitcntr_i3 (.D(n3967), .CK(byte_clk), .CD(n1613), .Q(bitcntr[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam bitcntr_i3.GSR = "ENABLED";
    FD1S3IX bitcntr_i2 (.D(Lp_N_492[3]), .CK(byte_clk), .CD(n1613), .Q(bitcntr[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam bitcntr_i2.GSR = "ENABLED";
    FD1S3IX bitcntr_i1 (.D(Lp_N_492[2]), .CK(byte_clk), .CD(n1613), .Q(bitcntr[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam bitcntr_i1.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i31 (.D(q_oneh_data_31__N_377[31]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[31])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i31.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i30 (.D(q_oneh_data_31__N_377[30]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[30])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i30.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i29 (.D(n1608), .CK(byte_clk), .Q(q_oneh_data[29])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i29.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i28 (.D(n1610), .CK(byte_clk), .Q(q_oneh_data[28])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i28.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i27 (.D(q_oneh_data_31__N_377[27]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[27])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i27.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i26 (.D(q_oneh_data_31__N_377[26]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[26])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i26.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i25 (.D(n1602), .CK(byte_clk), .Q(q_oneh_data[25])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i25.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i24 (.D(n1604), .CK(byte_clk), .Q(q_oneh_data[24])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i24.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i23 (.D(q_oneh_data_31__N_377[23]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[23])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i23.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i22 (.D(q_oneh_data_31__N_377[22]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[22])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i22.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i21 (.D(n1606), .CK(byte_clk), .Q(q_oneh_data[21])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i21.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i20 (.D(n1600), .CK(byte_clk), .Q(q_oneh_data[20])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i20.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i19 (.D(q_oneh_data_31__N_377[19]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[19])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i19.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i18 (.D(q_oneh_data_31__N_377[18]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[18])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i18.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i17 (.D(n1598), .CK(byte_clk), .Q(q_oneh_data[17])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i17.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i16 (.D(n1596), .CK(byte_clk), .Q(q_oneh_data[16])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i16.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i15 (.D(q_oneh_data_31__N_377[15]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i15.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i14 (.D(q_oneh_data_31__N_377[14]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i14.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i13 (.D(n1594), .CK(byte_clk), .Q(q_oneh_data[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i13.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i12 (.D(n1590), .CK(byte_clk), .Q(q_oneh_data[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i12.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i11 (.D(q_oneh_data_31__N_377[11]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i11.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i10 (.D(q_oneh_data_31__N_377[10]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i10.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i9 (.D(n1592), .CK(byte_clk), .Q(q_oneh_data[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i9.GSR = "ENABLED";
    FD1S3AX q_oneh_data_i8 (.D(n1588), .CK(byte_clk), .Q(q_oneh_data[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i8.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i7 (.D(q_oneh_data_31__N_377[7]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i7.GSR = "ENABLED";
    FD1P3IX q_oneh_data_i6 (.D(oneh_data[6]), .SP(byte_clk_enable_15), .CD(n3986), 
            .CK(byte_clk), .Q(q_oneh_data[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i6.GSR = "ENABLED";
    FD1P3IX q_oneh_data_i3 (.D(\oneh_data[3] ), .SP(byte_clk_enable_15), 
            .CD(n3986), .CK(byte_clk), .Q(q_oneh_data[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i3.GSR = "ENABLED";
    FD1P3AX q_oneh_data_i2 (.D(q_oneh_data_31__N_377[2]), .SP(byte_clk_enable_16), 
            .CK(byte_clk), .Q(q_oneh_data[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_oneh_data_i2.GSR = "ENABLED";
    LUT4 i3376_4_lut_4_lut (.A(bitcntr[0]), .B(n7), .C(Lp_N_492[3]), .D(n3996), 
         .Z(n3680)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i3376_4_lut_4_lut.init = 16'hf404;
    L6MUX21 i3377 (.D0(n3691), .D1(n3688), .SD(Lp_N_492[3]), .Z(n3681));
    L6MUX21 i3380 (.D0(n3700), .D1(n3697), .SD(Lp_N_492[3]), .Z(n3684));
    PFUMX i3384 (.BLUT(n3686), .ALUT(n3687), .C0(Lp_N_492[2]), .Z(n3688));
    LUT4 i3390_then_3_lut (.A(q_oneh_data[12]), .B(bitcntr[1]), .C(q_oneh_data[8]), 
         .Z(n3995)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam i3390_then_3_lut.init = 16'hb8b8;
    LUT4 i3390_else_3_lut (.A(q_oneh_data[14]), .B(bitcntr[1]), .C(q_oneh_data[10]), 
         .Z(n3994)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam i3390_else_3_lut.init = 16'he2e2;
    LUT4 i3381_3_lut_4_lut (.A(bitcntr[3]), .B(n3971), .C(n3684), .D(n3683), 
         .Z(Lp_N_482)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam i3381_3_lut_4_lut.init = 16'hf690;
    LUT4 i3378_3_lut_4_lut (.A(bitcntr[3]), .B(n3971), .C(n3681), .D(n3680), 
         .Z(Lp_N_491)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam i3378_3_lut_4_lut.init = 16'hf690;
    LUT4 i1_3_lut_4_lut (.A(bitcntr[3]), .B(n3971), .C(bitcntr[4]), .D(bitcntr[5]), 
         .Z(n1361)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(110[54:63])
    defparam i1_3_lut_4_lut.init = 16'hfe01;
    PFUMX i3387 (.BLUT(n3689), .ALUT(n3690), .C0(Lp_N_492[2]), .Z(n3691));
    PFUMX i3393 (.BLUT(n3695), .ALUT(n3696), .C0(Lp_N_492[2]), .Z(n3697));
    LUT4 i3399_then_3_lut (.A(q_oneh_data[13]), .B(bitcntr[1]), .C(q_oneh_data[9]), 
         .Z(n3998)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam i3399_then_3_lut.init = 16'hb8b8;
    LUT4 i3399_else_3_lut (.A(q_oneh_data[15]), .B(bitcntr[1]), .C(q_oneh_data[11]), 
         .Z(n3997)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam i3399_else_3_lut.init = 16'he2e2;
    LUT4 i3395_3_lut_3_lut (.A(bitcntr[0]), .B(q_oneh_data[23]), .C(q_oneh_data[21]), 
         .Z(n3699)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i3395_3_lut_3_lut.init = 16'he4e4;
    LUT4 i18_3_lut (.A(q_oneh_data[6]), .B(q_oneh_data[2]), .C(bitcntr[1]), 
         .Z(n7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(116[54:65])
    defparam i18_3_lut.init = 16'hcaca;
    LUT4 i18_3_lut_adj_13 (.A(q_oneh_data[7]), .B(q_oneh_data[3]), .C(bitcntr[1]), 
         .Z(n7_adj_652)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i18_3_lut_adj_13.init = 16'hcaca;
    LUT4 stop_en_I_0_2_lut (.A(dcs_stop_en), .B(q_stop_en), .Z(stop_data)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(70[35:57])
    defparam stop_en_I_0_2_lut.init = 16'h2222;
    LUT4 i3394_3_lut_3_lut (.A(bitcntr[0]), .B(q_oneh_data[19]), .C(q_oneh_data[17]), 
         .Z(n3698)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i3394_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3392_3_lut_3_lut (.A(bitcntr[0]), .B(q_oneh_data[31]), .C(q_oneh_data[29]), 
         .Z(n3696)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i3392_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3391_3_lut_3_lut (.A(bitcntr[0]), .B(q_oneh_data[27]), .C(q_oneh_data[25]), 
         .Z(n3695)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i3391_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3386_3_lut_3_lut (.A(bitcntr[0]), .B(q_oneh_data[22]), .C(q_oneh_data[20]), 
         .Z(n3690)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i3386_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3385_3_lut_3_lut (.A(bitcntr[0]), .B(q_oneh_data[18]), .C(q_oneh_data[16]), 
         .Z(n3689)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i3385_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3383_3_lut_3_lut (.A(bitcntr[0]), .B(q_oneh_data[30]), .C(q_oneh_data[28]), 
         .Z(n3687)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i3383_3_lut_3_lut.init = 16'he4e4;
    PFUMX i3396 (.BLUT(n3698), .ALUT(n3699), .C0(Lp_N_492[2]), .Z(n3700));
    LUT4 i3382_3_lut_3_lut (.A(bitcntr[0]), .B(q_oneh_data[26]), .C(q_oneh_data[24]), 
         .Z(n3686)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i3382_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1948_4_lut (.A(bitcntr[4]), .B(byte_clk_enable_16), .C(n3973), 
         .D(n3968), .Z(bitcntr_5__N_369[4])) /* synthesis lut_function=(A (B+(C (D)))+!A (B+!((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(109[28] 111[55])
    defparam i1948_4_lut.init = 16'hecdc;
    FD1P3JX LP_i2 (.D(Lp_N_482), .SP(byte_clk_enable_62), .PD(n1612), 
            .CK(byte_clk), .Q(Lp)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam LP_i2.GSR = "ENABLED";
    LUT4 i7_4_lut (.A(\wait_cnt[5] ), .B(n14), .C(n10), .D(\wait_cnt[15] ), 
         .Z(n1496)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(122[21:33])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(bitcntr[1]), .B(bitcntr[0]), .Z(Lp_N_492[2])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i1_2_lut_rep_52 (.A(bitcntr[0]), .B(bitcntr[1]), .Z(n3991)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[27:39])
    defparam i1_2_lut_rep_52.init = 16'heeee;
    LUT4 i1_2_lut_rep_28_3_lut_4_lut (.A(bitcntr[0]), .B(bitcntr[1]), .C(bitcntr[3]), 
         .D(bitcntr[2]), .Z(n3967)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[27:39])
    defparam i1_2_lut_rep_28_3_lut_4_lut.init = 16'hf0e1;
    LUT4 i632_2_lut_rep_32_3_lut (.A(bitcntr[0]), .B(bitcntr[1]), .C(bitcntr[2]), 
         .Z(n3971)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[27:39])
    defparam i632_2_lut_rep_32_3_lut.init = 16'hfefe;
    LUT4 i549_2_lut_rep_29_3_lut_4_lut (.A(bitcntr[0]), .B(bitcntr[1]), 
         .C(bitcntr[3]), .D(bitcntr[2]), .Z(n3968)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[27:39])
    defparam i549_2_lut_rep_29_3_lut_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(\wait_cnt[12] ), .B(\wait_cnt[10] ), .C(\wait_cnt[11] ), 
         .D(\wait_cnt[2] ), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(122[21:33])
    defparam i6_4_lut.init = 16'hfffe;
    FD1S3IX bitcntr_i5 (.D(n1361), .CK(byte_clk), .CD(n1613), .Q(bitcntr[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam bitcntr_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_34_3_lut (.A(bitcntr[0]), .B(bitcntr[1]), .C(n3536), 
         .Z(n3973)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[27:39])
    defparam i1_2_lut_rep_34_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(bitcntr[0]), .B(bitcntr[1]), .C(bitcntr[2]), 
         .Z(Lp_N_492[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[27:39])
    defparam i1_2_lut_3_lut.init = 16'he1e1;
    LUT4 i2_2_lut (.A(\wait_cnt[13] ), .B(\wait_cnt[14] ), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(122[21:33])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(bitcntr[0]), .B(bitcntr[1]), .C(stop_data), 
         .D(n3536), .Z(byte_clk_enable_62)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[27:39])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1314_2_lut_3_lut_4_lut (.A(bitcntr[0]), .B(bitcntr[1]), .C(stop_data), 
         .D(n3536), .Z(n1612)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[27:39])
    defparam i1314_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i43_1_lut (.A(\oneh_data[7] ), .Z(oneh_data[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(83[35:58])
    defparam i43_1_lut.init = 16'h5555;
    LUT4 escape_en_I_0_2_lut_rep_47 (.A(dcs_escape_en), .B(q_escape_en), 
         .Z(n3986)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam escape_en_I_0_2_lut_rep_47.init = 16'h2222;
    LUT4 i3_4_lut (.A(bitcntr[2]), .B(bitcntr[4]), .C(bitcntr[3]), .D(bitcntr[5]), 
         .Z(n3536)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(122[21:33])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1974_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[27] ), 
         .Z(q_oneh_data_31__N_377[27])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1974_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i952_2_lut_rep_27_3_lut_4_lut (.A(byte_clk_enable_15), .B(n3986), 
         .C(n3536), .D(n3991), .Z(n3966)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(109[28:51])
    defparam i952_2_lut_rep_27_3_lut_4_lut.init = 16'h1110;
    LUT4 i1975_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[27] ), 
         .Z(q_oneh_data_31__N_377[26])) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1975_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i1315_1_lut_2_lut_3_lut_4_lut (.A(byte_clk_enable_15), .B(n3986), 
         .C(n3536), .D(n3991), .Z(n1613)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(109[28:51])
    defparam i1315_1_lut_2_lut_3_lut_4_lut.init = 16'heeef;
    LUT4 i1972_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[31] ), 
         .Z(q_oneh_data_31__N_377[31])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1972_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i1973_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[31] ), 
         .Z(q_oneh_data_31__N_377[30])) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1973_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i1309_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[29]), 
         .D(byte_clk_enable_15), .Z(n1608)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1309_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1311_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[28]), 
         .D(byte_clk_enable_15), .Z(n1610)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1311_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1976_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[23] ), 
         .Z(q_oneh_data_31__N_377[23])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1976_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i1305_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[24]), 
         .D(byte_clk_enable_15), .Z(n1604)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1305_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1303_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[25]), 
         .D(byte_clk_enable_15), .Z(n1602)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1303_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1977_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[23] ), 
         .Z(q_oneh_data_31__N_377[22])) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1977_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i1289_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[8]), 
         .D(byte_clk_enable_15), .Z(n1588)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1289_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1307_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[21]), 
         .D(byte_clk_enable_15), .Z(n1606)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1307_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1986_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[7] ), 
         .Z(q_oneh_data_31__N_377[7])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1986_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i1301_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[20]), 
         .D(byte_clk_enable_15), .Z(n1600)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1301_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1980_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[19] ), 
         .Z(q_oneh_data_31__N_377[19])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1980_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i1981_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[19] ), 
         .Z(q_oneh_data_31__N_377[18])) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1981_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i1987_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[3] ), 
         .Z(q_oneh_data_31__N_377[2])) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1987_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i3379_4_lut_4_lut (.A(bitcntr[0]), .B(n7_adj_652), .C(Lp_N_492[3]), 
         .D(n3999), .Z(n3683)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(113[54:65])
    defparam i3379_4_lut_4_lut.init = 16'hf404;
    LUT4 i1299_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[17]), 
         .D(byte_clk_enable_15), .Z(n1598)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1299_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1297_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[16]), 
         .D(byte_clk_enable_15), .Z(n1596)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1297_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1982_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[15] ), 
         .Z(q_oneh_data_31__N_377[15])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1982_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i1983_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[15] ), 
         .Z(q_oneh_data_31__N_377[14])) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1983_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i1295_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[13]), 
         .D(byte_clk_enable_15), .Z(n1594)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1295_3_lut_4_lut.init = 16'h22f2;
    FD1S3AX q_enable_49 (.D(dcs_data_en), .CK(byte_clk), .Q(q_enable)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_enable_49.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(n3537), .B(bitcntr[0]), .C(bitcntr[1]), .Z(n3290)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(122[21:33])
    defparam i1_3_lut.init = 16'heaea;
    LUT4 i1291_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[12]), 
         .D(byte_clk_enable_15), .Z(n1590)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1291_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1984_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[11] ), 
         .Z(q_oneh_data_31__N_377[11])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1984_2_lut_3_lut.init = 16'hf2f2;
    PFUMX i3571 (.BLUT(n3997), .ALUT(n3998), .C0(bitcntr[0]), .Z(n3999));
    LUT4 i3_4_lut_adj_14 (.A(dcs_data_en), .B(n1496), .C(dcs_escape_en), 
         .D(n3536), .Z(n3537)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(122[21:33])
    defparam i3_4_lut_adj_14.init = 16'hfffe;
    FD1S3AX q_stop_en_50 (.D(dcs_stop_en), .CK(byte_clk), .Q(q_stop_en)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_stop_en_50.GSR = "ENABLED";
    FD1S3IX bitcntr_i0 (.D(n3966), .CK(byte_clk), .CD(bitcntr[0]), .Q(bitcntr[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam bitcntr_i0.GSR = "ENABLED";
    FD1S3AX q_escape_en_48 (.D(dcs_escape_en), .CK(byte_clk), .Q(q_escape_en)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam q_escape_en_48.GSR = "ENABLED";
    PFUMX i3569 (.BLUT(n3994), .ALUT(n3995), .C0(bitcntr[0]), .Z(n3996));
    LUT4 i1985_2_lut_3_lut (.A(dcs_escape_en), .B(q_escape_en), .C(\oneh_data[11] ), 
         .Z(q_oneh_data_31__N_377[10])) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1985_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i1293_3_lut_4_lut (.A(dcs_escape_en), .B(q_escape_en), .C(q_oneh_data[9]), 
         .D(byte_clk_enable_15), .Z(n1592)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(69[35:59])
    defparam i1293_3_lut_4_lut.init = 16'h22f2;
    FD1P3JX LP_i1 (.D(Lp_N_491), .SP(byte_clk_enable_62), .PD(n1612), 
            .CK(byte_clk), .Q(Ln)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=18, LSE_RCOL=7, LSE_LLINE=274, LSE_RLINE=285 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dcs_encoder.v(101[14] 119[12])
    defparam LP_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module pll_pix2byte_RGB888_2lane
//

module pll_pix2byte_RGB888_2lane (PIXCLK_c, reset_n_N_15, CLKOP, CLKOS, 
            byte_clk, GND_net) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input PIXCLK_c;
    input reset_n_N_15;
    output CLKOP;
    output CLKOS;
    output byte_clk;
    input GND_net;
    
    wire PIXCLK_c /* synthesis SET_AS_NETWORK=PIXCLK_c, is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(99[29:35])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[21:26])
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[28:33])
    wire byte_clk /* synthesis SET_AS_NETWORK=byte_clk, is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[35:43])
    
    EHXPLLJ PLLInst_0 (.CLKI(PIXCLK_c), .CLKFB(CLKOP), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(reset_n_N_15), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(CLKOP), .CLKOS(CLKOS), .CLKOS2(byte_clk)) /* synthesis FREQUENCY_PIN_CLKOS2="75.000000", FREQUENCY_PIN_CLKOS="300.000000", FREQUENCY_PIN_CLKOP="300.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="9", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=36, LSE_RCOL=154, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(125[36:154])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 6;
    defparam PLLInst_0.CLKOP_DIV = 2;
    defparam PLLInst_0.CLKOS_DIV = 2;
    defparam PLLInst_0.CLKOS2_DIV = 8;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 1;
    defparam PLLInst_0.CLKOS_CPHASE = 1;
    defparam PLLInst_0.CLKOS2_CPHASE = 7;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 4;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "ENABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module DPHY_TX_INST
//

module DPHY_TX_INST (reset_n_c, reset_n_N_15, GND_net, hs_clk, hsxx_clk_en, 
            byte_D1_out, hs_D1, byte_D0_out, hs_D0, CLKOS, CLKOP, 
            VCC_net) /* synthesis syn_module_defined=1 */ ;
    input reset_n_c;
    output reset_n_N_15;
    input GND_net;
    output hs_clk;
    input hsxx_clk_en;
    input [7:0]byte_D1_out;
    output hs_D1;
    input [7:0]byte_D0_out;
    output hs_D0;
    input CLKOS;
    input CLKOP;
    input VCC_net;
    
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[28:33])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[21:26])
    
    LUT4 reset_n_I_0_1_lut (.A(reset_n_c), .Z(reset_n_N_15)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/byte_packetizer.v(110[14:22])
    defparam reset_n_I_0_1_lut.init = 16'h5555;
    oDDRx4 u_oDDRx4 (.GND_net(GND_net), .reset_n_N_15(reset_n_N_15), .hs_clk(hs_clk), 
           .hsxx_clk_en(hsxx_clk_en), .byte_D1_out({byte_D1_out}), .hs_D1(hs_D1), 
           .byte_D0_out({byte_D0_out}), .hs_D0(hs_D0), .CLKOS(CLKOS), 
           .CLKOP(CLKOP), .VCC_net(VCC_net)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dphy_tx_inst.v(131[14:261])
    
endmodule
//
// Verilog Description of module oDDRx4
//

module oDDRx4 (GND_net, reset_n_N_15, hs_clk, hsxx_clk_en, byte_D1_out, 
            hs_D1, byte_D0_out, hs_D0, CLKOS, CLKOP, VCC_net) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input GND_net;
    input reset_n_N_15;
    output hs_clk;
    input hsxx_clk_en;
    input [7:0]byte_D1_out;
    output hs_D1;
    input [7:0]byte_D0_out;
    output hs_D0;
    input CLKOS;
    input CLKOP;
    input VCC_net;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=\u_DPHY_TX_INST/sclk */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dphy_tx_inst.v(131[30:34])
    wire eclkc /* synthesis is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/xo3l/oddrx4.v(60[10:15])
    wire eclkd /* synthesis is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/xo3l/oddrx4.v(64[10:15])
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[28:33])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/top.v(111[21:26])
    
    wire opensync_1, opensync_cken, opensync_0, opensync_2, tx_ready, 
        xstop;
    
    FD1P3AX FF_2 (.D(opensync_0), .SP(opensync_cken), .CK(sclk), .Q(opensync_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/xo3l/oddrx4.v(85[13] 86[24])
    defparam FF_2.GSR = "ENABLED";
    FD1P3AX FF_1 (.D(opensync_1), .SP(opensync_cken), .CK(sclk), .Q(opensync_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/xo3l/oddrx4.v(89[13] 90[24])
    defparam FF_1.GSR = "ENABLED";
    FD1P3AX FF_0 (.D(opensync_2), .SP(opensync_cken), .CK(sclk), .Q(tx_ready)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/xo3l/oddrx4.v(93[13] 94[24])
    defparam FF_0.GSR = "ENABLED";
    FD1P3AY FF_3 (.D(tx_ready), .SP(opensync_cken), .CK(sclk), .Q(opensync_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/xo3l/oddrx4.v(81[13] 82[24])
    defparam FF_3.GSR = "ENABLED";
    ODDRX4B Inst6_ODDRX4B (.D0(hsxx_clk_en), .D1(GND_net), .D2(hsxx_clk_en), 
            .D3(GND_net), .D4(hsxx_clk_en), .D5(GND_net), .D6(hsxx_clk_en), 
            .D7(GND_net), .ECLK(eclkc), .SCLK(sclk), .RST(reset_n_N_15), 
            .Q(hs_clk)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dphy_tx_inst.v(131[14:261])
    defparam Inst6_ODDRX4B.GSR = "ENABLED";
    ODDRX4B Inst5_ODDRX4B1 (.D0(byte_D1_out[0]), .D1(byte_D1_out[1]), .D2(byte_D1_out[2]), 
            .D3(byte_D1_out[3]), .D4(byte_D1_out[4]), .D5(byte_D1_out[5]), 
            .D6(byte_D1_out[6]), .D7(byte_D1_out[7]), .ECLK(eclkd), .SCLK(sclk), 
            .RST(reset_n_N_15), .Q(hs_D1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dphy_tx_inst.v(131[14:261])
    defparam Inst5_ODDRX4B1.GSR = "ENABLED";
    ODDRX4B Inst5_ODDRX4B0 (.D0(byte_D0_out[0]), .D1(byte_D0_out[1]), .D2(byte_D0_out[2]), 
            .D3(byte_D0_out[3]), .D4(byte_D0_out[4]), .D5(byte_D0_out[5]), 
            .D6(byte_D0_out[6]), .D7(byte_D0_out[7]), .ECLK(eclkd), .SCLK(sclk), 
            .RST(reset_n_N_15), .Q(hs_D0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dphy_tx_inst.v(131[14:261])
    defparam Inst5_ODDRX4B0.GSR = "ENABLED";
    ECLKSYNCA Inst4_ECLKSYNCA (.ECLKI(CLKOS), .STOP(xstop), .ECLKO(eclkc)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dphy_tx_inst.v(131[14:261])
    CLKDIVC Inst3_CLKDIVC (.RST(reset_n_N_15), .CLKI(eclkd), .ALIGNWD(GND_net), 
            .CDIVX(sclk)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dphy_tx_inst.v(131[14:261])
    defparam Inst3_CLKDIVC.GSR = "DISABLED";
    defparam Inst3_CLKDIVC.DIV = "4.0";
    ECLKSYNCA Inst2_ECLKSYNCA (.ECLKI(CLKOP), .STOP(GND_net), .ECLKO(eclkd)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dphy_tx_inst.v(131[14:261])
    ROM16X1A LUT4_0 (.AD0(GND_net), .AD1(GND_net), .AD2(opensync_1), .AD3(opensync_0), 
            .DO0(xstop)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dphy_tx_inst.v(131[14:261])
    defparam LUT4_0.initval = 16'b1111111111111110;
    ROM16X1A LUT4_1 (.AD0(VCC_net), .AD1(VCC_net), .AD2(tx_ready), .AD3(opensync_0), 
            .DO0(opensync_cken)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=14, LSE_RCOL=261, LSE_LLINE=131, LSE_RLINE=131 */ ;   // c:/users/migue/downloads/dsitxreferencedesign(2)/rd1184/source/verilog/dphy_tx_inst.v(131[14:261])
    defparam LUT4_1.initval = 16'b0000101001111000;
    
endmodule
