# ECC608A

ATECC608A的Provision程序

python中有脚本包括：
1. check_requirments.py 检查并安装依赖的库
2. info.py 读取ATECCx08A的芯片信息
3. config_trust_flex.py 可以把空的ATECCx08烧录成TrustFlex的配置
4. device_provision.py 安全芯片的Provision程序，可以指定组织名和共用名称，生成Root和Signer以及对应的证书，对器件签发证书并生成Manifest文件

firmware中的代码是用ATSAMD21来对芯片的证书链进行验证的

分支swi支持通过SWI接口访问ATECC608。功能已验证