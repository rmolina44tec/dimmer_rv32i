#!/usr/bin/env bash

##################################################################################
# Title:        synopsys_tools.sh
# Description:  Punteros a ejecutables herramientas de Synopsys y la tecnonologia
#               xh018 de XFAB
# Dependencies: Ninguna.
# Project:	TECRISCV
# Author:       Reinaldo Castro Gonzalez (RCG)       
# Institution:  Instituto Tecnologico de Costa Rica. DCILab.                                    
# Date:         21 de Marzo de 2018                                                                   
# Notes:	Actualizado por Alfonso Chacon Rodriguez (ACR)
# Version:      2.22                                                                             
# Revision:     19/11/2020
#		(RMR).  Se agrega el path a UVM. 10/03/2021
#		(ACR).	Se actualizan versiones herramientas a 2020 19/11/2020                                                           
#		(ACR).	Se actualizan licencias a nuevos punteros. 1/11/2018
#		(ACR).	Se actualiza ICC, DC, PrimeTime, MilkyWay 28/08/2018
#		(ACR).	Se actualiza ICValidator, StarRC, DC, ICC, Custom_Compiler,
#			WaveView, VCS, HSPICE.
#		(ACR).	Se actualizan a versiones 7.0 ICV, PDK, celdas estandar
#		(ACR).	Se actualiza a v2.0.2 kit A/MS por error en PEX, LVS
#		(ACR).	Se actualizan herramientas 2016, 2017
#		(ACR).	Se actualizan herramientas 2015, kits AMS XH018 de XFAB
#		(ACR).	Se actualizan herramientas 2014, kits de XFAB
#		(RCG).  Se annade la variable SNPSLMD_QUEUE. 
#
##################################################################################

# Bash para definir caminos a las herramientas de Synopsys. Actualizado al 20-03-2018 (ACR).

# Direccion de la licencia
export SNPSLMD_LICENSE_FILE=27020@172.21.99.41;
# Las direcciones alternas de servidorson:
# 27000@172.21.9.209, 27000@172.21.9.210

#Pendiente: definir variable con licencias flotantes

SNPSLMD_QUEUE=TRUE;	# Variable de ambiente para que Synopsys espere la validacion de las 
			# todas las licencias solicitadas.
export SNPSLMD_QUEUE
export SNPSLMD_LICENSE_FILE

#SYNOPSYS_HOME=/mnt/vol_NFS_rh003/synopsys_tools/synopsys
SYNOPSYS_HOME=/mnt/vol_NFS_Pivot/rmolina_installation_files/tools/synopsys
##SYNOPSYS_HOME=/mnt/vol_NFS_rh003/profesores/rmolina/tools/synopsys
##SYNOPSYS_HOME=/mnt/vol_NFS_Pivot/tools_vlsi
#export SYNOPSYS_HOME=/mnt/vol_synopsys2023/synopsys
export SYNOPSYS_HOME
#############################################################################
### Variables de ruta para contenedor de compatibilidad para Synopsys ####
#############################################################################
#PATH=$PATH:${SYNOPSYS_HOME}/singularity-3.1.0/bin
#export PATH

#############################################################################
# La siguiente variable es necesaria para la aplicacion Tetramax de Synopsys
SYNOPSYS=${SYNOPSYS_HOME}/syn/R-2020.09-SP5-1
#export SYNOPSYS
#############################################################################

######### Variables para el PyCells Studio, OA cell lybrary ######
#CNI_ROOT=$SYNOPSYS_HOME/PyCell_Studio/Q-2020_03-SP2
CNI_ROOT=$SYNOPSYS_HOME/pycells/
export CNI_ROOT

#############################################################################
### Variables de ruta para las aplicaciones de diseño Custom de Synopsys ####
#############################################################################

## Custom Compiler

PATH=$PATH:${SYNOPSYS_HOME}/customcompiler/R-2020.12-SP1/bin
export PATH
PATH=$PATH:${SYNOPSYS_HOME}/customcompiler/R-2020.12-SP1/linux64/
export PATH

## WaveViewer

#PATH=$PATH:${SYNOPSYS_HOME}/wv/Q-2020.03-SP2-2/bin
PATH=$PATH:${SYNOPSYS_HOME}/wv/R-2020.12-1/bin
export PATH

## ICValidator

ICV_HOME_DIR=${SYNOPSYS_HOME}/icvalidator/R-2020.09-SP3-8
export ICV_HOME_DIR
PATH=$PATH:${ICV_HOME_DIR}/bin/LINUX.64
export PATH

## FineSim
#FINESIM_INST_DIR=${SYNOPSYS_HOME}/finesim/Q-2020.03-SP2-2
#FINESIM_INST_DIR=${SYNOPSYS_HOME}/finesim/R-2020.12-2
#export FINESIM_INST_DIR
#source $FINESIM_INST_DIR/finesim.cshrc
#Al no haber un archivo equivalente basrc, se traduce el contenido del archivo "finesim.cshrc" a continuacion
#export FINESIM_HOME=$FINESIM_INST_DIR
#export FINESIM_64=1
#export FINEWAVE_64=1
#export POWERVIEW_64=1
#PATH=$PATH:${FINESIM_HOME}/bin
#export PATH

FINESIM_HOME=${SYNOPSYS_HOME}/finesim/R-2020.12-SP2-4
export FINESIM_HOME

PATH=$PATH:${FINESIM_HOME}/bin
export PATH

## HSPICE

##PATH=$PATH:${SYNOPSYS_HOME}/hspice/Q-2020.03-SP2-2/hspice/bin
PATH=$PATH:${SYNOPSYS_HOME}/hspice/R-2020.12-SP2/hspice/bin
export PATH


## StarRC
#PATH=$PATH:${SYNOPSYS_HOME}/starrc/M-2017.06-SP3/bin
 
#export PATH

## Hsim (antiguo CustomSim, XA)
#PATH=$PATH:${SYNOPSYS_HOME}/custom_sim/xa/N-2017.12-SP1/bin
#PATH=$PATH:${SYNOPSYS_HOME}/hsim/Q-2020.03-SP5/hsimplus/bin
#export PATH

################ Kit xh018 de XFAB, AMS ##################
##   XFAB Liberty Displayer (XLIBD)  v2.0.3 xh018   ##
##########################################################
#XFAB_UTILS=/mnt/vol_NFS_Zener/tools/synopsys/pdks/xh018-ams/XFAB_snps_CustomDesigner_kit_v2_1_0/x_all/utilities
XFAB_UTILS=/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/x_all/synopsys/XFAB_AMS_RefKit-synopsys_CustomCompiler/v2_0_2/utilities
export XFAB_UTILS

XLIBD_INSTALL_PATH=/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/x_all/utilities/XLIBD/v2_0/bin/linux_x86_64/v2_0_6/bin
export XLIBD_INSTALL_PATH

XLIBD_INIT_FILE_PATH=${HOME}/XLIBD.ini
export XLIBD_INIT_FILE_PATH

XLIBD_LIBERTY_PATH=/mnt/vol_NFS_rh003/xfab_pdks/design/xkit
export XLIBD_LIBERTY_PATH

################ Kit xh018 de XFAB, AMS ##################
##   Version v2_0_12 Custom Compiler Kit,  v7.0 xh018   ##
##########################################################

#FTK_KIT_DIR=/mnt/vol_NFS_rh003/xfab_pdks/synopsys/pdks/xh018-ams/XFAB_snps_CustomDesigner_kit_v2_1_0
FTK_KIT_DIR=/mnt/vol_NFS_rh003/xfab_pdks/design/xkit
#FTK_KIT_DIR=/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/xh018/synopsys/v8_1/PDK/CustomCompiler/v8_1_8
export FTK_KIT_DIR
PATH=$PATH:/mnt/vol_NFS_rh003/xfab_pdks/design/xkit/x_all/synopsys/xenv
export PATH


# A continuacion se debe definir la ruta al disenno, dentro del directorio base de su proyecto
# con una variable propia. Luego descomente las siguientes 2 lineas.

#DESIGN_HOME=/mnt/vol_NFS_rh003/profesores/rmolina/joel_experiment

#export DESIGN_HOME

# Se define un machote de configuracion para las simulaciones de su proyecto. Descomentar
# las siguientes 2 lineas una vez haya definido la variable DESIGN_HOME

#SYNOPSYS_SIM_SETUP=$DESIGN_HOME/cells_1/synopsys_sim.setup
#export SYNOPSYS_SIM_SETUP

# Nota: Desactive el siguiente comentario solo cuando ya 
# tenga la biblioteca instalada (haya corrido el proceso de instalacion la primera vez)
#source $CNI_ROOT/quickstart/bashrc 

# Se define el editor de texto para CustomCompiler. Puede re-emplazarlo por "nano", "vim" o cualquier
# editor de su preferencia.

#EDITOR=gedit;
#export EDITOR

##################################################################################
### Variables de ruta para las aplicaciones de disenno Semi-Custom de Synopsys ###
##################################################################################

## Design Compiler

PATH=$PATH:$SYNOPSYS_HOME/syn/R-2020.09-SP5-1/bin
export PATH

## IC Compiler

PATH=$PATH:${SYNOPSYS_HOME}/icc/S-2021.06-SP3/bin
export PATH

## IC Compiler 2

PATH=$PATH:${SYNOPSYS_HOME}/icc2/R-2020.09-SP6/bin
export PATH

## Tetramax | Herramienta para ATPG
PATH=$PATH:$SYNOPSYS/linux64/syn/bin
export PATH

## Prime Time
    
PATH=$PATH:${SYNOPSYS_HOME}/prime/R-2020.09-SP5-1/bin ##pts2/R-2020.09-SP1/bin
export PATH

## Milkyway
PATH=$PATH:${SYNOPSYS_HOME}/mw/R-2020.09-SP5-1/bin ##mw2/R-2020.09-SP1/bin   
export PATH

### Library Compiler

PATH=$PATH:$SYNOPSYS_HOME/lc/R-2020.09-SP5/bin ##lc/R-2020.09-SP5/linux64/syn/bin
export PATH

###  Nueva version de VCS Mixed, 64 bits
#VCS_HOME=${SYNOPSYS_HOME}/vcs-mx2/Q-2020.03-SP2-1 
VCS_HOME=${SYNOPSYS_HOME}/vcs/R-2020.12-SP2
export VCS_HOME

PATH=$PATH:${VCS_HOME}/bin
export PATH

###  Nueva version de Verdi, 64 bits
VERDI_HOME=${SYNOPSYS_HOME}/verdi/R-2020.12-SP2
export VERDI_HOME

PATH=$PATH:${VERDI_HOME}/bin
export PATH

###  UVM path
UVM_HOME=${SYNOPSYS_HOME}/vcs/R-2020.12-SP2/etc/uvm-1.2
export UVM_HOME

###### VCF
#VC_STATIC_HOME=/mnt/vol_NFS_rh003/profesores/rmolina/evaristo_project/vc_static/O-2018.09-SP2
#VC_STATIC_HOME=${SYNOPSYS_HOME}/vc_static/R-2020.12-SP2-5
VC_STATIC_HOME=${SYNOPSYS_HOME}/vc_static/T-2022.06-1
export VC_STATIC_HOME

PATH=$PATH:${VC_STATIC_HOME}/bin
export PATH

###  Silicon Smart
SILICONSMART_HOME=$PATH:${SYNOPSYS_HOME}/siliconsmart
#PATH=$PATH:/mnt/vol_NFS_rh003/profesores/rmolina/tools/synopsys/siliconsmart/R-2020.12-SP1-4
export SILICONSMART_HOME

PATH=$PATH:${SILICONSMART_HOME}/R-2020.12-SP1-4/bin
export PATH

### Symbiotic EDA
PATH=$PATH:/mnt/vol_NFS_rh003/profesores/rmolina/Symbiotic_EDA/symbiotic-20201202A-academic-licenses/bin
export PATH

SYMBIOTIC_LICENSE=/mnt/vol_NFS_rh003/profesores/rmolina/Symbiotic_EDA/symbiotic-academic-licenses-tech-costa-rica.lic
export SYMBIOTIC_LICENSE

#VC_HOME=${SYNOPSYS_HOME}/verdi/R-2020.12-1/bin
#export VC_HOME

#SMPS_SIM_DEFAULT_GUI=verdi
#export SMPS_SIM_DEFAULT_GUI

###VC FORMAL NOT WORKING
###### VCF
#VC_STATIC_HOME=/mnt/vol_NFS_rh003/profesores/rmolina/evaristo_project/vc_static/O-2018.09-SP2/
#export VC_STATIC_HOME

#PATH=$PATH:${VC_STATIC_HOME}/bin
#export PATH

##### VERDI 
#VERDI_HOME=/mnt/vol_NFS_rh003/profesores/rmolina/evaristo_project/verdi/Verdi_N-2017.12-SP2/
#export VERDI_HOME

#PATH=$PATH:${VERDI_HOME}/bin/
#export PATH
