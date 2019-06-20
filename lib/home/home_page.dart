import 'package:flutter/material.dart';
import 'package:flutter_mvp/home/home_contract.dart';
import 'package:flutter_mvp/home/home_presenter.dart';
import 'package:flutter_mvp/models/listofemp/list_of_emp_response.dart';
import 'package:flutter_mvp/util/AppToast.dart';
import 'package:flutter_mvp/util/widget_loading_indicator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> implements HomeContract {
  List<EmployeeResponseModel> _empList;
  bool _isLoading = true;
  HomePresenter _homePresenter;

  @override
  void initState() {
    super.initState();
    print('initState');

    _homePresenter = new HomePresenter(this);
    _isLoading = true;
    _homePresenter.loadEmpList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVP Home'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_isLoading ? loadingIndicator() : _empList[0].name)
          ],
        ),
      ),
    );
  }

  @override
  void loadEmpList(String items) {
    _empList = welcomeFromJson(items);
    toast("Success");
    setState(() {
      _isLoading = false;
      return _empList;
    });
  }

  @override
  void errorLoadingEmpList(String message) {
    toast(message);
  }

}
