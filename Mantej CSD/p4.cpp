#include <iostream>
using namespace std;

int main(){
	float pi = 3.141592;
	float radius, area, perimeter;
	
	cout << "Enter the radius: ";
	cin >> radius;
	
	area = pi*radius*radius;
	perimeter = pi* radius *2;
	
	cout << "\nArea: " << area;
	cout << "\nPerimeter: " << perimeter;
	
		
}
