import 'package:flutter/material.dart';


class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}):super(key:key);

  @override
  // ignore: library_private_types_in_public_api
  _MyLoginState createState() =>  _MyLoginState();
}

class  _MyLoginState extends State <MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(decoration : const BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/login.png'),fit: BoxFit.cover)
    ),
    child: Scaffold(
      backgroundColor:Colors.transparent,
      body: Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 35, top: 119),
          child: const Text('Welcome\nBack!',style: TextStyle(
            color: Colors.white,
            fontSize: 33
          ),),
        ),
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height *0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [


                          TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     const Text('Sign In',
                  style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700 ),
                  ),
                  CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0xff4c505b),
                  child: IconButton(
                    color: Colors.white,
                    onPressed:() {},
                    icon:  const Icon(
                      Icons.arrow_forward),
                  ),
                  )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed:(){
                      Navigator.pushNamed(context, 'register');
                    }, 
                    // ignore: sort_child_properties_last
                    child:const Text('Sign Up',
                    style:TextStyle(
                      decoration:  TextDecoration.underline,
                      fontSize:18),
                    ),
                    style: const ButtonStyle(),
                    
                ),
                 TextButton(onPressed:(){},
                 
                 child: const Text('Forgot Password',
                    style:TextStyle(
                      decoration:  TextDecoration.underline,
                      fontSize: 18
                    ),
                    )),
              ],
                )
                        ],

                      ),
                )
              ],
            ),
          ),
        )
      ],
      ),
    ),
    );
  
  }
}
