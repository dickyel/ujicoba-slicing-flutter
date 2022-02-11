import 'package:flutter/material.dart';

class RiwayatPesanList extends StatefulWidget {
  String text;
  String secondaryText;
  String imageUrl;
  String time;

  RiwayatPesanList({
    @required this.text = '',
    @required this.secondaryText = '',
    @required this.imageUrl = '',
    @required this.time = '',
  });

  @override
  _RiwayatPesanListState createState() => _RiwayatPesanListState();
}

class _RiwayatPesanListState extends State<RiwayatPesanList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(widget.imageUrl),
                  maxRadius: 30,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.text),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        widget.secondaryText,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            widget.time,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
