#include "c_dll_wrapper.h"
#include "ClearpathDemoTools.h"
#include <windows.h>

      DLLIMPORT ClearpathDemoTools* create_base()
      {
            return new ClearpathDemoTools();
      }
      
      DLLIMPORT void init_track(ClearpathDemoTools* LV_ref, double lin_speed, double ang_speed, 
			double cam_height, double cam_z_trans, double window_size)
      {
			LV_ref->InitTrack(lin_speed,
				ang_speed,
				cam_height,
				cam_z_trans,
				window_size);
      }
      
	  DLLIMPORT void init_explore(ClearpathDemoTools* LV_ref, double lin_speed, double ang_speed, 
			double cam_height, double cam_z_trans, double wall_buffer)
      {
			LV_ref->InitExplore(lin_speed,
				ang_speed,
				cam_height,
				cam_z_trans,
				wall_buffer);
      }

      DLLIMPORT void update(ClearpathDemoTools* LV_ref, float* px, float* py, float* pz,
			unsigned int len, double* return_lin_vel, double* return_ang_vel)
      {
          LV_ref->NIUpdate(px, py, pz, len, return_lin_vel, return_ang_vel);
      }               

      
      DLLIMPORT void destroy_base(ClearpathDemoTools* LV_ref)
      {
           delete LV_ref;
      }  

BOOL APIENTRY DllMain (HINSTANCE hInst     /* Library instance handle. */ ,
                       DWORD reason        /* Reason this function is being called. */ ,
                       LPVOID reserved     /* Not used. */ )
{
    switch (reason)
    {
      case DLL_PROCESS_ATTACH:
        break;

      case DLL_PROCESS_DETACH:
        break;

      case DLL_THREAD_ATTACH:
        break;

      case DLL_THREAD_DETACH:
        break;
    }

    /* Returns TRUE on success, FALSE on failure */
    return TRUE;
}
