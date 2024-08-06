import 'package:bus_owner/Components/Constants/style_sheet.dart';
import 'package:bus_owner/Services/app_services.dart';

class ConstantSheet {
  ConstantSheet._constructro();
  static final ConstantSheet instance = ConstantSheet._constructro();
  factory ConstantSheet() {
    return instance;
  }

  //  App Service Get
  final _appService = AppServices();
  AppServices get appServices => _appService;

  //  App Text Theme Get
  final _textTheme = AppTextTheme();
  AppTextTheme get textTheme => _textTheme;

  //  App Colors Get
  final _colors = AppColors();
  AppColors get colors => _colors;
}
