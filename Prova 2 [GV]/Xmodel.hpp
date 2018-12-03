#include "fxModel.hpp"

class Xmodel{
private:
    double a = 0.9259;
    double b1 = 0.15;

public:
    double X(double xn, double yn);
};

double Xmodel::X(double xn, double yn){
    fxmodel fx;
    return (a * (yn - xn) * (1 / b1)) - (fx.fx(xn) * (1 / b1));
}
