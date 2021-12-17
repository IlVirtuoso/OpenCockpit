// CarCockpit.cpp: definisce il punto di ingresso dell'applicazione.
//

#include <CarCockpit.h>
#include <QApplication>
using namespace std;

int main(int argc, char* argv[])
{
	QApplication a(argc, argv);
	//window manager goes there
	return a.exec();
}