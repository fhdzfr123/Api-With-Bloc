import 'package:demo/Models/post.dart';
import 'package:demo/Models/user.dart';

class AppState{
  User? loginuserInfo;
  List<Post>? postsData;

  AppState({this.loginuserInfo,this.postsData});
  AppState.fromAppState(AppState another){
    loginuserInfo = another.loginuserInfo;
    postsData = another.postsData;
  }
}