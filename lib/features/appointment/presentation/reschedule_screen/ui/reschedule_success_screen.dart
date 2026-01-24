import 'package:flutter/material.dart';


class RescheduleSuccessScreen extends StatelessWidget {
  const RescheduleSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context)),
        title: Text('Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.check_circle, size: 100, color: Colors.green),
            SizedBox(height: 16),
            Text('Booking has been rescheduled', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 32),
            Text('Booking Information', style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.blue),
              title: Text('Date & Time'),
              subtitle: Text('Wednesday, 08 May 2023\n08.30 AM'),
            ),
            ListTile(
              leading: Icon(Icons.videocam, color: Colors.green),
              title: Text('Appointment Type'),
              subtitle: Text('Video Call'),
              trailing: OutlinedButton(onPressed: () {}, child: Text('Get Link')),
            ),
            SizedBox(height: 16),
            Text('Doctor Information', style: TextStyle(fontWeight: FontWeight.bold)),
            Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage('https://via.placeholder.com/150')),
                title: Text('Dr. Randy Wigham'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('General | RSUD Gatot Subroto'),
                    Row(children: [Icon(Icons.star, color: Colors.amber, size: 16), Text(' 4.8 (4.279 reviews)')]),
                  ],
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, padding: EdgeInsets.symmetric(vertical: 16)),
              child: Text('Done', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}