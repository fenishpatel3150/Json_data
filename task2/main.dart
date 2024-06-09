import 'model/model.dart';
import 'utils/json_data.dart';

void main() {
  int i;

  for (i = 0; i < Data.length; i++) {
    Albumdata albumdata = Albumdata.fromJson(Data[i]);

    print("userId : ${albumdata.userId}");
    print("Id : ${albumdata.id}");
    print("Title : ${albumdata.title}");
  }
}
