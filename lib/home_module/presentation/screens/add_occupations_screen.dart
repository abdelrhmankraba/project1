import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:project1/module/presentation/screens/home_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../login_module/presentation/component/component.dart';

class AddOccupationScreen extends StatelessWidget {
  const AddOccupationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      var formKey = GlobalKey<FormState>();
      var facilityName = TextEditingController();
      var address = TextEditingController();
      var ownerName = TextEditingController();
      var phone = OtpFieldController();
      var nationalID = OtpFieldController();
      var fulfilled = TextEditingController();
      var reFulfilled = TextEditingController();
      var notFulfilled = TextEditingController();
      var reNotFulfilled = TextEditingController();
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
            padding: EdgeInsetsDirectional.all(10.sp),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10.sp),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 10.w),
                              child: defaultTextForm(
                                controller: facilityName,
                                keyboardType: TextInputType.emailAddress,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10.sp),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 10.w),
                              child: defaultTextForm(
                                controller: address,
                                keyboardType: TextInputType.emailAddress,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10.sp),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 10.w),
                              child: defaultTextForm(
                                controller: ownerName,
                                keyboardType: TextInputType.emailAddress,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10.sp),
                            ),
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: OTPTextField(
                                controller: phone,
                                isDense: true,
                                length: 11,
                                width: 100.w,
                                onCompleted: (pin) {
                                  print("Completed: " + pin);
                                },
                                otpFieldStyle: OtpFieldStyle(
                                  focusBorderColor: Colors.white,
                                ),
                                textFieldAlignment: MainAxisAlignment.spaceAround,
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
                    style: TextStyle(color: Colors.white, fontSize: 10.sp),
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
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        },
                        otpFieldStyle: OtpFieldStyle(
                          focusBorderColor: Colors.white,
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceBetween,
                        fieldWidth: 5.w,
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
                        onPressed: () {},
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
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera,
                            size: 8.w,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 20.w,
                      ),
                      IconButton(
                          onPressed: () {},
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
                  Row(
                    children: [
                      Text(
                        'مستوفى',
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
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
                                int m = value!.month + 3;
                                fulfilled.text =
                                    value.toString().substring(0, 10);
                                DateTime datetime =
                                    DateTime(value.year, m, value.day);
                                reFulfilled.text =
                                    datetime.toString().substring(0, 10);
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
                            label: '',
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
                  Row(
                    children: [
                      Text(
                        'غير مستوفى',
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 10.w),
                          child: defaultTextForm(
                            controller: notFulfilled,
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
                                int m = value!.month + 1;
                                notFulfilled.text =
                                    value.toString().substring(0, 10);
                                DateTime datetime =
                                DateTime(value.year, m, value.day);
                                reNotFulfilled.text =
                                    datetime.toString().substring(0, 10);
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
                            controller: reNotFulfilled,
                            keyboardType: TextInputType.emailAddress,
                            label: '',
                            prefix: Icons.timer_sharp,
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
                    height: 3.h,
                  ),
                  Container(
                    width: 20.w,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1C30E0),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    padding: const EdgeInsetsDirectional.all(8.0),
                    margin: const EdgeInsets.only(top: 20.0),
                    alignment: Alignment.center,
                    child: MaterialButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:
                                      (BuildContext context) =>
                                  const HomeScreen()));
                        }
                      },
                      child: Text(
                        'حفظ',
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
        ),
      );
    });
  }
}
