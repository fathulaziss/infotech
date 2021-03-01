part of 'pages.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Stack(
              children: [
                Material(
                  color: Colors.white,
                  elevation: 1,
                  child: Container(
                    width: double.infinity,
                    height: 44,
                    child: Center(
                      child: Text(
                        "All Event",
                        style: blackTextFont.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 16, top: 12),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Text('List Event'),
        ],
      ),
    );
  }
}
