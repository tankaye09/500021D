set projDir "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/vivado"
set projName "ALU"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/au_top_0.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu__1.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/basket_fsm_2.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/regfile_3.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/main_fsm_4.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/pn_gen_5.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/reset_conditioner_6.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/button_conditioner_7.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/edge_detector_8.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_adder_9.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_shifter_10.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_bool_11.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_cmp_12.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_mul_13.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_mod_14.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_shift_add_15.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/counter_16.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/counter_17.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/counter_18.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/counter_19.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/counter_20.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/pipeline_21.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/full_adder_22.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_adder_XB_23.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_shiftleft_24.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_shiftright_25.v" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/verilog/alu_shiftright_mux_26.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/work/constraint/custom.xdc" "C:/Users/Kaye/Desktop/ComStruc\ 50.002/alchitry/500021D/constraint/customised.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
