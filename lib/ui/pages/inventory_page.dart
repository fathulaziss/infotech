part of 'pages.dart';

class InventoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              "All Left Stuff",
              style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
