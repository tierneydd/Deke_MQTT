################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/ethip6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/icmp6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/inet6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/ip6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.c \
../Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.c \
../Libraries/Ethernet/lwip/src/core/ipv6/mld6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/nd6.c 

COMPILED_SRCS += \
./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.src \
./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.src \
./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.src \
./Libraries/Ethernet/lwip/src/core/ipv6/inet6.src \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6.src \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.src \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.src \
./Libraries/Ethernet/lwip/src/core/ipv6/mld6.src \
./Libraries/Ethernet/lwip/src/core/ipv6/nd6.src 

C_DEPS += \
./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/inet6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.d \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.d \
./Libraries/Ethernet/lwip/src/core/ipv6/mld6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/nd6.d 

OBJS += \
./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/inet6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.o \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.o \
./Libraries/Ethernet/lwip/src/core/ipv6/mld6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/nd6.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/core/ipv6/%.src: ../Libraries/Ethernet/lwip/src/core/ipv6/%.c Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/tiern/AURIX-v1.9.20-workspace/iLLD_TC375_ADS_MQTT_Client_1/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/Libraries\/Ethernet\/lwip\/src\/core\/ipv6\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.o: ./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.src Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv6/ethip6.o: ./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.src Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv6/icmp6.o: ./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.src Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv6/inet6.o: ./Libraries/Ethernet/lwip/src/core/ipv6/inet6.src Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv6/ip6.o: ./Libraries/Ethernet/lwip/src/core/ipv6/ip6.src Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.o: ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.src Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.o: ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.src Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv6/mld6.o: ./Libraries/Ethernet/lwip/src/core/ipv6/mld6.src Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/core/ipv6/nd6.o: ./Libraries/Ethernet/lwip/src/core/ipv6/nd6.src Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv6

clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv6:
	-$(RM) ./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.d ./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.o ./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.src ./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.d ./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.o ./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.src ./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.d ./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.o ./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.src ./Libraries/Ethernet/lwip/src/core/ipv6/inet6.d ./Libraries/Ethernet/lwip/src/core/ipv6/inet6.o ./Libraries/Ethernet/lwip/src/core/ipv6/inet6.src ./Libraries/Ethernet/lwip/src/core/ipv6/ip6.d ./Libraries/Ethernet/lwip/src/core/ipv6/ip6.o ./Libraries/Ethernet/lwip/src/core/ipv6/ip6.src ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.d ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.o ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.src ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.d ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.o ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.src ./Libraries/Ethernet/lwip/src/core/ipv6/mld6.d ./Libraries/Ethernet/lwip/src/core/ipv6/mld6.o ./Libraries/Ethernet/lwip/src/core/ipv6/mld6.src ./Libraries/Ethernet/lwip/src/core/ipv6/nd6.d ./Libraries/Ethernet/lwip/src/core/ipv6/nd6.o ./Libraries/Ethernet/lwip/src/core/ipv6/nd6.src

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv6

