import '/components/checkbox_btn_copy_widget.dart';
import '/components/checkbox_btn_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_login_t_c_model.dart';
export 'bottom_login_t_c_model.dart';

class BottomLoginTCWidget extends StatefulWidget {
  const BottomLoginTCWidget({Key? key}) : super(key: key);

  @override
  _BottomLoginTCWidgetState createState() => _BottomLoginTCWidgetState();
}

class _BottomLoginTCWidgetState extends State<BottomLoginTCWidget> {
  late BottomLoginTCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomLoginTCModel());
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: AlignmentDirectional(1.0, -1.0),
            child: FlutterFlowIconButton(
              borderColor: Color(0x004B39EF),
              borderRadius: 20.0,
              borderWidth: 0.0,
              buttonSize: 40.0,
              fillColor: Color(0x004B39EF),
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.checkboxBtnCopyModel,
              updateCallback: () => setState(() {}),
              child: CheckboxBtnCopyWidget(
                text: '약관 전체동의',
                subtitle: '서비스 이용을 위해 아래 약관에 모두 동의합니다.',
              ),
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.checkboxBtnModel1,
              updateCallback: () => setState(() {}),
              child: CheckboxBtnWidget(
                text: '(필수) 개인정보 처리방침 동의',
              ),
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.checkboxBtnModel2,
              updateCallback: () => setState(() {}),
              child: CheckboxBtnWidget(
                text: '(필수) 개인정보 제3자 정보제공 동의',
              ),
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.checkboxBtnModel3,
              updateCallback: () => setState(() {}),
              child: CheckboxBtnWidget(
                text: '(선택) 마케팅 수신 동의',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: FFLocalizations.of(context).getText(
                '89yvdd88' /* 확인 */,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
