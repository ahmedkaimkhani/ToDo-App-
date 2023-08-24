import 'package:flutter/material.dart';
import 'package:todo_flutter/constrants/colors.dart';
import 'package:todo_flutter/model/todo.dart';

class TodoItem extends StatefulWidget {
  final ToDo todo;
  final onTodoChanged;
  final onDeleteItem;
  const TodoItem(
      {Key? key, required this.todo, this.onTodoChanged, this.onDeleteItem})
      : super(key: key);

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          widget.onTodoChanged(widget.todo);
          print('ToDo Item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        tileColor: Colors.white,
        leading: Icon(
          widget.todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          widget.todo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration:
                  widget.todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 8),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: const Icon(
            Icons.delete,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
    );
  }
}
