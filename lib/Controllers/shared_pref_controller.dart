import 'package:login/Constants/string.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPrefdController{
  Future<Map<String,dynamic>> getUserData()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
   String? userName= prefs.getString(AppString.userName);
   String? password=prefs.getString(AppString.password);
    String? phoneNumber=prefs.getString(AppString.phoneNumber);
    return{
      AppString.userName:userName,
      AppString.phoneNumber:phoneNumber,
      AppString.password:password,
    };
  }
  Future<void> addUserData({required String userName,required String phoneNumber,required String password })async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.setString(AppString.userName, userName);
    prefs.setString(AppString.phoneNumber, phoneNumber);
    prefs.setString(AppString.password, password);

  }
  Future<void> removeUserData ({required String key})async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.remove(key);
  }
  Future<void> clearUserData()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.clear();
  }
}