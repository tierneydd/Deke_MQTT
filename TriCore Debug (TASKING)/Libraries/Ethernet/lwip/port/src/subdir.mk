################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/port/src/Ifx_Lwip.c \
../Libraries/Ethernet/lwip/port/src/netif.c 

COMPILED_SRCS += \
./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.src \
./Libraries/Ethernet/lwip/port/src/netif.src 

C_DEPS += \
./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.d \
./Libraries/Ethernet/lwip/port/src/netif.d 

OBJS += \
./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.o \
./Libraries/Ethernet/lwip/port/src/netif.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/port/src/%.src: ../Libraries/Ethernet/lwip/port/src/%.c Libraries/Ethernet/lwip/port/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/tiern/AURIX-v1.9.20-workspace/iLLD_TC375_ADS_MQTT_Client_1/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/Libraries\/Ethernet\/lwip\/port\/src\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/port/src/Ifx_Lwip.o: ./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.src Libraries/Ethernet/lwip/port/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/port/src/netif.o: ./Libraries/Ethernet/lwip/port/src/netif.src Libraries/Ethernet/lwip/port/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-port-2f-src

clean-Libraries-2f-Ethernet-2f-lwip-2f-port-2f-src:
	-$(RM) ./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.d ./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.o ./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.src ./Libraries/Ethernet/lwip/port/src/netif.d ./Libraries/Ethernet/lwip/port/src/netif.o ./Libraries/Ethernet/lwip/port/src/netif.src

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-port-2f-src

