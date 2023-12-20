<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="in_c" />
        <signal name="in_x1" />
        <signal name="in_x2" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_18" />
        <signal name="out_y1" />
        <signal name="out_y2" />
        <port polarity="Input" name="in_c" />
        <port polarity="Input" name="in_x1" />
        <port polarity="Input" name="in_x2" />
        <port polarity="Output" name="out_y1" />
        <port polarity="Output" name="out_y2" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="in_c" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="in_x1" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="in_x2" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="in_x2" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="in_c" name="I0" />
            <blockpin signalname="in_x2" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin signalname="in_c" name="I0" />
            <blockpin signalname="in_x1" name="I1" />
            <blockpin signalname="XLXN_7" name="I2" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_8">
            <blockpin signalname="in_c" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="in_x2" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="out_y2" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_10">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="out_y1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="in_c">
            <wire x2="528" y1="608" y2="608" x1="416" />
            <wire x2="528" y1="608" y2="688" x1="528" />
            <wire x2="1088" y1="608" y2="608" x1="528" />
            <wire x2="1088" y1="608" y2="1216" x1="1088" />
            <wire x2="1248" y1="608" y2="608" x1="1088" />
            <wire x2="1248" y1="608" y2="1216" x1="1248" />
            <wire x2="1456" y1="608" y2="608" x1="1248" />
            <wire x2="1456" y1="608" y2="1216" x1="1456" />
            <wire x2="1664" y1="608" y2="608" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="416" y="608" name="in_c" orien="R180" />
        <branch name="in_x1">
            <wire x2="528" y1="832" y2="832" x1="416" />
            <wire x2="528" y1="832" y2="912" x1="528" />
            <wire x2="1312" y1="832" y2="832" x1="528" />
            <wire x2="1312" y1="832" y2="1216" x1="1312" />
            <wire x2="1664" y1="832" y2="832" x1="1312" />
        </branch>
        <branch name="in_x2">
            <wire x2="544" y1="1040" y2="1040" x1="416" />
            <wire x2="544" y1="1040" y2="1136" x1="544" />
            <wire x2="848" y1="1040" y2="1040" x1="544" />
            <wire x2="1152" y1="1040" y2="1040" x1="848" />
            <wire x2="1152" y1="1040" y2="1216" x1="1152" />
            <wire x2="1584" y1="1040" y2="1040" x1="1152" />
            <wire x2="1584" y1="1040" y2="1216" x1="1584" />
            <wire x2="1664" y1="1040" y2="1040" x1="1584" />
            <wire x2="848" y1="1040" y2="1216" x1="848" />
        </branch>
        <iomarker fontsize="28" x="416" y="832" name="in_x1" orien="R180" />
        <iomarker fontsize="28" x="416" y="1040" name="in_x2" orien="R180" />
        <instance x="528" y="720" name="XLXI_1" orien="R0" />
        <instance x="528" y="944" name="XLXI_2" orien="R0" />
        <instance x="544" y="1168" name="XLXI_3" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="992" y1="912" y2="912" x1="752" />
            <wire x2="992" y1="912" y2="1216" x1="992" />
            <wire x2="1520" y1="912" y2="912" x1="992" />
            <wire x2="1520" y1="912" y2="1216" x1="1520" />
            <wire x2="1664" y1="912" y2="912" x1="1520" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1376" y1="1136" y2="1136" x1="768" />
            <wire x2="1376" y1="1136" y2="1216" x1="1376" />
            <wire x2="1664" y1="1136" y2="1136" x1="1376" />
        </branch>
        <instance x="864" y="1216" name="XLXI_5" orien="R90" />
        <instance x="1024" y="1216" name="XLXI_6" orien="R90" />
        <instance x="1184" y="1216" name="XLXI_7" orien="R90" />
        <instance x="1392" y="1216" name="XLXI_8" orien="R90" />
        <branch name="XLXN_8">
            <wire x2="784" y1="688" y2="688" x1="752" />
            <wire x2="928" y1="688" y2="688" x1="784" />
            <wire x2="928" y1="688" y2="1216" x1="928" />
            <wire x2="1664" y1="688" y2="688" x1="928" />
            <wire x2="784" y1="688" y2="1216" x1="784" />
        </branch>
        <instance x="720" y="1216" name="XLXI_4" orien="R90" />
        <branch name="XLXN_11">
            <wire x2="1312" y1="1472" y2="1520" x1="1312" />
            <wire x2="1872" y1="1520" y2="1520" x1="1312" />
            <wire x2="2400" y1="1520" y2="1520" x1="1872" />
            <wire x2="1872" y1="1296" y2="1520" x1="1872" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1120" y1="1472" y2="1568" x1="1120" />
            <wire x2="2080" y1="1568" y2="1568" x1="1120" />
            <wire x2="2400" y1="1568" y2="1568" x1="2080" />
            <wire x2="2080" y1="1280" y2="1568" x1="2080" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="960" y1="1472" y2="1600" x1="960" />
            <wire x2="2144" y1="1600" y2="1600" x1="960" />
            <wire x2="2400" y1="1600" y2="1600" x1="2144" />
            <wire x2="2144" y1="1280" y2="1600" x1="2144" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="816" y1="1472" y2="1648" x1="816" />
            <wire x2="1808" y1="1648" y2="1648" x1="816" />
            <wire x2="2400" y1="1648" y2="1648" x1="1808" />
            <wire x2="1808" y1="1296" y2="1648" x1="1808" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1936" y1="1472" y2="1472" x1="1520" />
            <wire x2="2400" y1="1472" y2="1472" x1="1936" />
            <wire x2="1936" y1="1296" y2="1472" x1="1936" />
        </branch>
        <instance x="2000" y="1296" name="XLXI_10" orien="R270" />
        <instance x="2208" y="1280" name="XLXI_9" orien="R270" />
        <branch name="out_y1">
            <wire x2="1872" y1="800" y2="1040" x1="1872" />
            <wire x2="2240" y1="800" y2="800" x1="1872" />
        </branch>
        <branch name="out_y2">
            <wire x2="2112" y1="944" y2="1024" x1="2112" />
            <wire x2="2240" y1="944" y2="944" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2240" y="800" name="out_y1" orien="R0" />
        <iomarker fontsize="28" x="2240" y="944" name="out_y2" orien="R0" />
    </sheet>
</drawing>