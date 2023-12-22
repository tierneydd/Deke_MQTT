################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/netif/bridgeif.c \
../Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.c \
../Libraries/Ethernet/lwip/src/netif/ethernet.c \
../Libraries/Ethernet/lwip/src/netif/lowpan6.c \
../Libraries/Ethernet/lwip/src/netif/lowpan6_ble.c \
../Libraries/Ethernet/lwip/src/netif/lowpan6_common.c \
../Libraries/Ethernet/lwip/src/netif/zepif.c 

COMPILED_SRCS += \
./Libraries/Ethernet/lwip/src/netif/bridgeif.src \
./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.src \
./Libraries/Ethernet/lwip/src/netif/ethernet.src \
./Libraries/Ethernet/lwip/src/netif/lowpan6.src \
./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.src \
./Libraries/Ethernet/lwip/src/netif/lowpan6_common.src \
./Libraries/Ethernet/lwip/src/netif/zepif.src 

C_DEPS += \
./Libraries/Ethernet/lwip/src/netif/bridgeif.d \
./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.d \
./Libraries/Ethernet/lwip/src/netif/ethernet.d \
./Libraries/Ethernet/lwip/src/netif/lowpan6.d \
./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.d \
./Libraries/Ethernet/lwip/src/netif/lowpan6_common.d \
./Libraries/Ethernet/lwip/src/netif/zepif.d 

OBJS += \
./Libraries/Ethernet/lwip/src/netif/bridgeif.o \
./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.o \
./Libraries/Ethernet/lwip/src/netif/ethernet.o \
./Libraries/Ethernet/lwip/src/netif/lowpan6.o \
./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.o \
./Libraries/Ethernet/lwip/src/netif/lowpan6_common.o \
./Libraries/Ethernet/lwip/src/netif/zepif.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/netif/%.src: ../Libraries/Ethernet/lwip/src/netif/%.c Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/tiern/AURIX-v1.9.20-workspace/iLLD_TC375_ADS_MQTT_Client_1/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/Libraries\/Ethernet\/lwip\/src\/netif\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/netif/bridgeif.o: ./Libraries/Ethernet/lwip/src/netif/bridgeif.src Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.o: ./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.src Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/netif/ethernet.o: ./Libraries/Ethernet/lwip/src/netif/ethernet.src Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/netif/lowpan6.o: ./Libraries/Ethernet/lwip/src/netif/lowpan6.src Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/netif/lowpan6_ble.o: ./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.src Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/netif/lowpan6_common.o: ./Libraries/Ethernet/lwip/src/netif/lowpan6_common.src Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/lwip/src/netif/zepif.o: ./Libraries/Ethernet/lwip/src/netif/zepif.src Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif

clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif:
	-$(RM) ./Libraries/Ethernet/lwip/src/netif/bridgeif.d ./Libraries/Ethernet/lwip/src/netif/bridgeif.o ./Libraries/Ethernet/lwip/src/netif/bridgeif.src ./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.d ./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.o ./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.src ./Libraries/Ethernet/lwip/src/netif/ethernet.d ./Libraries/Ethernet/lwip/src/netif/ethernet.o ./Libraries/Ethernet/lwip/src/netif/ethernet.src ./Libraries/Ethernet/lwip/src/netif/lowpan6.d ./Libraries/Ethernet/lwip/src/netif/lowpan6.o ./Libraries/Ethernet/lwip/src/netif/lowpan6.src ./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.d ./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.o ./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.src ./Libraries/Ethernet/lwip/src/netif/lowpan6_common.d ./Libraries/Ethernet/lwip/src/netif/lowpan6_common.o ./Libraries/Ethernet/lwip/src/netif/lowpan6_common.src ./Libraries/Ethernet/lwip/src/netif/zepif.d ./Libraries/Ethernet/lwip/src/netif/zepif.o ./Libraries/Ethernet/lwip/src/netif/zepif.src

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif

