import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/data/model/login_request.dart';
import 'package:rabbitevc/features/home/views/home_view.dart';
import 'package:rabbitevc/features/login/cubit/user_cubit.dart';
import 'package:rabbitevc/features/widgets/auth_textfield.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/route/navigator.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/notify_dialog.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
    with AutomaticKeepAliveClientMixin {
  UserCubit get _cubit => BlocProvider.of(context);
  final TextEditingController _numberPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    if (kDebugMode) {
      _numberPhoneController.text = '0969500619';
      _passwordController.text = '123123';
    }
    super.initState();
  }

  @override
  void dispose() {
    _numberPhoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SeparatedColumn(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      children: [
        AuthTextField(
          controller: _numberPhoneController,
          path: IcSvg.icRegisterNumberPhone,
          keyboardType: TextInputType.phone,
          maxLength: 10,
          hintText: 'Nhập số điện thoại',
        ),
        AuthTextField(
          controller: _passwordController,
          path: IcSvg.icRegisterPw,
          obscureText: true,
          hintText: 'Nhập mật khẩu',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: AppButton(
            width: double.infinity,
            height: 56,
            title: 'Đăng nhập',
            onPressed: _onLogin,
          ),
        ),
      ],
      separatorBuilder: () => const SizedBox(height: 16),
    );
  }

  bool _validate() {
    if (_numberPhoneController.text.isEmpty == true) {
      NotifyDialog.showMessage(content: S.text?.error_number_phone_required);
      return false;
    }
    if ((_numberPhoneController.text.length) > 10) {
      NotifyDialog.showMessage(content: S.text?.error_number_phone_validate);
      return false;
    }
    if (_passwordController.text.isEmpty == true) {
      NotifyDialog.showMessage(content: S.text?.error_password_required);
      return false;
    }
    return true;
  }

  void _onLogin() {
    if (_validate()) {
      _cubit.onLogin(
          password: _passwordController.text,
          phone: _numberPhoneController.text);
    }
  }

  @override
  bool get wantKeepAlive => true;
}
