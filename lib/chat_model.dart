enum MessageStatus {
  sent,
  delivered,
  seen,
}
class chatModel{
  final String title;
  final String subtitle;
  final String time;
  final String image;
  final MessageStatus status;
  final bool isMe;
chatModel({required this.time,
required this.title,
required this.subtitle,
required this.image,
this.status = MessageStatus.sent,
 this.isMe=false
});
}