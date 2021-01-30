import 'package:clashroyalestats/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchBar extends HookWidget {
  final Function(String) onChanged;
  final Function(String) onSubmitted;

  const SearchBar({
    this.onChanged,
    this.onSubmitted,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return CustomTextField(
      controller: controller,
      hint: 'Find player or clan',
      onChanged: onChanged?.call,
      onSubmitted: onSubmitted?.call,
    );
  }
}
