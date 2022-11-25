import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5.0,
        margin: EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)
                      {
                        return StoryItem();
                      },
                      separatorBuilder: (context,index) => const SizedBox(width: 10,),
                      itemCount: 10,
                  ),
                ),
                SizedBox(height: 10,),

              /*  ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) => PostItem(context),
                  separatorBuilder: (context,index) => const SizedBox(height: 8.0,),
                  itemCount: 10,
                ),*/
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("owner",style: TextStyle(fontWeight: FontWeight.bold,height: 1.4),),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "3h",
                                  style: Theme.of(context).textTheme.caption?.copyWith(height: 1.4),
                                ),
                                SizedBox(width: 5,),
                                Icon(
                                  Icons.check_circle,
                                  size: 16,
                                ),
                              ],
                            ),
                          ],

                        ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Container(
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey[300],
                  ),
                ),
                Text("My Post",style: Theme.of(context).textTheme.subtitle1,),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Row(
                              children: [
                                Text("100",style: Theme.of(context).textTheme.caption,),
                                SizedBox(width: 5,),
                                Icon(
                                  CupertinoIcons.heart_fill,
                                ),

                              ],
                            ),
                          ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("100 Comments",style: Theme.of(context).textTheme.bodyText1,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children:
                          [
                            Icon(
                              CupertinoIcons.heart,
                            ),
                            SizedBox(width: 15.0,),
                            Text('Like'
                              , style: Theme
                                  .of(context)
                                  .textTheme
                              .bodyText1
                                  ?.copyWith(),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children:
                          [
                            Icon(
                              Icons.chat_bubble_outline,
                            ),
                            SizedBox(width: 15.0,),
                            Text('Comment'
                              , style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children:
                          [
                            Icon(
                              CupertinoIcons.share,
                            ),
                            SizedBox(width: 15.0,),
                            Text('Share'
                              , style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),


                SizedBox(height: 20,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("owner",style: TextStyle(fontWeight: FontWeight.bold,height: 1.4),),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "3h",
                                style: Theme.of(context).textTheme.caption?.copyWith(height: 1.4),
                              ),
                              SizedBox(width: 5,),
                              Icon(
                                Icons.check_circle,
                                size: 16,
                              ),
                            ],
                          ),
                        ],

                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Container(
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey[300],
                  ),
                ),
                Text("My Post",style: Theme.of(context).textTheme.subtitle1,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              Text("100",style: Theme.of(context).textTheme.caption,),
                              SizedBox(width: 5,),
                              Icon(
                                CupertinoIcons.heart_fill,
                              ),

                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("100 Comments",style: Theme.of(context).textTheme.bodyText1,),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children:
                          [
                            Icon(
                              CupertinoIcons.heart,
                            ),
                            SizedBox(width: 15.0,),
                            Text('Like'
                              , style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children:
                          [
                            Icon(
                              Icons.chat_bubble_outline,
                            ),
                            SizedBox(width: 15.0,),
                            Text('Comment'
                              , style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children:
                          [
                            Icon(
                              CupertinoIcons.share,
                            ),
                            SizedBox(width: 15.0,),
                            Text('Share'
                              , style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),


                SizedBox(height: 20,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("owner",style: TextStyle(fontWeight: FontWeight.bold,height: 1.4),),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "3h",
                                style: Theme.of(context).textTheme.caption?.copyWith(height: 1.4),
                              ),
                              SizedBox(width: 5,),
                              Icon(
                                Icons.check_circle,
                                size: 16,
                              ),
                            ],
                          ),
                        ],

                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Container(
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey[300],
                  ),
                ),
                Text("My Post",style: Theme.of(context).textTheme.subtitle1,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              Text("100",style: Theme.of(context).textTheme.caption,),
                              SizedBox(width: 5,),
                              Icon(
                                CupertinoIcons.heart_fill,
                              ),

                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("100 Comments",style: Theme.of(context).textTheme.bodyText1,),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children:
                          [
                            Icon(
                              CupertinoIcons.heart,
                            ),
                            SizedBox(width: 15.0,),
                            Text('Like'
                              , style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children:
                          [
                            Icon(
                              Icons.chat_bubble_outline,
                            ),
                            SizedBox(width: 15.0,),
                            Text('Comment'
                              , style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children:
                          [
                            Icon(
                              CupertinoIcons.share,
                            ),
                            SizedBox(width: 15.0,),
                            Text('Share'
                              , style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),


            ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget StoryItem(){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(90),
    ),
    width: 125,
    height: 200,
    child: Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image(
              image: AssetImage("assets/images/person.jpeg"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(7.0),
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage("assets/images/profile-user.png"),
                ),
              ],
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Text(
              "owner",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget PostItem(context) => Card(
  clipBehavior: Clip.antiAliasWithSaveLayer,
  margin: EdgeInsets.symmetric(horizontal: 8.0),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            SizedBox(width: 15,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("owner",style: TextStyle(fontWeight: FontWeight.bold,height: 1.4),),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "3h",
                        style: Theme.of(context).textTheme.caption?.copyWith(height: 1.4),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.check_circle,
                        size: 16,
                      ),
                    ],
                  ),
                ],

              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        Text("My Post",style: Theme.of(context).textTheme.subtitle1,),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      Text("100",style: Theme.of(context).textTheme.caption,),
                      SizedBox(width: 5,),
                      Icon(
                        CupertinoIcons.heart_fill,
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("100 Comments",style: Theme.of(context).textTheme.bodyText1,),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children:
                  [
                    Icon(
                      CupertinoIcons.heart,
                    ),
                    SizedBox(width: 15.0,),
                    Text('Like'
                      , style: Theme
                          .of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(),),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children:
                  [
                    Icon(
                      Icons.chat_bubble_outline,
                    ),
                    SizedBox(width: 15.0,),
                    Text('Comment'
                      , style: Theme
                          .of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(),),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children:
                  [
                    Icon(
                      CupertinoIcons.share,
                    ),
                    SizedBox(width: 15.0,),
                    Text('Share'
                      , style: Theme
                          .of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(),),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.grey[300],
        ),
      ],
    ),
  ),
);



