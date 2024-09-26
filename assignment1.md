title: "Assignment 1"
description: "C++ Programming Questions and Solutions"


## 2. Discuss Short-Circuit Operator with Example

In C++, the short-circuit operator refers to the logical AND (`&&`) and OR (`||`) operators. They stop evaluating further operands once the result is known.

- **AND (`&&`)**: If the first operand is false, the second operand is not evaluated because the whole expression will be false.
- **OR (`||`)**: If the first operand is true, the second operand is not evaluated because the whole expression will be true.

### Example:
```cpp
#include <iostream>
using namespace std;

int main() {
    int x = 0, y = 10;
    // Using short-circuit AND
    if (x != 0 && y / x > 1) {
        cout << "This won't print because x is zero." << endl;
    }
    else {
        cout << "Short-circuit occurred." << endl;
    }
    return 0;
}
```
**Output**: 
```
Short-circuit occurred.
```
In this example, `x != 0` is false, so the expression after `&&` is not evaluated, avoiding a division by zero error.



## 3. What Goes Behind the Scene When You Attempt to Get an Output from Source Code in C++?

When you compile and run a C++ program, a series of steps take place, which can be explained in the following stages:

1. **Preprocessing**: The preprocessor handles directives like `#include` and `#define`. It expands macros and includes header files.
2. **Compilation**: The source code (.cpp) is translated into assembly code by the compiler.
3. **Assembly**: The assembler converts the assembly code into machine code (object code), creating `.o` or `.obj` files.
4. **Linking**: The linker links the object code with libraries to produce an executable file.
5. **Execution**: Finally, the executable is loaded into memory and run by the system.

### Diagram

<div class="mermaid">
graph TD;
    A(Source Code) --> B(Preprocessor)
    B --> |program.i| C(Compiler)
    C --> |program.s| D(Assembler)
    D --> |program.o| E(Linker)
    E --> F(Executable)
</div>


## 4. Menu-driven Program in C++ to Find Maximum, Minimum, Square, and Square Root of Numbers

```cpp
#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int choice, num;
    cout << "Menu:\n1. Find Maximum\n2. Find Minimum\n3. Find Square\n4. Find Square Root\n";
    cout << "Enter your choice (1-4): ";
    cin >> choice;
    
    switch (choice) {
        case 1: {
            int num1, num2;
            cout << "Enter two numbers: ";
            cin >> num1 >> num2;
            cout << "Maximum: " << max(num1, num2) << endl;
            break;
        }
        case 2: {
            int num1, num2;
            cout << "Enter two numbers: ";
            cin >> num1 >> num2;
            cout << "Minimum: " << min(num1, num2) << endl;
            break;
        }
        case 3: {
            cout << "Enter a number: ";
            cin >> num;
            cout << "Square: " << num * num << endl;
            break;
        }
        case 4: {
            cout << "Enter a number: ";
            cin >> num;
            cout << "Square Root: " << sqrt(num) << endl;
            break;
        }
        default:
            cout << "Invalid choice!" << endl;
    }
    
    return 0;
}
```



## 5. Program to Assign a Grade Based on Marks Using If-Else Conditions

```cpp
#include <iostream>
using namespace std;

int main() {
    int marks;
    cout << "Enter your marks: ";
    cin >> marks;

    if (marks >= 90) {
        cout << "Grade A" << endl;
    } 
    else if (marks >= 80) {
        cout << "Grade B" << endl;
    } 
    else if (marks >= 70) {
        cout << "Grade C" << endl;
    } 
    else if (marks >= 60) {
        cout << "Grade D" << endl;
    } 
    else {
        cout << "Grade E" << endl;
    }
    
    return 0;
}
```



## 6. Flowchart to Find the Greatest Among Three Numbers

<div class="mermaid">
graph TD;
    A[Start] --> B[Input three numbers a, b, c]
    B --> C{Is a > b and a > c?}
    C --> D[Print a is greatest]
    C --> E{Is b > a and b > c?}
    E --> F[Print b is greatest]
    E --> G[Print c is greatest]
    D --> H[End]
    F --> H
    G --> H
</div> 



## 7. Program Output of Prefix and Postfix Increments

### Code(given in question):
```cpp
#include <iostream>
using namespace std;

int main() {
    int i = 5;
    int prefixResult, postfixResult;
    
    prefixResult = ++i; 
    cout << "Prefix Increment: " << endl;
    cout << "Value of i: " << i << endl; 
    cout << "Result of Prefix Increment: " << prefixResult << endl;
    
    i = 5;
    postfixResult = i++; 
    cout << "Postfix Increment: " << endl;
    cout << "Value of i: " << i << endl; 
    cout << "Result of Postfix Increment: " << postfixResult << endl;
    
    return 0;
}
```

### Output:
```
Prefix Increment: 
Value of i: 6
Result of Prefix Increment: 6
Postfix Increment: 
Value of i: 6
Result of Postfix Increment: 5
```

- **Prefix Increment (`++i`)**: The value of `i` is incremented first, and then the result is used. Hence, `i = 6`.
- **Postfix Increment (`i++`)**: The value of `i` is used first, and then it is incremented. Hence, `i = 6` but `postfixResult = 5`.


