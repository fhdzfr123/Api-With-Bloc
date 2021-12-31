import 'package:demo/Bloc/demobloc.dart';
import 'package:demo/Models/user.dart';
import 'package:demo/Repository/repo.dart';
import 'package:demo/Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              Container(
            width: MediaQuery.of(context).size.width*0.5,
            height: MediaQuery.of(context).size.height*0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.jpeg'),
                fit: BoxFit.contain
              )
            ),
          ),
          const SizedBox(height: 20,),
          Form(
            key: formKey,
            child: TextFormField(
              controller: email,
              validator: (v){
                if(v!.isEmpty) {
                  return 'empty field';
                }
                return null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Email'
              )
            ),
          ),
          const SizedBox(height: 20,),
           TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.grey[200],
                filled: true,
                hintText: 'Password',
                suffixIcon: const Icon(Icons.visibility,color: Colors.grey,)
              )
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFE43228), // background
          minimumSize: Size.fromHeight(40),
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
          )
        ),
        onPressed: () async {
          
          if(formKey.currentState!.validate()){
            setState(() {
            loading = true;
          });
          Repository repo = Repository();
          var result  = await repo.getUserDataRequest(url: 'users', context: context, event: 'users');

          setState(() {
            loading = false;
          });
          
          try{
        User user = result.where((element) => element.email==email.text).first;
        if(user!=null)
          {
            BlocProvider.of<DemoBloc>(context).add(Users(data: user));
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          }
          }catch(e){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("user is not exist")));
          }
          }
        
        },
        child: !loading ? const Text('LOGIN',style: TextStyle(fontSize: 18),):const Padding(
          padding: EdgeInsets.all(10),
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white))),
      )
            ],
          ),
        ),
      ),
    );
  }
}