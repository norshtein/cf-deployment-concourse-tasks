#!/bin/bash

echo "Run CATs Failure" > email-out/${OUTPUT_SUBJECT_FILE_NAME}
cat >email-out/${OUTPUT_BODY_FILE_NAME} <<EOF
Running pipeline failed.Please check your pipeline for detailed information.
Pipeline failed time:
EOF

echo $(TZ='utc-8' date) >>email-out/${OUTPUT_BODY_FILE_NAME}
