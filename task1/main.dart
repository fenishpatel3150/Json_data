import 'model/model.dart';
import 'utils/jsondata.dart';

void main() {
  for (int i = 0; i < listData.length; i++) {
    Modeldata modeldata = Modeldata.fromJson(listData[i]);

    print("id ${modeldata.id}");
    print("name ${modeldata.name}");
    print("username ${modeldata.username}");
    print("phone ${modeldata.phone}");
    print("email ${modeldata.email}");
    print("website ${modeldata.website}");
    print("address ${modeldata.address}");
    print("street ${modeldata.address.street}");
    print("suite ${modeldata.address.suite}");
    print("city ${modeldata.address.city}");
    print("Zipcode ${modeldata.address.Zipcode}");
    print("geo ${modeldata.geo}");
    print("lng ${modeldata.geo.lng}");
    print("lat ${modeldata.geo.lat}");
    print("company ${modeldata.company}");
    print("name ${modeldata.company.name}");
    print("bs ${modeldata.company.bs}");
    print("catchPhrase${modeldata.company.catchPhrase}");
  }
}
