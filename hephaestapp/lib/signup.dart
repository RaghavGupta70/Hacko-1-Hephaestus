
import 'package:flutter/material.dart';



class SignUp extends StatefulWidget {
  final Function toggleView;
  SignUp(this.toggleView);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

bool isLoading = false;
  final formKey = GlobalKey<FormState>();

 

  TextEditingController usernameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();

  SignMeUp() async{
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ? Container(
        child: Center(
          child:CircularProgressIndicator(),
          ),
      ) :SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
        ),
        height: MediaQuery.of(context).size.height - 0,
        alignment: Alignment.bottomCenter,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Form(
                key: formKey,
              child: Column(
                children: [
                  TextFormField(
                validator: (val) {
                  return val.isEmpty || val.length < 2 ? "This is will not work " : null ;
                },
                controller: usernameTextEditingController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'username',
                  hintStyle: TextStyle(
                    color: Colors.white54,
                  ),
                  labelText: "Username",
                  labelStyle: TextStyle(
                  color: Colors.white,
                  ),
                  focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              TextFormField(
                validator: (val) {
                  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val) ?
                          null : "Enter correct email";
                },
                controller: emailTextEditingController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'something@gmail.com',
                  hintStyle: TextStyle(
                    color: Colors.white54,
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(
                  color: Colors.white,
                  ),
                  focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              TextFormField(
                obscureText: true,
                validator:  (val){
                      return val.length < 6 ? "Enter Password 6+ characters" : null;
                    },
                controller: passwordTextEditingController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'password',
                  hintStyle: TextStyle(
                    color: Colors.white54,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                  color: Colors.white,
                  ),
                  focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
                ],
              ),
              ),
              
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  SignMeUp();
                },
                child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xff007EF4),
                              const Color(0xff2A75BC)
                            ],
                          ),
                ),
                child: Text('Sign Up',
                style: TextStyle(color: Colors.white),
                ),
              ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  widget.toggleView();
                },
              child:Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xff007EF4),
                              const Color(0xff2A75BC)
                            ],
                          ),
                ),
                child: Text('Already Have An Account',
                style: TextStyle(color: Colors.white),
                ),
              ),
              ),
              SizedBox(height: 50,),
            ],
            
          ),
      ),
      ),
      ),
    );
  }
}