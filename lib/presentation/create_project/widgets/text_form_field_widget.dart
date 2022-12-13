import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module/ui_utils/app_assets.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String labelText;

  const TextFormFieldWidget({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  var textFieldAlign = TextAlign.right;
  final focusNode = FocusNode();
  final controller = TextEditingController(text: '100');

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: theme.primaryColor),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 36,
                width: 36,
                padding: const EdgeInsets.all(4),
                color: theme.primaryColor,
                child: SvgPicture.asset(AppAssets.placeholderIcon),
              ),
              const SizedBox(width: 10),
              Text(
                widget.labelText.toUpperCase(),
                style: theme.textTheme.labelMedium,
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  focusNode: focusNode,
                  controller: controller,
                  keyboardType: TextInputType.number,
                  textAlign: textFieldAlign,
                  decoration: InputDecoration(
                    fillColor: theme.primaryColor,
                    filled: focusNode.hasFocus ? true : false,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: !focusNode.hasFocus
                      ? theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 44,
                        )
                      : theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                  onTap: () {
                    setState(
                      () {
                        focusNode.requestFocus();
                        textFieldAlign = !focusNode.hasFocus
                            ? TextAlign.left
                            : TextAlign.right;
                        controller.selection = TextSelection.fromPosition(
                          TextPosition(offset: controller.text.length),
                        );
                      },
                    );
                  },
                  onFieldSubmitted: (text) {
                    setState(
                      () {
                        focusNode.unfocus();
                        textFieldAlign = !focusNode.hasFocus
                            ? TextAlign.left
                            : TextAlign.right;
                      },
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
