import 'package:celebration_station/updateProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingList extends StatefulWidget {
  const BookingList({Key? key}) : super(key: key);

  @override
  State<BookingList> createState() => _BookingListState();
}

class _BookingListState extends State<BookingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title:  Image.asset(
          "img/celebrationstation.png",
          height: 60,
        ),
        actions: [
          IconButton(
            iconSize: 30.0,
            padding: EdgeInsets.symmetric(horizontal: 20),
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.bell,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
              child: Text(
                "Booking List",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    headingRowColor: MaterialStateColor.resolveWith((states) => Colors.pink.shade50),
                    dataRowColor: MaterialStateColor.resolveWith((states) => Colors.grey.shade50),
                    headingRowHeight: 80,
                    border: TableBorder.all(width: 1),
                      columnSpacing: 20,
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Date',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Advance',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Balance',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Refer By',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('10-09\n-2022')),
                            DataCell(Text('25000')),
                            DataCell(Text('200000')),
                            DataCell(Text('Provisioning')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('10-09\n-2022')),
                            DataCell(Text('25000')),
                            DataCell(Text('200000')),
                            DataCell(Text('Provisioning')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('10-09\n-2022')),
                            DataCell(Text('25000')),
                            DataCell(Text('200000')),
                            DataCell(Text('Provisioning')),
                          ],
                        ),
                      ],
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
