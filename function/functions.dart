deleteAll.onClick.listen((e) =>toDoList.children.clear());

deleteAll.onClick.listen((e) {
  toDoList.children.clear();
});

void main() {
  ...
  deleteAll.onClick.listen(deleteAllElements);
}

void deleteAllElements(Event e) {
  toDoList.children.clear();
}
