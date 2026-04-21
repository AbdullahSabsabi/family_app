import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/student/domain/models/student_models.dart';
import 'package:flutter/material.dart';

class StudentPaymentScreen extends StatelessWidget {
  final FinancialData financeData;
  const StudentPaymentScreen({super.key, required this.financeData});

  @override
  Widget build(BuildContext context) {
    final contract = financeData.enrollmentContract;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [secondary1.withOpacity(0.3), scaffoldc],
            stops: const [0.0, 0.4],
          ),
        ),
        child: SafeArea(
          child: Column(
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
                            SizedBox(width: 10.h),
                            Text(
                              'الدفعات',
                              style: TextStyle(
                                fontSize: 18.s,
                                fontWeight: FontWeight.w500,
                                color: black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'يمكنك الاطلاع على جميع دفعات\nالطالب خلال هذا العام',
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

              SizedBox(height: 20.h),
              Container(
                color: Colors.transparent,
                height: 120.h,
                width: 221.w,
                child: Column(
                  children: [
                    Text(
                      'نسبة الاستفادة من الحسم ${contract?.discountPercentage?.toStringAsFixed(1)}%',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: black,
                        fontSize: 16.h,
                      ),
                    ),
                    SizedBox(height: 20.h),

                    Row(
                      children: [
                        _buildSummaryCard(
                          'المجموع الكلي',
                          '\$${contract?.totalAmountUsd ?? 0}',
                          pink,
                        ),
                        const SizedBox(width: 20),
                        _buildSummaryCard(
                          'المتبقي',
                          '\$${contract?.remainingAmountUsd ?? 0}',
                          cyan,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.h),

              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    if (financeData.payments != null)
                      ...financeData.payments!.asMap().entries.map((entry) {
                        int index = entry.key;
                        var p = entry.value;

                        return _buildPaymentTile(
                          'دفعة رقم ${index + 1}',
                          p.paidDate ?? '',
                          p.receiptNumber ?? 'N/A',
                          '\$${p.amountUsd}',
                          '',
                          //'\$${financeData.enrollmentContract?.remainingAmountUsd} المتبقي',
                          true,
                        );
                      }),

                    if (financeData.pendingInstallments != null)
                      ...financeData.pendingInstallments!.map(
                        (i) => _buildPaymentTile(
                          'قسط رقم ${i.installmentNumber}',
                          i.dueDate ?? '',
                          'قيد الانتظار',
                          '\$${i.plannedAmountUsd}',
                          '',
                          //'\$${i.remainingAmountUsd} المتبقي',
                          false,
                        ),
                      ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryCard(String title, String price, Color color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18.h),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13.s,
                color: black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              price,
              style: TextStyle(
                color: grey,
                fontWeight: FontWeight.w500,
                fontSize: 12.s,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentTile(
    String title,
    String date,
    String billNum,
    String price,
    String remainingText,
    bool isPaid,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: scaffoldc,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 15.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isPaid ? Colors.green : Colors.red,
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.s,
                            color: black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          size: 12.s,
                          color: grey,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          date,
                          style: TextStyle(color: grey, fontSize: 12.s),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      isPaid ? 'رقم الإيصال: $billNum' : 'الحالة: $billNum',
                      style: TextStyle(color: grey, fontSize: 12.s),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                price,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.s,
                  color: black,
                ),
              ),
              Text(
                remainingText,
                style: TextStyle(
                  color: grey,
                  fontSize: 14.s,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
