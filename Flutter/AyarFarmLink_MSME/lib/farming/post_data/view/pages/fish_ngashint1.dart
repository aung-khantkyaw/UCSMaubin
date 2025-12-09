import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngashint.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/47';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgashintPage1 extends StatelessWidget {
  const PostNgashintPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaShintPage();
            }));


          },
          icon: Icon (Icons.arrow_back_ios_new),
        ),
        title: Text("မွေးမြူနည်း"),

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
      name: "မောင်ညဏ်ကြီး",
      //email: "mgnyan@gmail.com",
      email: "မြင်းခြံကြီး",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ခင်ခင်ကြည်",
      //email: "iskyi@gmail.com",
      email: "တောင်ကြီး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမင်းခန့်ကျော်",
      //email: "shakleen@gmail.com",
      email: "ငါးကြီးဂယက်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဗလ",
      //email: "shakleen@gmail.com",
      email: "အရှေ့မိုးညှင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလှနွယ်",
      //email: "shakleen@gmail.com",
      email: "ဘိုကလေး",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မပိုးဉ",
      //email: "shakleen@gmail.com",
      email: "ကျုံတာ",
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
  title: "Fish",
  summary: """မြေနေရာရွေးချယ်ခြင်း..""",
  body: """ငါးရှဥ့်မွေးမြူရေးတွင် အရေးပါသော မြေနေရာရွေးချယ်ခြင်းအကြောင်း
    ငါးရှဥ့်မွေးမြူသော မြေနေရာသည် လမ်းပန်းဆက်သွယ်ရေးကောင်းပြီး ဈေးကွက်ရှိသောနေရာကို ရွေးချယ်သင့်ပါသည်။ 
    မြေနေရာသည် သဲဆန်သောမြေမဖြစ်စေရဘဲ မြေစေးအမျိုးအစားကိုသာ ရွေးချယ်ရပါမည်။ မြေစေးဖြစ်သောကြောင့် ကန်အတွင်းရေသည် ကြာရှည်ခံပါမည်။ ငါးရှဥ့်များအတွက် ပိုမိုကောင်းမွန်ပါသည်။ 
ကန်အတွင်းရှိရေကိုမူ ရေအမျိုးအစားရွေးချယ်ရန် မလိုပေ။ ရေကြည်၊ ရေနောက်၊ ရေစီး၊ ရေသေ အားလုံးသင့်လျော်ပါသည်။ သို့သော် ရေစီးနေလျှင်မူ အကောင်းဆုံးဖြစ်ပါသည်။
Ref: GreenWayMyanmar
 """,

  imageURL: "assets/images/post_ngashint1.jpg",
  postTime: DateTime(2022, 11, 25),
  reacts: 13,
  views: 45,
  comments: _comments,
  ),
  PostModel(
  id: "2",
  author: users[5],
  title: "Fish",
  summary: """စျေးကွက်ဝင်အရွယ်ရောက်အောင်... """,
  body: """အစာအဖြစ် ငါးနုတ်၊ငါးဖွဲများကို ကြိတ်၍ကျွေးနိုင်သလို ဖွဲနု၊ဆန်ကွဲများဖြင့်လည်း ရောစပ်၍ ခန္ဓာကိုယ်အလေးချိန်၏ ၄% မှ ၆%ထိ တွက်ချက်၍ ဖြည့်စွက်စာအဖြစ် ကျွေးမွေးနိုင်ပါသည်။
ထို့နောက် ငါးရှဥ့်များ၏ အရွယ်အစားခွဲခြားခြင်းကို ၂ ပတ်လျှင် ၁ကြိမ်၊ ၃ လခန့်ထိ လုပ်ပေးရပါမည်။ ကန်ထဲရှိ ရေများကို လစဥ် ၁ လလျှင် ၁ ကြိမ် လဲလှယ်ပေးရပါမည်။ ထုတ်လုပ်မှုအနေဖြင့် ပထမဆုံး ကန်ထဲသို့ ထည့်သွင်းထားသော ငါးရှဥ့်စုစုပေါင်း ၃ ကီလိုဂရမ်အား ၆ လကျော် မွေးမြူပြီးလျှင် ငါးရှဥ့်များ၏အလေးချိန်မှာ (၂၀-၃၀)ကီလိုဂရမ် ရရှိချိန်၌ စျေးကွက်သို့တင်ပို့ရောင်းချ နိုင်ပါသည်။ 

Ref: GreenwayMyanmar
""",
  imageURL: "assets/ngashint2.jpg",
  postTime: DateTime(2022, 11, 25),
    reacts: 30,
    views: 65,
    comments: _comments,
  ),
    PostModel(
      id: "3",
      author: users[1],
      title: "Fish",
      summary: """သိုလှောင်ခြင်းနှင့် သယ်ဆောင်ခြင်း.. """,
      body: """
- ဖမ်းဆီးစုဆောင်းရရှိသည့် ငါးရှဥ့်များကို ဦးစွာ ရေဖြင့် သန့်ရှင်းစင်ကြယ်စွာ ဆေးကြောရပါမည်။ ထို့နောက် ၁၀ ဂါလံဝင် ပလတ်စတစ်ပုံး ၁ ပုံးတွင် ငါးရှဥ့်(၁၅-၃၀)ကီလိုဂရမ်ထိ ထည့်သွင်းပြီး ရေစပ်စပ်ဖြင့် ပို့ဆောင်နိုင်ပါသည်။
- ၄င်းပလတ်စတစ်ပုံး၏အထက် ဘေးပတ်ပတ်လည်တွင် အချင်း ၁ စင်တီမီတာအရွယ်ရှိ အပေါက်ငယ်များကို လေဝင်လေထွက် ရရှိစေရန် ဖောက်ထားပေးရပါမည်။
- ငါးရှဥ့်များအား သီးခြားလှောင်ကန်အနေဖြင့်(၀.၇၅) မီတာအမြင့်ရှိ ပလတ်စတစ်ကန်၊သစ်သားကန်၊သစ်သားစည်ပိုင်းများတွင် ဧရိယာ ၁ စတုရန်းမီတာတွင် (၁၀၀-၁၅၀) ကီလိုဂရမ်ထိ ထည့်သွင်းသိုလှောင်နိုင်ပါသည်။
- သိုလှောင်ရာတွင် ငါးရှဥ့်များသွားလာလှုပ်ရှားမှုလွယ်ကူစေရန် ရေကိုပိုမိုထည့်သွင်းပေးထားရပါမည်။ တစ်နေ့ ၂ ကြိမ် ရေလဲလှယ်ပေးရပါမည်။ သိုလှောင်ထားစဥ်ကာလအတွင်း အစာကျွေးခြင်း မပြုလုပ်ရပါ။
- ခရီးဝေးများသို့ သယ်ယူပို့်ဆောင်ရာတွင် အမြင့်၂ပေ ခွဲရှိ ရေလုံသော ပလတ်စတစ်ပုံး(သို့)သစ်သားကန်များ(အမြင့် ၆၀ စင်တီမီတာ၊အနံ ၆၀ စင်တီမီတာ၊အလျှား ၇၅ စင်တီမီတာ)တွင် ရေအပြည့်ထည့်သွင်း၍ ၈ နာရီမှ ၁၀ နာရီ ကြာသည်အထိသယ်ယူပို့်ဆောင်နိုင်ပါသည်။ ရေအသစ်လဲလှယ်ပေးရပါမည်။
- သယ်ယူမည့်ပုံးများ၏ အဖုံးများကို လေဝင်လေထွက်မှုရှိစေရန်နှင့် ငါးရှဥ့်များလွတ်မြောက်မသွားစေရန် ပြုလုပ်ထားရပါမည်။ ငါးရှဥ့်သယ်ဆောင်နှုန်း၊ သယ်ယူချိန်ကာလပေါ်မူတည်၍ အကျိုးအမြတ် ရရှိနိုင်ပါသည်
Ref: GreenWayMyanmar
 """,

      imageURL: "assets/ngashint3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

  ];
}