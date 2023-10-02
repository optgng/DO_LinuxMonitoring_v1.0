#!/bin/bash

if [[ -z "$1" ]]; then
    echo "Usage: $0 <directory>"
    exit 1
elif [[ ! -d "$1" ]]; then
    echo "$1 is not a directory"
    exit 1
elif [[ ${1: -1} != "/" ]]; then
    echo "Directory should end with '/' "
else
    start=$(date +%s.%N)

    total_folders=$(find $1 -type d 2>/dev/null | wc -l)
    top_folders=$(du -ah $1 | sort -rh | head -n 5)
    total_files=$(find $1 -type f 2>/dev/null | wc -l)

    conf_files=$(find $1 -type f -name '*.conf' 2>/dev/null | wc -l)
    txt_files=$(find $1 -type f -name '*.txt' 2>/dev/null | wc -l)
    exe_files=$(find $1 -type f -executable 2>/dev/null| wc -l)
    log_files=$(find $1 -type f -name '*.log' 2>/dev/null | wc -l)
    archive_files=$(find $1 -type f \( -name '*.tar' -o -name '*.tar.gz' -o -name '*.tgz' -o -name '*.zip' -o -name '*.gz' \) 2>/dev/null | wc -l)
    symbolic_links=$(find $1 -type l 2>/dev/null | wc -l)
    top_10_largest_files=$(sudo find $1 -type f -exec du -Sh {} + | sort -rh | head -10 | cat -n | awk '{print $1" - "$3", "$2}')
    top_10_exec_files=$(find $1* -type f -executable 2>/dev/null -exec du -h {} + |sort -hr| sed -n '1,10'p | awk '{printf("%d %s %s ",NR,$2, $1); system("bash -c '\''md5sum "$2"'\''")}'| awk '{printf("%d - %s, %s, %s\n",NR,$2, $3, $4 )}')

    echo "Total number of folders, including subfolders: $total_folders"
    echo "Top 5 folders with largest size: "
    echo "$top_folders"
    echo "Total number of files: $total_files"
    echo ""
    echo "Number of: "
    echo "Configuration files: $conf_files"
    echo "Text files: $txt_files"
    echo "Executable files: $exe_files"
    echo "Log files: $log_files"
    echo "Archive files: $archive_files"
    echo "Symbolic links: $symbolic_links"
    echo ""
    echo "Top 10 files with largest size:"
    echo "$top_10_largest_files"
    echo ""
    echo "Top 10 executable files with largest size and hash:"
    echo "$top_10_exec_files"
    echo ""
    end=$(date +%s.%N)
    runtime=$(echo "$end - $start" | bc)
    echo "Execution time: $runtime seconds"
fi