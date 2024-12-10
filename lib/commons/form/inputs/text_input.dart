import 'package:g4/commons/form/inputs/input_base.dart';

class TextInput extends InputBase {
  const TextInput({
    super.key,
    super.label,
    super.hint,
  });

  @override
  get validateFn => (value) {
        if (value == null) {
          return "Please enter some text";
        }
        return null;
      };
}
