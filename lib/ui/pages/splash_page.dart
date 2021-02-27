part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentColor2,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 61,
              width: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo.png'))),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              width: 250,
              height: 46,
              child: RaisedButton(
                color: mainColor,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignInPage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "Get Started",
                  style: whiteTextFont.copyWith(fontSize: 17),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
