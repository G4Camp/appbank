import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Mask {
  static MaskTextInputFormatter cpfMask = MaskTextInputFormatter(
      mask: "###.###.###-##", filter: {"#": RegExp('[0-9]')});
}
