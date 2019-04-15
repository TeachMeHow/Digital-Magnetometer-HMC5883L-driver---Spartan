<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="Clock" />
        <signal name="Data(7:0)" />
        <signal name="Address(7:0)" />
        <signal name="Busy" />
        <signal name="inByte(7:0)" />
        <port polarity="Output" name="SDA" />
        <port polarity="Output" name="SCL" />
        <port polarity="Input" name="Clock" />
        <port polarity="Input" name="Data(7:0)" />
        <port polarity="Input" name="Address(7:0)" />
        <port polarity="Output" name="Busy" />
        <port polarity="Output" name="inByte(7:0)" />
        <blockdef name="module_a">
            <timestamp>2019-4-15T8:51:5</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="magnetometer_emulator">
            <timestamp>2019-4-15T9:5:48</timestamp>
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <block symbolname="module_a" name="XLXI_2">
            <blockpin signalname="Clock" name="Clock" />
            <blockpin signalname="Data(7:0)" name="Data(7:0)" />
            <blockpin signalname="Address(7:0)" name="Address(7:0)" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="Busy" name="Busy" />
        </block>
        <block symbolname="magnetometer_emulator" name="XLXI_3">
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="inByte(7:0)" name="inByte(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="736" y="1120" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1552" y="1104" name="XLXI_3" orien="R0">
        </instance>
        <branch name="SDA">
            <wire x2="1184" y1="1024" y2="1024" x1="1120" />
            <wire x2="1184" y1="1024" y2="1184" x1="1184" />
            <wire x2="2016" y1="1184" y2="1184" x1="1184" />
            <wire x2="2000" y1="1008" y2="1008" x1="1936" />
            <wire x2="2016" y1="1008" y2="1008" x1="2000" />
            <wire x2="2016" y1="1008" y2="1184" x1="2016" />
            <wire x2="2192" y1="1008" y2="1008" x1="2016" />
        </branch>
        <branch name="SCL">
            <wire x2="1168" y1="1088" y2="1088" x1="1120" />
            <wire x2="1168" y1="1088" y2="1168" x1="1168" />
            <wire x2="2000" y1="1168" y2="1168" x1="1168" />
            <wire x2="2000" y1="1072" y2="1072" x1="1936" />
            <wire x2="2000" y1="1072" y2="1168" x1="2000" />
            <wire x2="2192" y1="1072" y2="1072" x1="2000" />
            <wire x2="2208" y1="1072" y2="1072" x1="2192" />
        </branch>
        <branch name="Clock">
            <wire x2="736" y1="960" y2="960" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="960" name="Clock" orien="R180" />
        <branch name="Data(7:0)">
            <wire x2="736" y1="1024" y2="1024" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="1024" name="Data(7:0)" orien="R180" />
        <branch name="Address(7:0)">
            <wire x2="736" y1="1088" y2="1088" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="1088" name="Address(7:0)" orien="R180" />
        <branch name="Busy">
            <wire x2="1152" y1="960" y2="960" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1152" y="960" name="Busy" orien="R0" />
        <branch name="inByte(7:0)">
            <wire x2="1968" y1="944" y2="944" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="944" name="inByte(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2192" y="1008" name="SDA" orien="R0" />
        <iomarker fontsize="28" x="2208" y="1072" name="SCL" orien="R0" />
    </sheet>
</drawing>