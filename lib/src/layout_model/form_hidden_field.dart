import 'component.dart';
import 'property.dart';
import 'package:uuid/uuid.dart';

class FormHiddenField extends LayoutComponent {
  FormHiddenField(name) : super("hiddenField", name) {
    properties["caption"] = Property("подпись", "");
    properties["id"] =
        Property("идентификатор", const Uuid().v1obj(), type: UuidValue);
    properties["source"] = Property("источник", "");
  }
}
