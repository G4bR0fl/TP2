#include <bits/stdc++.h>
#include "gnuplot.hpp"
#include "Xmodel.hpp"
#include "Ymodel.hpp"
#include "Zmodel.hpp"

using namespace std;

int SIZE = 100000;
//Cria o gráfico
void gnuPlot(vector<double> master, vector<double> slave, string label){

    vector<int> sizes(SIZE);
    for (int i = 0; i < SIZE; i++)
        sizes[i] = i;

    try{
        // Gerando tabela
        Gnuplot g1("lines");
        g1.set_xlabel("n");
        g1.set_ylabel(label);
        g1.set_grid();

        //Gerando as linhas no gráfico
        g1.set_style("lines").plot_xy(sizes, master, "Sistema mestre");
        g1.set_style("lines").plot_xy(sizes, slave, "Sistema escravo");

        // Output na tela
        g1.showonscreen();

        // Aguarda o usuário digitar qualquer tecla
        printf("\tAPERTE QUALQUER TECLA PARA CONTINUAR.\n");
        getchar();
    }
    catch (GnuplotException &ge){
        cout << ge.what() << endl;
    }
}


int main(){
    double h = 0.002;
    
    vector<double> x(SIZE), y(SIZE), z(SIZE);
    vector<double> x_slave(SIZE), y_slave(SIZE), z_slave(SIZE);

    Xmodel X;
    Ymodel Y;
    Zmodel Z;

    // Inicia mestre    
    x[0] = 0.1;
    y[0] = 0.1;
    z[0] = 0.1;

    x[1] = x[0] + h * X.X(x[0], y[0]);
    y[1] = y[0] + h * Y.Y(x[0], y[0], z[0]);
    z[1] = z[0] + h * Z.Z(y[0], z[0]);    

    // Inicia escravo
    x_slave[0] = 0;
    y_slave[0] = 0;
    z_slave[0] = 0;

    x_slave[1] = x_slave[0] + h * X.X(x_slave[0], y_slave[0]);
    y_slave[1] = y_slave[0] + h * Y.Y(x_slave[0], y_slave[0], z_slave[0]);
    z_slave[1] = z_slave[0] + h * Z.Z(y_slave[0], z_slave[0]);    

    for(int n = 1 ; n < (SIZE - 1) ; n++){
        // Sistema mestre
        x[n+1] = x[n-1] + h * X.X(x[n-1], y[n-1]);
        y[n+1] = y[n-1] + h * Y.Y(x[n-1], y[n-1], z[n-1]);
        z[n+1] = z[n-1] + h * Z.Z(y[n-1], z[n-1]);

        // Sistema escravo                
        x_slave[n+1] = x_slave[n-1] + h * X.X(x_slave[n-1], y_slave[n-1]);                                
        y_slave[n+1] = y[n+1];
        z_slave[n+1] = z[n+1];                
    }

    gnuPlot(x, x_slave, "X");
    gnuPlot(y, y_slave, "Y");
    gnuPlot(z, z_slave, "Z");
}
