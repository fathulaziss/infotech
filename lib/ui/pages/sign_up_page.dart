part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // Header
          Container(
            width: double.infinity,
            height: 108,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 26),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/back.png"))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      textAlign: TextAlign.left,
                      style: blackTextFont.copyWith(
                          fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Create new account",
                      textAlign: TextAlign.left,
                      style: greyTextFont.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: defaultMargin,
            color: accentColor3,
          ),
          // Body
          Container(
            width: double.infinity,
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              children: [
                Container(
                  width: 110,
                  height: 110,
                  margin: EdgeInsets.only(top: 26),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/photo_border.png"))),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/photo.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelText: "Full Name",
                    hintText: "Full Name",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: nimController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelText: "NIM",
                    hintText: "20161037031101",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelText: "Email Address",
                    hintText: "Email Address",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelText: "Password",
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 25),
                  width: 319,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
                    color: mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "Register",
                      style: whiteTextFont.copyWith(fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
