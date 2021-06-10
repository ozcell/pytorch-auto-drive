#!/bin/bash
root=../../
data_dir=/home/ok21/datasets/culane/
exp=$1
detect_dir=../../output/

# These can not be changed
w_lane=30;
iou=0.5;  # Set iou to 0.3 or 0.5
im_w=1640
im_h=590
frame=1
list=${data_dir}list/val.txt
out=./output/${exp}_iou${iou}_validation.txt
./evaluate -a $data_dir -d $detect_dir -i $data_dir -l $list -w $w_lane -t $iou -c $im_w -r $im_h -f $frame -o $out
