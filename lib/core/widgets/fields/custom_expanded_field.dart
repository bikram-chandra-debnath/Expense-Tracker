
import 'package:expense_tracker/core/constants/colors.dart';
import 'package:expense_tracker/core/widgets/fields/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppExpandedField extends GetView<AppExpandedFieldController> {
  const AppExpandedField({
    super.key,
    required this.hintText,
    this.readOnly = false,
    this.fieldcontroller, this.expandedWidget,
  });

  final String hintText;
  final bool readOnly;
  final TextEditingController? fieldcontroller;
  final Widget? expandedWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => AppFormField(
            controller: fieldcontroller,
            readOnly: readOnly,
            hintText: hintText,
            borderRadius: BorderRadius.vertical(
              top: const Radius.circular(12),
              bottom: controller.isExpanded(hintText)
                  ? const Radius.circular(0)
                  : const Radius.circular(12),
            ),
            onTap: () => controller.toggleField(hintText),
            suffixIcon: const Icon(
              CupertinoIcons.chevron_down,
              color: AppColors.outline,
              size: 16,
            ),
          ),
        ),
        Obx(
          () => controller.isExpanded(hintText)
              ? Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(12),
                    ),
                  ),
                  child: expandedWidget,
                )
              : const SizedBox(),
        ),
      ],
    );
  }
}


class AppExpandedFieldController extends GetxController {
  
  var expandedField = RxnString();

  void toggleField(String fieldKey) {
    if (expandedField.value == fieldKey) {
      expandedField.value = null; // collapse if already open
    } else {
      expandedField.value = fieldKey; // open new field, auto-closes others
    }
  }

  bool isExpanded(String fieldKey) => expandedField.value == fieldKey;
}
