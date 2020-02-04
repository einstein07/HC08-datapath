#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Feb 02 16:51:27 SAST 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim mux_tb_behav -key {Behavioral:sim_1:Functional:mux_tb} -tclbatch mux_tb.tcl -log simulate.log"
xsim mux_tb_behav -key {Behavioral:sim_1:Functional:mux_tb} -tclbatch mux_tb.tcl -log simulate.log

