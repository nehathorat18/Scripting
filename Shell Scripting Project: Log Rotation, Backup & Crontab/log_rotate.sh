log_rotation() {

    rotation=($(find "$LOG_DIR" -name "*.log" -mtime +7 2>/dev/null))

    count=0

    if [ "${#rotation[@]}" -gt 0 ]; then
        echo "Compressing log files older than 7 days"

        for file in "${rotation[@]}"; do
            gzip "$file"
            echo "Compressed: $file"
            compressed_count=$((compressed_count + 1))
        done

    else
        echo "No old log files found"
    fi

    echo "Total compressed files: $compressed_count"
}
