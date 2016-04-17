.ALIASES
_    oscill(enable=N00042 output=N00046 ) CN @RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1)
X_oscill_U12          oscill.U12(Q=oscill_N05983 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS2496@D2_H.TIE1_H.Normal(chips)
X_oscill_U9          oscill.U9(C=oscill_N05399 D=oscill_N02408 Q=oscill_N05522 QN=oscill_N02408 RN=oscill_N05983 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS2338@D2_H.DFC1_H.Normal(chips)
X_oscill_U18          oscill.U18(A=N00042 B=oscill_N03216 Q=oscill_N05375 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS3168@D2_H.NAND21_H.Normal(chips)
X_oscill_U27          oscill.U27(A=oscill_N05375 Q=oscill_N05382 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS4935@D2_H.INV1_H.Normal(chips)
X_oscill_U28          oscill.U28(A=oscill_N05382 Q=oscill_N05386 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS4963@D2_H.INV1_H.Normal(chips)
X_oscill_U30          oscill.U30(A=oscill_N05390 Q=oscill_N05041 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5017@D2_H.INV1_H.Normal(chips)
X_oscill_U29          oscill.U29(A=oscill_N05386 Q=oscill_N05390 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS4991@D2_H.INV1_H.Normal(chips)
X_oscill_U31          oscill.U31(A=oscill_N05041 Q=oscill_N05399 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5043@D2_H.INV1_H.Normal(chips)
X_oscill_U35          oscill.U35(A=oscill_N05419 Q=oscill_N05423 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5157@D2_H.INV1_H.Normal(chips)
X_oscill_U32          oscill.U32(A=oscill_N05399 Q=oscill_N05411 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5079@D2_H.INV1_H.Normal(chips)
X_oscill_U33          oscill.U33(A=oscill_N05411 Q=oscill_N05415 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5105@D2_H.INV1_H.Normal(chips)
X_oscill_U36          oscill.U36(A=oscill_N05423 Q=oscill_N03216 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5183@D2_H.INV1_H.Normal(chips)
X_oscill_U34          oscill.U34(A=oscill_N05415 Q=oscill_N05419 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5131@D2_H.INV1_H.Normal(chips)
X_oscill_U37          oscill.U37(C=oscill_N05522 D=oscill_N05534 Q=oscill_N05720 QN=oscill_N05534 RN=oscill_N05983 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5477@D2_H.DFC1_H.Normal(chips)
X_oscill_U38          oscill.U38(C=oscill_N05720 D=oscill_N05728 Q=oscill_N05791 QN=oscill_N05728 RN=oscill_N05983 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5684@D2_H.DFC1_H.Normal(chips)
X_oscill_U39          oscill.U39(C=oscill_N05791 D=oscill_N05799 Q=oscill_N05862 QN=oscill_N05799 RN=oscill_N05983 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5755@D2_H.DFC1_H.Normal(chips)
X_oscill_U40          oscill.U40(C=oscill_N05862 D=oscill_N05870 Q=oscill_N05933 QN=oscill_N05870 RN=oscill_N05983 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5826@D2_H.DFC1_H.Normal(chips)
X_oscill_U41          oscill.U41(C=oscill_N05933 D=oscill_N05941 Q=N00046 QN=oscill_N05941 RN=oscill_N05983 ) CN
+@RINGOSCILLATOR.Testbench(sch_1):oscill@RINGOSCILLATOR.RingOscillator(sch_1):INS5897@D2_H.DFC1_H.Normal(chips)
_    _(oscill.enable=N00042)
_    _(oscill.output=N00046)
U_Stim          Stim(pin1=N00042 ) CN @RINGOSCILLATOR.Testbench(sch_1):INS32@SOURCE.STIM1.Normal(chips)
V_V1            V1(+=VDD -=0 ) CN @RINGOSCILLATOR.Testbench(sch_1):INS2416@SOURCE.VDC.Normal(chips)
V_V2            V2(+=GND -=0 ) CN @RINGOSCILLATOR.Testbench(sch_1):INS2436@SOURCE.VDC.Normal(chips)
_    _(GND=GND)
_    _(VDD=VDD)
.ENDALIASES
