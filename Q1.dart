1) For Text Printing Using Addition Styles:
---------------------------------------------
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.blue
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Go!"),
        onPressed: (){
          print("cliced");
        },
      ),
      appBar:AppBar(
        centerTitle: true,
        title: Text("Welcome Its My First Flutter Code"),
        backgroundColor: Colors.indigo,
      )
    ),
  ));
}

2) For Creating Class For Header Of Red Color:
------------------------------------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    );
  }
}

3) For Facebook Icons:
----------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.facebook),
          onPressed: () {},
        ),
      );
  }
}

4) For Image Rendering:
-------------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Center(
          child: Image.asset("assets/gmail.png"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.alarm),
          onPressed: () {},
        ),
      );
  }
}

-> pubspec.yaml :

assets:
     - assets/

-> in myapp new directiory create name assets and in that copy gmail.png file

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello Guys"),),
        body: Center(
          child: Image.asset("assets/gmail.png"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.alarm),
          onPressed: () {},
        ),
      );
  }
}

5) Odd Or Even Number:
-----------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: OddEvenDemo(),
  ));
}

class OddEvenDemo extends StatelessWidget {
  OddEvenDemo({super.key});
    TextEditingController txtNo=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    int no=11;
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Odd Even Number"),),
      body: Center(
        child: TextField(
          controller: txtNo,
          decoration: InputDecoration(labelText: "Enter a number"),
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        int no=int.parse(txtNo.text);
        if(no%2==0)
          {
            print("Number is Even..!!");
          }
        else
          {
            print("Number is Odd..!");
          }
      },child: Text(txtNo.text),),
    );
  }
}

-> Odd-Even/Prime/Armstrong:

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController txt=new TextEditingController();
  String result="";
  String result1="";
  String result2="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: txt,
            decoration: InputDecoration(labelText: "Enter Number"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "$result \n$result1 \n$result2",
            style: TextStyle(fontSize: 20,color: Colors.blue),
          ),
          ElevatedButton(onPressed: (){
              int no=int.parse(txt.text);
              bool isPrime=true;
              int temp=no;
              int sum=0;
              int digit=no.toString().length;

              while(temp>0)
                {
                  digit=temp%10;
                  sum += digit*digit*digit;
                  temp ~/=10;
                }
                if(sum==no)
                  {
                    result2="Yes it is Armstrong";
                  }
                else
                  {
                    result2="No it is not Armstrong";
                  }


              if(no<2)
                {
                  isPrime=false;
                }
              else
                {
                  for(int i=2;i<no;i++)
                    {
                      if(no%i==0)
                        {
                          isPrime=false;
                          break;
                        }
                    }
                }
              if(isPrime)
                {
                  result1="Number is Prime";
                }
              else
                {
                  result1="Number is Not Prime";
                }
              if(no%2==0)
                {
                  result="Number is Even";
                }
              else
                {
                  result="Number is Odd";
                }

              setState(() {

              });
          }, child: Text("Check"))
        ],
      ),
    );
  }
}


6) Button:
---------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BtnDemo(),
  ));
}

class BtnDemo extends StatelessWidget {
  const BtnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Demo"),),
      body: Center(
        child: TextButton(onPressed: () {}, child: Text("Log in"),),
      ),
    );
  }
}

7) Call Icon:
--------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BtnDemo(),
  ));
}

class BtnDemo extends StatelessWidget {
  const BtnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Demo"),),
      body: Center(
        child: IconButton(onPressed: () {
    },icon: Icon(Icons.call), ),
      ),
    );
  }
}

8) Icon With Text:
------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BtnDemo(),
  ));
}

class BtnDemo extends StatelessWidget {
  const BtnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Demo"),),
      body: Center(
        child: TextButton.icon(onPressed: () {
    },icon: Icon(Icons.call), label: Text("Call") ),
      ),
    );
  }
}

9) import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BtnDemo(),
  ));
}

class BtnDemo extends StatelessWidget {
  const BtnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Demo"),),
      body: Center(
        child: ElevatedButton.icon(onPressed: () {
    },icon: Icon(Icons.call), label: Text("Call") ),
      ),
    );
  }
}

10) Container With Margin and Padding:
---------------------------------------

-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 100),
        child: Text(
          "Inside Container",
          style: TextStyle(fontSize: 30),
        ),
        color: Colors.redAccent,
      ),
    );
  }
}

-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(50),
        child: Text(
          "Inside Container",
          style: TextStyle(fontSize: 30),
        ),
        color: Colors.redAccent,
      ),
    );
  }
}


-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.fromLTRB(20, 50, 80, 100),
        child: Text(
          "Inside Container",
          style: TextStyle(fontSize: 30),
        ),
        color: Colors.redAccent,
      ),
    );
  }
}

11) Container Inside Container:
----------------------------------

-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(50),
        color: Colors.redAccent,
        child: Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(50),
          color: Colors.blueAccent,
          child: Text("Inside Container"),
        ),
      ),);
  }
}

-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 100),
        color: Colors.redAccent,
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 50, 80, 100),
          padding: EdgeInsets.all(50),
          color: Colors.blueAccent,
          child: Text("Inside Container"),
        ),
      ),);
  }
}

12) With Row:(spacearound,spacebetween,spaceevenly,end,center,start,stretch)
----------------

-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Demo"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("GLS MSC(IT)"),
          ElevatedButton(onPressed: () {}, child: Text("Log in")),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(50),
            child: Text("Text Inside Container"),
          )
        ],

        ),
      );
  }
}

-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Demo"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("GLS MSC(IT)"),
          ElevatedButton(onPressed: () {}, child: Text("Log in")),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(50),
            child: Text("Text Inside Container"),
          )
        ],

        ),
      );
  }
}


-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Demo"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("GLS MSC(IT)"),
          ElevatedButton(onPressed: () {}, child: Text("Log in")),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(50),
            child: Text("Text Inside Container"),
          )
        ],

        ),
      );
  }
}


-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Demo"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("GLS MSC(IT)"),
          ElevatedButton(onPressed: () {}, child: Text("Log in")),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(50),
            child: Text("Text Inside Container"),
          )
        ],

        ),
      );
  }
}


-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Demo"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("GLS MSC(IT)"),
          ElevatedButton(onPressed: () {}, child: Text("Log in")),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(50),
            child: Text("Text Inside Container"),
          )
        ],

        ),
      );
  }
}


-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Demo"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("GLS MSC(IT)"),
          ElevatedButton(onPressed: () {}, child: Text("Log in")),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(50),
            child: Text("Text Inside Container"),
          )
        ],

        ),
      );
  }
}


-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Demo"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("GLS MSC(IT)"),
          ElevatedButton(onPressed: () {}, child: Text("Log in")),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(50),
            child: Text("Text Inside Container"),
          )
        ],

        ),
      );
  }
}


-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Demo"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("GLS MSC(IT)"),
          ElevatedButton(onPressed: () {}, child: Text("Log in")),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(50),
            child: Text("Text Inside Container"),
          )
        ],

        ),
      );
  }
}

-> With Column:
-----------------

-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Demo"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(40),
            child: Text("1"),
          ),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(80),
            child: Text("2"),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(120),
            child: Text("3"),
          ),
        ],

        ),
      );
  }
}


13) Login Screen Username & Password Field:
--------------------------------------------

-> import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: LoginPage()));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/icon.png',width: 100,),
            ),
            SizedBox(height: 50,),
            TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.account_circle),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2
                      )
                  )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.key),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Signup")),
                ElevatedButton(onPressed: () {}, child: Text("ForgetPassword")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

14) import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoginPage()));
}

class SpWD extends StatelessWidget {
  const SpWD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.deepOrange,
            height: 50,
          ),
          Spacer(
            flex: 8,
          ),
          Container(
            color: Colors.purpleAccent,
            height: 50,
          ),
          Spacer(
            flex: 2,
          ),
          Container(
            color: Colors.cyan,
            height: 50,
          ),
        ],
      ),
    );
  }
}

class ExWd extends StatelessWidget {
  const ExWd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.redAccent,
              child: Text("1"),
              padding: EdgeInsets.all(50),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
              child: Text("2"),
              padding: EdgeInsets.all(50),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
              child: Text("3"),
              padding: EdgeInsets.all(50),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(),
            SizedBox(
              height: 10,
            ),
            TextField(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Signup")),
                ElevatedButton(onPressed: () {}, child: Text("Forget Pwd")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

15) number of vowel even and armstrong then login:
----------------------------------------------------

-> import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoginPage()));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // Function to count even vowels in a string
  bool hasEvenVowels(String input) {
    int count = 0;
    String vowels = "aeiouAEIOU";
    for (var char in input.split('')) {
      if (vowels.contains(char)) count++;
    }
    return count % 2 == 0 && count > 0; // Ensure count is even and not zero
  }

  // Function to check if a number is an Armstrong number
  bool isArmstrong(String input) {
    if (input.isEmpty || int.tryParse(input) == null) return false;
    int number = int.parse(input);
    int sum = 0, temp = number;
    int digits = input.length;

    while (temp > 0) {
      int digit = temp % 10;
      sum += digit * digit * digit;
      temp ~/= 10;
    }
    return sum == number;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController vowelController = TextEditingController();
    TextEditingController numberController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/icon.png', width: 100),
            ),
            SizedBox(height: 50),
            TextField(
              controller: vowelController,
              decoration: InputDecoration(
                labelText: "Enter text (even vowels)",
                icon: Icon(Icons.account_circle),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: numberController,
              decoration: InputDecoration(
                labelText: "Enter Armstrong number",
                icon: Icon(Icons.key),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String textInput = vowelController.text;
                String numberInput = numberController.text;

                if (hasEvenVowels(textInput) && isArmstrong(numberInput)) {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text("Success"),
                      content: Text("Login Successful!"),
                      actions: [
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text("Error"),
                      content: Text(
                          "Invalid Input: Ensure text has even vowels and number is Armstrong."),
                      actions: [
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text("Login"),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Signup")),
                ElevatedButton(onPressed: () {}, child: Text("Forget Password")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

16) Statefull Widget:-
-------------------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController num=TextEditingController();
  String result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: num,
            decoration: InputDecoration(labelText: "Enter Number"),
          ),
          ElevatedButton(onPressed: (){
            int no=int.parse(num.text);
            if(no%2==0)
            {
              result="Number is Even";
            }
            else
            {
              result="Number is Odd";
            }

            setState(() {
              });
          }, child: Text("Change")),
          Text(
            result,
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
----------------------------------------------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController txt1=new TextEditingController();

  TextEditingController txt2=new TextEditingController();
  String result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: txt1,
            decoration: InputDecoration(labelText: "Enter Number1"),
          ),
          TextField(
            controller: txt2,
            decoration: InputDecoration(labelText: "Enter Number2"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            result,
            style: TextStyle(fontSize: 30,color: Colors.blue),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){
                  int no1=int.parse(txt1.text);
                  int no2=int.parse(txt2.text);
                  int add=no1+no2;
                  result="Addition is:"+add.toString();

                  setState(() {

                  });

              }, child: Text("Add")),
              ElevatedButton(onPressed: (){
                int no1=int.parse(txt1.text);
                int no2=int.parse(txt2.text);
                int sub=no1-no2;
                result="Subtraction is:"+sub.toString();
                setState(() {

                });

              }, child: Text("Subtract")),
              ElevatedButton(onPressed: (){
                int no1=int.parse(txt1.text);
                int no2=int.parse(txt2.text);
                int mul=no1*no2;
                result="Multiplication is:"+mul.toString();

                setState(() {

                });

              }, child: Text("Multiply")),
              ElevatedButton(onPressed: (){
                double no1=double.parse(txt1.text);
                double no2=double.parse(txt2.text);
                double div=no1/no2;
                result="Divison is:"+div.toString();
                setState(() {

                });
              }, child: Text("Divide")),
            ],

          ),
        ],
      ),
    );
  }
}

---------------------------------------------------------------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController txt=new TextEditingController();
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: txt,
            decoration: InputDecoration(labelText: "Enter String"),
          ),
          Text(
            "Number of Vowel:"+'$counter',
            style: TextStyle(fontSize: 20,color: Colors.blue),
          ),
          ElevatedButton(onPressed: (){
            String st=txt.text;
            int count=0;
            for(int i=0;i<st.length;i++)
            {
              if("aeiouAEIOU".contains(st[i]))
                {
                  count++;
                }
            }
            setState(() {
                counter=count;
            });
            }, child: Text("Count")),
        ],
      ),
    );
  }
}
------------------------------------------------------------------------------


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Calculator(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str = "This is old Text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            str,
            style: TextStyle(fontSize: 50, color: Colors.redAccent),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                str = "This is new Text";
                setState(() {});
              },
              child: Text("Change Text"))
        ],
      ),
    );
  }
}

class demo extends StatefulWidget {
  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  int no = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Counter :" + no.toString(),
            style: TextStyle(fontSize: 50, color: Colors.red),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                no++;
                setState(() {});
              },
              child: Text("Increment"))
        ],
      ),
    );
  }
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  TextEditingController txt = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: txt),
          SizedBox(height: 20),
          Text(
            txt.text == "" ? "No Text" : txt.text,
            style: TextStyle(fontSize: 20, color: Colors.redAccent),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text("Display"))
        ],
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  String result = "";

  void add() {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;
    setState(() {
      result = "Result: ${num1 + num2}";
    });
  }

  void subtract() {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;
    setState(() {
      result = "Result: ${num1 - num2}";
    });
  }

  void multiply() {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;
    setState(() {
      result = "Result: ${num1 * num2}";
    });
  }

  void divide() {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;
    if (num2 != 0) {
      setState(() {
        result = "Result: ${num1 / num2}";
      });
    } else {
      setState(() {
        result = "Error: Division by zero";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter number 1"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter number 2"),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: add, child: Text("Add")),
                ElevatedButton(
                    onPressed: subtract, child: Text("Subtract")),
                ElevatedButton(
                    onPressed: multiply, child: Text("Multiply")),
                ElevatedButton(
                    onPressed: divide, child: Text("Divide")),
              ],
            ),
            SizedBox(height: 20),
            Text(
              result,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

* List Operation:
--------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:Search_Count(),));
}

class Search_Count extends StatefulWidget {

  @override
  State<Search_Count> createState() => _Search_CountState();
}

class _Search_CountState extends State<Search_Count> {
  TextEditingController Number=new TextEditingController();

  TextEditingController Search_Number=new TextEditingController();

  List<int>Marks=[];

  int Counter=0;

  int Current_Index=0;

  String Result="No";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search And Count Task"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: Number,
            decoration: InputDecoration(
                labelText: "Enter Number For Add To List...!",
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.blue,
                    )
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){
                int number=int.parse(Number.text);
                Marks.add(number);
                setState(() {

                });
              }, child: Text("ADD",style: TextStyle(fontSize: 20,color: Colors.red),)),
              Text("Total:"+Marks.length.toString(),style: TextStyle(fontSize: 20,color: Colors.red),)
            ],
          ),
          Column(
            children: [
              TextField(
                controller: Search_Number,
                decoration: InputDecoration(
                    labelText: "Enter Number For Your Search...!",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.blue,
                        )
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Result,style: TextStyle(fontSize: 20,color: Colors.red),),
                  IconButton(onPressed: (){
                    Counter=0;
                    int marks=int.parse(Search_Number.text);

                    for(int i=0;i<Marks.length;i++)
                    {
                      if(marks==Marks[i])
                      {
                        Counter++;
                      }
                    }
                    if(Counter==0)
                    {
                      Result="No";
                    }
                    else
                    {
                      Result="Yes";
                    }
                    setState(() {

                    });
                  }, icon: Icon(Icons.search)),
                  Text("Total:"+Counter.toString(),style: TextStyle(fontSize: 20,color: Colors.red),),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(Marks.isNotEmpty?"Numbers:${Marks[Current_Index]}":"Numbers:N/A",style: TextStyle(fontSize: 20,color: Colors.red),),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: Marks.isNotEmpty ? (){
                    setState(() {
                      Current_Index=0;
                    });
                  }
                  :null, child: Text("First Number",style: TextStyle(fontSize: 20,color: Colors.red),)),

                  ElevatedButton(onPressed: (Current_Index>=0 && Current_Index<Marks.length-1) ? (){
                    setState(() {
                      Current_Index++;
                    });
                  }
                      :null, child: Text("Next Number",style: TextStyle(fontSize: 20,color: Colors.red),)),

                  ElevatedButton(onPressed: (Current_Index>0) ? (){
                    setState(() {
                      Current_Index--;
                    });
                  }
                      :null, child: Text("Previous Number",style: TextStyle(fontSize: 20,color: Colors.red),)),

                  ElevatedButton(onPressed: Marks.isNotEmpty ? (){
                    setState(() {
                      Current_Index=Marks.length-1;
                    });
                  }
                      :null, child: Text("Last Number",style: TextStyle(fontSize: 20,color: Colors.red),)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

--------------------------------------------------------------------------------------------------------------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:Search_Count(),));
}

class Search_Count extends StatefulWidget {
  const Search_Count({super.key});

  @override
  State<Search_Count> createState() => _Search_CountState();
}

class _Search_CountState extends State<Search_Count> {
  TextEditingController txt=new TextEditingController();

  List<int> Marks=[];

  int gradeA=0;

  int gradeAPlus=0;

  int gradeB=0;

  int gradeC=0;

  int gradeBPlus=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Percentage And Grade"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: txt,
            decoration: InputDecoration(
              labelText: "Enter Percentage",
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.blue,
                )
              )
            ),
          ),
          ElevatedButton(onPressed: (){
            int per=int.parse(txt.text);
            Marks.add(per);
            setState(() {

            });
            print(Marks);
          }, child: Text("Save")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
            for(int i in Marks)
              {
                if(i>=90)
                  {
                    gradeAPlus++;
                  }
                else if(i>=80)
                {
                  gradeA++;
                }
                else if(i>=70)
                  {
                    gradeBPlus++;
                  }
                else if(i>=60)
                  {
                    gradeB++;
                  }
                else
                  {
                    gradeC++;
                  }
              }
            setState(() {

            });
          }, child: Text("Show Status")),
          Text('Grade A+:$gradeAPlus'),
          Text('Grade A:$gradeA'),
          Text('Grade B+:$gradeBPlus'),
          Text('Grade B:$gradeB'),
          Text('Grade C:$gradeC'),

        ],
      ),
    );
  }
}

-----------------------------------------------------------------------------


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DemoApp(),
  ));
}

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  List<int> lstNos = [];
  TextEditingController txtMarks = new TextEditingController();
  TextEditingController txtSearch = new TextEditingController();
  String txtResult = "No";
  int searchCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: txtMarks,
            decoration: InputDecoration(labelText: "Enter Marks"),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    int marks = int.parse(txtMarks.text);
                    lstNos.add(marks);
                    setState(() {});
                  },
                  child: Text("Add")),
              SizedBox(
                width: 20,
              ),
              Text(
                "Total: " + lstNos.length.toString(),
                style: TextStyle(color: Colors.redAccent, fontSize: 30),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: txtSearch,
            decoration: InputDecoration(labelText: "Enter num to serach"),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                txtResult,
                style: TextStyle(color: Colors.redAccent, fontSize: 25),
              ),
              SizedBox(width: 20,),
              IconButton(onPressed: () {
                searchCount=0;
                int input = int.parse(txtSearch.text);
                for(int cntr=0;cntr<lstNos.length;cntr++)
                  {
                    if(input==lstNos[cntr])
                      {
                        searchCount++;
                      }
                  }
                if(searchCount==0)
                  {
                    txtResult="No";
                  }
                else
                  {
                    txtResult="Yes";
                  }
                setState(() {

                });

              }, icon: Icon(Icons.search)),
              SizedBox(width: 20,),
              Text(
                searchCount.toString(),
                style: TextStyle(color: Colors.redAccent, fontSize: 25),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ChkDemo extends StatefulWidget {
  const ChkDemo({super.key});

  @override
  State<ChkDemo> createState() => _ChkDemoState();
}

class _ChkDemoState extends State<ChkDemo> {
  bool chkValue = true;
  bool switchValue = true;
  double sliderValue = 50;
  Color clrBg = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBg,
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(
                value: chkValue,
                onChanged: (value) {
                  clrBg = Colors.redAccent;
                  print(value);
                  chkValue = value!;
                  setState(() {});
                },
              ),
              Text(
                "Red",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: chkValue,
                onChanged: (value) {
                  print(value);
                  chkValue = value!;
                  setState(() {});
                },
              ),
              Text(
                "Green",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: chkValue,
                onChanged: (value) {
                  print(value);
                  chkValue = value!;
                  setState(() {});
                },
              ),
              Text(
                "Blue",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Switch(
            value: switchValue,
            onChanged: (value) {
              switchValue = value;
              setState(() {});
            },
          ),
          SizedBox(
            height: 40,
          ),
          Slider(
            min: 1,
            max: 100,
            value: sliderValue,
            onChanged: (value) {
              sliderValue = value;
              setState(() {});
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            sliderValue.toString(),
            style: TextStyle(fontSize: 50, color: Colors.redAccent),
          )
        ],
      ),
    );
  }
}

* Practice Question:

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Percentage_Grade(),
  ));
}

class Search_and_Count extends StatefulWidget {
  const Search_and_Count({super.key});

  @override
  State<Search_and_Count> createState() => _Search_and_CountState();
}

class _Search_and_CountState extends State<Search_and_Count> {

  List<int> Marks = [];
  TextEditingController Number = new TextEditingController();
  TextEditingController Search_num = new TextEditingController();
  int Counter = 0;
  String txtResult = "NO";
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(" Que 1 : Seach And Count And Add Task"),centerTitle: true,),
        body: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextField(
                  controller: Number,
                  decoration: InputDecoration(
                      labelText: "Enter Number For Add to List..!",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2
                          )
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    int numbers = int.parse(Number.text);
                    Marks.add(numbers);
                    setState(() {
                    });
                  }, child: Text("ADD",style: TextStyle(color: Colors.red,fontSize: 20),)),
                  Text("Total :- "+Marks.length.toString(),
                    style: TextStyle(color: Colors.red,fontSize: 25),)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  TextField(
                    controller: Search_num,
                    decoration: InputDecoration(
                        labelText: "Enter Number For You Search..!",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2
                            )
                        )
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(txtResult,style: TextStyle(color: Colors.red,fontSize: 25),),
                  IconButton(onPressed: (){
                    Counter = 0;
                    int Search_marks = int.parse(Search_num.text);

                    for(int cnut=0;cnut<Marks.length;cnut++)
                    {
                      if(Search_marks==Marks[cnut]) {
                        Counter++;
                      }
                    }
                    if(Counter==0)
                    {
                      txtResult = "NO";
                    }
                    else
                    {
                      txtResult = "YES";
                    }

                    setState(() {

                    });
                  }, icon: Icon(Icons.search)),
                  Text("Total :- "+Counter.toString(),style: TextStyle(color: Colors.red,fontSize: 25),)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text("Numbers :- ${currentIndex >= 0 ? Marks[currentIndex] : "N/A"}",
                      style: TextStyle(fontSize: 25, color: Colors.blue))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed:Marks.isNotEmpty? () {
                    setState(() {
                      currentIndex = 0;
                    });
                  }
                      : null, child: Text("First Number",style: TextStyle(color: Colors.red,fontSize: 20),)),
                  ElevatedButton(onPressed: (currentIndex >= 0 && currentIndex < Marks.length - 1) ? () {
                    setState(() {
                      currentIndex++;
                    });
                  }
                      : null, child: Text("Next Number",style: TextStyle(color: Colors.red,fontSize: 20),)),
                  ElevatedButton(onPressed: (currentIndex > 0) ? () {
                    setState(() {
                      currentIndex--;
                    });
                  }
                      : null, child: Text("Previous Number",style: TextStyle(color: Colors.red,fontSize: 20),)),
                  ElevatedButton(onPressed: Marks.isNotEmpty ? () {
                    setState(() {
                      currentIndex = Marks.length - 1;
                    });
                  }
                      : null, child: Text("Last Number",style: TextStyle(color: Colors.red,fontSize: 20),))
                ],
              )
            ],
          ),
        )
    );
  }
}

class Percentage_Grade extends StatefulWidget {

  const Percentage_Grade({super.key});

  @override
  State<Percentage_Grade> createState() => _Percentage_GradeState();
}

class _Percentage_GradeState extends State<Percentage_Grade> {

  TextEditingController percentage = TextEditingController();
  List<int> PercentageList = [];
  int gradeAplus=0;
  int gradeA=0;
  int gradeBplus=0;
  int gradeB=0;
  int gradeC=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Que 2 : Percentage and Grade"),centerTitle: true,),
      body: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          children: [
            TextField(
              controller: percentage,
              decoration: InputDecoration(
                  labelText: "Enter your Percentage",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2
                      )
                  )
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              if(percentage.text.isNotEmpty)
                {
                  int per = int.parse(percentage.text);
                  PercentageList.add(per);
                  percentage.clear();
                }
              print(PercentageList);
              setState(() {

              });
            }, child: Text('Save')),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              for(int percent in PercentageList)
                {
                  if(percent>=90)
                    {
                      gradeAplus++;
                    }
                  else if(percent>=80)
                    {
                      gradeA++;
                    }
                  else if(percent>=70)
                  {
                    gradeBplus++;
                  }
                  else if(percent>=60)
                  {
                    gradeB++;
                  }
                  else
                    {
                      gradeC++;
                    }
                }
              setState(() {

              });
            }, child: Text('Show Status')),
            SizedBox(height: 50,),
            Text('Grade A+ : $gradeAplus'),
            Text('Grade A : $gradeA'),
            Text('Grade B+ : $gradeBplus'),
            Text('Grade B : $gradeB'),
            Text('Grade C : $gradeC')
          ],
        ),
      )
    );
  }
}

* New Code:

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Search_and_Count(),
  ));
}

class Search_and_Count extends StatefulWidget {
  const Search_and_Count({super.key});

  @override
  State<Search_and_Count> createState() => _Search_and_CountState();
}

class _Search_and_CountState extends State<Search_and_Count> {

  List<int> Marks = [];
  TextEditingController Number = new TextEditingController();
  TextEditingController Search_num = new TextEditingController();
  int Counter = 0;
  String txtResult = "NO";
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Seach And Count And Add Task"),centerTitle: true,),
        body: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextField(
                  controller: Number,
                  decoration: InputDecoration(
                      labelText: "Enter Number For Add to List..!",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2
                          )
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    int numbers = int.parse(Number.text);
                    Marks.add(numbers);
                    setState(() {
                    });
                  }, child: Text("ADD",style: TextStyle(color: Colors.red,fontSize: 20),)),
                  Text("Total :- "+Marks.length.toString(),
                    style: TextStyle(color: Colors.red,fontSize: 25),)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  TextField(
                    controller: Search_num,
                    decoration: InputDecoration(
                        labelText: "Enter Number For You Search..!",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2
                            )
                        )
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(txtResult,style: TextStyle(color: Colors.red,fontSize: 25),),
                  IconButton(onPressed: (){
                    Counter = 0;
                    int Search_marks = int.parse(Search_num.text);

                    for(int cnut=0;cnut<Marks.length;cnut++)
                    {
                      if(Search_marks==Marks[cnut]) {
                        Counter++;
                      }
                    }
                    if(Counter==0)
                    {
                      txtResult = "NO";
                    }
                    else
                    {
                      txtResult = "YES";
                    }

                    setState(() {

                    });
                  }, icon: Icon(Icons.search)),
                  Text(Counter>=1
                      ? 'Counter : '+ Counter.toString():""
                    ,style: TextStyle(color: Colors.red,fontSize: 25),)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text("Numbers :- ${currentIndex >= 0 ? Marks[currentIndex] : "N/A"}",
                      style: TextStyle(fontSize: 25, color: Colors.blue))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed:Marks.isNotEmpty? () {
                    setState(() {
                      currentIndex = 0;
                    });
                  }
                      : null, child: Text("First Number",style: TextStyle(color: Colors.red,fontSize: 20),)),
                  ElevatedButton(onPressed: (currentIndex >= 0 && currentIndex < Marks.length - 1) ? () {
                    setState(() {
                      currentIndex++;
                    });
                  }
                      : null, child: Text("Next Number",style: TextStyle(color: Colors.red,fontSize: 20),)),
                  ElevatedButton(onPressed: (currentIndex > 0) ? () {
                    setState(() {
                      currentIndex--;
                    });
                  }
                      : null, child: Text("Previous Number",style: TextStyle(color: Colors.red,fontSize: 20),)),
                  ElevatedButton(onPressed: Marks.isNotEmpty ? () {
                    setState(() {
                      currentIndex = Marks.length - 1;
                    });
                  }
                      : null, child: Text("Last Number",style: TextStyle(color: Colors.red,fontSize: 20),))
                ],
              )
            ],
          ),
        )
    );
  }
}

-----------------------------------------------------------------------------------------------


* SWITCH,CHECKBOX,SLIDER DEMO:
------------------------------------

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Task(),
  ));
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  bool checkValue = false;
  bool switchValue = false;
  double sliderValue = 77.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Checkbox, Slider, Switch'), centerTitle: true, ),
      body: Column(
        children: [
          Text('CheckBox:'),
          Checkbox(value: checkValue, onChanged: (value){
            checkValue=value!;
            setState(() {

            });
          }
          ),
          SizedBox(height: 20,),
          Switch(value: switchValue, onChanged: (value){
            switchValue=value;
            setState(() {

            });
          }),
          SizedBox(height: 20,),
          Text(sliderValue.toString()),
          Slider(min:0, max: 100, value: sliderValue, onChanged: (value){
            sliderValue=value;

            setState(() {

            });
          })
        ],
      ),
    );
  }
}


class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool switchValue = false;
  bool redCheck = false;
  bool greenCheck = false;
  bool blueCheck = false;
  double slideValue = 255;

  Color getBackgroundColor() {
    int red = redCheck ? slideValue.toInt() : 0;
    int green = greenCheck ? slideValue.toInt() : 0;
    int blue = blueCheck ? slideValue.toInt() : 0;

    if ((redCheck && greenCheck) || (redCheck && blueCheck) || (greenCheck && blueCheck)) {
      return Colors.white; // Default white if two or more are selected
    }

    return Color.fromARGB(255, red, green, blue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task'), centerTitle: true),
      body: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        color: getBackgroundColor(),
        child: Column(
          children: [
            Center(
              child: Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
            ),
            if (switchValue) ...[
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text('Red '),
                      Checkbox(
                        value: redCheck,
                        onChanged: (value) {
                          setState(() {
                            redCheck = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Green '),
                      Checkbox(
                        value: greenCheck,
                        onChanged: (value) {
                          setState(() {
                            greenCheck = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Blue '),
                      Checkbox(
                        value: blueCheck,
                        onChanged: (value) {
                          setState(() {
                            blueCheck = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('Adjust Color Intensity: ${slideValue.toInt()}'),
              Slider(
                min: 0,
                max: 255,
                value: slideValue,
                onChanged: (value) {
                  setState(() {
                    slideValue = value;
                  });
                },
              ),
            ]
          ],
        ),
      ),
    );
     }
}


* Value Transfer From One Page to Another:
---------------------------------------------

1) Login Details Print:

main.dart
--------------

import 'package:flutter/material.dart';
import 'package:myapp1/Second.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txt1= new TextEditingController();
  TextEditingController txt2= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: txt1,
            decoration: InputDecoration(
              labelText: "Enter Your Username",
            )
            ),
          SizedBox(height: 20,),
          TextField(
              controller: txt2,
              decoration: InputDecoration(
                labelText: "Enter Your Password",
              )
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Second(txt1.text,txt2.text);
            },));

          }, child: Text("Submit"))
        ],
      ),
    );
  }
}


Second.dart
-------------

import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  String data1;
  String data2;
  Second(this.data1,this.data2);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Details"),
      ),
      body: Center(
          child:Column(
            children: [
              Text("Welcome "+widget.data1,style: TextStyle(fontSize: 20,color: Colors.blue),),
              SizedBox(height: 20,),
              Text("Your Password is: "+widget.data2,style: TextStyle(fontSize: 20,color: Colors.blue),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);

              }, child: Text("Back")),
            ],
    )
    ));
  }
}

2) String Value Print

main.dart
----------

import 'package:flutter/material.dart';
import 'package:myapp/Second.dart';

void main() {
  runApp(MaterialApp(
    home: First(),
  ));
}

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Demo"),
      ),
      body: Column(
        children: [
          Text("First Page"),

          SizedBox(height: 20,),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Second("Sample Data");
            },));

          }, child: Text("Next"))
        ],
        
        
        
      ),
    );
  }
}


Second.dart
-------------

import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  String data;
  Second(this.data);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          Text(
              widget.data,
            ),

          ElevatedButton(onPressed: (){
            Navigator.pop(context);

          }, child: Text("Back")),
        ],
      ),
    );
  }
}


* Demo Of Lab(Singlechild Scroll view,Listtile,Card,Listview Builder)

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: demo4(),
  ));
}

class demo1 extends StatelessWidget {
  const demo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Single Scrollview"),centerTitle: true,),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.redAccent,
            ),
            Container(
              height: 100,
              color: Colors.blueAccent,
            ),
            Container(
              height: 100,
              color: Colors.redAccent,
            ),
            Container(
              height: 100,
              color: Colors.blueAccent,
            ),
            Container(
              height: 100,
              color: Colors.redAccent,
            ),
            Container(
              height: 100,
              color: Colors.blueAccent,
            ),
            Container(
              height: 100,
              color: Colors.redAccent,
            ),
            Container(
              height: 100,
              color: Colors.blueAccent,
            ),
            Container(
              height: 100,
              color: Colors.redAccent,
            ),
            Container(
              height: 100,
              color: Colors.blueAccent,
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),


    );
  }
}

class demo2 extends StatelessWidget {
  const demo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListTile Demo"),centerTitle: true,),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              title: Text("Angel Christian"),
              leading: Icon(Icons.account_circle),
              subtitle: Text("GLS University"),
              trailing: Icon(Icons.download),
            ),
            ListTile(
              title: Text("Angel Christian"),
              leading: Icon(Icons.account_circle),
              subtitle: Text("GLS University"),
              trailing: Icon(Icons.download),
            ),

          ],
        ),
      ),
    );
  }
}

class demo3 extends StatelessWidget {
  const demo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Demo"),centerTitle: true,),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              child: ListTile(
                tileColor: Colors.grey[100],
                title: Text("Angel Christian"),
                leading: Icon(Icons.account_circle),
                subtitle: Text("GLS University"),
                trailing: Icon(Icons.download),
              ),
            ),
            Card(
              child: ListTile(
                tileColor: Colors.grey[100],
                title: Text("Angel Christian"),
                leading: Icon(Icons.account_circle),
                subtitle: Text("GLS University"),
                trailing: Icon(Icons.download),
              ),
            ),
            Card(
              child: ListTile(
                tileColor: Colors.grey[100],
                title: Text("Angel Christian"),
                leading: Icon(Icons.account_circle),
                subtitle: Text("GLS University"),
                trailing: Icon(Icons.download),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class demo4 extends StatelessWidget {
  const demo4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Builder"),centerTitle: true,),

      body: ListView.builder(itemCount:50,itemBuilder: (context, index) {
        return ListTile(title: Text("Title"+index.toString()),subtitle: Text("Subtitle"),);
      },),
    );
  }
}



* Tasks:

import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Task2(),
  ));
}

class Task1 extends StatelessWidget {

  List<String> l1=["Angel","Priya","Honey","Dhruvi","Disha"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task1"),centerTitle: true,),

      body: ListView.builder(itemCount:l1.length,itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            l1[index]
          ),
        );
      },)

    );
  }
}

class Task2 extends StatelessWidget {

  List<String>l1=[];
  List<int>l2=[];

  TextEditingController txt1= new TextEditingController();
  TextEditingController txt2= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task2"),centerTitle: true,),

      body: Column(
        children: [
          TextField(
            controller: txt1,
            decoration: InputDecoration(
              labelText: "Enter Your Name",
              border: OutlineInputBorder()
            ),
          ),
          TextField(
            controller: txt2,
            decoration: InputDecoration(
              labelText: "Enter Your Percentage",
              border: OutlineInputBorder()
            ),
          ),
          ElevatedButton(onPressed: (){
            String name=txt1.text;
            
          }, child: Text("save")),
        ],
      ),

    );
  }
}




