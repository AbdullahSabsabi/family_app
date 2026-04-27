import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/notifications/domain/models/notification_model.dart';
import 'package:familyapp/features/notifications/presentation/cubit/notifications_cubit.dart';
import 'package:familyapp/features/notifications/presentation/cubit/notifications_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    context.read<NotificationsCubit>().getNotifications();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      final state = context.read<NotificationsCubit>().state;
      if (state is NotificationsSuccess && !state.isLoadingMore) {
        if (state.meta != null &&
            state.meta!.currentPage < state.meta!.lastPage) {
          if (_isSearching) {
            context.read<NotificationsCubit>().searchNotifications(
              _searchController.text,
              page: state.meta!.currentPage + 1,
            );
          } else {
            context.read<NotificationsCubit>().getNotifications(
              page: state.meta!.currentPage + 1,
            );
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldc,

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [secondary1.withOpacity(0.1), scaffoldc],
            stops: const [0.0, 0.4],
          ),
        ),
        child: SafeArea(
          child: BlocBuilder<NotificationsCubit, NotificationsState>(
            builder: (context, state) {
              return Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.w,
                          vertical: 30.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => Navigator.pop(context),
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    size: 20.s,
                                    color: black,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  'الاشعارات',
                                  style: TextStyle(
                                    fontSize: 18.s,
                                    fontWeight: FontWeight.w500,
                                    color: black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'يمكنك الاطلاع على الاشعارات الخاصة\nبالطالب',
                              style: TextStyle(
                                color: grey,
                                fontSize: 14.s,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 231, 231, 231),
                        thickness: 3,
                      ),
                    ],
                  ),
                  Expanded(child: _buildContent(state)),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildContent(NotificationsState state) {
    if (state is NotificationsLoading) {
      return _buildSkeletonList();
    }

    if (state is NotificationsError) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 50.s, color: grey),
            SizedBox(height: 10.h),
            Text(
              state.message,
              style: TextStyle(
                fontSize: 14.s,
                fontWeight: FontWeight.w500,
                color: grey1,
                fontFamily: 'Tajwal',
              ),
            ),
            TextButton(
              onPressed: () =>
                  context.read<NotificationsCubit>().getNotifications(),
              child: const Text(
                'إعادة المحاولة',
                style: TextStyle(fontFamily: 'Tajwal'),
              ),
            ),
          ],
        ),
      );
    }

    if (state is NotificationsSuccess) {
      if (state.notifications.isEmpty) {
        return _buildEmptyState();
      }

      return RefreshIndicator(
        onRefresh: () async {
          context.read<NotificationsCubit>().getNotifications();
        },
        child: ListView.builder(
          controller: _scrollController,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          itemCount: state.notifications.length + (state.isLoadingMore ? 1 : 0),
          itemBuilder: (context, index) {
            if (index < state.notifications.length) {
              return _buildNotificationCard(state.notifications[index]);
            } else {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(color: primary),
                ),
              );
            }
          },
        ),
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildNotificationCard(NotificationModel notification) {
    final hasAttachments = notification.attachments.isNotEmpty;

    return Container(
      width: double.infinity,
      color: notification.isRead
          ? Colors.transparent
          : secondary1.withOpacity(0.3),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (!notification.isRead) {
                  context.read<NotificationsCubit>().markAsRead(
                    notification.receptionId,
                  );
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (hasAttachments)
                        Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Icon(
                            Icons.attachment,
                            color: primary,
                            size: 18.s,
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    notification.body,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.s,
                      color: black.withOpacity(0.8),
                      height: 1.6,
                      fontFamily: 'Tajwal',
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10.w),
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert, color: grey, size: 22.s),
            onSelected: (value) async {
              if (value == 'delete') {
                _showDeleteConfirmation(notification.receptionId);
              } else if (value == 'read') {
                context.read<NotificationsCubit>().markAsRead(
                  notification.receptionId,
                );
              } else if (value == 'download') {
                final url = Uri.parse(notification.attachments.first.url);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                }
              }
            },
            offset: const Offset(0, 30),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            itemBuilder: (context) => [
              if (hasAttachments)
                PopupMenuItem(
                  value: 'download',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.download_for_offline_outlined,
                        color: primary,
                        size: 20.s,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        'تحميل المرفق',
                        style: TextStyle(
                          color: primary,
                          fontSize: 14.s,
                          fontFamily: 'Tajwal',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              PopupMenuItem(
                value: 'read',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.mark_email_read_outlined,
                      color: black,
                      size: 20.s,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'مقروء',
                      style: TextStyle(
                        color: black,
                        fontSize: 14.s,
                        fontFamily: 'Tajwal',
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.delete_outline, color: Colors.red, size: 20.s),
                    SizedBox(width: 10.w),
                    Text(
                      'حذف',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14.s,
                        fontFamily: 'Tajwal',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkeletonList() {
    return Skeletonizer(
      enabled: true,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.all(15.s),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              children: [
                CircleAvatar(radius: 20.r),
                SizedBox(width: 15.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 150.w, height: 15.h, color: white),
                      SizedBox(height: 8.h),
                      Container(
                        width: double.infinity,
                        height: 12.h,
                        color: white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.notifications_off_outlined, size: 80.s, color: grey3),
          SizedBox(height: 20.h),
          Text(
            'لا توجد إشعارات حالياً',
            style: TextStyle(
              fontSize: 18.s,
              color: grey,
              fontWeight: FontWeight.bold,
              fontFamily: 'Tajwal',
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'ستظهر هنا الإشعارات الجديدة التي تصلك',
            style: TextStyle(fontSize: 14.s, color: grey, fontFamily: 'Tajwal'),
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirmation(int receptionId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'تأكيد الحذف',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontFamily: 'Tajwal',
            fontSize: 18.s,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text(
          'هل أنت متأكد من حذف هذا الإشعار؟',
          textAlign: TextAlign.right,
          style: TextStyle(fontFamily: 'Tajwal', fontSize: 14.s),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'إلغاء',
              style: TextStyle(fontFamily: 'Tajwal', color: grey),
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<NotificationsCubit>().deleteNotification(
                receptionId,
              );
              Navigator.pop(context);
              ScaffoldMessenger.of(this.context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'تم حذف الإشعار بنجاح',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontFamily: 'Tajwal'),
                  ),
                  backgroundColor: primary,
                ),
              );
            },
            child: const Text(
              'حذف',
              style: TextStyle(fontFamily: 'Tajwal', color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
