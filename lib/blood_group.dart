import 'package:flutter/material.dart';

class BloodGroup extends StatefulWidget {
  @override
  _BloodGroup createState() => _BloodGroup();
}

class _BloodGroup extends State<BloodGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepOrange,
        title: Text('Search Blood Group'),
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
            runSpacing: 10.0,
            children: [
              ActionChip(
                backgroundColor: Colors.deepOrange,
                label: Text(
                  "A+",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              ActionChip(
                backgroundColor: Colors.deepOrange,
                label: Text(
                  "A-",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              ActionChip(
                backgroundColor: Colors.deepOrange,
                label: Text(
                  "B+",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              ActionChip(
                backgroundColor: Colors.deepOrange,
                label: Text(
                  "B-",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              ActionChip(
                backgroundColor: Colors.deepOrange,
                label: Text(
                  "AB+",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              ActionChip(
                backgroundColor: Colors.deepOrange,
                label: Text(
                  "AB-",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              ActionChip(
                backgroundColor: Colors.deepOrange,
                label: Text(
                  "O+",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              ActionChip(
                backgroundColor: Colors.deepOrange,
                label: Text(
                  "O-",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 80,
                      width: 900,
                      child: Text(
                        '  Name: Suraj Poudyal\n'
                        '  Phone: 9841537251\n'
                        '  Blood Group: B+\n'
                        '  Location: Sukedhara,Kathmandu\n',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 80,
                      width: 900,
                      child: Text(
                        '  Name: Ram Sharma\n'
                        '  Phone: 9815139362\n'
                        '  Blood Group: A+\n'
                        '  Location: Chabahil,Kathmandu',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 80,
                      width: 900,
                      child: Text(
                        '  Name: Ashim Pandey\n'
                        '  Phone: 9841034215\n'
                        '  Blood Group: AB+\n'
                        '  Location: Kapan. Kathmandu',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 80,
                      width: 900,
                      child: Text(
                        '  Name: Divas Nepal\n'
                        '  Phone: 9841539216\n'
                        '  Blood Group: O+\n'
                        '  Location: Chabahil, Kathmandu',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 80,
                      width: 900,
                      child: Text(
                        '  Name: Deepika Acharya\n'
                        '  Phone: 9851946291\n'
                        '  Blood Group: O-\n'
                        '  Location: Sinamangal, Kathmandu',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 80,
                      width: 900,
                      child: Text(
                        '  Name: Anusha Dahal\n'
                        '  Phone: 9801538275\n'
                        '  Blood Group: A-\n'
                        '  Location: Bhaktapur,Nepal\n',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 80,
                      width: 900,
                      child: Text(
                        '  Name: Suman Thapa\n'
                        '  Phone: 9861930221 \n'
                        '  Blood Group: B-\n'
                        '  Location: Koteshwor, Kathmandu\n',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 80,
                      width: 900,
                      child: Text(
                        '  Name: Sandip Basnet\n'
                        '  Phone: 9861534294\n'
                        '  Blood Group: AB-\n'
                        '  Location: Boudha, Kathmandu',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      height: 80,
                      width: 900,
                      child: Text(
                        '  Name: Bipin Maharjan\n'
                        '  Phone: 9841645289\n'
                        '  Blood Group: AB+\n'
                        '  Location: Lalitpur,Nepal',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
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
