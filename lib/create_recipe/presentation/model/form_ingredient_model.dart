
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class FormIngredient {
  String id;
  String title;
  String value;

  FormIngredient({
    required this.id,
    required this.title,
    required this.value,
  });

  factory FormIngredient.fromJson(Map<String, dynamic> json) => FormIngredient(
    id: json["id"],
    title: json["title"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "value": value,
  };
}


/// An object that controls a list of [FormIngredient].
class FormIngredientList extends Notifier<List<FormIngredient>> {
  @override
  List<FormIngredient> build() => [];

  void add(String title,String value) {
    state = [
      ...state,
      FormIngredient(
        id: _uuid.v4(),
        title: title,
        value: value
      ),
    ];
  }

  void toggle(String id) {
    state = [
      for (final formIngredient in state)
        if (formIngredient.id == id)
          FormIngredient(
            id: formIngredient.id,
            title: formIngredient.title,
            value: formIngredient.value,
          )
        else
          formIngredient,
    ];
  }

  void edit({required String id, required String title, required String value}) {
    state = [
      for (final formIngredient in state)
        if (formIngredient.id == id)
          FormIngredient(
            id: formIngredient.id,title: title,value: value
          )
        else
          formIngredient,
    ];
  }

  void remove(FormIngredient target) {
    state = state.where((todo) => todo.id != target.id).toList();
  }

  void printResult(){
    for(int t=0;t<state.length;t++){
      print("Result: ${state[t].value}");
    }
  }
}
