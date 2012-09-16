#ifndef _BASE_CLASS_H_
#define _BASE_CLASS_H_

class base
{
  public:
    base(double x_in);
    virtual ~base(void);
    void set_x(double x_in);
    void get_x(double* x_out);
    void sqr_x(void);

  private:
          double x;
};


#endif /* _BASE_CLASS_H_ */
