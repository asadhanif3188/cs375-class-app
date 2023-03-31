import 'package:flutter/material.dart';
import 'package:third_application/datastore/doctor_datastore.dart';
import 'package:third_application/screens/doctor_detail.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctor's List"),
      ),
      body: ListView.builder(
        itemCount: DoctorDataStore.doctors.length,

        itemBuilder: (context, index) {
          var doctor = DoctorDataStore.doctors[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetail(doctor: doctor)));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),

              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(doctor.photo, height: 100, width: 100, fit: BoxFit.cover),
                  ),

                  SizedBox(width: 16,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        children: [
                          Text("Name: "),
                          Text(doctor.name, style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),

                      Row(
                        children: [
                          Text("Specitialization: "),
                          Text(doctor.spe, style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),

                      Row(
                        children: [
                          Text("Fee: Rs."),
                          Text(doctor.fee.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          );
        }

      ),
    );
  }
}
