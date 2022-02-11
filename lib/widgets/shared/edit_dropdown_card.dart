import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/dropdown_models.dart';

class EditDropdownCard extends StatefulWidget {
  @override
  _EditDropdownCardState createState() => _EditDropdownCardState();
}

List<String> _items = ["Dog", "Cat", "Crocodile", "Dragon"];
String? _selectedColor;

class _EditDropdownCardState extends State<EditDropdownCard> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text(
        'Tahun Tanggal Lahir',
        style: biodataHint,
      ),
      dropdownColor: backgroundColor,
      elevation: 5,
      icon: SvgPicture.asset(
        'assets/images/ic_dropdown.svg',
      ),
      iconSize: 24,
      isExpanded: true,
      onChanged: (value) {
        setState(() {
          _selectedColor = value;
        });
      },
      value: _selectedColor,
      items: _items.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
