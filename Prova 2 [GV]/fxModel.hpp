#include <math.h>

class fxmodel{
private:
    double m0 = -0.7879;
    double m1 = -1.4357;
    double Bp = 1;
public:
    double fx(double xn);
};

double fxmodel::fx(double xn){
    return m0 * xn + 0.5 * (m1 - m0) * (abs(xn + Bp) - abs(xn - Bp));
}

