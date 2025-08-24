import 'package:flutter/material.dart';
import 'package:rabbitevc/features/login/views/login_view.dart';
import 'package:rabbitevc/features/login/views/register_view.dart';
import 'package:rabbitevc/generated_images.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/widget/unfocus.dart';

class AuthScreen extends StatefulWidget {
  static const route = '/auth';
  final bool? isLogin;

  const AuthScreen({
    Key? key,
    this.isLogin,
  }) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
        length: 2, vsync: this, initialIndex: widget.isLogin == true ? 1 : 1);

    _tabController.addListener(() {
      if (_tabController.previousIndex ==
          _tabController.previousIndex.roundToDouble()) {
        if (primaryFocus != null) primaryFocus!.unfocus();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return UnFocus(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(IcPng.imageBackgroundApp),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 8),
                Container(
                  height: 45,
                  width: 260,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(
                      100.0,
                    ),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                      color: AppColors.primaryColor,
                    ),
                    labelColor: Color(0xff042919),
                    labelStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600),
                    unselectedLabelColor: Color(0xff889C93),
                    unselectedLabelStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                    tabs: [
                      Tab(
                        text: 'Đăng ký',
                      ),
                      Tab(
                        text: 'Đăng nhập',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      RegisterView(
                        tabController: _tabController,
                      ),
                      LoginView(),
                    ],
                  ),
                ),
              ],
            ),
          ), /* add child content here */
        ),
      ),
    );
  }
}
