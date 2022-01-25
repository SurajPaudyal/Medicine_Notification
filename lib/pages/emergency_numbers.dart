import 'package:flutter/material.dart';

class EmergencyNumbers extends StatefulWidget {
  @override
  _EmergencyNumbers createState() => _EmergencyNumbers();
}

class _EmergencyNumbers extends State<EmergencyNumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepOrange,
        title: Text('Emergency Numbers'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Wrap(
            runSpacing: 20.0,
            children: [
              ActionChip(
                label: Text(
                  "Hospital",
                  style: TextStyle(fontSize: 23),
                ),
                onPressed: () {},
              ),
              ActionChip(
                label: Text(
                  "Ambulance",
                  style: TextStyle(fontSize: 23),
                ),
                onPressed: () {},
              ),
              ActionChip(
                label: Text(
                  "Blood Bank",
                  style: TextStyle(fontSize: 23),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.medical_services_outlined,
                        color: Colors.red,
                      ),
                      label: Text(
                        "Hospital Phone Number",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 70,
                      width: 900,
                      child: Text(
                        '  Name: Om Hospital & Research Center\n'
                        '  Phone: 977-1-4476225 \n'
                        '  Location: Chabahil, Kathmandu',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 70,
                      width: 900,
                      child: Text(
                        '  Name: Civil Hospital\n'
                        '  Phone: 01-4107000\n'
                        '  Location: Minbhawan, New Baneshwor, Kathmandu',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 70,
                      width: 900,
                      child: Text(
                        '  Name: Grande International Hospital\n'
                        '  Phone: 1-5159266, 1-5159267, 9801202550\n'
                        '  Location: Dhapasi, Kathmandu',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 15,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.local_hospital_outlined,
                        color: Colors.red,
                      ),
                      label: Text(
                        "Ambulance Service Number",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 70,
                      width: 900,
                      child: Text(
                        '  Name: Ambulance Lalitpur Municipality\n'
                        '  Phone: 01-5527003\n'
                        '  Location: Pulchowk, Lalitpur,Nepal\n',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 70,
                      width: 900,
                      child: Text(
                        '  Name: Ambulance Service Siddhartha Club\n'
                        '  Phone:  06-1530200/ 06-1521433\n'
                        '  Location: Siddhartha Chowk, Pokhara, Kaski\n',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 70,
                      width: 900,
                      child: Text(
                        '  Name: B. P. SMRITI HOSPITAL\n'
                        '  Phone: 9841447710\n'
                        '  Location: Basundhara, Kathmandu',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 15,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bloodtype_rounded,
                        color: Colors.red,
                      ),
                      label: Text(
                        "Blood Bank Phone Number",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 70,
                      width: 900,
                      child: Text(
                        '  Name: Redcross Blood Bank\n'
                        '  Phone: 01-5186065 / 01-5186390\n'
                        '  Location: Balkumari, Lalitpur,Nepal\n',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 70,
                      width: 900,
                      child: Text(
                        '  Name: Bhaktapur Blood Bank\n'
                        '  Phone: 01-6612266 / 016611661\n'
                        '  Location: Bhaktapur,Nepal\n',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 70,
                      width: 900,
                      child: Text(
                        '  Name: Trauma Center Blood Bank\n'
                        '  Phone: 01-4239161\n'
                        '  Location: Mahaboudhha, Kathmandu,Nepal\n',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
