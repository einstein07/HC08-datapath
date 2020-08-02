#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sun Aug 02 23:34:56 SAST 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 451a0d674daf48acb8449965c6b81233 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot HC08_tb_behav xil_defaultlib.HC08_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto 451a0d674daf48acb8449965c6b81233 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot HC08_tb_behav xil_defaultlib.HC08_tb xil_defaultlib.glbl -log elaborate.log

