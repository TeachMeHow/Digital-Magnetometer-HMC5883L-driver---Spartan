<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4(7:0)" />
        <signal name="XLXN_5(3:0)" />
        <signal name="XLXN_6(7:0)" />
        <signal name="XLXN_7(7:0)" />
        <signal name="XLXN_8" />
        <signal name="Clk" />
        <signal name="Reset" />
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="FIFO_Empty" />
        <signal name="FIFO_Full" />
        <signal name="NACK" />
        <signal name="XLXN_17" />
        <signal name="LED(7:0)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Reset" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Output" name="FIFO_Empty" />
        <port polarity="Output" name="FIFO_Full" />
        <port polarity="Output" name="NACK" />
        <port polarity="Output" name="LED(7:0)" />
        <blockdef name="I2C_Master">
            <timestamp>2019-4-13T14:44:44</timestamp>
            <rect width="336" x="64" y="-512" height="572" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="464" y1="-256" y2="-256" x1="400" />
            <line x2="464" y1="-192" y2="-192" x1="400" />
            <rect width="64" x="400" y="-140" height="24" />
            <line x2="464" y1="-128" y2="-128" x1="400" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="464" y1="32" y2="32" x1="400" />
        </blockdef>
        <blockdef name="register_reader">
            <timestamp>2019-4-13T17:36:15</timestamp>
            <rect width="400" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="528" y1="-416" y2="-416" x1="464" />
            <line x2="528" y1="-352" y2="-352" x1="464" />
            <line x2="528" y1="-288" y2="-288" x1="464" />
            <rect width="64" x="464" y="-236" height="24" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
            <rect width="64" x="464" y="-172" height="24" />
            <line x2="528" y1="-160" y2="-160" x1="464" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <block symbolname="I2C_Master" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="Go" />
            <blockpin signalname="XLXN_4(7:0)" name="Address(7:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="ReadCnt(3:0)" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="XLXN_2" name="FIFO_Pop" />
            <blockpin signalname="XLXN_3" name="FIFO_Push" />
            <blockpin signalname="XLXN_6(7:0)" name="FIFO_DI(7:0)" />
            <blockpin signalname="FIFO_Empty" name="FIFO_Empty" />
            <blockpin signalname="FIFO_Full" name="FIFO_Full" />
            <blockpin signalname="XLXN_7(7:0)" name="FIFO_DO(7:0)" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_8" name="Busy" />
            <blockpin signalname="NACK" name="NACK" />
        </block>
        <block symbolname="register_reader" name="XLXI_2">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_8" name="I2C_Busy" />
            <blockpin signalname="XLXN_7(7:0)" name="I2C_FIFO_DO(7:0)" />
            <blockpin signalname="XLXN_1" name="I2C_Go" />
            <blockpin signalname="XLXN_2" name="I2C_FIFO_Pop" />
            <blockpin signalname="XLXN_3" name="I2C_FIFO_Push" />
            <blockpin signalname="XLXN_4(7:0)" name="I2C_Address(7:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="I2C_ReadCnt(3:0)" />
            <blockpin signalname="XLXN_6(7:0)" name="I2C_FIFO_DI(7:0)" />
            <blockpin signalname="LED(7:0)" name="LED(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2128" y="1712" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1120" y="1696" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1888" y1="1280" y2="1280" x1="1648" />
            <wire x2="1888" y1="1232" y2="1280" x1="1888" />
            <wire x2="2128" y1="1232" y2="1232" x1="1888" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1888" y1="1344" y2="1344" x1="1648" />
            <wire x2="1888" y1="1344" y2="1456" x1="1888" />
            <wire x2="2128" y1="1456" y2="1456" x1="1888" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1872" y1="1408" y2="1408" x1="1648" />
            <wire x2="1872" y1="1408" y2="1520" x1="1872" />
            <wire x2="2128" y1="1520" y2="1520" x1="1872" />
        </branch>
        <branch name="XLXN_4(7:0)">
            <wire x2="1856" y1="1472" y2="1472" x1="1648" />
            <wire x2="1856" y1="1296" y2="1472" x1="1856" />
            <wire x2="2128" y1="1296" y2="1296" x1="1856" />
        </branch>
        <branch name="XLXN_5(3:0)">
            <wire x2="1840" y1="1536" y2="1536" x1="1648" />
            <wire x2="1840" y1="1360" y2="1536" x1="1840" />
            <wire x2="2128" y1="1360" y2="1360" x1="1840" />
        </branch>
        <branch name="XLXN_6(7:0)">
            <wire x2="1888" y1="1600" y2="1600" x1="1648" />
            <wire x2="1888" y1="1584" y2="1600" x1="1888" />
            <wire x2="2128" y1="1584" y2="1584" x1="1888" />
        </branch>
        <branch name="XLXN_7(7:0)">
            <wire x2="1040" y1="1136" y2="1664" x1="1040" />
            <wire x2="1120" y1="1664" y2="1664" x1="1040" />
            <wire x2="2656" y1="1136" y2="1136" x1="1040" />
            <wire x2="2656" y1="1136" y2="1584" x1="2656" />
            <wire x2="2656" y1="1584" y2="1584" x1="2592" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1120" y1="1536" y2="1536" x1="1056" />
            <wire x2="1056" y1="1536" y2="1840" x1="1056" />
            <wire x2="2672" y1="1840" y2="1840" x1="1056" />
            <wire x2="2672" y1="1680" y2="1680" x1="2592" />
            <wire x2="2672" y1="1680" y2="1840" x1="2672" />
        </branch>
        <branch name="Clk">
            <wire x2="816" y1="1408" y2="1408" x1="688" />
            <wire x2="1120" y1="1408" y2="1408" x1="816" />
            <wire x2="816" y1="1408" y2="1744" x1="816" />
            <wire x2="2128" y1="1744" y2="1744" x1="816" />
        </branch>
        <branch name="Reset">
            <wire x2="816" y1="1280" y2="1280" x1="672" />
            <wire x2="1120" y1="1280" y2="1280" x1="816" />
            <wire x2="816" y1="1168" y2="1280" x1="816" />
            <wire x2="1712" y1="1168" y2="1168" x1="816" />
            <wire x2="1712" y1="1168" y2="1680" x1="1712" />
            <wire x2="2128" y1="1680" y2="1680" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="672" y="1280" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="688" y="1408" name="Clk" orien="R180" />
        <branch name="SDA">
            <wire x2="2624" y1="1232" y2="1232" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1232" name="SDA" orien="R0" />
        <branch name="SCL">
            <wire x2="2624" y1="1296" y2="1296" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1296" name="SCL" orien="R0" />
        <branch name="FIFO_Empty">
            <wire x2="2624" y1="1456" y2="1456" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1456" name="FIFO_Empty" orien="R0" />
        <branch name="FIFO_Full">
            <wire x2="2624" y1="1520" y2="1520" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1520" name="FIFO_Full" orien="R0" />
        <branch name="NACK">
            <wire x2="2624" y1="1744" y2="1744" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1744" name="NACK" orien="R0" />
        <branch name="LED(7:0)">
            <wire x2="1680" y1="1664" y2="1664" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1664" name="LED(7:0)" orien="R0" />
    </sheet>
</drawing>