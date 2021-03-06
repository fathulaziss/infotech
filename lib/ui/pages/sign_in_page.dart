part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Hero(
          tag: 'logo',
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 153, bottom: 55),
                    width: 100,
                    height: 44,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logo.png"))),
                  ),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelText: "Username",
                    hintText: "Username",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)),
                      labelText: "Password",
                      hintText: "Password"),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 8, bottom: 40),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style:
                          blueTextFont.copyWith(fontSize: 14, color: mainColor),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 25),
                  width: 319,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MainPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      animationDuration: Duration(seconds: 2),
                      primary: mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Text(
                      "Login",
                      style: whiteTextFont.copyWith(fontSize: 17),
                    ),
                  ),
                ),
                Container(
                  width: 319,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Text(
                      "Register",
                      style: whiteTextFont.copyWith(fontSize: 17),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
