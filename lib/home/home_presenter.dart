import 'package:flutter_mvp/home/home_contract.dart';
import 'package:flutter_mvp/util/api_constants.dart';
import 'package:http/http.dart' as http;

class HomePresenter {
  final HomeContract _homeContract;

  HomePresenter(this._homeContract);

  void loadEmpList() async {
    final responseListOfEmp = await http.get(ApiConstants.EMP_LIST);

    if (responseListOfEmp.statusCode == 200) {
      print(responseListOfEmp.toString());

      _homeContract.loadEmpList(responseListOfEmp.body.toString());
    } else {
      _homeContract.errorLoadingEmpList(
          '${responseListOfEmp.statusCode} - Something Went wrong!');
    }
  }
}
