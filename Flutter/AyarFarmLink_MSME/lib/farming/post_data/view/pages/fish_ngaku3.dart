import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/nagku.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/54';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgakuPage3 extends StatelessWidget {
  const PostNgakuPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaKuPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("အစာကျွေးစနစ်"),

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
      name: "ဦးမြဆိုင်",
      //email: "topekyii@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မောင်ဇော်မင်းရှိန်",
      //email: "zawzaw@gmail.com",
      email: "ဆူးဂဏန်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မောင်သစ်ဆန်း",
      //email: "kokhant@gmail.com",
      email: "ကျောင်းရွာ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုစိုးနိုင်",
      //email: "shakleen@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးမင်းကို",
      //email: "shakleen@gmail.com",
      email: "ပေါ်တောမူ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမိုးသူဇာ",
      //email: "shakleen@gmail.com",
      email: "ဒေးဒရဲ",
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
      author: users[1],
      title: "Fish",
      summary: """ငါးပေါက်ကလေးများအား...""",
      body: """
ငါးပေါက်ကလေးများအား နိုင်ငံခြားမှာ လာသော အစာများ ကျွေးမြူနိုင်ပြီး၊ မြန်မာပြည်ထုတ် အသင့်အစာများကိုလည်း ကျွေးမွေးနိုင်ပါသည်။ အသင့်ကျွေးနိုင်သော အစာများကို ငယ်ရွယ်တဲ့အချိန်မှာသာ ကျွေးမွေးသင့်ပြီး၊အစာကို သင့်တင့်သလောက်ထည့်၍ ဝမ်းနုတ်ဆေး သို့မဟုတ် MOM ဝမ်းပျော့ဆေး အနည်းငယ် ရောဆပ်ကာ ကျွေမွေးရပါမည်။
#crd
 """,

      imageURL: "assets/ngakhu1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Fish",
      summary: """တစ်လအကြာတွင်...""",
      body: """အဓိက အချက်မှာ ရေကို ဖြစ်နိုင်လျှင် နေ့တိုင်း လဲလှယ်ပေးရပါမည်။ရေရှင် သဘောမျိုးကို ကြိုက်၍ ကျန်းမာရေးကောင်းမွန်စေပါသည်။
ရေ၌ ပျော်ဝင်သော အောက်စီဂျင် ကို ရေပန်းချပေးထားလျှင် ပိုမို အဆင်ပြေပါသည်။စမွေးသည့်နေ့မှတစ်လအကြာတွင် ဒေသထွက် အသားတို၊ အသားစနဲ့ ထမင်းကျန်ဟင်းကျန်များ ကျွေးမွေးနိုင်ပါသည်။
#crd
""",
      imageURL: "assets/images/post_ngaku22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Fish",
      summary: """အသားစားငါးမျိုး ဖြစ်တာကြောင့်...""",
      body: """(၁) ငါးခူငါးက အသားစားငါးမျိုး ဖြစ်တာကြောင့် ငါးခူငါးကို အခြားငါးမျိုးတွေနဲ့ ရောနှော မွေးမြူရန်
  မသင့်တော်ပေ။
  (၂) ငါးခူငါးကို အစာကျွေးရာမှာ အလွယ်တကူရမယ်ဆိုပါက အမဲကလီစာ အရိအရွဲများ၊ ကြက်အူ ၊ ဘဲအူတွေနဲ့
  စွန့်ပစ်ထားတဲ့ ငါးကလီစာတွေကို နုပ်နုပ်စဥ်းပြီး ကျွေးနိုင်ပါတယ်။
  (၃) ထိုအစာတွေ မရရှိရင်တော့ ဆန်ကွဲကျိုပြီး ဖွဲနု ၊ ပဲဖတ်နဲ့ စဥ်းထားတဲ့ ဟင်းသီးဟင်းရွက်တွေကိုရောကာ
  နံနက် တစ်ကြိမ်၊ ညနေတစ်ကြိမ် ကျွေးနိုင်ပါတယ်။
  (၄) စျေးနဲ့နီးပါက အမဲဆိုင်တွေမှ ကြွင်းကျန်တဲ့ အမဲရိုးများ တွေကိုဝယ်ကာ ကြိုးဖြင့်ဆွဲပြီး အစာအဖြစ်ကျွေးနိုင်ပါတယ်။
  အရိုးတွေမှာ ကပ်နေတဲ့ အသားတွေကို ငါးခူက တစ်စတစ်စ ဖဲ့စားခြင်းဖြင့် အစာကျွေးရာမှာ စရိတ်သက်သာနိုင်ပါတယ်။
  (၅) အခြားနည်းလမ်း တစ်ခုက ညဘက်မှာ ကန်အတွင်းရှိ ရေမျက်နှာပြင်အထက်ကို မီးထွန်းညှိပေးထားခြင်း ဖြစ်ပါတယ်။
  မီးအလင်းရောင်ဆီကို လာရောက်ကြတဲ့ ပိုးကောင်ကလေးများ ရေထဲကို ကျသွားရင် ငါးခူငါးတွေရဲ့ အစာ ဖြစ်သွားကြပါလိမ့်မယ်။
  အထက်ပါနည်းအမျိုးမျိုးဖြင့် အစာကို မှန်ကန်ဝလင်စွာ ကျွေးပါက ငါးသန်ငယ်ကလေးများ ၆လ မှ ၈လအတွင်း၁၀ ကျပ်သားမှ
  ၁၂ ကျပ်သားအထိ ကြီးထွားလာနိုင်ပါတယ်။ အစာမမှန် ဝလင်စွာမကျွေးပါက ငါးကျောက်ဖားငါးကဲ့သို့ ခေါင်းကြီး ကိုယ်သေးဖြစ်ကာ
  တွက်ခြေ မကိုက်ဘဲ အရှုံးပေါ်နိုင်ပါတယ်။ အစာမှန်မှန်ကျွေးပြီး ငါးခူတွေကို မွေးမြူမယ်ဆိုရင် ၁ဧကကန် အကျယ်မှာ ၁နှစ်အတွင်း
  ငါးများအများအပြား မွေးမြူနိုင်တာကြောင့် ငါးခူအထွက်နှုန်းလည်း ပိဿာချိန်များများ ရနိုင်ပြီး အကျိုးအမြတ် အလွန်ရှိတဲ့
  မွေးမြူရေး လုပ်ငန်းတစ်ခုပဲ ဖြစ်ပါတယ်။
  #crd
""",
      imageURL: "assets/images/post_ngaku1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}