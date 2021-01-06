#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/asymmetric_auth.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/asymmetric_auth.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c ../src/config/default/library/cryptoauthlib/calib/calib_aes.c ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c ../src/config/default/library/cryptoauthlib/calib/calib_basic.c ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c ../src/config/default/library/cryptoauthlib/calib/calib_command.c ../src/config/default/library/cryptoauthlib/calib/calib_counter.c ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c ../src/config/default/library/cryptoauthlib/calib/calib_execution.c ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c ../src/config/default/library/cryptoauthlib/calib/calib_info.c ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c ../src/config/default/library/cryptoauthlib/calib/calib_lock.c ../src/config/default/library/cryptoauthlib/calib/calib_mac.c ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c ../src/config/default/library/cryptoauthlib/calib/calib_random.c ../src/config/default/library/cryptoauthlib/calib/calib_read.c ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c ../src/config/default/library/cryptoauthlib/calib/calib_sha.c ../src/config/default/library/cryptoauthlib/calib/calib_sign.c ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c ../src/config/default/library/cryptoauthlib/calib/calib_verify.c ../src/config/default/library/cryptoauthlib/calib/calib_write.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c ../src/config/default/library/cryptoauthlib/hal/ATECC608_0.c ../src/config/default/library/cryptoauthlib/hal/atca_hal.c ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c ../src/config/default/library/cryptoauthlib/host/atca_host.c ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c ../src/config/default/library/cryptoauthlib/tng/tflxtls_cert_def_4_device.c ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c ../src/config/default/library/cryptoauthlib/tng/tng_atca.c ../src/config/default/library/cryptoauthlib/tng/tng_atcacert_client.c ../src/config/default/library/cryptoauthlib/tng/tng_root_cert.c ../src/config/default/library/cryptoauthlib/atca_basic.c ../src/config/default/library/cryptoauthlib/atca_cfgs.c ../src/config/default/library/cryptoauthlib/atca_command.c ../src/config/default/library/cryptoauthlib/atca_debug.c ../src/config/default/library/cryptoauthlib/atca_device.c ../src/config/default/library/cryptoauthlib/atca_helpers.c ../src/config/default/library/cryptoauthlib/atca_iface.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/asymmetric_auth.c ../src/cust_def_1_signer.c ../src/cust_def_2_device.c ../src/common/common.c ../src/common/host_rand_number.c ../src/config/default/bsp/bsp.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/35538813/atcacert_client.o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ${OBJECTDIR}/_ext/95446945/calib_aes.o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ${OBJECTDIR}/_ext/95446945/calib_basic.o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ${OBJECTDIR}/_ext/95446945/calib_command.o ${OBJECTDIR}/_ext/95446945/calib_counter.o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ${OBJECTDIR}/_ext/95446945/calib_execution.o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ${OBJECTDIR}/_ext/95446945/calib_info.o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ${OBJECTDIR}/_ext/95446945/calib_lock.o ${OBJECTDIR}/_ext/95446945/calib_mac.o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ${OBJECTDIR}/_ext/95446945/calib_random.o ${OBJECTDIR}/_ext/95446945/calib_read.o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ${OBJECTDIR}/_ext/95446945/calib_sha.o ${OBJECTDIR}/_ext/95446945/calib_sign.o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ${OBJECTDIR}/_ext/95446945/calib_verify.o ${OBJECTDIR}/_ext/95446945/calib_write.o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ${OBJECTDIR}/_ext/1390037109/ATECC608_0.o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ${OBJECTDIR}/_ext/141463632/atca_host.o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o ${OBJECTDIR}/_ext/1390025179/tng_atca.o ${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o ${OBJECTDIR}/_ext/1390025179/tng_root_cert.o ${OBJECTDIR}/_ext/701127929/atca_basic.o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ${OBJECTDIR}/_ext/701127929/atca_command.o ${OBJECTDIR}/_ext/701127929/atca_debug.o ${OBJECTDIR}/_ext/701127929/atca_device.o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ${OBJECTDIR}/_ext/701127929/atca_iface.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o ${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o ${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o ${OBJECTDIR}/_ext/394045403/common.o ${OBJECTDIR}/_ext/394045403/host_rand_number.o ${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/35538813/atcacert_client.o.d ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d ${OBJECTDIR}/_ext/95446945/calib_aes.o.d ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d ${OBJECTDIR}/_ext/95446945/calib_basic.o.d ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d ${OBJECTDIR}/_ext/95446945/calib_command.o.d ${OBJECTDIR}/_ext/95446945/calib_counter.o.d ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d ${OBJECTDIR}/_ext/95446945/calib_execution.o.d ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d ${OBJECTDIR}/_ext/95446945/calib_info.o.d ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d ${OBJECTDIR}/_ext/95446945/calib_lock.o.d ${OBJECTDIR}/_ext/95446945/calib_mac.o.d ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d ${OBJECTDIR}/_ext/95446945/calib_random.o.d ${OBJECTDIR}/_ext/95446945/calib_read.o.d ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d ${OBJECTDIR}/_ext/95446945/calib_sha.o.d ${OBJECTDIR}/_ext/95446945/calib_sign.o.d ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d ${OBJECTDIR}/_ext/95446945/calib_verify.o.d ${OBJECTDIR}/_ext/95446945/calib_write.o.d ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d ${OBJECTDIR}/_ext/1390037109/ATECC608_0.o.d ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d ${OBJECTDIR}/_ext/141463632/atca_host.o.d ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d ${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o.d ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o.d ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o.d ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o.d ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o.d ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o.d ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o.d ${OBJECTDIR}/_ext/1390025179/tng_atca.o.d ${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o.d ${OBJECTDIR}/_ext/1390025179/tng_root_cert.o.d ${OBJECTDIR}/_ext/701127929/atca_basic.o.d ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d ${OBJECTDIR}/_ext/701127929/atca_command.o.d ${OBJECTDIR}/_ext/701127929/atca_debug.o.d ${OBJECTDIR}/_ext/701127929/atca_device.o.d ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d ${OBJECTDIR}/_ext/701127929/atca_iface.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o.d ${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o.d ${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o.d ${OBJECTDIR}/_ext/394045403/common.o.d ${OBJECTDIR}/_ext/394045403/host_rand_number.o.d ${OBJECTDIR}/_ext/1434821282/bsp.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/35538813/atcacert_client.o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ${OBJECTDIR}/_ext/95446945/calib_aes.o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ${OBJECTDIR}/_ext/95446945/calib_basic.o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ${OBJECTDIR}/_ext/95446945/calib_command.o ${OBJECTDIR}/_ext/95446945/calib_counter.o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ${OBJECTDIR}/_ext/95446945/calib_execution.o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ${OBJECTDIR}/_ext/95446945/calib_info.o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ${OBJECTDIR}/_ext/95446945/calib_lock.o ${OBJECTDIR}/_ext/95446945/calib_mac.o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ${OBJECTDIR}/_ext/95446945/calib_random.o ${OBJECTDIR}/_ext/95446945/calib_read.o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ${OBJECTDIR}/_ext/95446945/calib_sha.o ${OBJECTDIR}/_ext/95446945/calib_sign.o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ${OBJECTDIR}/_ext/95446945/calib_verify.o ${OBJECTDIR}/_ext/95446945/calib_write.o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ${OBJECTDIR}/_ext/1390037109/ATECC608_0.o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ${OBJECTDIR}/_ext/141463632/atca_host.o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o ${OBJECTDIR}/_ext/1390025179/tng_atca.o ${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o ${OBJECTDIR}/_ext/1390025179/tng_root_cert.o ${OBJECTDIR}/_ext/701127929/atca_basic.o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ${OBJECTDIR}/_ext/701127929/atca_command.o ${OBJECTDIR}/_ext/701127929/atca_debug.o ${OBJECTDIR}/_ext/701127929/atca_device.o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ${OBJECTDIR}/_ext/701127929/atca_iface.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o ${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o ${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o ${OBJECTDIR}/_ext/394045403/common.o ${OBJECTDIR}/_ext/394045403/host_rand_number.o ${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o

# Source Files
SOURCEFILES=../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c ../src/config/default/library/cryptoauthlib/calib/calib_aes.c ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c ../src/config/default/library/cryptoauthlib/calib/calib_basic.c ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c ../src/config/default/library/cryptoauthlib/calib/calib_command.c ../src/config/default/library/cryptoauthlib/calib/calib_counter.c ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c ../src/config/default/library/cryptoauthlib/calib/calib_execution.c ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c ../src/config/default/library/cryptoauthlib/calib/calib_info.c ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c ../src/config/default/library/cryptoauthlib/calib/calib_lock.c ../src/config/default/library/cryptoauthlib/calib/calib_mac.c ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c ../src/config/default/library/cryptoauthlib/calib/calib_random.c ../src/config/default/library/cryptoauthlib/calib/calib_read.c ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c ../src/config/default/library/cryptoauthlib/calib/calib_sha.c ../src/config/default/library/cryptoauthlib/calib/calib_sign.c ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c ../src/config/default/library/cryptoauthlib/calib/calib_verify.c ../src/config/default/library/cryptoauthlib/calib/calib_write.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c ../src/config/default/library/cryptoauthlib/hal/ATECC608_0.c ../src/config/default/library/cryptoauthlib/hal/atca_hal.c ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c ../src/config/default/library/cryptoauthlib/host/atca_host.c ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c ../src/config/default/library/cryptoauthlib/tng/tflxtls_cert_def_4_device.c ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c ../src/config/default/library/cryptoauthlib/tng/tng_atca.c ../src/config/default/library/cryptoauthlib/tng/tng_atcacert_client.c ../src/config/default/library/cryptoauthlib/tng/tng_root_cert.c ../src/config/default/library/cryptoauthlib/atca_basic.c ../src/config/default/library/cryptoauthlib/atca_cfgs.c ../src/config/default/library/cryptoauthlib/atca_command.c ../src/config/default/library/cryptoauthlib/atca_debug.c ../src/config/default/library/cryptoauthlib/atca_device.c ../src/config/default/library/cryptoauthlib/atca_helpers.c ../src/config/default/library/cryptoauthlib/atca_iface.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/asymmetric_auth.c ../src/cust_def_1_signer.c ../src/cust_def_2_device.c ../src/common/common.c ../src/common/host_rand_number.c ../src/config/default/bsp/bsp.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/asymmetric_auth.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21J18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\ATSAMD21J18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/35538813/atcacert_client.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c  .generated_files/42a8635a400d7c509931b166717cfccca43fb083.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_date.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c  .generated_files/9e3b35ee522b2af6b02020eb7624e77ac601c8e9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_def.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c  .generated_files/3e8b11fee967af76f33e319f90e9a0387a2324a6.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_der.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c  .generated_files/d1da01c5b8b6459e6cbf525326cae2148d8df57d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c  .generated_files/3b921256110b75f72dee5e4989dddec70d59c877.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c  .generated_files/a8ddf86876e395b56e7a8dc8d649f294df129aa9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_pem.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c  .generated_files/857ed9d639afa3bf7f71ae1996920338b2c1d16e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes.c  .generated_files/2a1072661e2059dbbba7bcf7f8bd9e4ad0d287f3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes.o ../src/config/default/library/cryptoauthlib/calib/calib_aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c  .generated_files/f64592f1757c3966cbdbfda4140d1a043636e654.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_basic.o: ../src/config/default/library/cryptoauthlib/calib/calib_basic.c  .generated_files/9b0947de6947b01945b69bae698d8ad079228427.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_basic.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_basic.o ../src/config/default/library/cryptoauthlib/calib/calib_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_checkmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c  .generated_files/2d292987065a480f6cb1021530859f8356790a2.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_command.o: ../src/config/default/library/cryptoauthlib/calib/calib_command.c  .generated_files/41e3f80d2bc6f1c6a01477217a5b821c68c21709.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_command.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_command.o ../src/config/default/library/cryptoauthlib/calib/calib_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_counter.o: ../src/config/default/library/cryptoauthlib/calib/calib_counter.c  .generated_files/aebf124b29b018aa592069f5a9fe2ec25a7c16ea.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_counter.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_counter.o ../src/config/default/library/cryptoauthlib/calib/calib_counter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_derivekey.o: ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c  .generated_files/a9ee248d15b56795ebcc5cbcb0af3497332cd545.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_ecdh.o: ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c  .generated_files/55a8dddd1d1eeb0e9e4efe7092303618ae2ed690.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_execution.o: ../src/config/default/library/cryptoauthlib/calib/calib_execution.c  .generated_files/95263186d7d812285c70ca518de21ba3cf783756.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_execution.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_execution.o ../src/config/default/library/cryptoauthlib/calib/calib_execution.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_gendig.o: ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c  .generated_files/8318252baee028ef21ea5644a9ca2b754a95faf2.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_gendig.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_genkey.o: ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c  .generated_files/269a6bb2f2a69b07e3470af05d04d6a78af4ade0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_genkey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_hmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c  .generated_files/30cfe389e384c6b940db48a00d7d323ee16722ad.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_hmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_info.o: ../src/config/default/library/cryptoauthlib/calib/calib_info.c  .generated_files/d122ff2c9434f79ef96c92a69fb6bf0d29866669.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_info.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_info.o ../src/config/default/library/cryptoauthlib/calib/calib_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_kdf.o: ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c  .generated_files/4acd98e5307c1bc645c6b00edebfa0a3cc60fe48.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_kdf.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_lock.o: ../src/config/default/library/cryptoauthlib/calib/calib_lock.c  .generated_files/851fbe133cc5839ca7c6998e7dcdb761e7342b2f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_lock.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_lock.o ../src/config/default/library/cryptoauthlib/calib/calib_lock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_mac.o: ../src/config/default/library/cryptoauthlib/calib/calib_mac.c  .generated_files/72131cb041069db3f1dbc8947141c6c675f55161.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_mac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_mac.o ../src/config/default/library/cryptoauthlib/calib/calib_mac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_nonce.o: ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c  .generated_files/7fd826909891947b8f449f782d7683e5826b89e0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_nonce.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_privwrite.o: ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c  .generated_files/435d84f26025906e8654fc9ee36703f70d6ff6dc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_random.o: ../src/config/default/library/cryptoauthlib/calib/calib_random.c  .generated_files/67ff42ac46cd3a2b6d80234b02061125164b1c19.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_random.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_random.o ../src/config/default/library/cryptoauthlib/calib/calib_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_read.o: ../src/config/default/library/cryptoauthlib/calib/calib_read.c  .generated_files/ba0082b1ad5d1c33ce604b31363bf57b46122aaa.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_read.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_read.o ../src/config/default/library/cryptoauthlib/calib/calib_read.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_secureboot.o: ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c  .generated_files/db28c9ee95e876ea65bb6c65e4bcaf5231d21409.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_selftest.o: ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c  .generated_files/75da785f4eabb1b45f9e55d2cd59bb9c9e34a0d5.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_selftest.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sha.o: ../src/config/default/library/cryptoauthlib/calib/calib_sha.c  .generated_files/f35d6977456db6b4b107711fc475aaae573f9538.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sha.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sha.o ../src/config/default/library/cryptoauthlib/calib/calib_sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sign.o: ../src/config/default/library/cryptoauthlib/calib/calib_sign.c  .generated_files/29986e8b9bba61f205605a1bb15fee2728f72ae.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sign.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sign.o ../src/config/default/library/cryptoauthlib/calib/calib_sign.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_updateextra.o: ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c  .generated_files/ab8bcca44a8ade39ff292fb806572c62946f1cff.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_verify.o: ../src/config/default/library/cryptoauthlib/calib/calib_verify.c  .generated_files/c373198d8de672df597d6a373c0189ec6bb22d9e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_verify.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_verify.o ../src/config/default/library/cryptoauthlib/calib/calib_verify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_write.o: ../src/config/default/library/cryptoauthlib/calib/calib_write.c  .generated_files/22f041bf5f6871dc57d0219699f973ab3d199ba0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_write.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_write.o ../src/config/default/library/cryptoauthlib/calib/calib_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha1_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c  .generated_files/582aa200fc1e3e50216a57e979907cda88ec2c5c.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha2_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c  .generated_files/b370546aae42d5f78c8da59879df789ff8065bb0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c  .generated_files/c04b5146726122d8972e5e0b0deb95efae6d7608.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c  .generated_files/8bf16bf57b2c403b19bbe78cc1cdbc15ba9df9dd.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c  .generated_files/30b310ce52a1cfb7fa532b6a3afc1a5d67127ce7.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/b9da999167c95b469c0f37a172c8aadbd615743b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c  .generated_files/7b8ba67ef65f122e46369de986adeb93d4d41f4a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c  .generated_files/e0b77c24851949850719df5b2ab00f76b84ed5ce.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c  .generated_files/accb9f73cfc8fd5d5cc112e6f247b34b5a15fd47.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/ATECC608_0.o: ../src/config/default/library/cryptoauthlib/hal/ATECC608_0.c  .generated_files/2072e4f9ae5d7bd9dae075e8842ee81700fe7435.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATECC608_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATECC608_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/ATECC608_0.o.d" -o ${OBJECTDIR}/_ext/1390037109/ATECC608_0.o ../src/config/default/library/cryptoauthlib/hal/ATECC608_0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/atca_hal.o: ../src/config/default/library/cryptoauthlib/hal/atca_hal.c  .generated_files/cae1cff4159c5208a465c79dca20f80b5e6a7ece.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/atca_hal.o.d" -o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ../src/config/default/library/cryptoauthlib/hal/atca_hal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o: ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c  .generated_files/434dab88b417d4af6ca6fbfdcac17869d0485398.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o: ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c  .generated_files/3eb2536fe1ddecb0746d6854395e631ecc2d1e96.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o: ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c  .generated_files/bc4ebe1e5f034a915eb77dcbfdf3d645c8b8829d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/141463632/atca_host.o: ../src/config/default/library/cryptoauthlib/host/atca_host.c  .generated_files/c414d7e2c1edb178a3d876067c6ab20a2beec816.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/141463632" 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141463632/atca_host.o.d" -o ${OBJECTDIR}/_ext/141463632/atca_host.o ../src/config/default/library/cryptoauthlib/host/atca_host.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390034497/atca_jwt.o: ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c  .generated_files/1bf8afa8333dbd9353d1589cc2b4fb10f2a38007.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390034497" 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o: ../src/config/default/library/cryptoauthlib/tng/tflxtls_cert_def_4_device.c  .generated_files/248c9601accca7a50caa8344491d710dc872d20d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o.d" -o ${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o ../src/config/default/library/cryptoauthlib/tng/tflxtls_cert_def_4_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o: ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c  .generated_files/1ac630d790c71136b69d5390410ecee33745b2f9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o.d" -o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o: ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c  .generated_files/5f518e3e3969baf50c806f00b032eb73c0250a80.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o.d" -o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o: ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c  .generated_files/e84a27e0ff71e79edc1c3a628249d07b3a213666.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o.d" -o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o: ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c  .generated_files/1ec0123e3d0aed83fc10951c2614d6ffcd0742ba.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o.d" -o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o: ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c  .generated_files/3087b343038de69c865f916597e59a6806440754.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o.d" -o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o: ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c  .generated_files/4ad3fe0f3eaf772760111dd1bb9e042b3ff6be4a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o.d" -o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tng_atca.o: ../src/config/default/library/cryptoauthlib/tng/tng_atca.c  .generated_files/ad19ea161df525f1d975d6fca6914d70c67b321f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_atca.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_atca.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tng_atca.o.d" -o ${OBJECTDIR}/_ext/1390025179/tng_atca.o ../src/config/default/library/cryptoauthlib/tng/tng_atca.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o: ../src/config/default/library/cryptoauthlib/tng/tng_atcacert_client.c  .generated_files/c55e3adca72defa50d8609c579d6a6dc95f2173d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o.d" -o ${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o ../src/config/default/library/cryptoauthlib/tng/tng_atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tng_root_cert.o: ../src/config/default/library/cryptoauthlib/tng/tng_root_cert.c  .generated_files/4eeb6b6548e457a1d270d1faca7e7d26596b854c.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_root_cert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_root_cert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tng_root_cert.o.d" -o ${OBJECTDIR}/_ext/1390025179/tng_root_cert.o ../src/config/default/library/cryptoauthlib/tng/tng_root_cert.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_basic.o: ../src/config/default/library/cryptoauthlib/atca_basic.c  .generated_files/95c1ee760de294b2bbe29ff2267f32bc8f7a77fc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_basic.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_basic.o ../src/config/default/library/cryptoauthlib/atca_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_cfgs.o: ../src/config/default/library/cryptoauthlib/atca_cfgs.c  .generated_files/7e2f295641dde24f8f10bdc4b9939e651b5e2d18.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ../src/config/default/library/cryptoauthlib/atca_cfgs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_command.o: ../src/config/default/library/cryptoauthlib/atca_command.c  .generated_files/bedccc1acfa09f4548ab591d3917b16fa3af5fee.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_command.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_command.o ../src/config/default/library/cryptoauthlib/atca_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_debug.o: ../src/config/default/library/cryptoauthlib/atca_debug.c  .generated_files/9bfeef3ebe4249f361f170e0a1c52a496e34dc38.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_debug.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_debug.o ../src/config/default/library/cryptoauthlib/atca_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_device.o: ../src/config/default/library/cryptoauthlib/atca_device.c  .generated_files/18ad929cc9197228c36fc094909461b1c592e01.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_device.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_device.o ../src/config/default/library/cryptoauthlib/atca_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_helpers.o: ../src/config/default/library/cryptoauthlib/atca_helpers.c  .generated_files/a6f4c98189f41fc47eb52281643123d918e6febb.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ../src/config/default/library/cryptoauthlib/atca_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_iface.o: ../src/config/default/library/cryptoauthlib/atca_iface.c  .generated_files/4b1e2746b8f4cd3538842e01f4cad0c9cbe4b021.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_iface.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_iface.o ../src/config/default/library/cryptoauthlib/atca_iface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/7d93ab3a7edc0788b4f90b74584b06492b392ab6.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/c5e68e18885c70ec7092e63a0a611c859ebcb783.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/1944682e3ab6b8790d36587da325abb2f5556878.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/c3e384a9720f4c3186c5a94b3c801f3d9026ab88.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/220d234b63eaf484eb6b1639ae227db968f7063.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/f09a7e11c6452aa46ac3d9dc955c86cf8646b8e6.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/ce1057d7d385eb6db39b59ea02f0178aaf3a2933.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/fe357b5c62ccfb3c8bfe17444bdedd1eefd16e57.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/3df0f68c674995b15767d600e1a2fea5cc77f9d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/b129aec7dad442ee144e506c443fb87004fb635d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/cf3b2915abbe84a75683aca58cb908f4404fbdb5.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/5f31a2e57edc2a764ae7d5d7ab76bffca7b5ead1.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/f59ca048a38748e1487e8bb0a20cf56c45cd9733.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o: ../src/asymmetric_auth.c  .generated_files/304544279dd13cdaa10735a2057f4eaec1a95e9a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o.d" -o ${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o ../src/asymmetric_auth.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o: ../src/cust_def_1_signer.c  .generated_files/6a472007153431c06aabf2b45df043cceddd2ae6.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o.d" -o ${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o ../src/cust_def_1_signer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o: ../src/cust_def_2_device.c  .generated_files/530251f49f8a094c7fd9ed7b82a1dfce8fcdc61c.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o.d" -o ${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o ../src/cust_def_2_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/394045403/common.o: ../src/common/common.c  .generated_files/5a715ed45057ed30d4d70be4dc30481ad796df35.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/394045403" 
	@${RM} ${OBJECTDIR}/_ext/394045403/common.o.d 
	@${RM} ${OBJECTDIR}/_ext/394045403/common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/394045403/common.o.d" -o ${OBJECTDIR}/_ext/394045403/common.o ../src/common/common.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/394045403/host_rand_number.o: ../src/common/host_rand_number.c  .generated_files/f4dfb27b2b05556a1d157e56631008ff5174620f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/394045403" 
	@${RM} ${OBJECTDIR}/_ext/394045403/host_rand_number.o.d 
	@${RM} ${OBJECTDIR}/_ext/394045403/host_rand_number.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/394045403/host_rand_number.o.d" -o ${OBJECTDIR}/_ext/394045403/host_rand_number.o ../src/common/host_rand_number.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/fd27b54b591e8ce1bb7d5dab1d8cf360fea1a773.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c  .generated_files/561c3c8dcbbe4026772a8f6ac9c570d16208f513.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c  .generated_files/bb82e7d7a8b9333d22dd2dd0cf3ea3ba39772ef3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o: ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c  .generated_files/39f8b593c4851a049f3992f31ab61af61361963c.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/35538813/atcacert_client.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c  .generated_files/8d4e5ec9697c05b27f0e2a2d44728abf8f4cfd64.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_client.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_date.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c  .generated_files/6fa54b9da8d1dfcb07df5d20c35e868bdc0685bb.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_date.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_date.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_date.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_def.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c  .generated_files/9de526924c19c8552630cd58e57d25d9255ee266.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_def.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_def.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_der.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c  .generated_files/3923e0fc84ef30aa883520481cf06024a5d30db5.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_der.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_der.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_der.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c  .generated_files/31b082e33332abd685fa6b409cef4098aacd93fd.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_hw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_hw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c  .generated_files/816455007726c3a4b41214bb78f4105e6489dd70.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_host_sw.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_host_sw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/35538813/atcacert_pem.o: ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c  .generated_files/d4269dd7b3602593d036567a091ccfbcc27a0489.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/35538813" 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/35538813/atcacert_pem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/35538813/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/35538813/atcacert_pem.o ../src/config/default/library/cryptoauthlib/atcacert/atcacert_pem.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes.c  .generated_files/c9d7b3c7fae4c00bd7707e5ef1cabb6a1dbba635.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes.o ../src/config/default/library/cryptoauthlib/calib/calib_aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o: ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c  .generated_files/cf9d375ddc6624d7d66e4ef9a22bc92254245d5f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_aes_gcm.o ../src/config/default/library/cryptoauthlib/calib/calib_aes_gcm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_basic.o: ../src/config/default/library/cryptoauthlib/calib/calib_basic.c  .generated_files/ab7b1fe0bcebfd6b1e3b0cdc3d4e6eb39077751b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_basic.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_basic.o ../src/config/default/library/cryptoauthlib/calib/calib_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_checkmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c  .generated_files/3cfbbbcb5cab7d83db022368f949b9d05c976095.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_checkmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_checkmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_checkmac.o ../src/config/default/library/cryptoauthlib/calib/calib_checkmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_command.o: ../src/config/default/library/cryptoauthlib/calib/calib_command.c  .generated_files/35c112f4a06b02a885a0fafb4e89f1e9b68e4611.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_command.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_command.o ../src/config/default/library/cryptoauthlib/calib/calib_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_counter.o: ../src/config/default/library/cryptoauthlib/calib/calib_counter.c  .generated_files/69a76a126dbc370094c8741e15b5528c08a5a13b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_counter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_counter.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_counter.o ../src/config/default/library/cryptoauthlib/calib/calib_counter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_derivekey.o: ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c  .generated_files/a819cb0fa6837a8c2d0eeef8888e0c978f81a93d.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_derivekey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_derivekey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_derivekey.o ../src/config/default/library/cryptoauthlib/calib/calib_derivekey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_ecdh.o: ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c  .generated_files/8f640cc3edf832592e74e114d993d397cc2cec35.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_ecdh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_ecdh.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_ecdh.o ../src/config/default/library/cryptoauthlib/calib/calib_ecdh.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_execution.o: ../src/config/default/library/cryptoauthlib/calib/calib_execution.c  .generated_files/4b260144185eac81286fd827b070bf4b3c90f3c4.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_execution.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_execution.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_execution.o ../src/config/default/library/cryptoauthlib/calib/calib_execution.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_gendig.o: ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c  .generated_files/c3b2a9cd2419c3cd78442be5dc4a9f507f853c76.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_gendig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_gendig.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_gendig.o ../src/config/default/library/cryptoauthlib/calib/calib_gendig.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_genkey.o: ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c  .generated_files/633f61f4ae15f9304bea9a5adbbdeec7ef4f3e20.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_genkey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_genkey.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_genkey.o ../src/config/default/library/cryptoauthlib/calib/calib_genkey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_hmac.o: ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c  .generated_files/339c194818ce991c8e76ea09c2bf4beff7e4aba9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_hmac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_hmac.o ../src/config/default/library/cryptoauthlib/calib/calib_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_info.o: ../src/config/default/library/cryptoauthlib/calib/calib_info.c  .generated_files/df20bd119a70cc5f2f90b3303d418193e0dca870.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_info.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_info.o ../src/config/default/library/cryptoauthlib/calib/calib_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_kdf.o: ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c  .generated_files/57ed27116a0d69f66be12f7a50300d4624da67a4.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_kdf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_kdf.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_kdf.o ../src/config/default/library/cryptoauthlib/calib/calib_kdf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_lock.o: ../src/config/default/library/cryptoauthlib/calib/calib_lock.c  .generated_files/1bfb534b6a4020bc564908d6a657a1efbe966011.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_lock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_lock.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_lock.o ../src/config/default/library/cryptoauthlib/calib/calib_lock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_mac.o: ../src/config/default/library/cryptoauthlib/calib/calib_mac.c  .generated_files/166f3abe71f3039dd5398c1a4e818ef0a628119a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_mac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_mac.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_mac.o ../src/config/default/library/cryptoauthlib/calib/calib_mac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_nonce.o: ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c  .generated_files/d99b7381590e7e20d1583a120ea29e07ce1d9ccb.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_nonce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_nonce.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_nonce.o ../src/config/default/library/cryptoauthlib/calib/calib_nonce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_privwrite.o: ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c  .generated_files/8fb8781dfaf8ee72410c0f261de7e47db7adf18c.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_privwrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_privwrite.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_privwrite.o ../src/config/default/library/cryptoauthlib/calib/calib_privwrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_random.o: ../src/config/default/library/cryptoauthlib/calib/calib_random.c  .generated_files/9642ced3ba1a24839451cdeba04819b8195fe5b.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_random.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_random.o ../src/config/default/library/cryptoauthlib/calib/calib_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_read.o: ../src/config/default/library/cryptoauthlib/calib/calib_read.c  .generated_files/a6e2843db7d7c644fe8f7b66842a65125cd5ea67.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_read.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_read.o ../src/config/default/library/cryptoauthlib/calib/calib_read.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_secureboot.o: ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c  .generated_files/3b530db9ab93a30c6538c67e1e80c8324d6a13c0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_secureboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_secureboot.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_secureboot.o ../src/config/default/library/cryptoauthlib/calib/calib_secureboot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_selftest.o: ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c  .generated_files/a256d83ec05bbd0dc27b855635f5d6e19a089aca.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_selftest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_selftest.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_selftest.o ../src/config/default/library/cryptoauthlib/calib/calib_selftest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sha.o: ../src/config/default/library/cryptoauthlib/calib/calib_sha.c  .generated_files/2558dbfe0d59577bedc9365a72730a83c72345b8.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sha.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sha.o ../src/config/default/library/cryptoauthlib/calib/calib_sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_sign.o: ../src/config/default/library/cryptoauthlib/calib/calib_sign.c  .generated_files/eb6b40be0243af22ced04c2c587b1eb1d6abebc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_sign.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_sign.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_sign.o ../src/config/default/library/cryptoauthlib/calib/calib_sign.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_updateextra.o: ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c  .generated_files/11c2771758f86cba57591a209fe2fc51f8a4b155.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_updateextra.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_updateextra.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_updateextra.o ../src/config/default/library/cryptoauthlib/calib/calib_updateextra.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_verify.o: ../src/config/default/library/cryptoauthlib/calib/calib_verify.c  .generated_files/851c2da3abe963ba7b8d6b857b67a5c93abbc0d2.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_verify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_verify.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_verify.o ../src/config/default/library/cryptoauthlib/calib/calib_verify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/95446945/calib_write.o: ../src/config/default/library/cryptoauthlib/calib/calib_write.c  .generated_files/4cba5e46c4c80b04cfb86ade57d85a42e7911014.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/95446945" 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/95446945/calib_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/95446945/calib_write.o.d" -o ${OBJECTDIR}/_ext/95446945/calib_write.o ../src/config/default/library/cryptoauthlib/calib/calib_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha1_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c  .generated_files/5ac993576e9bade8e2df591d4e7dac95a3bbb8f5.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha1_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha1_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha1_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2017208766/sha2_routines.o: ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c  .generated_files/ded9c08d66634a614059b78b97f17c67c51c26ed.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2017208766" 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017208766/sha2_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2017208766/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/2017208766/sha2_routines.o ../src/config/default/library/cryptoauthlib/crypto/hashes/sha2_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c  .generated_files/20b1083d8a964f65d73a5ca5179eb8d85f0912b3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbc.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c  .generated_files/591c79fb9fdf62dd03efae81461de397cf6e33a8.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c  .generated_files/afe86f2d9bb8ce602e1386e9c708a8aabcff24f0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ctr.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ctr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/d6fbab72359801834c2ebfca1f962b5024177356.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_ecdsa.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c  .generated_files/6c1fdae3f6fb15b9a6097ee2b0797966d5ca51a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_rand.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c  .generated_files/332249f9fa45dbd162344647d3ffe1d0a3dc1227.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha1.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c  .generated_files/f2a18377925628a7539ae2791e3e2d309b5c34a1.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_sw_sha2.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/ATECC608_0.o: ../src/config/default/library/cryptoauthlib/hal/ATECC608_0.c  .generated_files/5f7a7a9a825c67e371f3094f542ff7a66f38ef6c.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATECC608_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/ATECC608_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/ATECC608_0.o.d" -o ${OBJECTDIR}/_ext/1390037109/ATECC608_0.o ../src/config/default/library/cryptoauthlib/hal/ATECC608_0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/atca_hal.o: ../src/config/default/library/cryptoauthlib/hal/atca_hal.c  .generated_files/6b6eeef5691406bbe2bb7b5e7eb9a5cbb628b460.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/atca_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/atca_hal.o.d" -o ${OBJECTDIR}/_ext/1390037109/atca_hal.o ../src/config/default/library/cryptoauthlib/hal/atca_hal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o: ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c  .generated_files/6f02a6d9a92e7bb74f26e2e33f01fc3512892b1f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_i2c_harmony.o ../src/config/default/library/cryptoauthlib/hal/hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o: ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c  .generated_files/888ba9c6d2c536892f381ca5f7f6f92467f1bc00.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_harmony_init.o ../src/config/default/library/cryptoauthlib/hal/hal_harmony_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o: ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c  .generated_files/95cfeeb69a37385c14ce3e21464257ca208042a0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390037109" 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/1390037109/hal_cortex_m_delay.o ../src/config/default/library/cryptoauthlib/hal/hal_cortex_m_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/141463632/atca_host.o: ../src/config/default/library/cryptoauthlib/host/atca_host.c  .generated_files/84b6426fd15f476055c0214610754ae6cdc52ac7.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/141463632" 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/141463632/atca_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141463632/atca_host.o.d" -o ${OBJECTDIR}/_ext/141463632/atca_host.o ../src/config/default/library/cryptoauthlib/host/atca_host.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390034497/atca_jwt.o: ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c  .generated_files/26187eba4a615cb3ed75b1d214e0049d9f1cd6e9.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390034497" 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390034497/atca_jwt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390034497/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/1390034497/atca_jwt.o ../src/config/default/library/cryptoauthlib/jwt/atca_jwt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o: ../src/config/default/library/cryptoauthlib/tng/tflxtls_cert_def_4_device.c  .generated_files/46c3406a856e67c5d86cee4b20bbd6a70cc833f3.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o.d" -o ${OBJECTDIR}/_ext/1390025179/tflxtls_cert_def_4_device.o ../src/config/default/library/cryptoauthlib/tng/tflxtls_cert_def_4_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o: ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c  .generated_files/760b74f6c55f8041cb048da40351fd30e9fc3bae.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o.d" -o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_1_signer.o ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o: ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c  .generated_files/628fd618bd196f25b0dc7ef0bb437e464acb3e7e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o.d" -o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_2_device.o ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o: ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c  .generated_files/ca75927afe9f0cd95fccec1f6488aef435774364.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o.d" -o ${OBJECTDIR}/_ext/1390025179/tnglora_cert_def_4_device.o ../src/config/default/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o: ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c  .generated_files/c04d73b8e998315a37857eb2b526448cd1ca05bc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o.d" -o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_1_signer.o ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o: ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c  .generated_files/17c405a183ec46b8f1136822abe7a68a4ac2a2c4.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o.d" -o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_2_device.o ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o: ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c  .generated_files/e7012242104220f4a01df2df85a7b2782fc2a362.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o.d" -o ${OBJECTDIR}/_ext/1390025179/tngtls_cert_def_3_device.o ../src/config/default/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tng_atca.o: ../src/config/default/library/cryptoauthlib/tng/tng_atca.c  .generated_files/beff1e541d460160ccdadaa1466aa65a22077d89.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_atca.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_atca.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tng_atca.o.d" -o ${OBJECTDIR}/_ext/1390025179/tng_atca.o ../src/config/default/library/cryptoauthlib/tng/tng_atca.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o: ../src/config/default/library/cryptoauthlib/tng/tng_atcacert_client.c  .generated_files/8e3d7f434ee4813be0db4694721a52b70ad9d2a0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o.d" -o ${OBJECTDIR}/_ext/1390025179/tng_atcacert_client.o ../src/config/default/library/cryptoauthlib/tng/tng_atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390025179/tng_root_cert.o: ../src/config/default/library/cryptoauthlib/tng/tng_root_cert.c  .generated_files/f2ff64b9187fd63aef05bd2276673e4ee0fb405.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1390025179" 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_root_cert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390025179/tng_root_cert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390025179/tng_root_cert.o.d" -o ${OBJECTDIR}/_ext/1390025179/tng_root_cert.o ../src/config/default/library/cryptoauthlib/tng/tng_root_cert.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_basic.o: ../src/config/default/library/cryptoauthlib/atca_basic.c  .generated_files/b90563c06a1765f5e3fee06e9da935017dbbee7.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_basic.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_basic.o ../src/config/default/library/cryptoauthlib/atca_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_cfgs.o: ../src/config/default/library/cryptoauthlib/atca_cfgs.c  .generated_files/78848375f7dac50445f4c42185912ecadfdaeba7.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_cfgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_cfgs.o ../src/config/default/library/cryptoauthlib/atca_cfgs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_command.o: ../src/config/default/library/cryptoauthlib/atca_command.c  .generated_files/f068cae19912666d97f987fe306107c32bd57b2c.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_command.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_command.o ../src/config/default/library/cryptoauthlib/atca_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_debug.o: ../src/config/default/library/cryptoauthlib/atca_debug.c  .generated_files/1ee62158e1203d6140f5bf1697a101dd71d74be1.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_debug.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_debug.o ../src/config/default/library/cryptoauthlib/atca_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_device.o: ../src/config/default/library/cryptoauthlib/atca_device.c  .generated_files/68dd02508636ea1a68a9cd631367cc06d6e680c0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_device.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_device.o ../src/config/default/library/cryptoauthlib/atca_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_helpers.o: ../src/config/default/library/cryptoauthlib/atca_helpers.c  .generated_files/82205779e2a194bd888b61ca5592aefd23921f7a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_helpers.o ../src/config/default/library/cryptoauthlib/atca_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_iface.o: ../src/config/default/library/cryptoauthlib/atca_iface.c  .generated_files/29efc2df3e3e8e20c7dafc6b960ce578887252b0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_iface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_iface.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_iface.o ../src/config/default/library/cryptoauthlib/atca_iface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/5efe045a1e400bd307e81bce5e2f7939dc8b0ffc.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/f9cec61a4367892d8c2ef63b1faa0400034562c8.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/e59f35116a5452ab402d6d76e92782ccd7180a03.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/d3b47003e3aef6bc092f70d0bd7372d6ec3c2ebb.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/d77fbc99a7141438767f1eed0f0a038c1f9d4709.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/b53311a7207d55c11f986de8f742337c525be144.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/a9b83279d56010e5534d48bb47c7f3d20f10c811.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/f90280f2721b3dfd520d4076bae7cbfbf59533a6.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/2f2f1ad87e92ae9deed46eb9ce2c8f46d68279eb.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/77a5fd9ec77594aeaba638fb5f04ff91e6efcd71.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/4dd307677e4564ce2d807cd07c4b85215ed430c5.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/4ccd2a3ce4129bf9381a9ae7ae0ed4dd937ccb34.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/97c47ee01754b91d78fbe7f8843e5a1f41ad1a2a.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o: ../src/asymmetric_auth.c  .generated_files/bc16c7c32725395a41ea41fc765dc0de5e9c0768.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o.d" -o ${OBJECTDIR}/_ext/1360937237/asymmetric_auth.o ../src/asymmetric_auth.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o: ../src/cust_def_1_signer.c  .generated_files/6ac5735408a64118c5feb8872e2573bf49001159.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o.d" -o ${OBJECTDIR}/_ext/1360937237/cust_def_1_signer.o ../src/cust_def_1_signer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o: ../src/cust_def_2_device.c  .generated_files/e479bd9f6066901fe642d84c7ba20ce4a4d5de03.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o.d" -o ${OBJECTDIR}/_ext/1360937237/cust_def_2_device.o ../src/cust_def_2_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/394045403/common.o: ../src/common/common.c  .generated_files/d021c097aee9f39ece352b071c820586b7dabec0.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/394045403" 
	@${RM} ${OBJECTDIR}/_ext/394045403/common.o.d 
	@${RM} ${OBJECTDIR}/_ext/394045403/common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/394045403/common.o.d" -o ${OBJECTDIR}/_ext/394045403/common.o ../src/common/common.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/394045403/host_rand_number.o: ../src/common/host_rand_number.c  .generated_files/a285272ff03a7a4ab2ccfcf3b0d03555c075876f.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/394045403" 
	@${RM} ${OBJECTDIR}/_ext/394045403/host_rand_number.o.d 
	@${RM} ${OBJECTDIR}/_ext/394045403/host_rand_number.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/394045403/host_rand_number.o.d" -o ${OBJECTDIR}/_ext/394045403/host_rand_number.o ../src/common/host_rand_number.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/aeb6fac7ec42d117470ec5fdce59093378fb923e.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c  .generated_files/be01e223bcbdd3509c9b738a5a9952efab8c6dff.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_cbcmac.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_cbcmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o: ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c  .generated_files/7080b10f7ee8ee2b9bfcaaa7fd843d9bfeeb8e79.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1352206537" 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o.d" -o ${OBJECTDIR}/_ext/1352206537/atca_crypto_hw_aes_ccm.o ../src/config/default/library/cryptoauthlib/crypto/atca_crypto_hw_aes_ccm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o: ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c  .generated_files/b27bf0e559434b136936c04dec93e35f65d98334.flag .generated_files/12ccedd8e8221f1dc95d9d3bf42771e41a34426e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/701127929" 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d 
	@${RM} ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../00_resource_generation" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o.d" -o ${OBJECTDIR}/_ext/701127929/atca_utils_sizes.o ../src/config/default/library/cryptoauthlib/atca_utils_sizes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/asymmetric_auth.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ATSAMD21J18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/asymmetric_auth.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/asymmetric_auth.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAMD21J18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/asymmetric_auth.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/asymmetric_auth.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
