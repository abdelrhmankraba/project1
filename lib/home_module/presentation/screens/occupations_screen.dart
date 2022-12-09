import 'package:flutter/material.dart';
import 'package:project1/home_module/presentation/screens/add_occupations_screen.dart';
import 'package:sizer/sizer.dart';

class Occupations extends StatelessWidget {
  const Occupations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xFF313232),
          leading: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ),
        body: Container(
          color: const Color(0xFF3F4048),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsetsDirectional.all(30.0),
                          padding: const EdgeInsetsDirectional.all(10.0),
                          decoration: const BoxDecoration(
                            color: Color(0xFF313232),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: const Text(
                            'الاشغالات مركز قنا',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          margin: const EdgeInsetsDirectional.all(20.0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 5.0),
                          decoration: const BoxDecoration(
                            color: Color(0xFF1C30E0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child:Text(
                              'اضافه',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 80.w,
                          margin: const EdgeInsetsDirectional.all(20.0),
                          padding: const EdgeInsetsDirectional.all(10.0),
                          decoration: const BoxDecoration(
                            color: Color(0xFF313232),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: const Text(
                            '',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsetsDirectional.all(30.sp),
                          padding: EdgeInsets.all(10.sp),
                          child: GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 3,
                            mainAxisSpacing: 3.h,
                            crossAxisSpacing: 10.w,
                            childAspectRatio: 1 / 0.6,
                            children: List.generate(
                              12,
                              (index) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(40.sp),bottom: Radius.circular(10.sp)),
                                  color: const Color(0xFF313232),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'صناعيه',
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight:FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 2.h,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext context) =>
                                                    const AddOccupationScreen()));
                                          },
                                          child:Text(
                                            'اضافه',
                                            style: TextStyle(
                                              color: const Color(0xFF1C30E0),
                                              fontSize: 14.sp,

                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5.w,),
                                        MaterialButton(
                                          onPressed: () {},
                                          child:Text(
                                            'حذف',
                                            style: TextStyle(
                                              color:Colors.red,
                                              fontSize: 14.sp,

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      );
    });
  }
}
