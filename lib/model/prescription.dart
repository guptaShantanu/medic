class Prescription{
  List<Medicine> medicines;
  String doctorName;
  DateTime startTime;
  DateTime endTime;

  Prescription({this.doctorName,this.endTime,this.startTime,this.medicines});
}

class Medicine{
  String name;
  List<String> time;

  Medicine({this.name,this.time});
}