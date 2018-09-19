#!/usr/bin/env bash

function install_python_env {
	brew install python3
	pip3 install virtualenv
}

function install_code_analysis {
	pip3 install codeintel
	pip3 install beautysh
}

function install_data_analysis {
	pip3 install numpy
	pip3 install pandas
}

install_python_env
install_code_analysis
install_data_analysis

# global deps
pip install pylint
pip install psutil
