import '/components/social_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for social component.
  late SocialModel socialModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    socialModel = createModel(context, () => SocialModel());
  }

  void dispose() {
    unfocusNode.dispose();
    socialModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
