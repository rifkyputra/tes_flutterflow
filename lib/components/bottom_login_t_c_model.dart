import '/components/checkbox_btn_copy_widget.dart';
import '/components/checkbox_btn_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BottomLoginTCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for CheckboxBtnCopy component.
  late CheckboxBtnCopyModel checkboxBtnCopyModel;
  // Model for CheckboxBtn component.
  late CheckboxBtnModel checkboxBtnModel1;
  // Model for CheckboxBtn component.
  late CheckboxBtnModel checkboxBtnModel2;
  // Model for CheckboxBtn component.
  late CheckboxBtnModel checkboxBtnModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    checkboxBtnCopyModel = createModel(context, () => CheckboxBtnCopyModel());
    checkboxBtnModel1 = createModel(context, () => CheckboxBtnModel());
    checkboxBtnModel2 = createModel(context, () => CheckboxBtnModel());
    checkboxBtnModel3 = createModel(context, () => CheckboxBtnModel());
  }

  void dispose() {
    checkboxBtnCopyModel.dispose();
    checkboxBtnModel1.dispose();
    checkboxBtnModel2.dispose();
    checkboxBtnModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
