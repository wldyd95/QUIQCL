# 
# Report generation script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7s50csga324-1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir {Q:/Users/swYoo/Arty S7/lag_comp/lag_comp_v1.3.2_16bit/verilog/v1_00.cache/wt} [current_project]
  set_property parent.project_path {Q:/Users/swYoo/Arty S7/lag_comp/lag_comp_v1.3.2_16bit/verilog/v1_00.xpr} [current_project]
  set_property ip_output_repo {{Q:/Users/swYoo/Arty S7/lag_comp/lag_comp_v1.3.2_16bit/verilog/v1_00.cache/ip}} [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet {{Q:/Users/swYoo/Arty S7/lag_comp/lag_comp_v1.3.2_16bit/verilog/v1_00.runs/synth_1/main_without_capture_waveform_data.dcp}}
  read_ip -quiet {{Q:/Users/swYoo/Arty S7/lag_comp/lag_comp_v1.3.2_16bit/verilog/v1_00.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xci}}
  read_ip -quiet {{Q:/Users/swYoo/Arty S7/lag_comp/lag_comp_v1.3.2_16bit/verilog/v1_00.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci}}
  read_xdc {{Q:/Users/swYoo/Arty S7/lag_comp/lag_comp_v1.3.2_16bit/verilog/v1_00.srcs/constrs_1/imports/Arty_S7/Arty-S7-50-Master.xdc}}
  link_design -top main_without_capture_waveform_data -part xc7s50csga324-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force main_without_capture_waveform_data_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file main_without_capture_waveform_data_drc_opted.rpt -pb main_without_capture_waveform_data_drc_opted.pb -rpx main_without_capture_waveform_data_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force main_without_capture_waveform_data_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file main_without_capture_waveform_data_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file main_without_capture_waveform_data_utilization_placed.rpt -pb main_without_capture_waveform_data_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -file main_without_capture_waveform_data_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force main_without_capture_waveform_data_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file main_without_capture_waveform_data_drc_routed.rpt -pb main_without_capture_waveform_data_drc_routed.pb -rpx main_without_capture_waveform_data_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file main_without_capture_waveform_data_methodology_drc_routed.rpt -pb main_without_capture_waveform_data_methodology_drc_routed.pb -rpx main_without_capture_waveform_data_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file main_without_capture_waveform_data_power_routed.rpt -pb main_without_capture_waveform_data_power_summary_routed.pb -rpx main_without_capture_waveform_data_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file main_without_capture_waveform_data_route_status.rpt -pb main_without_capture_waveform_data_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -file main_without_capture_waveform_data_timing_summary_routed.rpt -warn_on_violation  -rpx main_without_capture_waveform_data_timing_summary_routed.rpx"
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file main_without_capture_waveform_data_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file main_without_capture_waveform_data_clock_utilization_routed.rpt"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force main_without_capture_waveform_data_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force main_without_capture_waveform_data.mmi }
  write_bitstream -force main_without_capture_waveform_data.bit -bin_file
  catch {write_debug_probes -quiet -force main_without_capture_waveform_data}
  catch {file copy -force main_without_capture_waveform_data.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}
