<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="x1" />
        <signal name="x2" />
        <signal name="x3" />
        <signal name="y1" />
        <signal name="y2" />
        <signal name="y3" />
        <signal name="XLXN_63" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <port polarity="Input" name="x1" />
        <port polarity="Input" name="x2" />
        <port polarity="Input" name="x3" />
        <port polarity="Output" name="y1" />
        <port polarity="Output" name="y2" />
        <port polarity="Output" name="y3" />
        <blockdef name="GOST_Decoder">
            <timestamp>2023-10-28T17:19:50</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <line x2="384" y1="416" y2="416" x1="320" />
            <line x2="384" y1="480" y2="480" x1="320" />
            <rect width="256" x="64" y="-64" height="576" />
        </blockdef>
        <blockdef name="GOST_Coder">
            <timestamp>2023-10-28T17:27:11</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="GOST_Decoder" name="XLXI_1">
            <blockpin signalname="x1" name="x0" />
            <blockpin signalname="x2" name="x1" />
            <blockpin signalname="x3" name="x2" />
            <blockpin signalname="XLXN_72" name="y0" />
            <blockpin signalname="XLXN_71" name="y1" />
            <blockpin signalname="XLXN_70" name="y2" />
            <blockpin signalname="XLXN_69" name="y3" />
            <blockpin signalname="XLXN_68" name="y4" />
            <blockpin signalname="XLXN_67" name="y5" />
            <blockpin signalname="XLXN_66" name="y6" />
            <blockpin signalname="XLXN_63" name="y7" />
        </block>
        <block symbolname="GOST_Coder" name="XLXI_2">
            <blockpin signalname="XLXN_63" name="y0" />
            <blockpin signalname="XLXN_72" name="y1" />
            <blockpin signalname="XLXN_66" name="y2" />
            <blockpin signalname="XLXN_71" name="y3" />
            <blockpin signalname="XLXN_67" name="y4" />
            <blockpin signalname="XLXN_70" name="y5" />
            <blockpin signalname="XLXN_68" name="y6" />
            <blockpin signalname="XLXN_69" name="y7" />
            <blockpin signalname="y1" name="x0" />
            <blockpin signalname="y2" name="x1" />
            <blockpin signalname="y3" name="x2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="512" y="784" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1232" y="1296" name="XLXI_2" orien="R0">
        </instance>
        <branch name="x1">
            <wire x2="496" y1="816" y2="816" x1="480" />
            <wire x2="512" y1="816" y2="816" x1="496" />
        </branch>
        <iomarker fontsize="28" x="480" y="816" name="x1" orien="R180" />
        <branch name="x2">
            <wire x2="496" y1="880" y2="880" x1="480" />
            <wire x2="512" y1="880" y2="880" x1="496" />
        </branch>
        <iomarker fontsize="28" x="480" y="880" name="x2" orien="R180" />
        <branch name="x3">
            <wire x2="496" y1="944" y2="944" x1="480" />
            <wire x2="512" y1="944" y2="944" x1="496" />
        </branch>
        <iomarker fontsize="28" x="480" y="944" name="x3" orien="R180" />
        <branch name="y1">
            <wire x2="1648" y1="816" y2="816" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="816" name="y1" orien="R0" />
        <branch name="y2">
            <wire x2="1648" y1="1040" y2="1040" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1040" name="y2" orien="R0" />
        <branch name="y3">
            <wire x2="1648" y1="1264" y2="1264" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1264" name="y3" orien="R0" />
        <branch name="XLXN_63">
            <wire x2="960" y1="1264" y2="1264" x1="896" />
            <wire x2="960" y1="1216" y2="1264" x1="960" />
            <wire x2="1136" y1="1216" y2="1216" x1="960" />
            <wire x2="1136" y1="816" y2="1216" x1="1136" />
            <wire x2="1232" y1="816" y2="816" x1="1136" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="1056" y1="1200" y2="1200" x1="896" />
            <wire x2="1056" y1="944" y2="1200" x1="1056" />
            <wire x2="1232" y1="944" y2="944" x1="1056" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="1040" y1="1136" y2="1136" x1="896" />
            <wire x2="1040" y1="1072" y2="1136" x1="1040" />
            <wire x2="1232" y1="1072" y2="1072" x1="1040" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="960" y1="1072" y2="1072" x1="896" />
            <wire x2="960" y1="1072" y2="1120" x1="960" />
            <wire x2="1120" y1="1120" y2="1120" x1="960" />
            <wire x2="1120" y1="1120" y2="1200" x1="1120" />
            <wire x2="1232" y1="1200" y2="1200" x1="1120" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="1024" y1="1008" y2="1008" x1="896" />
            <wire x2="1024" y1="1008" y2="1264" x1="1024" />
            <wire x2="1232" y1="1264" y2="1264" x1="1024" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="960" y1="944" y2="944" x1="896" />
            <wire x2="960" y1="880" y2="944" x1="960" />
            <wire x2="1104" y1="880" y2="880" x1="960" />
            <wire x2="1104" y1="880" y2="1136" x1="1104" />
            <wire x2="1232" y1="1136" y2="1136" x1="1104" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="944" y1="880" y2="880" x1="896" />
            <wire x2="944" y1="816" y2="880" x1="944" />
            <wire x2="1088" y1="816" y2="816" x1="944" />
            <wire x2="1088" y1="816" y2="1008" x1="1088" />
            <wire x2="1232" y1="1008" y2="1008" x1="1088" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="928" y1="816" y2="816" x1="896" />
            <wire x2="928" y1="752" y2="816" x1="928" />
            <wire x2="1168" y1="752" y2="752" x1="928" />
            <wire x2="1168" y1="752" y2="880" x1="1168" />
            <wire x2="1232" y1="880" y2="880" x1="1168" />
        </branch>
    </sheet>
</drawing>