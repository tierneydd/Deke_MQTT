################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/UART/UART_Logging.c 

COMPILED_SRCS += \
./Libraries/UART/UART_Logging.src 

C_DEPS += \
./Libraries/UART/UART_Logging.d 

OBJS += \
./Libraries/UART/UART_Logging.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/UART/%.src: ../Libraries/UART/%.c Libraries/UART/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -cs --dep-file="$(basename $@).d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/tiern/AURIX-v1.9.20-workspace/iLLD_TC375_ADS_MQTT_Client_1/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<" && \
	if [ -f "$(basename $@).d" ]; then sed.exe -r  -e 's/\b(.+\.o)\b/Libraries\/UART\/\1/g' -e 's/\\/\//g' -e 's/\/\//\//g' -e 's/"//g' -e 's/([a-zA-Z]:\/)/\L\1/g' -e 's/\d32:/@TARGET_DELIMITER@/g; s/\\\d32/@ESCAPED_SPACE@/g; s/\d32/\\\d32/g; s/@ESCAPED_SPACE@/\\\d32/g; s/@TARGET_DELIMITER@/\d32:/g' "$(basename $@).d" > "$(basename $@).d_sed" && cp "$(basename $@).d_sed" "$(basename $@).d" && rm -f "$(basename $@).d_sed" 2>/dev/null; else echo 'No dependency file to process';fi
	@echo 'Finished building: $<'
	@echo ' '

Libraries/UART/UART_Logging.o: ./Libraries/UART/UART_Logging.src Libraries/UART/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-UART

clean-Libraries-2f-UART:
	-$(RM) ./Libraries/UART/UART_Logging.d ./Libraries/UART/UART_Logging.o ./Libraries/UART/UART_Logging.src

.PHONY: clean-Libraries-2f-UART

