
IF(PRECISION_8BYTE)
    SET(PRECISION_FLAG "-DREAL8")
ELSE(PRECISION_8BYTE)
    SET(PRECISION_FLAG "-DREAL4")
ENDIF(PRECISION_8BYTE)

IF(SUN)
    SET(MACHINE_FLAG "-DCMACHSUN")
ELSEIF(SGI)
    SET(MACHINE_FLAG "-DSGI")
ELSEIF(CRAY)
    SET(MACHINE_FLAG "-DCRAY")
ELSEIF(CRAYX1)
    SET(MACHINE_FLAG "-DCRAYX1")
ELSEIF(UNIX)
    SET(MACHINE_FLAG "-DLINUX")
ELSEIF(CYGWIN)
    SET(MACHINE_FLAG "-DLINUX")
ELSEIF(WIN32)
    SET(MACHINE_FLAG "-DWINDOWS")
ELSEIF(APPLE)
    SET(MACHINE_FLAG "-DLINUX")
ENDIF(SUN)

IF(SUN_MACHINE)
    SET(MACHINE_FLAG "${MACHINE_FLAG} -CMACHSUN")
ENDIF(SUN_MACHINE)

IF(ENABLE_WARN_ELEV_DEBUG)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DDEBUG_WARN_ELEV")
ENDIF(ENABLE_WARN_ELEV_DEBUG)

IF(ENABLE_POWELL)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DPOWELL")
ENDIF(ENABLE_POWELL)

IF(DEBUG_FULL_STACK)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DFULL_STACK")
ENDIF(DEBUG_FULL_STACK)

IF(DEBUG_ALL_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DALL_TRACE")
ENDIF(DEBUG_ALL_TRACE)

IF(DEBUG_FLUSH_MESSAGES)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DFLUSH_MESSAGES")
ENDIF(DEBUG_FLUSH_MESSAGES)

IF(DEBUG_LOG_LEVEL)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DDEBUG")
ENDIF(DEBUG_LOG_LEVEL)

IF(DEBUG_GLOBALIO_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DGLOBALIO_TRACE")
ENDIF(DEBUG_GLOBALIO_TRACE)

IF(DEBUG_WRITER_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DWRITER_TRACE")
ENDIF(DEBUG_WRITER_TRACE)

IF(DEBUG_WRITE_OUTPUT_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DWRITE_OUTPUT_TRACE")
ENDIF(DEBUG_WRITE_OUTPUT_TRACE)

IF(DEBUG_WIND_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DWIND_TRACE")
ENDIF(DEBUG_WIND_TRACE)

IF(DEBUG_WEIR_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DWEIR_TRACE")
ENDIF(DEBUG_WEIR_TRACE)

IF(DEBUG_TVW_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DTVW_TRACE")
ENDIF(DEBUG_TVW_TRACE)

IF(DEBUG_VSMY_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DVSMY_TRACE")
ENDIF(DEBUG_VSMY_TRACE)

IF(DEBUG_TIMESTEP_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DTIMESTEP_TRACE")
ENDIF(DEBUG_TIMESTEP_TRACE)

IF(DEBUG_SUBPREP_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DSUBPREP_TRACE")
ENDIF(DEBUG_SUBPREP_TRACE)

IF(DEBUG_SUBDOMAIN_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DSUBDOMAIN_TRACE")
ENDIF(DEBUG_SUBDOMAIN_TRACE)

IF(DEBUG_READ_INPUT_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DSUBDOMAIN_TRACE")
ENDIF(DEBUG_READ_INPUT_TRACE)

IF(DEBUG_OWIWIND_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DOWIWIND_TRACE")
ENDIF(DEBUG_OWIWIND_TRACE)

IF(DEBUG_NODALATTR_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DNODALATTR_TRACE")
ENDIF(DEBUG_NODALATTR_TRACE)
    
IF(DEBUG_NETCDF_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DNETCDF_TRACE")
ENDIF(DEBUG_NETCDF_TRACE)
    
IF(DEBUG_MESSENGER_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DMESSENGER_TRACE")
ENDIF(DEBUG_MESSENGER_TRACE)
    
IF(DEBUG_MESH_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DMESH_TRACE")
ENDIF(DEBUG_MESH_TRACE)

IF(DEBUG_HOTSTART_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DHOTSTART_TRACE")
ENDIF(DEBUG_HOTSTART_TRACE)

IF(DEBUG_GLOBAL_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DGLOBAL_TRACE")
ENDIF(DEBUG_GLOBAL_TRACE)

IF(DEBUG_HARM_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DHARM_TRACE")
ENDIF(DEBUG_HARM_TRACE)

IF(DEBUG_COLDSTART_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DCOLDSTART_TRACE")
ENDIF(DEBUG_COLDSTART_TRACE)

IF(DEBUG_COUPLE2SWAN_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DCOUPLE2SWAN_TRACE")
ENDIF(DEBUG_COUPLE2SWAN_TRACE)

IF(DEBUG_ADCIRC_TRACE)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DADCIRC_TRACE")
ENDIF(DEBUG_ADCIRC_TRACE)

IF(IBM)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DIBM")
ENDIF(IBM) 

IF(VECTOR_COMPUTER)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DCVEC")
ELSE(VECTOR_COMPUTER)
    SET(ADCIRC_OPTION_FLAGS "${ADCIRC_OPTION_FLAGS} -DCSCA")
ENDIF(VECTOR_COMPUTER)

SET(SWAN_FLAG "-DCSWAN")
SET(PREP_SWAN_FLAG "-DADCSWAN")
SET(ADCIRC_MPI_FLAG "-DCMPI ${MPIMOD_FLAG}")
