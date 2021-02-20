import 'package:flutter/material.dart';
import 'package:github_users/app/data/models/user_model.dart';

import '../home_controller.dart';

class UsersListComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UserModel>>(
      stream: HomeController.to.streamController,
      initialData: [],
      builder: (_, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Ocorreu algum erro inesperado!'));
        } else if (snapshot.data == null) {
          return Center(child: Text('Nenhum usuário a exibir'));
        } else if (snapshot.data.length == 0) {
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Color(0xFF083854),
              ),
            ),
          );
        } else {
          return ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 16),
            separatorBuilder: (_, __) => SizedBox(height: 16),
            itemCount: snapshot.data.length,
            itemBuilder: (_, index) {
              return Container(
                height: 90,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 4,
                      color: Colors.black.withOpacity(.1),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 100,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                          image: NetworkImage(
                            '${snapshot.data[index].avatarUrl}',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${snapshot.data[index].login}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    HomeController.to.launchURL(
                                        snapshot.data[index].htmlUrl);
                                  },
                                  child: Text(
                                    '${snapshot.data[index].htmlUrl}',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(.3),
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 10,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontSize: 6,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black.withOpacity(.1),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.yellow,
                                    size: 10,
                                  ),
                                  Text(
                                    '4.6 km',
                                    style: TextStyle(
                                      fontSize: 6,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [

                    //   ],
                    // ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}
