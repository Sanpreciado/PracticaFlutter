class Mail {
  final int id;
  final String from;
  final String subject;
  final String dateTime;
  final String body;
  bool read;

  Mail({
    required this.id,
    required this.from,
    required this.subject,
    required this.dateTime,
    required this.body,
    this.read = false,
  });
}


