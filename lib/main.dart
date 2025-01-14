


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
}
void main() {
  final stack =Stack<int>();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  print("Top element: ${stack.peek()}"); // 30
  print("Popped: ${stack.pop()}"); // 30
  print("Stack is empty: ${stack.isEmpty}"); // false
  print("Stack elements after pop: ${stack.elements}");

}
