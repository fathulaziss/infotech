part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 2,
            color: Colors.white,
            child: Container(
              height: 88,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 170, right: 135),
                    child: Text(
                      "Home",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/menu_ic.png"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 13, left: 16, bottom: 17),
            child: Text(
              "Info",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: double.infinity,
            height: 198,
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.amber),
          )
        ],
      ),
    );
  }
}
