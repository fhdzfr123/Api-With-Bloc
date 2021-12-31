import 'package:demo/Bloc/appstats.dart';
import 'package:demo/Models/post.dart';
import 'package:demo/Models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoBloc extends Bloc<dynamic,AppState>{

  DemoBloc(AppState initialState) : super(initialState){
   on<Users>((event, emit) {
      state.loginuserInfo = event.data;
      emit(state);
     });
   on<ApiPosts>((event, emit) {
      state.postsData = event.data;
      emit(state);
     });
  }
}

class Users{
  final User data;
  Users({required this.data});
}

class ApiPosts{
  final List<Post> data;
  ApiPosts({required this.data});
}