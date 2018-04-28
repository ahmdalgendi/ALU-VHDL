SetActiveLib -work
comp -include "$DSN\src\ALU.vhd" 
comp -include "$DSN\src\TestBench\alu_TB.vhd" 
asim TESTBENCH_FOR_alu 
wave 
wave -noreg A
wave -noreg B
wave -noreg ALU_Sel
wave -noreg ALU_Out
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\alu_TB_tim_cfg.vhd" 
# asim TIMING_FOR_alu 
