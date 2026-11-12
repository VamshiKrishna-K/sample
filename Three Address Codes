
#include <bits/stdc++.h>
using namespace std;

int temp = 1;

int precedence(char op) {
    if (op == '*' || op == '/')
        return 2;
    if (op == '+' || op == '-')
        return 1;
    return 0;
}

int main() {
    string expr;
    stack<string> operand;
    stack<char> op;

    cout << "Enter the expression: ";
    cin >> expr;

    cout << "\nThree Address Code:\n";

    for (int i = 0; i < expr.length(); i++) {

        char ch = expr[i];

        if (isalnum(ch)) {
            string s = "";

            while (i < expr.length() && isalnum(expr[i]))
                s += expr[i++];

            operand.push(s);
            i--;
        }

        else if (ch == '(') {
            op.push(ch);
        }

        else if (ch == ')') {
            while (!op.empty() && op.top() != '(') {
                string b = operand.top();
                operand.pop();

                string a = operand.top();
                operand.pop();

                char oper = op.top();
                op.pop();

                string t = "t" + to_string(temp++);

                cout << t << " = " << a << " " << oper << " " << b << endl;

                operand.push(t);
            }

            op.pop();
        }

        else {
            while (!op.empty() && op.top() != '(' &&
                   precedence(op.top()) >= precedence(ch)) {

                string b = operand.top();
                operand.pop();

                string a = operand.top();
                operand.pop();

                char oper = op.top();
                op.pop();

                string t = "t" + to_string(temp++);

                cout << t << " = " << a << " " << oper << " " << b << endl;

                operand.push(t);
            }

            op.push(ch);
        }
    }

    while (!op.empty()) {
        string b = operand.top();
        operand.pop();

        string a = operand.top();
        operand.pop();

        char oper = op.top();
        op.pop();

        string t = "t" + to_string(temp++);

        cout << t << " = " << a << " " << oper << " " << b << endl;

        operand.push(t);
    }

    return 0;
}
