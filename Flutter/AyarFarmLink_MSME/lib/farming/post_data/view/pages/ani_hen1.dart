import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/hen.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/94';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostHenPage1 extends StatelessWidget {
  const PostHenPage1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HenPage();
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
      name: "တွတ်ပီ",
      //email: "ishfar@gmail.com",
      email: "မြိုင်ရာဇာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "3",
      name: "မထွေးရင်",
      //email: "shakleen@gmail.com",
      email: "လတာကြီး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "2",
      name: "ဗိုက်ကလေး",
      //email: "ishrak@gmail.com",
      email: "လမ်းဆုံ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),

    UserModel(
      id: "4",
      name: "ဦးစိုး",
      //email: "shakleen@gmail.com",
      email: "ညောင်တုန်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ကိုနိုင်",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "စိန်စိန်",
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
      title: "ကြက်",
      summary: """အသားတိုးကြက် မွေးလျှင်.. ..""",
      body: """အသားတိုးကြက်တစ်ကောင်၏ ဥ က ပေါက်ခါစ အလေးချိန်မှာ ၄၀ ဂရမ် ဝန်းကျင်သာ ရှိပါသည်။ ထို ကြက်ကလေးသည် အချိန် ၇ ပတ် (၄၂ ရက်) အကြာတွင် အလေးချိန် ၂.၈ ကီလိုဂရမ် (၂၈၀၀ ဂရမ်) အထိ ကြီးမားလာနိုင်ပါသည်။ ပျမ်းမျှအားဖြင့် တစ်ရက်လျှင် အလေးချိန် ၆၆ ဂရမ် ခန့် တိုးနေခြင်း ဖြစ်ပါသည်။ တ နည်းအားဖြင့် အသားတိုးကြက်တစ်ကောင်သည် ၇ ပတ်အတွင်း ကိုယ်အလေးချိန် အဆ ၇၀ ကြီးထွားလာ ရခြင်း ဖြစ်ပါသည်။ 
ထိုမျှ လျင်လျင်မြန်မြန် ကြီးထွားရန်အတွက် တော်တန်ရုံ ဂရုစိုက်မှုမျိုးနှင့် မဖြစ်နိုင်သည်မှာ ငြင်းစရာ မလို အောင် ထင်ရှားပြီး၊  သဘာဝလည်းကျ၊ မျှလည်း မျှတပါသည်။ #crd
 """,
      imageURL: "assets/images/post_chicken1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "ကြက်",
      summary: """ တစ်နှစ်အတွင်းမွေးမြူနိုင်သည့်...""",
      body: """အသားတိုးကြက်များကို ကာလတိုမွေးမြူကာ ဈေးကွက်တင် ရောင်းချနိုင်ခြင်းက ယင်းလုပ်ငန်းအတွက် ဆွဲဆောင်မှု တစ်ခုဖြစ်ပါသည်။ ယေဘုယျအားဖြင့် ကြက်တစ်သုတ် မွေးမြူရန် ၇ ပတ်ခန့် ကြာမြင့်သည်။ တစ်သုတ်နှင့် တစ်သုတ်ကြားတွင် အနည်းဆုံး ၂ ပတ် (ဖြစ်နိုင်လျှင် ၃ ပတ်) ခြား၍ မွေးမြူရသည်။ ထိုသို့ ခြံကို နားထားချိန်တွင် ခြံအား ပိုးသတ်သန့်စင်ခြင်း၊ နောက်တစ်သုတ်အတွက် ပြင်ဆင်ခြင်းများ လုပ်ဆောင်ရသည်။ ထို့ကြောင့် ကြက်တစ်သုတ်အတွက် ပျမ်းမျှကြာချိန်မှာ ၉-၁၀ ပတ်ခန့် ရှိသည်ဟု ဆိုနိုင်ပါသည်။ အချို့ကာလ များတွင် ကြက်ကို အနည်းငယ်စော၍ ရောင်းချသည့် အခြေအနေမျိုးလည်း ရှိနိုင်ပါသည်။ သို့ဖြစ်ရာ တစ်နှစ် လျှင် အသားတိုးကြက် ၅-၆ သုတ်ခန့် မွေးမြူနိုင်မည်ဟု အကြမ်းသဘော ယူဆနိုင်ပါသည်။ 
#crd
""", imageURL:"assets/images/post_chicken2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[1],
      title: "ကြက်",
      summary: """ မျိုးကောင်းမျိုးသန့်လက္ခဏာများ...""",
      body: """
      -ခြေထောက်ပါရမည်။
      -ခန္ဓာကိုယ်စိုနေရမည်။
      -အမွှေးရောင်အဝါရောင်, ကြီးလာလျှင် အဖြူရောင်ဖြစ်ရမည်။
      #crd
""",
      imageURL:"assets/images/post_hen13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}