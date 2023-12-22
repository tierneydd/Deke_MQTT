################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/core/ipv4/autoip.c \
../Libraries/Ethernet/lwip/src/core/ipv4/dhcp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/etharp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/icmp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/igmp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/ip4.c \
../Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.c \
../Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.c 

COMPILED_SRCS += \
./Libraries/Ethernet/lwip/src/core/ipv4/autoip.src \
./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.src \
./Libraries/Ethernet/lwip/src/core/ipv4/etharp.src \
./Libraries/Ethernet/lwip/src/core/ipv4/icmp.src \
./Libraries/Ethernet/lwip/src/core/ipv4/igmp.src \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4.src \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.src \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.src 

C_DEPS += \
./Libraries/Ethernet/lwip/src/core/ipv4/autoip.d \
./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/etharp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/icmp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/igmp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4.d \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.d \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.d 

OBJS += \
./Libraries/Ethernet/lwip/src/core/ipv4/autoip.o \
./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/etharp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/icmp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/igmp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4.o \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.o \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/core/ipv4/%.src: ../Libraries/Ethernet/lwip/src/core/ipv4/%.c Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/tiern/AURIX-v1.9.20-workspace/iLLD_TC375_ADS_MQTT_Client_1/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/Libraries\/Ethernet\/lwip\/src\/core\/ipv4\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv4/autoip.o: ./Libraries/Ethernet/lwip/src/core/ipv4/autoip.src Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv4/dhcp.o: ./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.src Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv4/etharp.o: ./Libraries/Ethernet/lwip/src/core/ipv4/etharp.src Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv4/icmp.o: ./Libraries/Ethernet/lwip/src/core/ipv4/icmp.src Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv4/igmp.o: ./Libraries/Ethernet/lwip/src/core/ipv4/igmp.src Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv4/ip4.o: ./Libraries/Ethernet/lwip/src/core/ipv4/ip4.src Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.o: ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.src Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.o: ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.src Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv4

clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv4:
	-$(RM) ./Libraries/Ethernet/lwip/src/core/ipv4/autoip.d ./Libraries/Ethernet/lwip/src/core/ipv4/autoip.o ./Libraries/Ethernet/lwip/src/core/ipv4/autoip.src ./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.d ./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.o ./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.src ./Libraries/Ethernet/lwip/src/core/ipv4/etharp.d ./Libraries/Ethernet/lwip/src/core/ipv4/etharp.o ./Libraries/Ethernet/lwip/src/core/ipv4/etharp.src ./Libraries/Ethernet/lwip/src/core/ipv4/icmp.d ./Libraries/Ethernet/lwip/src/core/ipv4/icmp.o ./Libraries/Ethernet/lwip/src/core/ipv4/icmp.src ./Libraries/Ethernet/lwip/src/core/ipv4/igmp.d ./Libraries/Ethernet/lwip/src/core/ipv4/igmp.o ./Libraries/Ethernet/lwip/src/core/ipv4/igmp.src ./Libraries/Ethernet/lwip/src/core/ipv4/ip4.d ./Libraries/Ethernet/lwip/src/core/ipv4/ip4.o ./Libraries/Ethernet/lwip/src/core/ipv4/ip4.src ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.d ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.o ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.src ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.d ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.o ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.src

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv4

