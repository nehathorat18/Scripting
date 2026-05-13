#!/bin/bash
#
###Ths script is useful to check disk & memory
#
check_disk()
{
        echo " DISK USAGE"
        df -h | awk 'NR==1,NR==2'
}
check_disk

check_memory()
{
        echo " FREE MEMORY "
        free -h  | awk 'NR==2,NR=3 {print $3}'
}
check_memory

main()
{
        check_disk
        check_memory
}
