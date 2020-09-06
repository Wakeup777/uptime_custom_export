#!/bin/bash
function printMetric {
    echo "# HELP $1 $2"
    echo "# TYPE $1 $3"
    echo "$1 $4"
}

uptime_custom_export(){
    printMetric "uptime_custom_load1" "1 minute load avg" "gauge" $1
    printMetric "uptime_custom_load5" "5 minute load avg" "gauge" $2
    printMetric "uptime_custom_load15" "15 minute load avg" "gauge" $3
}

uptime_custom_export `uptime | cut -d":" -f5| sed 's/, / /g'`