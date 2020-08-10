import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        //重新设置主题
        // data: ThemeData(
        data: Theme.of(context).copyWith(
          //只覆盖部分设置，其他的都会被保留
          primaryColor: Colors.purple,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor, //设置同主题颜色
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController(); //设置初始值

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    textEditingController.text = 'hello~';
    super.initState();
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChange
      onSubmitted: (value) {
        debugPrint('submit: $value');
      },
      controller: textEditingController,
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'title',
        hintText: 'text',
        // border: InputBorder.none,//设置无边框
        border: OutlineInputBorder(), //设置有边框
        filled: true, //文本框灰色背景
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String userName, passWord;
  bool autovalidate = false; 
  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()){
registerFormKey.currentState.save();
    
    debugPrint('userName:  $userName, password: $passWord');
    Scaffold.of(context).showSnackBar(
      SnackBar(content: Text('Registering...')),
    );
    }else{
      setState(() {
        autovalidate = true;
      });
    }
    
    
  }

  String validatorUserName(value) {
    if (value.isEmpty) {
      return 'Username is required.';
    }
    return null;
  } 

  String validatorPassword(value) {
    if (value.isEmpty) {
      return 'Password is required.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value) {
              userName = value;
            },
            validator: validatorUserName,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password ',
              helperText: '',
            ),
            onSaved: (value) {
              passWord = value;
            },
            validator: validatorPassword,
            autovalidate: autovalidate,
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          ),
        ],
      ),
    );
  }
}
