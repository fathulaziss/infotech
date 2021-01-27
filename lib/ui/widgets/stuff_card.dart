part of 'widgets.dart';

class StuffCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.amber,
        boxShadow: [
          BoxShadow(spreadRadius: 1, blurRadius: 5, color: Colors.black26)
        ],
      ),
      child: Column(
        children: [],
      ),
    );
  }
}
