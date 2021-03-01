part of 'pages.dart';

class StuffDetailPage extends StatelessWidget {
  final Stuff stuff;

  StuffDetailPage({@required this.stuff});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 375,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(stuff.picturePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SafeArea(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    margin: EdgeInsets.only(left: 24, top: 24),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white54,
                      image: DecorationImage(
                        image: AssetImage('assets/back.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Material(
            elevation: 1,
            child: Container(
              width: double.infinity,
              height: 52,
              color: Colors.white,
              padding: EdgeInsets.only(left: 16, top: 13),
              child: Text(
                stuff.name,
                style: blackTextFont.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 1),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Location',
                      style: greyTextFont.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      stuff.location,
                      style: greyTextFont.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: greyTextFont.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      stuff.dateTime,
                      style: greyTextFont.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Description',
                      style: greyTextFont.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      stuff.description,
                      style: (stuff.description == "Available")
                          ? greenTextFont.copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            )
                          : greyTextFont.copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
