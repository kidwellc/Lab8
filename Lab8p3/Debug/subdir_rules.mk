################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
MyKeyPad.obj: C:/Users/crk/Google\ Drive/EGR226/CCS/Libraries/MyKeyPad.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs1020/ccs/ccs_base/arm/include" --include_path="C:/ti/ccs1020/ccs/ccs_base/arm/include/CMSIS" --include_path="C:/Users/crk/Google Drive/EGR226/CCS/Lab8/Lab8p3" --include_path="C:/Users/Christina Kidwell/Google Drive/EGR226/CCS/Libraries" --include_path="C:/Users/crk/Google Drive/EGR226/CCS/Libraries" --include_path="C:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/include" --advice:power=all --define=__MSP432P401R__ --define=ccs -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="MyKeyPad.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

MyLCD.obj: C:/Users/crk/Google\ Drive/EGR226/CCS/Libraries/MyLCD.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs1020/ccs/ccs_base/arm/include" --include_path="C:/ti/ccs1020/ccs/ccs_base/arm/include/CMSIS" --include_path="C:/Users/crk/Google Drive/EGR226/CCS/Lab8/Lab8p3" --include_path="C:/Users/Christina Kidwell/Google Drive/EGR226/CCS/Libraries" --include_path="C:/Users/crk/Google Drive/EGR226/CCS/Libraries" --include_path="C:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/include" --advice:power=all --define=__MSP432P401R__ --define=ccs -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="MyLCD.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

MySetup.obj: C:/Users/crk/Google\ Drive/EGR226/CCS/Libraries/MySetup.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs1020/ccs/ccs_base/arm/include" --include_path="C:/ti/ccs1020/ccs/ccs_base/arm/include/CMSIS" --include_path="C:/Users/crk/Google Drive/EGR226/CCS/Lab8/Lab8p3" --include_path="C:/Users/Christina Kidwell/Google Drive/EGR226/CCS/Libraries" --include_path="C:/Users/crk/Google Drive/EGR226/CCS/Libraries" --include_path="C:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/include" --advice:power=all --define=__MSP432P401R__ --define=ccs -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="MySetup.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

MyTimer.obj: C:/Users/crk/Google\ Drive/EGR226/CCS/Libraries/MyTimer.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs1020/ccs/ccs_base/arm/include" --include_path="C:/ti/ccs1020/ccs/ccs_base/arm/include/CMSIS" --include_path="C:/Users/crk/Google Drive/EGR226/CCS/Lab8/Lab8p3" --include_path="C:/Users/Christina Kidwell/Google Drive/EGR226/CCS/Libraries" --include_path="C:/Users/crk/Google Drive/EGR226/CCS/Libraries" --include_path="C:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/include" --advice:power=all --define=__MSP432P401R__ --define=ccs -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="MyTimer.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccs1020/ccs/ccs_base/arm/include" --include_path="C:/ti/ccs1020/ccs/ccs_base/arm/include/CMSIS" --include_path="C:/Users/crk/Google Drive/EGR226/CCS/Lab8/Lab8p3" --include_path="C:/Users/Christina Kidwell/Google Drive/EGR226/CCS/Libraries" --include_path="C:/Users/crk/Google Drive/EGR226/CCS/Libraries" --include_path="C:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/include" --advice:power=all --define=__MSP432P401R__ --define=ccs -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


