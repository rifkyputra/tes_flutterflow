import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkbox_btn_copy_model.dart';
export 'checkbox_btn_copy_model.dart';

class CheckboxBtnCopyWidget extends StatefulWidget {
  const CheckboxBtnCopyWidget({
    Key? key,
    required this.text,
    required this.subtitle,
  }) : super(key: key);

  final String? text;
  final String? subtitle;

  @override
  _CheckboxBtnCopyWidgetState createState() => _CheckboxBtnCopyWidgetState();
}

class _CheckboxBtnCopyWidgetState extends State<CheckboxBtnCopyWidget> {
  late CheckboxBtnCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckboxBtnCopyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
            ),
            child: Checkbox(
              value: _model.checkboxValue ??= true,
              onChanged: (newValue) async {
                setState(() => _model.checkboxValue = newValue!);
              },
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).info,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text!,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Text(
                  widget.subtitle!,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(1.0, 0.0),
            child: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
