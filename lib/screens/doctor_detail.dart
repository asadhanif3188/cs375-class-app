import 'package:flutter/material.dart';

import '../models/doctor.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({Key? key, required this.doctor}) : super(key: key);
  final Doctor doctor;

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Doctors Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(widget.doctor.photo, width: 100, height: 100,
                    fit: BoxFit.cover,)
              ),
              Row(
                children: [
                  const Text("Name: ", style: TextStyle(fontSize: 16, color: Colors.black38),),
                  Text(widget.doctor.name, style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  const Text("Specialization: ", style: TextStyle(fontSize: 16, color: Colors.black38),),
                  Text(widget.doctor.spe, style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
                ],
              ),
              Row(
                children: [
                  const Text("Address: ", style: TextStyle(fontSize: 16, color: Colors.black38),),
                  Text(widget.doctor.clinicAddress, style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
                ],
              ),
              Row(
                children: [
                  const Text("Fee: ", style: TextStyle(fontSize: 16, color: Colors.black38),),
                  Text('Rs. ${widget.doctor.fee}/-', style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
                ],
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
