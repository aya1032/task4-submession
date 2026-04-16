class CallModel {
  final String name ;
  final String time;
  final String image ;
  final bool isvideo;
  final bool ismissed;
  CallModel({
    required this.name,
     required this.time,
      this.ismissed=false,
      this.isvideo=false,

       required this.image,
  });

}