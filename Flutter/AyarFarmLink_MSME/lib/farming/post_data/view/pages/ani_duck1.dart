import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/duck.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/101';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostDuckPage1 extends StatelessWidget {
  const PostDuckPage1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DuckPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("မွေးမြူရေးနှင့်ထိန်းသိမ်းစောင့်ရှောက်ခြင်း"),
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
      name: "မောင်သတိုးမင်းခေါင်",
      //email: "ishfar@gmail.com",
      email: "လမ်းဘေးပန်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ပပဝင်း",
      //email: "ishrak@gmail.com",
      email: "ချောင်းတွင်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဖိုးတုတ်",
      //email: "shakleen@gmail.com",
      email: "လတာကြီး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုရန်ပိုင်စိုး",
      //email: "shakleen@gmail.com",
      email: "လွှတောင်",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ချစ်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေမြတ်နိုး",
      //email: "shakleen@gmail.com",
      email: "မြောင်းမြ",
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
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[4],
      title: "Duck",
      summary: """မြေနေရာရွေးချယ်ခြင်း...""",
      body: """
-သဲဆန်သောမြေမှာ ဘဲမွေးမြူရေးအတွက် သင့်တော်ပြီး ဆင်ခြေလျှောကုန်းမြင့်နှင့် ရေစီးနေသော ရေကန်၊ ချောင်းနှင့် လွှတ်ကျောင်းနိုင်သော မြက်ခင်းများရှိလျှင် ပို၍သင့်တော်သည်။ 
-ရေကန်ရွေးချယ်ရာတွင် အဆက်မပြတ်စီးနေသော ရေရှင် နေရာမျိုးဖြစ်ရန်လိုအပ်သည်။ 
-မြစ်ချောင်းနံဘေးတွင် မွေးမြူမည်ဆိုပါက ချောင်းသည်အနံ ၉ပေ၊ ရေအနက် ၂ပေခန့်ရှိလျှင် လုံလောက်၍ ရေစီးနှုန်းအသင့်အတင့်ဖြစ်လျှင် သင့်တော်သည်။ 
-ရေကန်တူး၍ မွေးမြူလျှင် အကျယ် ၅ပေ ပတ်လည်နှင့် အနက်၁နှစ်ပိုင်းတစ်ပိုင်းပေရှိလျှင် ဘဲ(၁၀၀)ကောင် မွေးမြူနိုင်သည်။ 
-ရေကန်အား ၂ပတ်တစ်ကြိမ် ရေလဲလှယ်ပေးရန် လိုအပ်ပြီး ရေကန်ပတ်လည်တွင် သစ်ပင်ရိပ်များရှိရန် လိုအပ်သည်။ သစ်ပင်ရိပ်မရှိလျှင် ယာယီအရိပ်တဲဆောက်ပေးရန် လိုအပ်သည်။ ဘဲအတက်အဆင်း လွယ်ကူရန် ရေကန်နှုတ်ခမ်းကို ဆင်ခြေလျှော လုပ်ထားရမည်။ 
     #crd
 """,
      imageURL: "assets/images/post_duck1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Duck",
      summary: """အနည်းအကျဥ်းမွေးမြူသူများ...""",
      body: """
ဘဲအနည်းအကျဉ်း မွေးမြူသူများအဖို့ (ကျေးလက်ဒေသများတွင်) ဝင်းခြံများထဲ လွှတ်ထားလိုက်ပါက အစာသီးသန့် ကျွေးစရာမလိုပေ။ သို့သော် စီးပွားဖြစ် ဘဲမွေးမြူရေးကို လုပ်ကိုင်သည့်အခါ ဖြစ်သလိုလွှတ်ထားပြီး မမွေးသင့်ပေ။ ဘဲစာများ စနစ်တကျပြုလုပ်၍ ကျွေးရန်လိုအပ်သည်။ သို့မှသာ ဘဲများကျန်းမာသန်စွမ်းပြီး လုပ်ငန်းအောင်မြင်နိုင်ကြောင်း သတိပြုသင့်သည်။
အလွယ်တကူရရှိနိုင်ပြီး စရိတ်စက အကုန်အကျများစွာ မကုန်ကျသော ဘဲစာမှာမူ- ပုစွန်(သို့) ဆန်ကွဲရောစပ်ထားသည့် ဘဲစာကို နံနက်(၆-၇)နာရီအတွင်း ကျွေးသင့်သည်။ 
#crd
""",
      imageURL:"assets/images/post_duck2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}