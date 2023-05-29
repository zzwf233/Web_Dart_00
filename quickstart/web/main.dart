import 'dart:html';

Iterable<String> thingsTodo() sync* {
  const actions = ['Walk', 'Wash', 'Feed'];
  const pets = ['cats', 'dogs'];

  for (final action in actions) {
    for (final pet in pets) {
      if (pet != 'cats' || action == 'Feed') {
        yield '$action the $pet';
      }
    }
  }
}
LIElement newLI(String itemText) => LIElement()..text = itemText;

void addTodoItem(String item) {
  final listElement = LIElement()..text = item;
  todoList.children.add(listElement);
}

final UListElement todoList = querySelector('#todolist') as UListElement;

void main() {
  querySelector('#output')?.children.addAll(thingsTodo().map(newLI));
}
