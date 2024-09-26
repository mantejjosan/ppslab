---
title: "Assignment 1"
description: "C++ Programming Questions and Solutions"
---


## 1. Differentiate between the following

A.

| Pseudo Code                                   | Algorithm                                      |
|-----------------------------------------------|------------------------------------------------|
| 1. Set of instructions written in English in a way that closely resembles a programming language. | 1. A step-by-step procedure for solving a problem. |
| 2. Pseudo code is developer-oriented, i.e., it is ready for developers to understand. | 2. Algorithm requires no prior knowledge of programming. |
| 3. It makes use of both English and a programming language.   | 3. It is written in any language of communication like English, Urdu, Hindi, etc.       |
| 4. Easier to implement as it already reflects programming concepts.         | 4. Harder to implement in code.                  |
| 5. Easily understandable by developers but may be incomprehensible to others. | 5. Easily understandable by everyone who knows the language of the algorithm.  |
| 6. It makes use of indentation, naming conventions, loops, data structures, etc. | 6. Always written using step numbers. |
---
B.

| Linker Error                                  | Logical Error                                   |
|-----------------------------------------------|------------------------------------------------|
| 1. An error that occurs during the linking phase of program compilation. | 1. An error that occurs when the program runs but produces incorrect results. |
| 2. Missing references to external libraries or objects. | 2. Flawed logic or incorrect assumptions in the code. |
| 3. Detected during the compilation process.     | 3. Detected during testing or runtime.            |
| 4. Fixing the linking issues or missing references. | 4. Debugging the code to find and correct logic flaws. |

---
C.

| Syntax Error                                   | Semantic Error                                  |
|-----------------------------------------------|------------------------------------------------|
| 1. An error due to incorrect syntax in the code. | 1. An error where the syntax is correct but the meaning is incorrect. |
| 2. Detected by the compiler or interpreter.     | 2. Detected during program execution or testing.  |
| 3. Missing semicolon, misspelled keywords.      | 3. Using a variable before it is initialized.     |
| 4. Correcting the syntax according to language rules. | 4. Modifying the logic to ensure it performs as intended. |

---
D.

| Variable Declaration                          | Variable Initialization                         |
|-----------------------------------------------|------------------------------------------------|
| 1. The process of defining a variable's name and type. | 1. The process of assigning a value to a variable. |
| 2. To allocate memory and inform the compiler about the variable's type. | 2. To give the variable a specific value for use. |
| 3. `int a;`                                      | 3. `int a = 5;`                                   |
| 4. Must occur before a variable is used.        | 4. Can occur at any point after declaration.      |

---
E. 

| Postfix Operator                              | Prefix Operator                                 |
|-----------------------------------------------|------------------------------------------------|
| 1. An operator that follows its operand (e.g., `a++`). | 1. An operator that precedes its operand (e.g., `++a`). |
| 2. Evaluates the operand first, then applies the operator. | 2. Applies the operator first, then evaluates the operand. |
| 3. The original value is returned before incrementing/decrementing. | 3. The new value is returned after incrementing/decrementing. |
| 4. In `b = a++`, `b` receives the original value of `a`. | 4. In `b = ++a`, `b` receives the new value of `a`. |


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
        cout << "This won't result in runtime error(divide by zero)." << endl;
    }
    else {
        cout << "Short-circuit occurred.\n Runtime Error Prevented " << endl;
    }
    return 0;
}
```
**Output**: 
```
Short-circuit occurred.
Runtime Error Prevented
```
In this example, `x != 0` is false, so the expression after `&&` is not evaluated, avoiding a division by zero error.


## 3. What Goes Behind the Scene When You Attempt to Get an Output from Source Code in C++?

The process of converting C++ source code into an executable file involves several stages, each playing a crucial role in the transformation from high-level code to machine-readable instructions. Here’s a comprehensive overview of these stages:

### 1. Preprocessing
The preprocessing phase is the first step in the compilation process and involves the following tasks:
- **Directive Handling**: The preprocessor interprets directives such as `#include`, `#define`, and `#ifdef`. 
- **Macro Expansion**: Macros defined using `#define` are replaced with their corresponding values throughout the code. This is essential for simplifying code and defining constants.
- **File Inclusion**: Header files specified in `#include` directives are included, bringing in declarations for functions, classes, and variables needed for the program.
- **Conditional Compilation**: The preprocessor manages conditional directives, allowing parts of the code to be compiled only under certain conditions, enhancing flexibility and portability.

The output of this stage is a modified source code file that is free of preprocessor directives and is ready for the compilation phase.

### 2. Compilation
During the compilation stage, the modified source code is translated into assembly language. This involves:
- **Lexical Analysis**: The compiler breaks the code into tokens, which are the basic building blocks (keywords, identifiers, operators, etc.).
- **Syntax Analysis**: A syntax tree (or parse tree) is constructed to represent the grammatical structure of the code. This checks for syntactical correctness based on the language's grammar.
- **Semantic Analysis**: The compiler checks for semantic errors, ensuring that the operations make sense (e.g., type checking).
- **Intermediate Code Generation**: The compiler often generates an intermediate representation (IR) of the code, which is easier to optimize and translate into machine code.

### 3. Assembly
In the assembly phase, the assembly code generated by the compiler is translated into machine code by the assembler. This includes:
- **Translation of Assembly Instructions**: Each assembly instruction is converted into machine code (binary format) that the processor can understand.
- **Object File Creation**: The result of this phase is typically an object file (e.g., `.o` or `.obj`), which contains machine code but is not yet executable. It may also contain additional information such as debugging symbols.

### 4. Linking
The linking stage involves combining multiple object files and libraries to create a final executable. Key activities include:
- **Symbol Resolution**: The linker resolves references to external symbols (functions or variables) defined in other files or libraries.
- **Address Binding**: It assigns final memory addresses to all code and data, ensuring that the program can access its components correctly.
- **Executable File Creation**: The final output is an executable file (e.g., `.exe`), ready to be run by the operating system.

### 5. Execution
The execution phase is where the program is run. This includes:
- **Loading into Memory**: The operating system loads the executable into memory, allocating space for code, data, and stack.
- **Program Counter Initialization**: The CPU sets the program counter to the entry point of the executable.
- **Instruction Execution**: The CPU fetches instructions from memory and executes them, performing operations as defined by the program logic.

### Underlying Mechanisms
While the above stages provide a high-level overview, several intricate processes occur behind the scenes:

- **Parse Tree**: During syntax analysis, the construction of a parse tree helps visualize the hierarchical structure of the source code, ensuring that each element follows the syntax rules of C++.
- **Optimization**: Compilers often include optimization phases, where they attempt to improve the efficiency of the generated code (e.g., reducing execution time or memory usage) without altering its behavior.
- **Debugging Information**: During compilation, debugging symbols may be included in the object files to aid developers in tracking down errors during the debugging process.
- **Static vs. Dynamic Linking**: The linker can use static linking (copying all used library code into the executable) or dynamic linking (linking libraries at runtime), influencing the final executable's size and flexibility.

In conclusion, the compilation process in C++ is a multi-stage operation that converts high-level source code into an executable file, involving preprocessing, compilation, assembly, linking, and execution. Each stage plays a vital role, with numerous underlying processes ensuring the final product runs efficiently and correctly. Understanding these stages helps programmers appreciate the complexity of language translation and enhances their ability to write efficient code.


### Diagram

<div class="mermaid">
flowchart TD
    A(Source Code) --> B(Preprocessor)
    B --> |program.i| C(Compiler)
    C --> |program.s| D(Assembler)
    D --> |program.obj| E(Linker)
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
flowchart TD
    A(Start) --> B(Input three numbers a, b, c)
    B --> C{Is a > b and a > c?}
    C --> D(Print a is greatest)
    C --> E{Is b > a and b > c?}
    E --> F(Print b is greatest)
    E --> G(Print c is greatest)
    D --> H(End)
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


