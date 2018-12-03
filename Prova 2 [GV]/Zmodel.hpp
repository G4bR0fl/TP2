class Zmodel {

private:
    double g = 0.1;
    double RL = 0.002;

public:
    double Z(double yn, double zn);
};



double Zmodel::Z(double yn, double zn){
    return (-yn/g) - RL * zn * (1/g);
}
