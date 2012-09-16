#include "base_class.h"
#include <windows.h>


base::base(double x_in)
{
     x = x_in;
}


base::~base ()
{
            /* clean up  */
}

void base::set_x(double x_in)
{
     x = x_in;
}

void base::get_x(double* x_out)
{
     *x_out = x;
}

void base::sqr_x(void)
{
     x*=x;
}
                      
