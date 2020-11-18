set projDir "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/vivado"
set projName "ALU"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/au_top_0.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu__1.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/reset_conditioner_2.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_adder_3.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_shifter_4.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_bool_5.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_cmp_6.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_mul_7.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_mod_8.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_shift_12_add_9.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/full_adder_10.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_adder_XB_11.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_shiftleft_12.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_shiftright_13.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/verilog/alu_shiftright_mux_14.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/constraint/alchitry.xdc" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/ALU/work/constraint/io.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
