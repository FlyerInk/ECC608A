import os, fnmatch
import cryptography
import warnings

from helper import *
from tflx_manifest_generation_helper import *
from cryptoauthlib import *
from certs_handler import *
from trustplatform import *

ORG_NAME = 'Microchip'
CN_NAME = 'IOT Test '

warnings.filterwarnings('ignore')

#TFLXTLS device I2C address 0x6C; #TNGTLS device I2C address 0x6A; 
common_helper.connect_to_secure_element('ATECC608', ATCAKitType.ATCA_KIT_AUTO_IFACE, 0x00)
print("Device initialization - Successful\n")

def generate_resources():
    print('\n\r---------------------------------------------')
    slots = [0,1,2,3,4,6,5,7,8,9,10,11,12,13,14,15] 
    for i in slots:
        status = create_resource_and_program(i)
        if(status != True):
            raise ValueError("Resource gererator failure")

    # Additional step to generate files for C-examples (ignore for Notebooks)
    #create_resources_for_c_examples()
    print('\n\r---------------------------------------------')
    print('Key generation - Success')
    print('---------------------------------------------\n\r')

def generate_cust_cert(org_name, common_name):
    print('Custom Certs processing...')
    status = custom_cert(org_name, common_name)
    assert status == 'success'

def get_org_name(org_name, common_name):
    generate_cust_cert(org_name, common_name)

def generate_manifest():
    status = generate_tflxtls_manifest()
    assert status == 'success'

print('--------------------------------------')
print('1. Generate resources - generate keys and provision to device')
print('2. Select the Certificate Type to prototype')
print('3. Generate manifest - generate securesigned element object and store it in manifest file')
print('--------------------------------------\n')

print('Generate resources')
generate_resources()
get_org_name(ORG_NAME, CN_NAME)
generate_manifest()
