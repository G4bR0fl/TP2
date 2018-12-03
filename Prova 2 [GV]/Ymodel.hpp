class Ymodel {

private:
    double a = 0.9259;
    double b = 1.5;

public:
    double Y(double xn, double yn, double zn);
};



double Ymodel::Y(double xn, double yn, double zn){
    return (a * (-yn + xn) * (1/b)) - ( zn * (1/b));
}
