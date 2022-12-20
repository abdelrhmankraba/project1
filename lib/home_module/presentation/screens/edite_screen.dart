import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:project1/home_module/presentation/controller/home_cubit.dart';
import 'package:sizer/sizer.dart';
import '../../../core/func/filePicker.dart';
import '../../../login_module/presentation/component/component.dart';

late File img;
late File w;
late File s;

class EditeScreen extends StatelessWidget {
  const EditeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      var formKey = GlobalKey<FormState>();
      var facilityName = TextEditingController();
      var address = TextEditingController();
      var ownerName = TextEditingController();
      var cellNumber = TextEditingController();
      var phone = OtpFieldController();
      var nationalID = OtpFieldController();
      var fulfilled = TextEditingController();
      var reFulfilled = TextEditingController();
      late DateTime datetime1;
      late DateTime datetime2;
      int? m;

      return BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFF313232),
              elevation: 0.0,
              centerTitle: true,
              leading: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              title: Text(
                'الاشغالات الصناعيه',
                style: TextStyle(fontSize: 15.sp, color: Colors.white),
              ),
            ),
            backgroundColor: const Color(0xFF3F4048),
            body: Form(
              key: formKey,
              child: Container(
                padding: EdgeInsetsDirectional.all(5.sp),
                child: Row(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'اسم المنشأة',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10.sp),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(left: 10.w),
                                        child: defaultTextForm(
                                          controller: facilityName,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          label: '',
                                          prefix: Icons.email_outlined,
                                          onSubmit: (value) {},
                                          onChange: (value) {},
                                          onTap: () {},
                                          validate: (String? value) {
                                            if (value!.isEmpty) {
                                              return 'ادخل اسم المنشأة';
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'العنوان',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10.sp),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(left: 10.w),
                                        child: defaultTextForm(
                                          controller: address,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          label: '',
                                          prefix: Icons.email_outlined,
                                          onSubmit: (value) {},
                                          onChange: (value) {},
                                          onTap: () {},
                                          validate: (String? value) {
                                            if (value!.isEmpty) {
                                              return 'ادخل العنوان';
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'رقم الخانه',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10.sp),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(left: 10.w),
                                        child: defaultTextForm(
                                          controller: cellNumber,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          label: '',
                                          prefix: Icons.email_outlined,
                                          onSubmit: (value) {},
                                          onChange: (value) {},
                                          onTap: () {},
                                          validate: (String? value) {
                                            if (value!.isEmpty) {
                                              return 'ادخل رقم الخانه';
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'اسم المالك',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10.sp),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(left: 10.w),
                                        child: defaultTextForm(
                                          controller: ownerName,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          label: '',
                                          prefix: Icons.email_outlined,
                                          onSubmit: (value) {},
                                          onChange: (value) {},
                                          onTap: () {},
                                          validate: (String? value) {
                                            if (value!.isEmpty) {
                                              return 'ادخل اسم المالك';
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'رقم الهاتف',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10.sp),
                                      ),
                                      Directionality(
                                        textDirection: TextDirection.ltr,
                                        child: OTPTextField(
                                          keyboardType: TextInputType.phone,
                                          controller: phone,
                                          isDense: true,
                                          length: 11,
                                          width: 100.w,
                                          onCompleted: (String? pin) {
                                            if (kDebugMode) {
                                              print("Completed: $pin");
                                            }
                                          },
                                          onChanged: (String? pin) {},
                                          otpFieldStyle: OtpFieldStyle(
                                            focusBorderColor: Colors.white,
                                          ),
                                          textFieldAlignment:
                                              MainAxisAlignment.spaceAround,
                                          fieldWidth: 5.w,
                                          fieldStyle: FieldStyle.box,
                                          outlineBorderRadius: 5.sp,
                                          style: TextStyle(fontSize: 10.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: .5.h,
                            ),
                            Text(
                              'الرقم القومى',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10.sp),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 70.w),
                              child: Directionality(

                                textDirection: TextDirection.ltr,
                                child: OTPTextField(
                                  isDense: false,
                                  controller: nationalID,
                                  length: 14,
                                  width: 100.w,
                                  keyboardType: TextInputType.phone,
                                  onChanged: (String? pin) {},
                                  onCompleted: (String? pin) {
                                    if (kDebugMode) {
                                      print("Completed: $pin");
                                    }
                                  },
                                  otpFieldStyle: OtpFieldStyle(
                                    focusBorderColor: Colors.white,

                                  ),
                                  textFieldAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  fieldWidth: 4.w,
                                  fieldStyle: FieldStyle.box,
                                  outlineBorderRadius: 5.sp,
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Fun().pickFile1();

                                    // print(file.path);
                                  },
                                  icon: Icon(
                                    Icons.wordpress,
                                    size: 8.w,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Fun().pickFile2();
                                    },
                                    icon: Icon(
                                      Icons.camera,
                                      size: 8.w,
                                      color: Colors.white,
                                    )),
                                SizedBox(
                                  width: 20.w,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Fun().pickFile3();
                                    },
                                    icon: Icon(
                                      Icons.scanner,
                                      size: 8.w,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            //غير مستوفى و مستوفى
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                            activeColor: const Color(0xFF1C30E0),
                                            value: 0,
                                            groupValue:
                                                HomeCubit.get(context).num,
                                            onChanged: (value) {
                                              HomeCubit.get(context)
                                                  .changeRadioBox(value: 0);
                                            }),
                                        Text(
                                          'مستوفى',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.sp),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                            activeColor: const Color(0xFF1C30E0),
                                            value: 1,
                                            groupValue:
                                                HomeCubit.get(context).num,
                                            onChanged: (value) {
                                              HomeCubit.get(context)
                                                  .changeRadioBox(value: 1);
                                            }),
                                        Text(
                                          'غير مستوفى',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(left: 10.w),
                                    child: defaultTextForm(
                                      controller: fulfilled,
                                      keyboardType: TextInputType.datetime,
                                      label: ' موعد الاستلام',
                                      prefix: Icons.date_range_outlined,
                                      onSubmit: (value) {},
                                      onChange: (value) {},
                                      onTap: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.parse('2050-12-10'),
                                        ).then((value) {
                                          if (HomeCubit.get(context).num == 0) {
                                            m = value!.month + 3;
                                          } else {
                                            m = value!.month + 1;
                                          }
                                          datetime1 = DateTime(
                                              value.year, value.month, value.day);
                                          fulfilled.text =
                                              value.toString().substring(0, 10);
                                          datetime2 =
                                              DateTime(value.year, m!, value.day);
                                          print(datetime2);
                                          reFulfilled.text = datetime2
                                              .toString()
                                              .substring(0, 10);
                                        });
                                      },
                                      validate: (String value) {
                                        if (value.isEmpty) {
                                          return 'date must be not empty';
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(left: 10.w),
                                    child: defaultTextForm(
                                      controller: reFulfilled,
                                      keyboardType: TextInputType.emailAddress,
                                      label: 'موعد الانتهاء',
                                      readOnly: true,
                                      prefix: Icons.timer_outlined,
                                      onSubmit: (value) {},
                                      onChange: (value) {},
                                      onTap: () {},
                                      validate: (String? value) {
                                        if (value!.isEmpty) {
                                          return 'Email must be not empty';
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              width: 20.w,
                              decoration: const BoxDecoration(
                                color: Color(0xFF1C30E0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              padding: const EdgeInsetsDirectional.all(8.0),
                              margin: const EdgeInsets.only(top: 20.0),
                              alignment: Alignment.center,
                              child: MaterialButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {}
                                },
                                child: Text(
                                  'تعديل',
                                  style: TextStyle(
                                    height: 1.0,
                                    color: Colors.white,
                                    fontSize: 5.w,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 30.w,
                      child: Column(
                        children: [
                          Text('المنشأت',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),),
                          Expanded(
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) => SingleChildScrollView(
                                padding: EdgeInsetsDirectional.only(start: 2.w, end: 2.w),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_back,
                                          size: 10.sp,
                                        )),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'اسم المنشأة',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              separatorBuilder: (context, index) => Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 20.0,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 2.h,
                                  color: const Color(0xFF3F4048),
                                ),
                              ),
                              itemCount: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
