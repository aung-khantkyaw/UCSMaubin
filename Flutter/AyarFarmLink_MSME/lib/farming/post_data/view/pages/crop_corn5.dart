import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/50';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCornPage5 extends StatelessWidget {
  const PostCornPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  HomePage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ရောဂါများတားဆီးကာကွယ်နည်း"),

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
      name: "ဖိုးထောင်",
      //email: "ishfar@gmail.com",
      email: "မြန်မာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ပု",
      //email: "ishrak@gmail.com",
      email: "သူကြီးကတော်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မောင်မောင်ကျော်",
      //email: "shakleen@gmail.com",
      email: "စိုက်ပျိုးရေးသမားလေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုသာဂိ",
      //email: "shakleen@gmail.com",
      email: "မလတ်တို",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးလှရွှေ",
      //email: "shakleen@gmail.com",
      email: "တောင်သူဉီးကြီး",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမြင့်",
      //email: "shakleen@gmail.com",
      email: "အပျိုကြီး",
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
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[2],
      title: "Corns",
      summary: """ငမြောင်တောင်ပိုးကာကွယ်နိုင်... """,
      body: """ပြောင်းစိုက်ဧရိယာများတွင်အချိန်မရွေးကျရောက်နိုင် သဖြင့် စိုက်ခင်းကိုအမြဲ စစ်ဆေးနေရမည်။
- စိုက်ခင်းပတ်လည်တွင် ပေါင်းမြက်များကင်းရှင်းရမည်။
- ငမြောင်တောင်ဥမြုံ စတွေ့လျင်တွေ့ချင်း ဖျက်ဆီးရမည်။
- စိုက်ချိန်နောက်ကျသောအခင်းများတွင်ပိုမိုဖျက်ဆီးနိုင်၍ ပုံမှန်စိုက်ချိန်အတိုင်းစိုက်ပျိုးရမည်။
- ဖျက်ပိုးခံနိုင်ရည်ရှိသောမျိုးကိုစိုက်ပျိုးရမည် ။
- ပြောင်းစေ့ (၁) ကီလိုဂရမ် (၆၀ကျပ်သား)ကို Immidacloprid 70WP ဆေး (၁၀) ဂရမ် (ဟင်းစားဇွန်း- ၁ဇွန်း) ဖြင့်ရော၍ လူးနယ်စိုက်ရမည်။
ဘက်စုံနည်းလမ်းဖြင့် ကာကွယ်ခြင်း
- ဥများကို တွေ့တွေ့ချင်း ကောက်ယူဖျက်ဆီးခြင်း
- ပိုးလောက်ကောင်များကို လူဖြင့် ကောက်ယူဖျက်ဆီးခြင်း
- အစာထောင်ချောက်၊ မီးထောင်ချောက်တို့ဖြင့် ဖလံများဖမ်းခြင်း
- အဖိုဆွဲဆောင်ထောင်ချောက်( Pheromone trap) များဖြင့် ဖလံထီးများကို ဖမ်းယူဖျက်ဆီးခြင်း
- မိတ်ဆွေပိုးများ၊ ဖျက်ပိုးရောဂါများဖြင့် နှိမ်နင်းခြင်း
- ပိုးသတ်ဆေး ဖျန်းခြင်း (ပိုးကောင် (၁) လက်မအရွက်အထိသာ) 


#crd
""",

      imageURL: "assets/images/post_corn41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Corns",
      summary: """ဖိုးလမင်းကျိုင်းကို ကာကွယ်""",
      body: """ စိုက်ပျိုးနည်းဖြင့် ကာကွယ်နှိမ်နင်းနည်း

၁။ ထယ်ထိုး၊ ထွန်မွှေ၊ ပေါင်းပေါက်ပါ။

၂။ ရေလွှမ်းပါ။

၃။ ဆိုးဝါးစွာကျရောက်ပါက ဘာမှမစိုက်ဘဲ ပလှပ်ထားပါ။

၄။ ဆိုးဝါးစွာကျရောက်ပါက အာလ်ဖာဖာနှင့် ကလိုဗာအပင်များကို စိုက်ပါ။

၅။ ယခင်က မြက်ပင်ဖုံးလွှမ်းပေါက်ရောက်ခဲ့သောမြေမှာ အာလူးမစိုက်ပါနှင့်။

၆။ ပြောင်းဖူးခူးပြီးပါက မြေကိုထယ်ရေးနက်နက်ထိုးပါ။
(ခ) လက်အားဖြင့်ကာကွယ်နှိမ်နင်းနည်း

၁။ အကောင်ကြီးတွေ ပျံသန်းနေသောရာသီတွင် အလင်းရောင်ထောင်ချောက်ထွန်းခြင်းကို လူထုအခြေပြု စုပေါင်းလုပ်ဆောင်ပါ။ ဖမ်းမိသောကျိုင်းကောင်များကို ရေနံဆီတွင် နှစ်သတ်ပါ။

၂။ တမာကိုင်း သို့မဟုတ် ညောင်ကိုင်းများကို ပြောင်းဖူးခင်းထဲက နေရာအမျိုးမျိုးမှာ ချထားပါက ကျိုင်းကောင်များကို ဆွဲဆောင်နိုင်ပြီး ၎င်းအရွက်များကို စားမိပါက သေစေနိုင်သည်။ 
#crd
greenwaymyanmar""",

      imageURL: "assets/images/post_corn42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

