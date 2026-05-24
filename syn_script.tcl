
########################### Define Top Module ############################
                                                   
set top_module NN_COMP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/ICer/Desktop/RNN_syn/lib 
lappend search_path /home/ICer/Desktop/RNN_syn/RTL 



set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]
#set target_library /path/to/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
#set target_library /path/to/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db
#set target_library /path/to/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

#set link_library /path/to/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
#set link_library /path/to/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db
#set link_library /path/to/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db


######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

read_file -format $file_format neuralnetwork_and_comparator.v
read_file -format $file_format controller_and_negativeenable.v
read_file -format $file_format hidden_and_cell.v
read_file -format $file_format layer1_and_layer2.v
read_file -format $file_format matrix_multiplication_layer1_and_layer2.v
read_file -format $file_format multiplier_and_adder.v
read_file -format $file_format tanh_and_sigmoid.v

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"

####### to optimize all paths
group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"


# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions                 done 
#
# 2. Generated Clock Definitions              done
#
# 3. Clock Uncertainties                      done
#
# 4. Clock Latencies                          done
#
# 5. Clock Relationships                      done
#
# 6. set input/output delay on ports          done
#       
# 7. Driving cells                            done
#
# 8. Output load                              done

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################
#create_clock -period 50 -name CLK1 -waveform {0 25} [get_ports CLK]     
#set_clock_uncertainty -setup .2         [get_clocks CLK1]
#set_clock_uncertainty -hold  .1         [get_clocks CLK1]
#set_clock_transition         .05        [get_clocks CLK1]
#set_clock_latency             0         [get_clocks CLK1] 

#set_dont_touch_network CLK 

#########
#create_generated_clock -master_clock CLK1 -source [get_ports CLK]\
#                                          -name REG_CLK -divide_by 2 [get_ports U0_ClkDiv/o_div_clk]


#set_clock_uncertainty -setup .2 [get_clocks REG_CLK]
#set_clock_uncertainty -hold .1  [get_clocks REG_CLK]
#set_clock_transition .05        [get_clocks REG_CLK]
#set_clock_latency     0         [get_clocks REG_CLK]


#create_generated_clock -master_clock CLK1 -source [get_ports CLK]\
        #                                  -name ALU_CLK  [get_ports U0_CLK_GATE/GATED_CLK] -divide_by 1


#set_clock_uncertainty -setup .2 [get_clocks ALU_CLK]
#set_clock_uncertainty -hold .1  [get_clocks ALU_CLK]
#set_clock_transition .05        [get_clocks ALU_CLK]
#set_clock_latency     0         [get_clocks ALU_CLK]


####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################
set delay [expr .2*50]
#set_input_delay $delay -clock CLK1    [get_ports CLKDIV_EN]
#set_input_delay $delay -clock CLK1    [get_ports CLKG_EN]
#set_input_delay $delay -clock ALU_CLK [get_ports ALU_FUN]
#set_input_delay $delay -clock ALU_CLK [get_ports ALU_Enable]
#set_input_delay $delay -clock REG_CLK [get_ports  WrEn]
#set_input_delay $delay -clock REG_CLK [get_ports  RdEn]
#set_input_delay $delay -clock REG_CLK [get_ports  Address]
#set_input_delay $delay -clock REG_CLK [get_ports   WrData]

#set_output_delay $delay -clock REG_CLK [get_ports   RdData]
#set_output_delay $delay -clock ALU_CLK [get_ports   ALU_OUT]
#set_output_delay $delay -clock ALU_CLK [get_ports   ALU_VLD]


####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
#set inp_port_list "CLKDIV_EN CLKG_EN ALU_FUN ALU_Enable WrEn RdEn Address WrData"
#set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M \
                  #                                                   \-pin Y [get_ports $inp_port_list]
####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
#set out_port_list "RdData ALU_OUT ALU_OUT"

#set_load 75 [get_ports $out_port_list]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis


####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 8 : multicycle path ####
           #########################################################
####################################################################################


###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -map_effort high

#############################################################################
# Write out Design after initial compile
#############################################################################


################# reporting #######################


################# starting graphical user interface #######################

#gui_start

#exit
