import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';


const String _url = 'http://103.47.184.69:81/post-categories/156';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostKlpPage1 extends StatelessWidget {
  const PostKlpPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  BeanPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ကုလားပဲနှင့်အာဟာရ"),

      ),
      body: ListView.builder(
        itemCount: DemoValues.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(postData: DemoValues.posts[index]);
        },
      ),
      floatingActionButton: const FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: _launchURL,
        label: Text('See More'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "ကိုတူး",
      //email: "ishfar@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 22),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မြမြ",
      //email: "ishrak@gmail.com",
      email: "ကျုံစုတ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 12, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဇော်ဇော်",
      //email: "shakleen@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုပြူး",
      //email: "shakleen@gmail.com",
      email: "ကျောင်းရွာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလှစိုး",
      //email: "shakleen@gmail.com",
      email: "အမေ့သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မအေး",
      //email: "shakleen@gmail.com",
      email: "ကျေးလက်သူ",
      image: "assets/images/cus6.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
  ];

  static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment:
      "Thank you",
      user: users[4],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[1],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[0],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[5],
      title: "Chickpeas",
      summary: """ပရိုတင်းပါဝင်မှုများတာကြောင့်... """,
      body: """ကုလားပဲမှာ ပရိုတင်းပါဝင်မှုများတာကြောင့် သက်သတ်လွတ်စားတဲ့သူတွေအတွက် အသားဓာတ်ရရှိ စေနိုင်မယ့် အစားအစာတစ်ရပ်ပါ။ 
      ကုလားပဲမှာ ခန္ဓာကိုယ် ကြီးထွားဖွံ့ဖြိုးဖို့အတွက် လိုအပ်တဲ့ပရိုတင်းဓာတ်တွေ အပြည့်အဝပါဝင်နေပါတယ်။ 
      ပရိုတင်းဓာတ်က အနာကျက်စေနိုင်စွမ်းရှိတာကြောင့် ကုလားပဲကိုစားသုံးပေး မယ်ဆိုရင် အနာတွေကို အကျက် မြန်စေမှာသေချာပါတယ်။။
 """,

      imageURL: "assets/images/post_klp1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Chickpeas",
      summary: """ကာကွယ်နှိမ်နင်းဖို့...""",
      body: """ကုလားပဲမှာ အာဟာရဓာတ်တွေကြွယ်ဝစွာပါဝင်နေသလို အမျှင်ဓာတ်လည်းကြွယ်ဝစွာပါဝင်တာကြောင့် ကိုယ်အလေးချိန်ကျချင်သူတွေအတွက် စားသုံးသင့်တဲ့ အစားအစာတစ်ခုလို့ပြောချင်ပါတယ်။
       အမျှင်ဓာတ်တွေက အဆာခံအောင်လုပ်ဆောင်ပေးပြီး ကုလားပဲမှာပါတဲ့ အာဟာရဓာတ်တွေက ခန္ဓာကိုယ်ကို အားပြည့်နေအောင် လုပ်ဆောင်ပေးပါတယ်။
#crd

""",
      imageURL: "assets/images/post_klp2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}