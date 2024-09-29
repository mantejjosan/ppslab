# Lab Experiments by Mantej Singh

## Table of Contents

1. [Program 5](#program-5)
2. [Program 6](#program-6)
3. [Program 7](#program-7)
4. [Program 8](#program-8)
5. [Program 9](#program-9)
6. [Program 10](#program-10)
7. [Program 10](#program-10)
8. [Program 11](#program-11)
9. [Program 12](#program-12)
10. [Program 13](#program-13)
11. [Program 14](#program-14)
12. [Program 15](#program-15)
13. [Program 16](#program-16)
14. [Program 17](#program-17)
15. [Program 18](#program-18)
16. [Program 19](#program-19)
17. [Program 20](#program-20)
18. [Program 20](#program-20)
19. [Program 21](#program-21)
20. [Program 22](#program-22)
21. [Program 23](#program-23)

## Program 5

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
}```

## Program 6

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
}```

## Program 7

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

## Program 8

```cpp
#include <iostream>
using namespace std;
int main(){
	cout << "Enter a number: ";
	int a;
	cin >> a;
	
	cout << (a%2==0?"even":"odd");

}```

## Program 9

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
}```

## Program 10

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
}```

## Program 10

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
}```

## Program 11

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
}```

## Program 12

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
}```

## Program 13

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
}```

## Program 14

```cpp
#include <iostream>
using namespace std;

int main(){
	int a = 89;
	int *ptr = &a;

	cout << "Address of variable a: " << &a << endl;
	cout << "Address of the pointer to a: " << ptr << endl;
	cout << "Value of a: " << a << endl;
	cout << "Value of pointer: " << ptr << endl;
	cout << "\n\nRoll no: 245188\n";
	return 0;

}
```

## Program 15

```cpp
#include <iostream>
using namespace std;

int main(){
	int num;
	cout << "Enter a Number: ";
	cin >> num;

	if(num % 2 == 0)
		cout << "Even";
	else 
		cout << "Odd";
	cout << "\n\nRoll no: 2415188\n";
	return 0;
}
```

## Program 16

```cpp
#include <iostream>
using namespace std;

int main(){
	int year;
	cout << "Enter a year: ";
	cin >> year;
	
	
	if(year % 4 == 0)
		if(!(year % 100 == 0 && year % 400 == 0))
			cout << "Not a Leap Year";
		else
			cout << "Leap Year";
	else
		cout << "Not a Leap Year";
	
	cout << "\n\nRoll no: 2415188\n";
	return 0;
}
```

## Program 17

```cpp
#include <iostream>
#include <string>
using namespace std;

int main(){ 
	string name[] = {"John", "David", "Paul"};
	int age[]={1000000,0,0};
	int *min = age;

	int len = sizeof(age)/sizeof(age[0]);
	for(int i = 0; i < len; i++){
		cout << "Enter " << name[i] << "'s age: ";
		cin >> age[i];
		if(age[i] < *min)
			min = &age[i];
	}

	cout << "Youngest individual(s): ";
	for(int i = 0; i < len; i++)
		if(age[i] == *min)
			cout << name[i] << " " ;
	cout << "\n\nRoll no: 2415188\n";
	return 0;
}
```

## Program 18

```cpp
#include <iostream>
using namespace std;

int main(){
	int nums[3];
	int *max = nums;
	int len = sizeof(nums)/sizeof(nums[0]);

	cout << "Enter three Numbers: ";
	
	for(int i =0 ;i< len; i++){
		cin >> nums[i];
		if(nums[i] > *max)
			max = &nums[i];
	}

	cout << "Largest Number: " << *max;
	cout << "\n\nRoll no: 2415188\n";
	return 0;
}
```

## Program 19

```cpp
#include <iostream>
using namespace std;

int main(){
	char x;
	cout << "Enter a character: ";
	cin >> x;

	x = tolower(x);
	
	if(x=='a' || x=='e' || x=='i' || x=='o' || x=='u')
		cout << "Vowel";
	else 
		cout << "Not a Vowel";

	cout << "\n\nRoll no: 2415188\n";
	return 0;
}
```

## Program 20

```cpp
#include <iostream>
#include <string>
using namespace std;

int main(){
	int choice, i=1;
	double a, b;
	string result;
	char operations[] = {'+', '-', '*', '/', '%'};
	
	cout << "Enter two numbers: ";
	cin >> a >> b;
	
menu:
	
	for(char x : operations)
		cout << i++ << ". " << x << endl;
	cout << "Enter choice(1,2,3,4 or 5): ";

	cin >> choice;

	switch(choice){
		case 1: result = to_string(a+b); break;
		case 2: result = to_string(a-b); break;
		case 3: result = to_string(a*b); break;
		case 4:	result = b==0?"Infinity":to_string(a/b); break;
		case 5: result = to_string((int)a%(int)b); break;
		default: i=1; goto menu; 
	}
	cout << a << " " << operations[choice-1] << " " << b << " = " << result;
	cout << "\n\nRoll no: 2415188\n";
	return 0;
}
```

## Program 20

```cpp
#include <iostream>
#include <string>
using namespace std;

int main(){
	int choice, i=1;
	double a, b;
	string result;
	char operations[] = {'+', '-', '*', '/', '%'};
	
	cout << "Enter two numbers: ";
	cin >> a >> b;
	
menu:
	
	for(char x : operations)
		cout << i++ << ". " << x << endl;
	cout << "Enter choice(1,2,3,4 or 5): ";

	cin >> choice;

	switch(choice){
		case 1: result = to_string(a+b); break;
		case 2: result = to_string(a-b); break;
		case 3: result = to_string(a*b); break;
		case 4:	result = b==0?"Infinity":to_string(a/b); break;
		case 5: result = to_string((int)a%(int)b); break;
		default: i=1; goto menu; 
	}
	cout << a << " " << operations[choice-1] << " " << b << " = " << result;
	cout << "\n\nRoll no: 2415188\n";
	return 0;
}
```

## Program 21

```cpp
#include <iostream>
#include <string>
using namespace std;

int main(){
	short day;
	string ans;
	cout << "Enter day number(1 to 7): ";
	cin >> day;

	switch(day){
		case 1: ans = "Monday"; break;
		case 2: ans = "Tuesday"; break;
		case 3: ans = "Wednesday"; break;
		case 4: ans = "Thursday"; break;
		case 5: ans = "Friday"; break;
		case 6: ans = "Saturday"; break;
		default: ans = "Invalid choice! Try Again";
	}
	cout << ans;
	cout << "\n\nRoll no: 2415188\n";
	return 0;
}
```

## Program 22

```cpp
// 23. Program to illustate the use of nested if else if

#include <iostream>
using namespace std;

int main(){
	//check if the year is lear or not
	int year;
	cout << "Enter a year: ";
	cin >> year;

	if(year%4==0)
		if(year%100 != 0)
			cout << "leap year";
		else if(year%400 == 0)
			cout << "leap year";
		else
			cout << "not a leap year";
	else
		cout << "not a leap year";
	cout << "\n\nRoll no: 2415188\n";
	return 0;
}
```

## Program 23

```cpp
#include <iostream>
using namespace std;

int main(){
	
	cout << "\n\nRoll no: 2415188\n";
	return 0;
}
```

