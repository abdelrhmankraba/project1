import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30.0,
          onPressed: () {},
          icon: const Icon(Icons.search),

          color: Colors.white,

        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3F4048),
        elevation: 0.0,
        title: const Text('قسم الوقايه',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40.0,
        ),),
      ),
      body: Container(
        padding: const EdgeInsetsDirectional.all(30.0),
        color: const Color(0xFF3F4048),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Container(
                     padding: EdgeInsetsDirectional.all(10.0),
                     decoration: const BoxDecoration(
                       color: Color(0xFF1C30E0),
                       borderRadius:
                       BorderRadius.all(Radius.circular(20.0)),
                     ),
                     child: const Text(
                       'غير مستوفى',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30.0,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                  const SizedBox(height: 20.0,),
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'اسم المنشاة',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            '22/11/2022',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
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
                          height: 30.0,
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
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
              ),
              child: Container(
                height: double.infinity,
                width: 3.0,
                color: const Color(0xFF222224),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.all(10.0),
                    decoration: const BoxDecoration(
                      color: Color(0xFF1C30E0),
                      borderRadius:
                      BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: const Text(
                      ' مستوفى',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => Row(
                        children: const [
                          Text(
                            'اسم المنشاة',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            '22/11/2022',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
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
                          height: 30.0,
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
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
              ),
              child: Container(
                height: double.infinity,
                width: 3.0,
                color: const Color(0xFF222224),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'المنطقه المركزيه',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'ابوتشت',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
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
                          height: 30.0,
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
    );
  }
}
