deps_config := \
	/home/Ganesh/esp/esp-idf/components/app_trace/Kconfig \
	/home/Ganesh/esp/esp-idf/components/aws_iot/Kconfig \
	/home/Ganesh/esp/esp-idf/components/bt/Kconfig \
	/home/Ganesh/esp/esp-idf/components/driver/Kconfig \
	/home/Ganesh/esp/esp-idf/components/esp32/Kconfig \
	/home/Ganesh/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/Ganesh/esp/esp-idf/components/esp_event/Kconfig \
	/home/Ganesh/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/Ganesh/esp/esp-idf/components/esp_http_server/Kconfig \
	/home/Ganesh/esp/esp-idf/components/ethernet/Kconfig \
	/home/Ganesh/esp/esp-idf/components/fatfs/Kconfig \
	/home/Ganesh/esp/esp-idf/components/freemodbus/Kconfig \
	/home/Ganesh/esp/esp-idf/components/freertos/Kconfig \
	/home/Ganesh/esp/esp-idf/components/heap/Kconfig \
	/home/Ganesh/esp/esp-idf/components/libsodium/Kconfig \
	/home/Ganesh/esp/esp-idf/components/log/Kconfig \
	/home/Ganesh/esp/esp-idf/components/lwip/Kconfig \
	/home/Ganesh/esp/esp-idf/components/mbedtls/Kconfig \
	/home/Ganesh/esp/esp-idf/components/mdns/Kconfig \
	/home/Ganesh/esp/esp-idf/components/mqtt/Kconfig \
	/home/Ganesh/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/Ganesh/esp/esp-idf/components/openssl/Kconfig \
	/home/Ganesh/esp/esp-idf/components/pthread/Kconfig \
	/home/Ganesh/esp/esp-idf/components/spi_flash/Kconfig \
	/home/Ganesh/esp/esp-idf/components/spiffs/Kconfig \
	/home/Ganesh/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/Ganesh/esp/esp-idf/components/vfs/Kconfig \
	/home/Ganesh/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/Ganesh/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/Ganesh/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/Ganesh/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/Ganesh/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
