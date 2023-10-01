import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffC7ADB6), // Set the button's background color to purple
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Adjust the radius to make rounded corners
            ),
          ),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor:
                Color(0xffc2d3f3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                elevation: 10,

                context: context,
                builder: (context) {
                  return Column(
                   //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      ListTile(
                        leading: new Icon(Icons.photo),
                        title: new Text('Photo'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.music_note),
                        title: new Text('Music'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.videocam),
                        title: new Text('Video'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.share),
                        title: new Text('Share'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                });
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Show Catagory',
              style: TextStyle(
                  color: Colors.white,fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}