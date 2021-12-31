import 'dart:convert';
import 'package:demo/Bloc/demobloc.dart';
import 'package:demo/Models/post.dart';
import 'package:demo/Models/user.dart';
import 'package:demo/Service/httpservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class Repository{
  Future<List<User>> getUserDataRequest({required url,required BuildContext context,required String event})async{
      try{
        final response = await HttpService.getDataRequest(url: url);
        final decodedResponse = jsonDecode(response.body);
        print(response.body);
        if(response.statusCode==200)
        {
          //BlocProvider.of<DemoBloc>(context).add(event);
          return (decodedResponse as List)
          .map((data) => User.fromJson(data))
          .toList();//'decodedResponse['responseMessage'];
        }
        return [];//decodedResponse['responseMessage'];
      }
      catch(e){
        print(e);
        return [];
      }

    }

    Future<List<Post>> getPostsDataRequest({required url,required BuildContext context,required String event})async{
      try{
        final response = await HttpService.getDataRequest(url: url);
        final decodedResponse = jsonDecode(response.body);
        print(response.body);
        if(response.statusCode==200)
        {
          //BlocProvider.of<DemoBloc>(context).add(event);
          return (decodedResponse as List)
          .map((data) => Post.fromJson(data))
          .toList();//'decodedResponse['responseMessage'];
        }
        return [];//decodedResponse['responseMessage'];
      }
      catch(e){
        print(e);
        return [];
      }

    }
}