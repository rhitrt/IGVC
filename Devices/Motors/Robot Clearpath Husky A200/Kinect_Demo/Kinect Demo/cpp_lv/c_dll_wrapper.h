#ifndef _C_DLL_WRAPPER_H_
#define _C_DLL_WRAPPER_H_

#include "ClearpathDemoTools.h"

/*  building a DLL  */
#define DLLIMPORT __declspec (dllexport)


#ifdef __cplusplus
       extern "C" {  /*  using a C++ compiler  */
#endif

      typedef struct ClearpathDemoTools ClearpathDemoTools; /* make the class opaque to the wrapper */
      DLLIMPORT ClearpathDemoTools* create_base();
      DLLIMPORT void init_track(ClearpathDemoTools* LV_ref, double lin_speed, double ang_speed, 
			double cam_height, double cam_z_trans, double window_size);
	  DLLIMPORT void init_explore(ClearpathDemoTools* LV_ref, double lin_speed, double ang_speed, 
			double cam_height, double cam_z_trans, double wall_buffer);
      DLLIMPORT void update(ClearpathDemoTools* LV_ref, float* px, float* py, float* pz,
			unsigned int len, double* return_lin_vel, double* return_ang_vel);
      DLLIMPORT void destroy_base(ClearpathDemoTools* LV_ref);
      
#ifdef __cplusplus
       }
#endif

#endif /* _C_DLL_WRAPPER_H_ */
