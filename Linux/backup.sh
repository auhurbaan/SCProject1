#!/bin/bash

tar -cf /var/backup/home.tar /home/*
cp /var/backup/home.tar /var/backup/home.09232021.tar
ls -lh /var/backup/* > /var/backup/file_report.txt
free -h > /var/backup/disk_report.txt

