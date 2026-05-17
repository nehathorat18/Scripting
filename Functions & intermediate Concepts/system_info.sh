#!/bin/bash
###Check your system info here
#
set -euo pipefail

hostname_os(){
        echo "==================== HOSTNAME & OS INFO ===================="
        hostname
        echo "--------------------"
        lsb_release -a
        echo "============================================================"
}

system_uptime(){
        echo "==================== UPTIME ===================="
        uptime
        echo "================================================"
}

disk_usage(){
        echo "==================== DISK USAGE - TOP 5 ===================="
        df -h | sort -hr -k5 | head -n 6
        echo "============================================================"
}

memory_usage(){
        echo "==================== MEMORY USAGE ===================="
        free -h | awk 'NR==2 {print "Used:", $3, "| Free:", $4}'
        echo "======================================================"
}

top_5cpu_processes(){
        echo "==================== TOP 5 CPU PROCESSES ===================="
        ps -eo pid,comm,%cpu --sort=-%cpu | head -6
        echo "============================================================"
}

main(){
        hostname_os
        system_uptime
        disk_usage
        memory_usage
        top_5cpu_processes
}

main
