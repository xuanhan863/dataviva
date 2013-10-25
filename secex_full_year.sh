#!/bin/bash
python -m scripts.secex.step_1_aggregate -y $1
python -m scripts.secex.step_2_disaggregate -y $1
python -m scripts.secex.step_3_pci_wld_eci -y $1 -d
python -m scripts.secex.step_4_eci -y $1 -d
python -m scripts.secex.step_5_unique -y $1 -d
python -m scripts.secex.step_6_yp_rca -y $1 -d
python -m scripts.secex.step_7_ybp_rdo -y $1 -d
python -m scripts.secex.step_8_growth -y $1 -i yb -d
python -m scripts.secex.step_8_growth -y $1 -i ybp -d
python -m scripts.secex.step_8_growth -y $1 -i ybpw -d
python -m scripts.secex.step_8_growth -y $1 -i ybw -d
python -m scripts.secex.step_8_growth -y $1 -i yp -d
python -m scripts.secex.step_8_growth -y $1 -i ypw -d
python -m scripts.secex.step_8_growth -y $1 -i yw -d