enum MessageTypes {
  ai,
  user,
}
//definisco i valori che possono essere presi

class Message {
  Message({
    required this.type,
    required this.content,
  });

  final MessageTypes type;
  final String content;

  static Message fromJson(Map<String, dynamic> json) {
    return json['type'] == MessageTypes.ai.name
        ? MessageAi.fromJson(json)
        : MessageUser.fromJson(json);
  }

  @override
  String toString() => 'Message { type: $type, content: $content }';
}

class MessageAi extends Message {
  MessageAi({
    required String content,
  }) : super(type: MessageTypes.ai, content: content);

  static MessageAi fromJson(Map<String, dynamic> json) {
    return MessageAi(content: json['content']);
  }
}

class MessageUser extends Message {
  MessageUser({
    required String content,
  }) : super(type: MessageTypes.user, content: content);

  static MessageUser fromJson(Map<String, dynamic> json) {
    return MessageUser(content: json['content']);
  }
}

/*
ESEMPIO

void main() {
  final json = [
    {'type': 'ai', 'content': 'Ciao'},
    {'type': 'user', 'content': 'Ciao a te'}
  ];
  final messages = json
      .map((e) => Message.fromJson(e),)
       
      .toList();
}

*/

/*
map = dizionario
Map<int, Map<dynamic, List<dynamic>>
{
  0: {
    'a': [0,1],
    2: ['a', 'b']
  }
}*/
