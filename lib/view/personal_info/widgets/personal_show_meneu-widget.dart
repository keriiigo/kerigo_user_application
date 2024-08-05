import 'package:flutter/material.dart';
// import 'package:kerigo_user_app/controler/provider/personal_info_provider/personal_info_provider.dart';
// import 'package:provider/provider.dart';

// class PersonalShowMeneuWidget extends StatelessWidget {
//   const PersonalShowMeneuWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<PersonalInfoProvider>(
//       builder: (context, dropdownProvider, child) {
//         return DropdownButton<String>(
//           value: dropdownProvider.selectedValue,
//           onChanged: (String? newValue) {
//             if (newValue != null) {
//               dropdownProvider.setSelectedValue(newValue);
//             }
//           },
//           items: <String>['One', 'Two', 'Three', 'Four']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         );
//       },
//     );
//   }
// }

// class DropDownAndRadio extends StatefulWidget {
//   @override
//   _DropDownAndRadioState createState() => _DropDownAndRadioState();
// }

// class _DropDownAndRadioState extends State<DropDownAndRadio> {
//   String dropdownValue = 'Option 1';
//   String? selectedGender;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           DropdownButton<String>(
//             value: dropdownValue,
//             onChanged: (String? newValue) {
//               setState(() {
//                 dropdownValue = newValue!;
//               });
//             },
//             items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
//                 .map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//           ),
//           SizedBox(height: 20),
//           Text('Select Gender:', style: TextStyle(fontSize: 16)),
//           ListTile(
//             title: const Text('Male'),
//             leading: Radio<String>(
//               value: 'Male',
//               groupValue: selectedGender,
//               onChanged: (String? value) {
//                 setState(() {
//                   selectedGender = value;
//                 });
//               },
//             ),
//           ),
//           ListTile(
//             title: const Text('Female'),
//             leading: Radio<String>(
//               value: 'Female',
//               groupValue: selectedGender,
//               onChanged: (String? value) {
//                 setState(() {
//                   selectedGender = value;
//                 });
//               },
//             ),
//           ),
//           ListTile(
//             title: const Text('Other'),
//             leading: Radio<String>(
//               value: 'Other',
//               groupValue: selectedGender,
//               onChanged: (String? value) {
//                 setState(() {
//                   selectedGender = value;
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:kerigo_user_app/controler/provider/personal_info_provider/personal_info_provider.dart';
import 'package:provider/provider.dart';

class DropDownAndRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PersonalInfoProvider>(
      builder: (context, selectionProvider, child) {
        return SizedBox(
          height: 200,
          child: Column(
            children: [
              ListTile(
                title: const Text('Male'),
                leading: Radio<String>(
                  value: 'Male',
                  groupValue: selectionProvider.selectedGender,
                  onChanged: (String? value) {
                    selectionProvider.setSelectedGender(value);
                    Navigator.pop(context);
                  },
                ),
              ),
              ListTile(
                title: const Text('Female'),
                leading: Radio<String>(
                  value: 'Female',
                  groupValue: selectionProvider.selectedGender,
                  onChanged: (String? value) {
                    selectionProvider.setSelectedGender(value);
                    Navigator.pop(context);
                  },
                ),
              ),
              ListTile(
                title: const Text('Other'),
                leading: Radio<String>(
                  value: 'Other',
                  groupValue: selectionProvider.selectedGender,
                  onChanged: (String? value) {
                    selectionProvider.setSelectedGender(value);
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
