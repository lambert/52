v 20110115 2
C 600 500 0 0 0 A1-sheet.sym
{
T 26700 900 5 10 1 1 0 0 1
file=52.000.00.01.01.sch
T 26700 600 5 10 1 1 0 0 1
page=01
T 28200 600 5 10 1 1 0 0 1
pages=02
T 30700 900 5 10 1 1 0 0 1
revision=20140107
T 30700 600 5 10 1 1 0 0 1
author=Bert Timmerman
T 26700 1200 5 10 1 1 0 0 1
device=INPCHX
T 26700 1600 5 12 1 1 0 0 1
description=Input Channel X
T 26700 1400 5 10 1 1 0 0 1
comment=block diagram
}
C 14300 6600 1 0 0 spst.sym
{
T 14500 7500 5 10 1 1 0 0 1
refdes=101
}
C 14300 3800 1 0 0 spst.sym
{
T 14500 4700 5 10 1 1 0 0 1
refdes=101
}
N 15500 4200 16500 4200 4
C 16300 4200 1 0 0 generic-power.sym
{
T 16500 4450 5 10 1 1 0 3 1
net=+5V
}
C 16300 7000 1 0 0 generic-power.sym
{
T 16500 7250 5 10 1 1 0 3 1
net=-5V
}
N 15500 7000 16500 7000 4
C 16400 5300 1 0 0 gnd-1.sym
N 9500 7000 10600 7000 4
{
T 8700 7200 5 10 1 1 0 0 1
netname=BUS_29
}
C 8700 6900 1 0 0 input.sym
{
T 8600 7000 5 10 1 1 0 7 1
value=-15VDC
T 8800 7200 5 10 0 0 0 0 1
symversion=20090227
}
N 9500 5600 16500 5600 4
{
T 8700 5800 5 10 1 1 0 0 1
netname=BUS_30
}
C 8700 5500 1 0 0 input.sym
{
T 8600 5600 5 10 1 1 0 7 1
value=GND
T 8800 5800 5 10 0 0 0 0 1
symversion=20090227
}
N 9500 4200 10600 4200 4
{
T 8700 4400 5 10 1 1 0 0 1
netname=BUS_31
}
C 8700 4100 1 0 0 input.sym
{
T 8600 4200 5 10 1 1 0 7 1
value=+15VDC
T 8800 4400 5 10 0 0 0 0 1
symversion=20090227
}
C 11800 6600 1 0 1 dc-dc.sym
{
T 10800 7500 5 10 1 1 0 0 1
refdes=103
}
N 11800 7000 14300 7000 4
C 10600 3800 1 0 0 dc-dc.sym
{
T 10800 4700 5 10 1 1 0 0 1
refdes=102
}
N 11800 4200 14300 4200 4
L 14900 7100 14900 4300 3 0 0 2 100 100
N 5000 13700 4600 13700 4
C 3800 13600 1 0 0 input-1.sym
{
T 3700 13700 5 10 1 1 0 7 1
net=INPUT
T 3800 13900 5 10 0 0 0 0 1
device=INPUT
}
C 5000 13300 1 0 0 spst.sym
{
T 5200 14200 5 10 1 1 0 0 1
refdes=001
}
N 4800 13700 4800 15000 4
N 4800 15000 5000 15000 4
N 6400 13700 6400 15000 4
N 6200 15000 6400 15000 4
N 6200 13700 6600 13700 4
C 5000 14600 1 0 0 highpass.sym
{
T 5200 15500 5 10 1 1 0 0 1
refdes=002
}
C 6600 13300 1 0 0 divide-by-N.sym
{
T 6800 14200 5 10 1 1 0 0 1
refdes=003
}
C 8200 13300 1 0 0 amp.sym
{
T 8400 14200 5 10 1 1 0 0 1
refdes=004
}
N 7800 13700 8200 13700 4
