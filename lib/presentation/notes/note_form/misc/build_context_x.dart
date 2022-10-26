import 'package:flutter/widgets.dart';
import 'package:flutter_firebase_ddd_bloc/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:kt_dart/collection.dart';

import 'package:provider/provider.dart';

extension FormTodosX on BuildContext {
  KtList<TodoItemPrimitive> get formTodos =>
      Provider.of<FormTodos>(this, listen: false).value;
  set formTodos(KtList<TodoItemPrimitive> value) =>
      Provider.of<FormTodos>(this, listen: false).value = value;
}
