import 'package:flutter/material.dart';
import 'select_appointment_type_section.dart';
import 'select_date_section.dart';
import 'select_time_section.dart';

class RescheduleScreenBody extends StatelessWidget {
  const RescheduleScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        SelectDateSection(),
        SizedBox(height: 24),
        SelectTimeSection(),
        SizedBox(height: 32),
        SelectAppointmentTypeSection(),
      ],
    );
  }
}




