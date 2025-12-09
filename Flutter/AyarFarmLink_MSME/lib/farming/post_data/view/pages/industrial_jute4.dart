import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/138';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostJutePage4 extends StatelessWidget {
  const PostJutePage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  IndustrialPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ဂုန်လျှော်အသုံးဝင်ပုံ"),

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
      name: "မောင်အောင်စိန်",
      //email: "ishfar@gmail.com",
      email: "ပေါက်ပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ပူစူး",
      //email: "ishrak@gmail.com",
      email: "အောင်မဂ်လာ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးစံလင်းကျော်",
      //email: "shakleen@gmail.com",
      email: "ကံသာအေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဖိုးတေ",
      //email: "shakleen@gmail.com",
      email: "ကံ့ကော်တော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးစက်အောင်",
      //email: "shakleen@gmail.com",
      email: "မဟာစည်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မရွှေထက်ထက်",
      //email: "shakleen@gmail.com",
      email: "မအူပင်",
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
      user: users[0],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[2],
      title: "Jute",
      summary: """ဂုန်နီအိတ်များမှာ.. """,
      body: """ဂုန်လျှော်နှင့်ပြုလုပ်သော ဂုန်နီအိတ်များမှာ အသားထူထဲသဖြင့် ဆန်စပါး၊ သကြား စသည်တို့ထည့်ရန်အတွက် ကောင်းသည်။ အာလူး၊ ကြက်သွန်ထည့်ရန်အတွက် အသားကျဲသောဂုန်နီအိတ်များကို အသုံးပြုကြသည်။ ဂုန်လျှော်ဖြင့် ပြုလုပ်သော ဂုန်နီအိတ်ဖျင်ကို ဝါနှင့်အိမ်ထောင်ပရိဘာဂများကို ထုပ်ပိုး သယ်ယူရာ၌ အသုံးပြုကြသည်။ ဂုန်လျှော်ကြိုးကြီး၊ ကြိုးကလေးနှင့် စက္ကူကြမ်းများကိုလည်း ဂုန်လျှော်ဖြင့် လုပ်ကြသည်။ ဂုန်လျှော်၏အမျှင်မှာနု၍ ပိုးခြည်မျှင်ကဲ့သို့ ပျော့ပျောင်းသဖြင့် ဆံပင်အတုလုပ်ရာ၌ အသုံးဝင်သည်။ ဂုန်လျှော်သည် ဆိုးဆေးတင်ရ လွယ်ကူသည်။ 
      ဈေးချိုချိုဖြင့် ရောင်းချနိုင်သော ကော်ဇောမျိုးကိုလည်း ဂုန်လျှော်ဖြင့် ရက်လုပ်ရလေသည်။
#crd

 """,

      imageURL: "assets/images/post_jute41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),


  ];
}