# PPS Lab Questions by Mantej Singh

## Program 1

```cpp
//swap with 3rd var p10 (a)
#include <iostream>
using namespace std;

int main(){
	int a, b, temp;
	
	cout << "Enter 2 numbers: ";
	cin >> a >> b;
	
	cout << "a = " << a << "\nb = " << b << endl;
	temp = b;
	b = a;
	a = temp;
	
	cout << "After swaping\n";
	cout << "a = " << a << "\nb = " << b << endl;
}
```

## Program 2

```cpp
//swap without 3rd var p10 (b)
#include <iostream>
using namespace std;

int main(){
	int a, b;
	
	cout << "Enter 2 numbers: ";
	cin >> a >> b;
	
	cout << "a = " << a << "\nb = " << b << endl;
	a = a + b;
	b = a - b;
	a = a - b;
	
	cout << "After swaping\n";
	cout << "a = " << a << "\nb = " << b << endl;
}
```

## Program 3

```cpp
//11. calculate the sum of digits
#include <iostream>
using namespace std;

int main(){
	int num, sum{};  //using brackets is a fancy way to initialize to 0
	
	cout << "Enter a number: ";
	cin >> num;
	
	while(num != 0){
		sum += num % 10;
		num /= 10;
	}
	
	cout << "Sum of the digits: " << sum;
	return 0;
}
```

## Program 4

```cpp
//12. reverse a number
#include <iostream>
using namespace std;

int main(){
	int num, rev{};
	
	cout << "Enter a number: ";
	cin >> num;
	
	while(num != 0){
		rev = rev*10 + num%10;
		num /= 10;
	}
	
	cout << "Reverse: " << rev;
	return 0;
}
```

## Program 5

```cpp
//13. bitwise operators
#include <iostream>
using namespace std;

int main(){
	//population count problem
	
	int x, count{};
	cout << "Enter a number: ";
	cin >> x;
	
	while(x != 0){
		count = x & 1? ++count:count;
		x = x >> 1;
	}
	cout << "The number of 1 in the binary form of the number is: " << count;
	return 0;
}
```

## Program 6

```cpp
#include <iostream>
using namespace std;

int main(){
	cout << "Enter Temerature in degree fahrenheit: ";
	double fah;
	cin >> fah;
	
	double cel = (fah-32)*5/9;
	cout << "Temp is " << cel << " degree celcius\n";
	
	return 0;
}
```

## Program 7

```cpp
// length, breadth to area
#include <iostream>
using namespace std;

int main(){
	double length, breadth;
	
	cout << "Enter the dimensions of the rectangle\nLength: ";
	cin >> length;
	
	cout << "Breadth: ";
	cin >> breadth;
	cout << "Area is " << length*breadth << " squared units";
	
	return 0;
}
```

## Program 8

```cpp
#include <iostream>
#include <typeinfo>
using namespace std;

// Template function to print size and type
template <typename T>
void printSizeAndType(const T& variable) {
    cout << "Type: " << typeid(variable).name() << ", Size: " << sizeof(variable) << " bytes" << endl;
}

int main() {
    short a1;
    short int a2;
    int a3;
    long a4;
    long long a5;
    float a6;
    double a7;
    long double a8;
    bool a9;
    char a10;

    printSizeAndType(a1);
    printSizeAndType(a2);
    printSizeAndType(a3);
    printSizeAndType(a4);
    printSizeAndType(a5);
    printSizeAndType(a6);
    printSizeAndType(a7);
    printSizeAndType(a8);
    printSizeAndType(a9);
    printSizeAndType(a10);

    return 0;
}
```

## Program 9

```cpp
#include <iostream>
using namespace std;
int main(){
	cout << "Enter a number: ";
	int a;
	cin >> a;
	
	cout << (a%2==0?"even":"odd");

}
```

## Program 10

```cpp
//calc gross salary
#include <iostream>
using namespace std;

int main(){
	cout << "Enter Basic Salary: ";
	int bsal;
	cin >> bsal;
	
	double dearnessAllowance = 0.4 * bsal;
	double rentAllowance = 0.2 * bsal;
	
	double grossSal = bsal + dearnessAllowance + rentAllowance;
	
	cout << "Gross salary: " << grossSal;
	return 0;
}
```

## Program 11

```cpp
#include <iostream>
usng namespace std;
int main(){
	cout << "Enter a number";
	int a;
	cin >> a;
	
	cout << (a%2==0)?"even":"odd";

}
```
