// import 'package:flutter/material.dart';
// import '../../widgets/ui/theme.dart';
// import 'package:teledart/teledart.dart';
// import 'package:teledart/telegram.dart';

// class TelegramBotPage extends StatefulWidget {
//   @override
//   _TelegramBotPageState createState() => _TelegramBotPageState();
// }

// class _TelegramBotPageState extends State<TelegramBotPage> {
//   final telegram = Telegram('2125562315:AAFdI1M_uF9reV99zQaD3Arsb7bOwVuozFY');
//   late TeleDart teleDart;
//   String botName = '';
//   var msgId = 0;

//   final _formKey = GlobalKey<FormState>();
//   TextEditingController _controller = TextEditingController();
//   List<Map<String, String?>> _msgs = [];

//   @override
//   void initState() {
//     super.initState();
//     _startBot();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             stops: [0.1, 0.4, 0.6, 0.9],
//             colors: [Colors.yellow, Colors.red, Colors.indigo, Colors.teal],
//           ),
//         ),
//         child: Column(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height / 1.5,
//               child: ListView.builder(
//                   itemCount: _msgs.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Row(
//                       mainAxisAlignment: _getAligment(index),
//                       children: [
//                         Flexible(
//                           child: Container(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text(
//                                 '${_msgs.isNotEmpty ? _msgs[index] : ''}',
//                                 style: TextStyle(
//                                     fontSize: 20.0,
//                                     fontWeight: FontWeight.normal),
//                               ),
//                             ),
//                             decoration: BoxDecoration(
//                                 color: Colors.indigo,
//                                 borderRadius: BorderRadius.circular(20.0)),
//                           ),
//                         )
//                       ],
//                     );
//                   }),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Form(
//                 key: _formKey,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                       labelText: 'Message',
//                       hintText: 'input text',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25.0),
//                         borderSide: BorderSide(),
//                       )),
//                   controller: _controller,
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Enter text';
//                     }
//                     return null;
//                   },
//                 )),
//             IconButton(
//                 icon: Icon(Icons.send),
//                 onPressed: () {
//                   // if (_formKey.currentState!.validate()) {
//                   //   botSendMessage(_controller.text);
//                   //   _controller.text = '';
//                   // }
//                 })
//           ],
//         ),
//       ),
//     );
//   }

//   _getAligment(index) {
//     if (_msgs[index].keys.toList()[0] == botName) {
//       return MainAxisAlignment.end;
//     }
//     return MainAxisAlignment.start;
//   }

//   // _startBot() {
//   //   teleDart = TeleDart(telegram, Event());
//   //   teleDart.start().then((me) {
//   //     print('${me.username} is initialised');
//   //     botName = me.username;
//   //   });

//   //   teleDart
//   //       .onMessage(entityType: 'bot_command', keyword: 'start')
//   //       .listen((message) {
//   //     msgId = message.chat.id;
//   //     teleDart.telegram.sendMessage(msgId, 'Hello I am Flutter bot');
//   //   });

//   //   teleDart.onMessage().listen((message) {
//   //     // message.reply('${message.from.first_name} say ${message.text}');
//   //     msgId = message.chat.id;
//   //     setState(() {
//   //       _msgs.add({message.chat.username.toString(): message.text});
//   //     });
//   //   });
//   // }

//   botSendMessage(String msg) {
//     teleDart.telegram.sendMessage(msgId, msg);
//     setState(() {
//       _msgs.add({botName: msg});
//     });
//   }

//   @override
//   void dispose() {
//     teleDart.stop();
//     super.dispose();
//   }
// }
