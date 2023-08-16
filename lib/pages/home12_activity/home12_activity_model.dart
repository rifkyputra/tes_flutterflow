import '/components/stepper_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Home12ActivityModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  double percent = 0.0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // Model for stepper component.
  late StepperModel stepperModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    stepperModel = createModel(context, () => StepperModel());
  }

  void dispose() {
    stepperModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
