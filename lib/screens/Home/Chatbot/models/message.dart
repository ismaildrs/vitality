class Message {
  final String message;
  final String date;
  final bool user;
  Message({required this.message, required this.date, this.user = true});

  String getMessage() {
    return message;
  }

  String getDate() {
    return date;
  }

  bool getUser() {
    return user;
  }
}
