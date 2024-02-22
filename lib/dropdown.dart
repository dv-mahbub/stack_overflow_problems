// import 'package:flutter/material.dart';

// class CustomDropdownCl extends StatefulWidget {
//   const CustomDropdownCl({
//     required this.items,
//     required this.hint,
//     required this.isRequired,
//     this.onChanged,
//     required this.textEditingController, // Yeni eklendi
//     super.key,
//   });

//   final List<String> items;
//   final String hint;
//   final bool isRequired;
//   final ValueChanged<String?>? onChanged;
//   final TextEditingController textEditingController; // Yeni eklendi

//   @override
//   State<CustomDropdownCl> createState() => _CustomDropdownClState();
// }

// class _CustomDropdownClState extends State<CustomDropdownCl> {
//   final focusNode = FocusNode();
//   String? _selectedItem;

//   @override
//   void initState() {
//     super.initState();
//     _selectedItem = widget.textEditingController.text.isEmpty
//         ? null
//         : widget.textEditingController.text;
//   }

//   @override
//   void dispose() {
//     focusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 60,
//       padding: EdgeInsets.zero,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(16)),
//         color: AppColors.RegisterPageTextFieldColor,
//       ),
//       child: Container(
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(16)),
//           color: AppColors.RegisterPageTextFieldColor,
//         ),
//         child: ListenableBuilder(
//           listenable: focusNode,
//           builder: (_, __) {
//             return DropdownButtonHideUnderline(
//               child: DropdownButton2<String>(
//                 focusNode: focusNode,
//                 value: _selectedItem,
//                 style: const TextStyle(
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w400,
//                   color: AppColors.black,
//                 ),
//                 hint: RichText(
//                   text: TextSpan(
//                     text: widget.hint,
//                     style: TextStyle(
//                       color: AppColors.darkGray,
//                     ),
//                     children: [
//                       if (widget.isRequired)
//                         const TextSpan(
//                           text: ' * ',
//                           style: TextStyle(
//                             color: AppColors.darkMagenta,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 isExpanded: true,
//                 items:
//                     widget.items.map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: RichText(
//                       textAlign: TextAlign.center,
//                       text: TextSpan(
//                         text: value,
//                         style: const TextStyle(
//                           color: AppColors.darkGray,
//                           fontSize: 13,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                   );
//                 }).toList(),
//                 onChanged: (newValue) {
//                   setState(() {
//                     _selectedItem = newValue;
//                     widget.textEditingController.text = newValue ?? '';
//                   });

//                   widget.onChanged?.call(newValue);
//                 },
//                 dropdownStyleData: DropdownStyleData(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: AppColors.RegisterPageTextFieldColor,
//                   ),
//                   offset: const Offset(0, -2.3),
//                 ),
//                 menuItemStyleData: const MenuItemStyleData(
//                   padding: EdgeInsets.symmetric(horizontal: 12),
//                 ),
//                 buttonStyleData: ButtonStyleData(
//                   padding: const EdgeInsets.only(right: 10, left: 2),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: const Color(0xFFf6f7fa),
//                     border: focusNode.hasFocus
//                         ? Border.all(color: const Color(0xFFa7a7a8), width: 2)
//                         : null,
//                   ),
//                 ),
//                 iconStyleData: const IconStyleData(
//                   icon: Icon(
//                     Icons.keyboard_arrow_down,
//                     color: AppColors.darkMagenta,
//                   ),
//                   iconSize: 25,
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }