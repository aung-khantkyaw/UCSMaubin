import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/200';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCabbagePage3 extends StatelessWidget {
  const PostCabbagePage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return VegePage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ရောဂါများနှိမ်နင်းကာကွယ်နည်း‌"),
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
      name: "မောင်မင်းထွဋ်ခေါင်",
      //email: "ishfar@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မယုယုခိုင်",
      //email: "ishrak@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးချစ်ဖူး",
      //email: "shakleen@gmail.com",
      email: "ငရစ်ဆယ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုချမ်းမြေ့ကို",
      //email: "shakleen@gmail.com",
      email: "မင်းဘော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "မမဂျူး",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မထက်ထက်",
      //email: "shakleen@gmail.com",
      email: "အလန်းတွတ်",
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
      author: users[4],
      title: "Cabbage",
      summary: """အနက်ပုပ်ရောဂါအတွက်..""",
      body: """ အနက်ပုပ်ရောဂါအတွက်တားဆီးကာကွယ်နည်း
      
      မျိုးစေ့ကို မစိုက်မီ ရေနွေးစိမ်ပါ။ ပျိုးပေါင်ကို ပိုးသန့်ပါ။ မုန်ညင်း၊မုန်လာများစိုက်ပျိုးခဲ့သော ပျိုးပေါင်များကို အသုံးမပြုရပါ။ စိုက်ခင်းထဲမှ ရောဂါကျအပင်များကို ဖယ်ရှားပါ။ သီးနှံရိတ်သိမ်းပြီးလျှင် အပင်အကြွင်းအကျန်များကို မြေနက်နက်တွင်မြှုပ်ပါ။ ဘတ်တီးရီးယားကိုသယ်ဆောင်တဲ့ ကိုက်စားအင်းဆက်များနှင့် စုပ်စားအင်းဆက်များကိုကာကွယ်ပါ။
       #crd
""", imageURL:"assets/images/post_cabbage21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

    PostModel(
      id: "2",
      author: users[3],
      title: "Cabbage",
      summary: """အမြစ်တင်းပုပ်ရောဂါအတွက်...""",
      body: """ အမြစ်တင်းပုပ်ရောဂါအတွက်တားဆီးကာကွယ်နည်း
      
     ပျိုးပေါင်အား ပိုးသန့်ပေးပါ။ ပျိုးဘောင်ပေါ်ရှိ ဒဏ်ရာရပင်စည်များကို ဓာတုဆေးတစ်မျိုးဖြင့် အပင်ခြေ၌ စိုရွဲအောင်ဖျန်းပေးပါ။ ၄ နှစ်တစ်ကြိမ် သီးနှံစိုက်စနစ်ကိုသုံးပါ။ 
      #crd
""", imageURL:"assets/images/post_cabbage22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Cabbage",
      summary: """ရေနာရောဂါအတွက်...""",
      body: """စလာရိုတီးနီးယားရေနာရောဂါအတွက်တားဆီးကာကွယ်နည်း
      
     ရောဂါကျရောက်နေသော အပင်များကို ဖယ်ရှားခြင်းဖြင့် ၎င်းမှိုရောဂါပျံ့ပွားခြင်းကို ကာကွယ်နိုင်ပါတယ်။ မြေကြီး၌ ရောဂါဝင်ရောက်မှုများ အေးမြစိုစွတ်နေပါက ၁၄ ရက်တစ်ကြိမ် ဆေးဖျန်းပေးပါ။

    ဗိုင်းရပ်စ်သယ်ဆောင်သော မုန်ညင်းမုန်လာပေါင်းပင်များကို ဖယ်ရှားပေးပါ။ ပုံမှန်ပိုးသတ်ဆေးဖျန်းခြင်းအားဖြင့် ပျစိမ်းအရေအတွက်တိုးပွားခြင်းကို ကာကွယ်နိုင်ပြီး ဗိုင်းရပ်စ်ပျံ့ပွားမှုကို လျော့နည်းစေပါတယ်။ 
     #crd
""", imageURL:"assets/images/post_cabbage23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}