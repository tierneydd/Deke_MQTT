################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Libraries/iLLD/TC37A/Tricore/_PinMap/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/_Impl/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Stm/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Src/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Scu/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Port/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Pms/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Mtu/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Gtm/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Geth/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Geth/Eth/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Cpu/Trap/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Cpu/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Cpu/Irq/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Asclin/Std/subdir.mk
-include Libraries/iLLD/TC37A/Tricore/Asclin/Asc/subdir.mk
-include Libraries/UART/subdir.mk
-include Libraries/Service/CpuGeneric/StdIf/subdir.mk
-include Libraries/Infra/Ssw/TC37A/Tricore/subdir.mk
-include Libraries/Infra/Platform/Tricore/Compilers/subdir.mk
-include Libraries/Ethernet/lwip/src/netif/ppp/polarssl/subdir.mk
-include Libraries/Ethernet/lwip/src/netif/ppp/subdir.mk
-include Libraries/Ethernet/lwip/src/netif/subdir.mk
-include Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
-include Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
-include Libraries/Ethernet/lwip/src/core/subdir.mk
-include Libraries/Ethernet/lwip/src/api/subdir.mk
-include Libraries/Ethernet/lwip/port/src/subdir.mk
-include Libraries/Ethernet/Phy_Dp83825i/subdir.mk
-include Configurations/subdir.mk
-include Apps/mqtt/subdir.mk
-include subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := iLLD_TC375_ADS_MQTT_Client_1
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_SIZE += \
iLLD_TC375_ADS_MQTT_Client_1.siz \


# All Target
all: main-build

# Main-build Target
main-build: iLLD_TC375_ADS_MQTT_Client_1.elf secondary-outputs

# Tool invocations
iLLD_TC375_ADS_MQTT_Client_1.elf: $(OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: TASKING Linker'
	cctc --lsl-file="../Lcf_Tasking_Tricore_Tc.lsl" -Wl-Oc -Wl-OL -Wl-Ot -Wl-Ox -Wl-Oy -Wl--map-file="iLLD_TC375_ADS_MQTT_Client_1.map" -Wl-mc -Wl-mf -Wl-mi -Wl-mk -Wl-ml -Wl-mm -Wl-md -Wl-mr -Wl-mu --no-warnings= -Wl--error-limit=42 --fp-model=3 -lrt --lsl-core=vtc --exceptions --strict --anachronisms --force-c++ -Ctc37x -o"iLLD_TC375_ADS_MQTT_Client_1.elf" -Wl-o"iLLD_TC375_ADS_MQTT_Client_1.hex:IHEX" $(OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

iLLD_TC375_ADS_MQTT_Client_1.siz: iLLD_TC375_ADS_MQTT_Client_1.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: Print Size'
	elfsize  "iLLD_TC375_ADS_MQTT_Client_1.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	find . ! -name "*.mk" ! -name "makefile" ! -name "." -type f -delete 
	-@echo ' '

secondary-outputs: $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build

-include ../makefile.targets
