import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_login_model.dart';
export 'bottom_login_model.dart';

class BottomLoginWidget extends StatefulWidget {
  const BottomLoginWidget({Key? key}) : super(key: key);

  @override
  _BottomLoginWidgetState createState() => _BottomLoginWidgetState();
}

class _BottomLoginWidgetState extends State<BottomLoginWidget> {
  late BottomLoginModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomLoginModel());
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
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(1.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: FlutterFlowIconButton(
                borderColor: Color(0x004B39EF),
                borderRadius: 20.0,
                borderWidth: 0.0,
                buttonSize: 40.0,
                fillColor: Color(0x004B39EF),
                icon: Icon(
                  Icons.close,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 30.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '4s68zful' /* 로그인하기 어려우신가요? */,
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Noto Sans N Ko',
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 20.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'qn3hvxy7' /* 소셜 서비스로 로그인 했었는데 지금은 안돼요 */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans N Ko',
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 20.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'wjy2qqmn' /* 로그인했던 소셜 서비스의 계정을 아예 삭제했거나, 비밀... */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 12.0,
                    ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 20.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'tebrdnv5' /* 구글 계정으로 로그인 하려는데 절차가 복잡해요 */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans N Ko',
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 20.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'rzn742f0' /* Google workspace 계정으로 로그인을 시도한... */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 12.0,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
