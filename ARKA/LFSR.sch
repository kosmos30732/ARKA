<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="lfsr_init" />
        <signal name="is_init" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="clk" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="clk_enable" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="lfsr_out" />
        <signal name="XLXN_17" />
        <signal name="data_in" />
        <signal name="data_out" />
        <port polarity="Input" name="lfsr_init" />
        <port polarity="Input" name="is_init" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="clk_enable" />
        <port polarity="Output" name="lfsr_out" />
        <port polarity="Input" name="data_in" />
        <port polarity="Output" name="data_out" />
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="fde">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="m2_1" name="XLXI_1">
            <blockpin signalname="XLXN_11" name="D0" />
            <blockpin signalname="lfsr_init" name="D1" />
            <blockpin signalname="is_init" name="S0" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="fde" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="clk_enable" name="CE" />
            <blockpin signalname="XLXN_14" name="D" />
            <blockpin signalname="XLXN_15" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="clk_enable" name="CE" />
            <blockpin signalname="XLXN_12" name="D" />
            <blockpin signalname="XLXN_14" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="clk_enable" name="CE" />
            <blockpin signalname="XLXN_15" name="D" />
            <blockpin signalname="lfsr_out" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="lfsr_out" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
            <blockpin signalname="data_in" name="I0" />
            <blockpin signalname="lfsr_out" name="I1" />
            <blockpin signalname="data_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="528" y="1008" name="XLXI_1" orien="R0" />
        <instance x="1104" y="1136" name="XLXI_3" orien="R0" />
        <instance x="1648" y="1136" name="XLXI_2" orien="R0" />
        <instance x="2192" y="1136" name="XLXI_4" orien="R0" />
        <branch name="lfsr_init">
            <wire x2="528" y1="912" y2="912" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="912" name="lfsr_init" orien="R180" />
        <branch name="is_init">
            <wire x2="528" y1="976" y2="976" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="976" name="is_init" orien="R180" />
        <branch name="clk">
            <wire x2="1104" y1="1264" y2="1264" x1="496" />
            <wire x2="1648" y1="1264" y2="1264" x1="1104" />
            <wire x2="2192" y1="1264" y2="1264" x1="1648" />
            <wire x2="1104" y1="1008" y2="1264" x1="1104" />
            <wire x2="1648" y1="1008" y2="1264" x1="1648" />
            <wire x2="2192" y1="1008" y2="1264" x1="2192" />
        </branch>
        <branch name="clk_enable">
            <wire x2="1072" y1="1184" y2="1184" x1="496" />
            <wire x2="1600" y1="1184" y2="1184" x1="1072" />
            <wire x2="2128" y1="1184" y2="1184" x1="1600" />
            <wire x2="1104" y1="944" y2="944" x1="1072" />
            <wire x2="1072" y1="944" y2="1184" x1="1072" />
            <wire x2="1648" y1="944" y2="944" x1="1600" />
            <wire x2="1600" y1="944" y2="1184" x1="1600" />
            <wire x2="2128" y1="944" y2="1184" x1="2128" />
            <wire x2="2192" y1="944" y2="944" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="496" y="1184" name="clk_enable" orien="R180" />
        <iomarker fontsize="28" x="496" y="1264" name="clk" orien="R180" />
        <instance x="1568" y="560" name="XLXI_5" orien="R180" />
        <branch name="XLXN_11">
            <wire x2="448" y1="656" y2="848" x1="448" />
            <wire x2="528" y1="848" y2="848" x1="448" />
            <wire x2="1312" y1="656" y2="656" x1="448" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1104" y1="880" y2="880" x1="848" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1568" y1="880" y2="880" x1="1488" />
            <wire x2="1648" y1="880" y2="880" x1="1568" />
            <wire x2="1568" y1="688" y2="880" x1="1568" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2192" y1="880" y2="880" x1="2032" />
        </branch>
        <branch name="lfsr_out">
            <wire x2="2640" y1="624" y2="624" x1="1568" />
            <wire x2="2640" y1="624" y2="880" x1="2640" />
            <wire x2="2640" y1="880" y2="1328" x1="2640" />
            <wire x2="2752" y1="880" y2="880" x1="2640" />
            <wire x2="2400" y1="1328" y2="1424" x1="2400" />
            <wire x2="2480" y1="1424" y2="1424" x1="2400" />
            <wire x2="2640" y1="1328" y2="1328" x1="2400" />
            <wire x2="2640" y1="880" y2="880" x1="2576" />
        </branch>
        <instance x="2480" y="1552" name="XLXI_6" orien="R0" />
        <branch name="data_in">
            <wire x2="2480" y1="1488" y2="1488" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="1488" name="data_in" orien="R180" />
        <iomarker fontsize="28" x="2752" y="880" name="lfsr_out" orien="R0" />
        <branch name="data_out">
            <wire x2="2768" y1="1456" y2="1456" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1456" name="data_out" orien="R0" />
    </sheet>
</drawing>