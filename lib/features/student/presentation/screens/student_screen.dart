import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/core/widgets/double_back_to_exit.dart';
import 'package:familyapp/features/notifications/presentation/cubit/notifications_cubit.dart';
import 'package:familyapp/features/notifications/presentation/cubit/notifications_state.dart';
import 'package:familyapp/features/student/presentation/cubit/student_cubit.dart';
import 'package:familyapp/features/student/presentation/cubit/student_state.dart';
import 'package:familyapp/features/student/presentation/widget&&functions/fun.dart';
import 'package:familyapp/family_app.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_state.dart';
import 'package:familyapp/features/notifications/presentation/screens/notifications_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:familyapp/features/qr_code/data/repo/qr_repository.dart';
import 'package:familyapp/features/qr_code/presentation/cubit/qr_code_cubit.dart';
import 'package:familyapp/features/qr_code/presentation/screens/scan_qr_screen.dart';
import 'package:familyapp/features/qr_code/presentation/screens/show_qr_screen.dart';
import 'package:familyapp/core/helper/dependency_injection.dart';

import '../widget&&functions/fun.dart'
    show menu, header, qrButton, TooltipShape;

class StudentScreen extends StatefulWidget {
  final dynamic id;
  const StudentScreen({super.key, required this.id});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  Offset? _qrPosition;
  bool _isMenuOpen = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    context.read<StudentCubit>().getStudentDetails(widget.id);
    context.read<NotificationsCubit>().getUnreadCount();
  }

  @override
  Widget build(BuildContext context) {
    return DoubleBackToExit(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [secondary1.withOpacity(0.1), scaffoldc],
              stops: [0.0, 0.4],
            ),
          ),
          child: BlocConsumer<StudentCubit, StudentState>(
            listener: (context, state) {
              if (state is StudentSuccess && state.errorMessage != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      state.errorMessage!,
                      style: const TextStyle(fontFamily: 'Tajwal'),
                    ),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
            },
            builder: (context, state) {
              StudentDataContainer? currentStudentData;
              if (state is StudentSuccess) {
                currentStudentData = state.cachedStudents[widget.id];
              }

              // Handle error state when no cache is available
              if (state is StudentError && currentStudentData == null) {
                return _buildOfflineErrorWidget(state.message);
              }

              bool isLoading =
                  state is StudentLoading || state is StudentInitial;
              if (state is StudentSuccess && currentStudentData == null) {
                isLoading = true;
              }

              final isOffline = state is StudentSuccess && state.isOffline;

              final profile = currentStudentData?.profile.data;
              final evaluations =
                  currentStudentData?.evaluations.data?.evaluations ?? {};
              final finance = currentStudentData?.finance.data;
              final exams = currentStudentData?.exams.data;

              return Stack(
                children: [
                  Skeletonizer(
                    enabled: isLoading,
                    child: RefreshIndicator(
                      onRefresh: () async => _loadData(),
                      color: primary,
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 60.h),

                            // if (isOffline && currentStudentData != null)
                            //   _buildOfflineBanner(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: header(profile, context)),
                                BlocBuilder<AuthCubit, AuthState>(
                                  builder: (context, authState) {
                                    if (authState is AuthSuccess) {
                                      final isFamily =
                                          authState.authResponse.data?.user.type
                                              .toLowerCase()
                                              .contains('family') ??
                                          false;

                                      if (isFamily) {
                                        return BlocBuilder<
                                          NotificationsCubit,
                                          NotificationsState
                                        >(
                                          builder: (context, notificationState) {
                                            int unreadCount = 0;
                                            if (notificationState
                                                is NotificationsSuccess) {
                                              unreadCount =
                                                  notificationState.unreadCount;
                                            }
                                            return Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                IconButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            NotificationScreen(
                                                              studentId:
                                                                  widget.id
                                                                      is int
                                                                  ? widget.id
                                                                  : int.tryParse(
                                                                      widget.id
                                                                          .toString(),
                                                                    ),
                                                            ),
                                                      ),
                                                    );
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .notifications_active_outlined,
                                                    color: black,
                                                    size: 28.s,
                                                  ),
                                                ),
                                                if (unreadCount > 0)
                                                  Positioned(
                                                    right: 8,
                                                    top: 8,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: Colors.white,
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                      constraints:
                                                          BoxConstraints(
                                                            minWidth: 16.s,
                                                            minHeight: 16.s,
                                                          ),
                                                      child: Center(
                                                        child: Text(
                                                          unreadCount > 99
                                                              ? '99+'
                                                              : unreadCount
                                                                    .toString(),
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 8.s,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'Tajwal',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    }
                                    return const SizedBox.shrink();
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 50.h),
                            menu(context, finance, exams, widget.id),
                            SizedBox(height: 30.h),
                            MyFunS().chart(evaluations),
                            SizedBox(height: 10.h),
                            MyFunS().payments(finance, context),
                            SizedBox(height: 20.h),
                            MyFunS().exams(context, exams, widget.id),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (isLoading && currentStudentData != null)
                    Positioned(
                      top: 50.h,
                      left: 20.w,
                      child: SizedBox(
                        width: 15.w,
                        height: 15.h,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: primary,
                        ),
                      ),
                    ),
                  if (profile != null)
                    if (_isMenuOpen)
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isMenuOpen = false;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ),
                  if (profile != null)
                    Positioned(
                      left: _qrPosition?.dx ?? 40.w,
                      top:
                          _qrPosition?.dy ??
                          (MediaQuery.of(context).size.height - 90.h),
                      child: GestureDetector(
                        onPanUpdate: (details) {
                          setState(() {
                            double newX =
                                (_qrPosition?.dx ?? 40.w) + details.delta.dx;
                            double newY =
                                (_qrPosition?.dy ??
                                    (MediaQuery.of(context).size.height -
                                        90.h)) +
                                details.delta.dy;

                            // Get screen dimensions
                            final Size screenSize = MediaQuery.of(context).size;
                            final double buttonSize =
                                60.s; // Matches the actual button size

                            // Keep button within screen bounds
                            newX = newX.clamp(
                              10.w,
                              screenSize.width - buttonSize - 10.w,
                            );
                            newY = newY.clamp(
                              60.h,
                              screenSize.height - buttonSize - 20.h,
                            );

                            _qrPosition = Offset(newX, newY);
                          });
                        },
                        child: qrButton(
                          profile,
                          context,
                          onTap: () async {
                            setState(() {
                              _isMenuOpen = true;
                            });

                            final result = await showMenu<String>(
                              context: context,
                              shape: const TooltipShape(),
                              position: RelativeRect.fromLTRB(
                                _qrPosition?.dx ?? 40.w,
                                (_qrPosition?.dy ??
                                        (MediaQuery.of(context).size.height -
                                            90.h)) -
                                    110.h,
                                (_qrPosition?.dx ?? 40.w) + 60.s,
                                _qrPosition?.dy ??
                                    (MediaQuery.of(context).size.height - 90.h),
                              ),
                              items: [
                                PopupMenuItem(
                                  value: 'scan',
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.qr_code_scanner,
                                        color: primary,
                                        size: 20.s,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'مسح QR',
                                        style: TextStyle(fontSize: 14.s),
                                      ),
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 'show',
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.qr_code,
                                        color: primary,
                                        size: 20.s,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'عرض QR',
                                        style: TextStyle(fontSize: 14.s),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );

                            if (context.mounted) {
                              setState(() {
                                _isMenuOpen = false;
                              });
                            }

                            if (result == 'show') {
                              context.read<QrCodeCubit>().getQrUrl(profile.id!);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShowQrScreen(
                                    qrUrl: getIt<QrRepository>().getQrCodeUrl(
                                      profile.id!,
                                    ),
                                    studentName: profile.fullName ?? '',
                                    profilePhoto: profile.profilePhoto,
                                    studentId: profile.id,
                                  ),
                                ),
                              );
                            } else if (result == 'scan') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ScanQrScreen(),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  // Widget _buildOfflineBanner() {
  //   return Container(
  //     width: double.infinity,
  //     margin: EdgeInsets.only(bottom: 20.h),
  //     padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
  //     decoration: BoxDecoration(
  //       color: Colors.orange.withOpacity(0.1),
  //       borderRadius: BorderRadius.circular(10.r),
  //       border: Border.all(color: Colors.orange.withOpacity(0.2)),
  //     ),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Icon(Icons.wifi_off_rounded, size: 16.s, color: Colors.orange[800]),
  //         SizedBox(width: 10.w),
  //         Text(
  //           'أنت في وضع عدم الاتصال - يتم عرض البيانات المخزنة',
  //           style: TextStyle(
  //             fontSize: 12.s,
  //             color: Colors.orange[800],
  //             fontWeight: FontWeight.w600,
  //             fontFamily: 'Tajwal',
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildOfflineErrorWidget(String message) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(40.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20.s),
              decoration: BoxDecoration(
                color: primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.cloud_off_rounded, size: 80.s, color: primary),
            ),
            SizedBox(height: 30.h),
            Text(
              'لا يوجد اتصال بالإنترنت',
              style: TextStyle(
                fontSize: 22.s,
                fontWeight: FontWeight.bold,
                color: black,
                fontFamily: 'Tajwal',
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              'لا يمكننا الوصول إلى البيانات حالياً ولا توجد نسخة مخزنة على جهازك. يرجى التأكد من الاتصال بالشبكة.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.s,
                color: grey,
                height: 1.5,
                fontFamily: 'Tajwal',
              ),
            ),
            SizedBox(height: 40.h),
            ElevatedButton.icon(
              onPressed: () => _loadData(),
              icon: const Icon(Icons.refresh_rounded, color: Colors.white),
              label: const Text(
                'إعادة المحاولة',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Tajwal',
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
