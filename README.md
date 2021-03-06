# ADC-WW3-Coupling-Dev
This repository stores the ADC-WW3-HBL-NEMS code in active developement. This work is a collaborative effort between URI/GSO and our NOAA partners. 
The coupling between ADCIRC and WW3 is done by a flexible application based on the Earth System Modeling Framework (ESMF) with NUOPC layer. This coupling application is developed as part of the NOAA Coastal Act coupling project. 

## Structure of this repository:
### Source Code 
The source code comes from the [ADC-WW3-NWM-NEMS](https://github.com/noaa-ocs-modeling/ADC-WW3-NWM-NEMS) repository. 

### Benchmark Case
In this folder, I plan to provide a prototype case where ADCIRC and WW3 is coupled by the sea-state dependent wind stress in addition to the traditional wave radiation stress. (Not yet available..)


### Test Cases:
Located here are some simple test cases I have run (or will run) to identify issues in the couple system.  


#### 1. Check the 1dt coupling time lag between two model components 
   | Case Info |                                                          |
   |-----------|:--------------------------------------------------------:|
   |  Mesh:    | Shinnecock                                               |
   |  Wind:    | Uniform northeasterly onshore wind increases with time   |
   |  RunType: | atm2wav2ocn                                              |
   
   All the export and import fields from each model component are stored in a folder named [`output_dumped_by_caps`](https://github.com/xychengso/ADC-WW3-Coupling-Dev/tree/main/TestCase/Shinnecock_CouplingTimeTest/output_dumped_by_caps). 
   Note that the assoicated [ATM cap](https://github.com/xychengso/ADC-WW3-Coupling-Dev/tree/main/SrcCode/ATMESH) and [ADCIRC cap](https://github.com/xychengso/ADC-WW3-Coupling-Dev/tree/main/SrcCode/ADCIRC/cpl/nuopc) are updated from the [source](https://github.com/noaa-ocs-modeling/ADC-WW3-NWM-NEMS) so the export variables are dumped correctly at current time (noted in the code as well). In the [WW3 cap](https://github.com/xychengso/ADC-WW3-Coupling-Dev/tree/main/SrcCode/WW3/model/ftn)(`wmesmfmd.ftn`), minor updates have been made to change the way two wind data arrays hold information. A time stamp has been added to the wmesmf_import2_`timestamp`_variableName_.nc file to indicate the output time associated with the last data record in the file.  
   
   
   

   



 
 


