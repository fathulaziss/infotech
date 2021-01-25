part of 'pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavBar(),
          )),
        ],
      ),
    );
  }
}
