import 'package:demo/Bloc/appstats.dart';
import 'package:demo/Bloc/demobloc.dart';
import 'package:demo/Models/post.dart';
import 'package:demo/Repository/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Repository repo = Repository();
  List<Post> posts=[];

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData()async{
      await repo.getPostsDataRequest(url: 'posts', context: context, event: 'posts')
      .then((value){
        setState(() {
          posts = value;    
        });
      });
      BlocProvider.of<DemoBloc>(context).add(ApiPosts(data: posts));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:  AppBar(
          backgroundColor: const Color(0xFFE43228),
          title: const Text('Lorem Ipsum'),
        bottom: const TabBar(
          indicatorColor: Colors.white,
              tabs: [
                 Tab(icon:  Text('ALL POSTS')),
                 Tab(icon:  Text('PROFILE')),
              ],
            ),
      ),
            body: TabBarView(
              children: <Widget>[
                Posts(),
                Profile(),
              ],
            ),

            floatingActionButton: FloatingActionButton(
              backgroundColor: Color(0xFFE43228),
              onPressed: null,
              child: Icon(Icons.add),
            ),
        
      ),
    );
  }
}

class Posts extends StatefulWidget {

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DemoBloc,AppState>(
      builder: (context,data){
        return data.postsData==null ?  Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFE43228)))) : ListView.separated(
      itemBuilder: (context,ind){
        return ListTile(
          title: Text('${data.postsData![ind].title}',style: data.loginuserInfo!.id == data.postsData![ind].userId? TextStyle(color: Color(0xFFE43228),fontWeight: FontWeight.bold):TextStyle()),
          subtitle: Text('${data.postsData![ind].body}'),
        );
      },
       separatorBuilder: (BuildContext context, int index) => const Divider(),
       itemCount: data.postsData!.length,
       );
      },
    );
  }
}

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DemoBloc,AppState>(
      builder: (context , data){
        return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text('Name',style: TextStyle(fontSize:18)),
              Text('${data.loginuserInfo!.name}',style: TextStyle(fontSize:16,color: Colors.grey)),
            ],),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Username',style: TextStyle(fontSize:18)),
              Text('${data.loginuserInfo!.username}',style: TextStyle(fontSize:16,color: Colors.grey)),
            ],),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
              Text('Address',style: TextStyle(fontSize:18)),
              Text('${data.loginuserInfo!.address!.street},${data.loginuserInfo!.address!.suite}\n${data.loginuserInfo!.address!.city}',style: TextStyle(fontSize:16,color: Colors.grey)),
            ],),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
              Text('Zipcode',style: TextStyle(fontSize:18)),
              Text('${data.loginuserInfo!.address!.zipcode}',style: TextStyle(fontSize:16,color: Colors.grey)),
            ],),
            const Divider(),
        ],
      ),
    );
      },
    );
  }
}