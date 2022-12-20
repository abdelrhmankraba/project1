import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/home_module/presentation/controller/home_cubit.dart';
import 'package:project1/login_module/presentation/component/component.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var searchController = TextEditingController();
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xFF3F4048),
          ),
          body: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  defaultTextForm(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    label: 'Search',
                    prefix: Icons.search,
                    onChange: (value){},
                    onTap: (){},
                    onSubmit: (String text){

                    },
                    validate: (String value){
                      if(value.isEmpty){
                        return 'enter text to search';
                      }
                    },
                  ),
                  const SizedBox(height: 10.0,),
                  if(state is SearchLoadingState)
                    const LinearProgressIndicator(),
                  const SizedBox(height: 10.0,),
                  ///if(state is SearchSuccessState)
                  Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context , index) => Container(),
                        separatorBuilder: (context , index) => Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 20.0,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 1.0,
                            color: Colors.grey[300],
                          ),
                        ),
                        itemCount:10,
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
