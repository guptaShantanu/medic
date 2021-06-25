import 'package:medic/model/prescription.dart';

List<Prescription> prescriptions = [
  Prescription(
    medicines: [
      Medicine(name: 'Metrozil', time: ['1', '2', '3']),
      Medicine(name: 'GetB', time: ['1', ' ', '3']),
      Medicine(name: 'Calpol', time: ['1', '2', ' ']),
      Medicine(name: 'TusQ', time: [' ', '2', '3']),
    ],
    doctorName: 'Dr. V. K. Singh',
    startTime: DateTime(2021, 12, 12),
    endTime: DateTime(2021, 12, 12),
  ),
  Prescription(
    medicines: [
      Medicine(name: 'Digene', time: ['1', ' ', ' ']),
      Medicine(name: 'MetHill', time: ['1', ' ', ' ']),
      Medicine(name: 'GetB', time: ['1', '2', '3']),
      Medicine(name: 'TusQ', time: ['1', '2', '3']),
    ],
    doctorName: 'Dr. Trupti Nikam',
    startTime: DateTime(2021, 12, 12),
    endTime: DateTime(2021, 12, 12),
  ),
  Prescription(
    medicines: [
      Medicine(name: 'Calpol', time: ['1', '2', '3']),
      Medicine(name: 'GetB', time: ['1', '2', '3']),
      Medicine(name: 'TusQ', time: ['1', '2', '3']),
      Medicine(name: 'Metrozil', time: ['1', '2', '3']),
    ],
    doctorName: 'Dr. V. Sachan',
    startTime: DateTime(2021, 12, 12),
    endTime: DateTime(2021, 12, 12),
  ),
];
