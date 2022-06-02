import 'package:dagnosis_and_prediction/screens/tableresualtq.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(Buttomtest());

class Buttomtest extends StatelessWidget {
  String textname = 'qais alshaar vcsDVsdvf';
  String textname1 = 'omar Aziz  vcsDVsdvf';
  String textname2 = 'ahmed saeed  vcsDVsdvf';
  String textname3 = 'ali jasim  vcsDVsdvf';

  sampleFunction() {
//    print('Function Called');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.grey.shade300,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            mainAxisExtent: 70, // here set custom Height You Want
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.redAccent,
                    child: MaterialButton(
                        // padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        // minWidth: MediaQuery.of(context).size.width,

                        onPressed: () {
                          // Navigator.pushReplacement(
                          //     context, MaterialPageRoute(builder: (context) => HomeScreen()));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TableResualtq()));
                        },
                        child: Text(
                          textname.length > 12
                              ? '${textname.substring(0, 12)}...'
                              : textname,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ))));
          },
        ),
      ),
    ))));
  }
}
