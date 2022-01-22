// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:google_fonts/google_fonts.dart';


class PreOrder2 extends StatefulWidget {
  const PreOrder2({Key? key}) : super(key: key);

  @override
  _PreOrder2State createState() => _PreOrder2State();
}

class _PreOrder2State extends State<PreOrder2> {

  late DateTime selectedDay;
  late List <CleanCalendarEvent> selectedEvent;

  final Map<DateTime,List<CleanCalendarEvent>> events = {
    DateTime (DateTime.now().year,DateTime.now().month,DateTime.now().day):
        [],

    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
    [],
  };

  void _handleData(date){
    setState(() {
      selectedDay = date;
      selectedEvent = events[selectedDay] ?? [];
    });
    print(selectedDay);
  }
  @override
  void initState() {
    // TODO: implement initState
    // selectedEvent = events[selectedDay] ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom:10.0, right: 32, left: 32),
        child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Color(0xff00C393),),
               width: MediaQuery.of(context).size.width,
               height: 50,
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: FlatButton(
                        color: const Color(0xff00C393),
                        child: const Text("Set",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        onPressed: () {
                          
                        },
                      ),
             ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image(image: AssetImage('assets/images/back.png'),),
        title: Text('Pre-Order', style: TextStyle(color: Color(0xff00C393),),),
        centerTitle: true,
        elevation: 0,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0, vertical: 18),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                child: Calendar(
                  startOnMonday: true,
                  hideTodayIcon: true,
                  selectedColor: Color(0xff00C393),
                  todayColor: Colors.red,
                  onRangeSelected: (range) {
                    print('selected Day ${range.from},${range.to}');
                  },
                  onDateSelected: (date){
                    return _handleData(date);
                  },
                  events: events,
                  isExpanded: true,
                  dayOfWeekStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w300,
                  ),
                  bottomBarTextStyle: TextStyle(
                    color: Colors.white,
                  ),
                  hideBottomBar: false,
                  hideArrows: false,
                  weekDays: const ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                alignment: AlignmentDirectional.topStart,
                child: Text('Time',
                style: GoogleFonts.nunitoSans(
                     textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                           ),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.white, 
                    borderRadius: BorderRadius.circular(8), border: Border.all(color:Color(0xff00C393),),),
                child: Center(
                  child: Text('12:00 am',
                  style: GoogleFonts.nunitoSans(
                       textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 14, fontWeight: FontWeight.bold),
                             ),),
                ),
              ),
              
                ],
              ),
            SizedBox(height: 40,),
            Container(
               decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Center(
                      child: Text('Selected',
                            style: GoogleFonts.nunitoSans(
                                   textStyle: const TextStyle(color:  Color(0xff00C393), letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.bold),
                                         ),),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: AlignmentDirectional.topStart,
                              child: Row(
                                children: [
                                  Icon(Icons.calendar_today),
                                  SizedBox(width: 5,),
                                  Text('Date',
                          style: GoogleFonts.nunitoSans(
                                 textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                       ),),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('December 23',
                          style: GoogleFonts.nunitoSans(
                               textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                     ),),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: AlignmentDirectional.topStart,
                              child: Row(
                                children: [
                                  Icon(Icons.access_time),
                                  SizedBox(width: 5,),
                                  Text('Will Avaiable',
                          style: GoogleFonts.nunitoSans(
                                 textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 14,),
                                       ),),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('12:00 pm onwards',
                          style: GoogleFonts.nunitoSans(
                               textStyle: const TextStyle(color:  Colors.black, letterSpacing: .5, fontSize: 16, fontWeight: FontWeight.bold),
                                     ),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}