RECEIVER="t-tosi@microsoft.com"

cat > info.txt <<EOF
Running pipeline failed.Please check your pipeline for detailed information.

Pipeline failed time:
EOF

echo $(TZ='utc-8' date) >> info.txt
cat info.txt | mail -s "Running pipeline failed" $RECEIVER 
