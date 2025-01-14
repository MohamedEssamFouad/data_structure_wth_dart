


import 'dart:collection';

class Stack<T> ///generic to hold any data type
{
  final List<T> _stack=[]; ///private list
  void push (T value)=>_stack.add(value); ///add an element to the top of stack
  T pop()
  {
    if(_stack.isEmpty){
      throw Exception("Stack is emtpy");

    }
    return _stack.removeLast();
  } ////remove if there elments and throw excpetion if its empty
    T? peek()=> _stack.isNotEmpty ? _stack.last : null ; ///return the top element not to remove it and return null if its empty
    bool get isEmpty=>_stack.isNotEmpty;
    int get size =>_stack.length;
    List<T>get elements=>List.unmodifiable(_stack);
  int evaluatePostfix(String expression) {
    final stack = Stack<int>();

    for (var char in expression.split('')) {
      if (int.tryParse(char) != null) {
        stack.push(int.parse(char));
      } else {
        final b = stack.pop();
        final a = stack.pop();

        switch (char) {
          case '+':
            stack.push(a + b);
            break;
          case '-':
            stack.push(a - b);
            break;
          case '*':
            stack.push(a * b);
            break;
          case '/':
            stack.push(a ~/ b);
            break;
        }
      }
    }

    return stack.pop();

  }


}
void main() {

  final Queue<int> queue = Queue<int>();
  queue.addLast(10); // Enqueue
  queue.addLast(20);
  queue.addLast(30);

  print("Front element: ${queue.first}"); // 10
  print("Dequeued: ${queue.removeFirst()}"); // 10
  print("Queue is empty: ${queue.isEmpty}"); // false
  final stack =Stack<int>();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  print("Top element: ${stack.peek()}"); // 30
  print("Popped: ${stack.pop()}"); // 30
  print("Stack is empty: ${stack.isEmpty}"); // false
  print("Stack elements after pop: ${stack.elements}");


}
