import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_ddd_bloc/application/notes/note_form/note_form_bloc.dart';
import 'package:flutter_firebase_ddd_bloc/domain/notes/value_objects.dart';
import 'package:flutter_firebase_ddd_bloc/presentation/notes/note_form/misc/build_context_x.dart';
import 'package:flutter_firebase_ddd_bloc/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.note.todos.isFull != c.note.todos.isFull,
      listener: (context, state) {
        if (state.note.todos.isFull) {
          FlushbarHelper.createAction(
            message: 'Want longer lists? Activate premium 🤩',
            button: TextButton(
              onPressed: () {},
              child: const Text(
                'BUY NOW',
                style: TextStyle(color: Colors.yellow),
              ),
            ),
            duration: const Duration(seconds: 5),
          ).show(context);
        }
      },
      child: Consumer<FormTodos>(
        builder: (context, formTodos, child) {
          return ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return TodoTile(
                index: index,
              );
            },
          );
        },
      ),
    );
  }
}

class TodoTile extends HookWidget {
  final int index;

  const TodoTile({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final todo =
        context.formTodos.getOrElse(index, (_) => TodoItemPrimitive.empty());

    return ListTile(
      leading: Checkbox(
        value: todo.done,
        onChanged: (value) {
          context.formTodos = context.formTodos.map(
            (listTodo) =>
                listTodo == todo ? todo.copyWith(done: value!) : listTodo,
          );
          context
              .read<NoteFormBloc>()
              .add(NoteFormEvent.todosChanged(context.formTodos));
        },
      ),
      title: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Todo',
          counterText: '',
          border: InputBorder.none,
        ),
        maxLength: TodoName.maxLength,
        onChanged: (value) {
          context.formTodos = context.formTodos.map(
            (listTodo) =>
                listTodo == todo ? todo.copyWith(name: value) : listTodo,
          );
          context
              .read<NoteFormBloc>()
              .add(NoteFormEvent.todosChanged(context.formTodos));
        },
        validator: (_) {
          return context.read<NoteFormBloc>().state.note.todos.value.fold(
                // Failure stemming from the TodoList length should NOT be displayed by the individual TextFormFields
                (f) => null,
                (todoList) => todoList[index].name.value.fold(
                      (f) => f.maybeMap(
                        empty: (_) => 'Cannot be empty',
                        exceedingLength: (_) => 'Too long',
                        multiline: (_) => 'Has to be in a single line',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              );
        },
      ),
    );
  }
}
