
import 'package:flutter/material.dart';


class UserProvider extends ChangeNotifier{
   String username = 'Map';



  void changeUsername({required newName}){
    username = newName;
    notifyListeners();
  }

}