import 'package:clashroyalestats/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchBar extends HookWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    useListenable(controller);

    return CustomTextField.withClearButton(
      controller: controller,
      onSuffixIconTap: controller.clear,
      hasSuffixIcon: controller.text.isNotEmpty,
      hint: 'Find player or clan',
    );
  }
}
