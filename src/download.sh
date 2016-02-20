#!/bin/sh

wget "http://downloads.sourceforge.net/project/dwsim/DWSIM/DTL/DWSIM_Standalone_Thermodynamics_Library_v3.2.0.zip?r=&ts=1455993889&use_mirror=netcologne" -O DWSIM_Standalone_Thermodynamics_Library_v3.2.0.zip -q &&

(
	mkdir lib/
	mv DWSIM_Standalone_Thermodynamics_Library_v3.2.0.zip lib/ &&
	cd lib &&
	unzip DWSIM_Standalone_Thermodynamics_Library_v3.2.0.zip
) &&

# Mirrored, because https://ironpython.codeplex.com/downloads/get/970326 isn't
# friendly to automation.
wget http://enophook.resisty.net/~torstein/IronPython-2.7.5.zip -q &&
(
	mkdir python/
	mv IronPython-2.7.5.zip python/ &&
	cd python &&
	unzip IronPython-2.7.5.zip
)
