simSetSimulator "-vcssv" -exec "./simv" -args " " -uvmDebug on
debImport "-i" "-simflow" "-dbdir" "./simv.daidir"
srcTBInvokeSim
verdiSetActWin -dock widgetDock_<Member>
verdiWindowResize -win $_Verdi_1 "500" "182" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvCreateWindow
verdiSetActWin -win $_nWave3
srcTBRunSim
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/tb_full_adder"
wvGetSignalSetScope -win $_nWave3 "/tb_full_adder/dut"
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/tb_full_adder/dut/a} \
{/tb_full_adder/dut/b} \
{/tb_full_adder/dut/cin} \
{/tb_full_adder/dut/sum} \
{/tb_full_adder/dut/cout} \
{/tb_full_adder/dut/b} \
{/tb_full_adder/dut/sum} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/tb_full_adder/dut/a} \
{/tb_full_adder/dut/b} \
{/tb_full_adder/dut/cin} \
{/tb_full_adder/dut/sum} \
{/tb_full_adder/dut/cout} \
{/tb_full_adder/dut/b} \
{/tb_full_adder/dut/sum} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave3 {("G1" 7)}
wvGetSignalClose -win $_nWave3
wvZoomAll -win $_nWave3
debExit
