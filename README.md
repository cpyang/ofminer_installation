# OFMiner Installation

## Install Tibero - tibero6-bin-FS07_CS_2005-linux64_3.10-254764-20221006094515.tar.gz (Global Unified Binary #11) 
### Setup environment variables
``` shell
export TB_SID=tibero6
export TB_HOME=/opt/tmaxsoft/tibero6
export TB_CONFIG=$TB_HOME/config
export TB_NLS_LANG=UTF8
export PATH=$PATH:$TB_HOME/bin:$TB_HOME/client/bin
export LD_LIBRARY_PATH=$TB_HOME/lib:$TB_HOME/client/lib
export CLASSPATH=$CLASSPATH:$TB_HOME/client/lib/jar/tibero6-jdbc.jar:.
```
### Create database and setup ofminer account
``` shell
cd $TB_HOME/conifg; ./gen_tip.sh
tbctl create_db -ch UTF8
tbsql sys/tibero << EOF
create user ofminer identified by ofminer;
grant dba to ofminer;
EOF
```

## Install JEUS - jeus70_unix_generic_en.bin
### Setup environment variables
``` shell
export JEUS_HOME=/opt/tmaxsoft/jeus7
export PATH=$PATH:$JEUS_HOME/bin:$JEUS_HOME/lib/system:$JEUS_HOME/lib/jext
export VM_TYPE=hotspot
export JEUS_LIBPATH=$JEUS_HOME/lib/system:$JEUS_HOME/lib/jext
```
### Copy jext_v7004_i116754_a756512.jar to $JEUS_HOME/lib/jext
### Start JEUS
``` shell
startDomainAdminServer -u administrator -p MyPassword1 -domain jeus_domain -server adminServer -cachelogin
startManagedServer -server server1 -domain jeus_domain -u administrator -p MyPassword1 -cachelogin
```

## Install OFMiner - OpenFrame_Miner_7_Fix1_Generic.bin
### Installation
OS Type: MVS(?)
### Check application information
``` shell
jeusadmin -u administrator -p MyPassword1 "appinfo -id OFMiner";
jeusadmin -u administrator -p MyPassword1 "serverinfo -server server1";
jeusadmin -u administrator -p MyPassword1 "appinfo -server server1  -id OFMiner -detail"
```
### Access OFMiner at http://localhost:8088/OFMiner with ROOT/SYS1
