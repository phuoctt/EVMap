import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/data/model/login_request.dart';
import 'package:rabbitevc/features/login/cubit/user_cubit.dart';
import 'package:rabbitevc/features/login/cubit/user_state.dart';
import 'package:rabbitevc/features/widgets/auth_textfield.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/share/extensions/string.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/share/utils/localization_utils.dart';
import 'package:rabbitevc/widget/app_button.dart';
import 'package:rabbitevc/widget/loading_screen.dart';
import 'package:rabbitevc/widget/notify_dialog.dart';
import 'package:rabbitevc/widget/separated_flexible.dart';

class RegisterView extends StatefulWidget {
  final TabController? tabController;

  const RegisterView({
    Key? key,
    this.tabController,
  }) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView>
    with AutomaticKeepAliveClientMixin {
  final TextEditingController _numberPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  UserCubit get _cubit => BlocProvider.of(context);

  @override
  void dispose() {
    _numberPhoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listener: (context, state) {
        if (state is UserRegisterLogged) {
          NotifyDialog.showMessage(
              content: S.text?.auth_register_success,
              isWillPop: false,
              onPressed: _gotoLogin);
        }
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            children: [
              SeparatedColumn(
                children: [
                  Text(
                    'Đăng ký tài khoản để trải nghiệm Rabbit EVC \nngay hôm nay!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontSize: 14, height: 20 / 14),
                  ),
                  AuthTextField(
                    controller: _numberPhoneController,
                    path: IcSvg.icRegisterNumberPhone,
                    hintText: 'Nhập số điện thoại',
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                  ),
                  AuthTextField(
                    controller: _passwordController,
                    path: IcSvg.icRegisterPw,
                    hintText: 'Nhập mật khẩu',
                    obscureText: true,
                  ),
                  AuthTextField(
                    controller: _confirmPasswordController,
                    path: IcSvg.icRegisterPw,
                    hintText: 'Xác nhận lại mật khẩu',
                    obscureText: true,
                  ),
                  AuthTextField(
                    controller: _fullNameController,
                    path: IcSvg.icRegisterName,
                    hintText: 'Nhập họ và tên',
                  ),
                  AuthTextField(
                    controller: _emailController,
                    path: IcSvg.icRegisterEmail,
                    hintText: 'Nhập email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  AuthTextField(
                    controller: _addressController,
                    path: IcSvg.icRegisterAddress,
                    hintText: 'Nhập địa chỉ (không bắt buộc)',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: AppButton(
                      width: double.infinity,
                      height: 56,
                      title: 'Đăng Ký Tài Khoản',
                      onPressed: _onRegister,
                    ),
                  ),
                ],
                separatorBuilder: () => const SizedBox(height: 16),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                          height: 1, color: Colors.white.withOpacity(0.10))),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Text('hoặc',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  ),
                  Expanded(
                      child: Divider(
                          height: 1, color: Colors.white.withOpacity(0.10))),
                ],
              ),
              const SizedBox(height: 16),
              SeparatedRow(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buttonLoginSNS(path: IcSvg.icSnsApple),
                  _buttonLoginSNS(path: IcSvg.icSnsFb),
                  _buttonLoginSNS(path: IcSvg.icSnsGg)
                ],
                separatorBuilder: () => const SizedBox(
                  width: 24,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonLoginSNS({String? path}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          print('object');
        },
        child: Container(
          height: 48,
          width: 48,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withOpacity(0.05)),
          child: SvgPicture.asset(path ?? ''),
        ),
      ),
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
    if (_confirmPasswordController.text.isEmpty == true) {
      NotifyDialog.showMessage(
          content: S.text?.error_confirm_password_required);
      return false;
    }
    if (_passwordController.text.length !=
        _confirmPasswordController.text.length) {
      NotifyDialog.showMessage(
          content: S.text?.error_confirm_password_not_match);
      return false;
    }
    if (_fullNameController.text.isEmpty) {
      NotifyDialog.showMessage(content: S.text?.error_name_required);
      return false;
    }
    if (_emailController.text.isEmpty) {
      NotifyDialog.showMessage(content: S.text?.error_email_required);
      return false;
    }
    if (!_emailController.text.emailValid) {
      NotifyDialog.showMessage(content: S.text?.error_email_validate);
      return false;
    }
    return true;
  }

  Future<void> _onRegister() async{
    if (_validate()) {
      var str = _fullNameController.text;
      var parts = str.split(' ');
      String firstName = '';
      String lastName = ' ';

      if (parts.isNotEmpty) {
        firstName = parts.first;
        if (parts.length > 1) {
          lastName = parts.last;
        }
      }
      Codec<String, String> stringToBase64 = utf8.fuse(base64);

      _cubit.onRegister(LoginRequest(
        phone_number: _numberPhoneController.text,
        password: stringToBase64.encode(_passwordController.text),
        first_name: firstName,
        last_name: lastName,
        email: _emailController.text,
      ));
    }
  }

  void _gotoLogin() {
    widget.tabController?.animateTo(
      1,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
    _numberPhoneController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();
    _fullNameController.clear();
    _emailController.clear();
    _addressController.clear();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
