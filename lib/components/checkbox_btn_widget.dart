import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkbox_btn_model.dart';
export 'checkbox_btn_model.dart';

class CheckboxBtnWidget extends StatefulWidget {
  const CheckboxBtnWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String? text;

  @override
  _CheckboxBtnWidgetState createState() => _CheckboxBtnWidgetState();
}

class _CheckboxBtnWidgetState extends State<CheckboxBtnWidget> {
  late CheckboxBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckboxBtnModel());
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
            child: Text(
              widget.text!,
              style: FlutterFlowTheme.of(context).bodyMedium,
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
