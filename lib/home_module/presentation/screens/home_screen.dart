import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            iconSize: 13.sp,
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF3F4048),
          elevation: 0.0,
          title: Text(
            'قسم الوقايه',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsetsDirectional.all(10.sp),
          color: const Color(0xFF3F4048),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.all(5.sp),
                      decoration:  BoxDecoration(
                        color: const Color(0xFF1C30E0),
                        borderRadius: BorderRadius.all(Radius.circular(15.sp)),
                      ),
                      child: Text(
                        'غير مستوفى',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'اسم المنشاة',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(
                                width: 2.5.w,
                              ),
                              Text(
                                '22/11/2022',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(
                                width: 2.5.w,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                  child: IconButton(
                                    color: Colors.black,
                                      onPressed: () {},
                                      icon: const Icon(Icons.check)
                                  )),
                              SizedBox(
                                width: 1.w,
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                      color: Colors.black,
                                      onPressed: () {},
                                      icon: const Icon(Icons.close)
                                  )),
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) => Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 20.0,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 3.h,
                            color: const Color(0xFF3F4048),
                          ),
                        ),
                        itemCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:EdgeInsetsDirectional.only(
                  start: 5.sp,
                ),
                child: Container(
                  height: double.infinity,
                  width: 3.0,
                  color: const Color(0xFF222224),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.all(5.sp),
                      decoration:BoxDecoration(
                        color: const Color(0xFF1C30E0),
                        borderRadius: BorderRadius.all(Radius.circular(10.sp)),
                      ),
                      child: Text(
                        ' مستوفى',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children:[
                              Text(
                                'اسم المنشاة',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(
                                width: 2.5.w,
                              ),
                              Text(
                                '22/11/2022',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(
                                width: 2.5.w,
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                      color: Colors.black,
                                      onPressed: () {},
                                      icon: const Icon(Icons.check)
                                  )),
                              SizedBox(
                                width: 1.w,
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                      color: Colors.black,
                                      onPressed: () {},
                                      icon: const Icon(Icons.close)
                                  )),
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) => Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 20.0,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 3.h,
                            color: const Color(0xFF3F4048),
                          ),
                        ),
                        itemCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:EdgeInsetsDirectional.only(
                  start: 5.sp,
                ),
                child: Container(
                  height: double.infinity,
                  width: 3.0,
                  color: const Color(0xFF222224),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'المنطقه المركزيه',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 1.w,),
                              CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                      color: Colors.black,
                                      onPressed: () {},
                                      icon: const Icon(Icons.add)
                                  )),

                            ],
                          ),
                          Expanded(
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'مركز قنا',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 9.sp,
                                    ),
                                  ),
                                ],
                              ),
                              separatorBuilder: (context, index) => Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 20.0,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 1.h,
                                  color: const Color(0xFF3F4048),
                                ),
                              ),
                              itemCount: 5,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'المنطقه الجنوبيه',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 1.w,),
                              CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                      color: Colors.black,
                                      onPressed: () {},
                                      icon: const Icon(Icons.add)
                                  )),
                            ],
                          ),
                          Expanded(
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'نقاده',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 9.sp,
                                    ),
                                  ),
                                ],
                              ),
                              separatorBuilder: (context, index) => Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 20.0,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 1.h,
                                  color: const Color(0xFF3F4048),
                                ),
                              ),
                              itemCount: 5,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'المنطقه الشماليه',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 1.w,),
                              CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                      color: Colors.black,
                                      onPressed: () {},
                                      icon: const Icon(Icons.add)
                                  )),
                            ],
                          ),
                          Expanded(
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'ابوتشت',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 9.sp,
                                    ),
                                  ),
                                ],
                              ),
                              separatorBuilder: (context, index) => Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 20.0,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 1.h,
                                  color: const Color(0xFF3F4048),
                                ),
                              ),
                              itemCount: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 10.w,
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
