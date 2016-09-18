#!/bin/bash


memTotal_b=`free -b |grep Mem |awk '{print $2}'`
memFree_b=`free -b |grep Mem |awk '{print $4}'`
memBuffer_b=`free -b |grep Mem |awk '{print $6}'`
memCache_b=`free -b |grep Mem |awk '{print $7}'`

memTotal_m=`free -m |grep Mem |awk '{print $2}'`
memFree_m=`free -m |grep Mem |awk '{print $4}'`
memBuffer_m=`free -m |grep Mem |awk '{print $6}'`
memCache_m=`free -m |grep Mem |awk '{print $7}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
hdd=`df -lh | awk '{if ($6 == "/") { print $5 }}' | head -1 | cut -d'%' -f1`
uptime=`uptime`
ProcessCnt=`ps -A | wc -l`
memUsed_b=$(($memTotal_b-$memFree_b-$memBuffer_b-$memCache_b))
memUsed_m=$(($memTotal_m-$memFree_m-$memBuffer_m-$memCache_m))

memUsedPrc=$((($memUsed_b*100)/$memTotal_b))

echo "<code>1⃣Memory: CRITICAL Total: $memTotal_m MB</code>"
echo "➖➖➖➖➖➖➖➖➖"
echo "<code>2⃣Memory Used: $memUsed_m MB - $memUsedPrc% used!</code>"
echo "➖➖➖➖➖➖➖➖➖"
echo "<code>3⃣Total : $memTotal_b</code>"
echo "➖➖➖➖➖➖➖➖➖"
echo '<code>4⃣CPU Usage :</code> '"$CPUPer"'%'
echo "➖➖➖➖➖➖➖➖➖"
echo '<code>5⃣Hdd : </code>'"$hdd"'%'
echo "➖➖➖➖➖➖➖➖➖"
echo '<code>6⃣Processes : </code>'"$ProcessCnt"
echo "➖➖➖➖➖➖➖➖➖"
echo '<code>7⃣Uptime : </code>'"$uptime"
echo "<code> >>logan<< </code>"
echo "<code> >>@ir_poker<< </code>"
