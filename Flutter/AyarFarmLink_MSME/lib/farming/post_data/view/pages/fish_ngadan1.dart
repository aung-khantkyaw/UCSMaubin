import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngadan.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/40';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaDanPage1 extends StatelessWidget {
  const PostNgaDanPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaDanPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ငါးသားဖောက်ခြင်း"),

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
      email: "ကိုးပြား",
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
      name: "ဦးနီ",
      //email: "shakleen@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ဘုတ်ဆုံ",
      //email: "shakleen@gmail.com",
      email: "ကန်ပိုင်ရှင်",
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
  author: users[5],
  title: "Fish",
  summary: """ဆေးထိုးသားဖောက်နည်း(၁)..""",
  body: """- ဆေးထိုးသားဖောက်မျိုးပွားရန်အတွက် သင့်တော်သောမျိုးငါးမ၊ မျိုးငါးထီးများကို ပြုစုကန်မှရွေးချယ်ကြရသည်။

- ရေအပူချိန် 26°C မှ 31°C အတွင်း သား‌ဖောက်ရန် သင့်တော်ပါသည်။ မျိုးငါးမ၊ ငါးထီးများကိုချိန်တွယ်ပြီး သီးခြားခွဲခြား၍ ခြင်ထောင် (သို့မဟုတ်) ရေ ၂ ပေခန့်ရှိသော အုတ်ကန်ထဲတွင် ထားရှိရမည်။

- မျိုးငါးမများကို Ovaprim ဟော်မုန်းထိုးဆေးတစ်ကောင်လျှင် 0.4 ml / kg နှုန်းနှင့်အထီးများကိုမူ 0.2 mg / kg နှုန်းဖြင့် ထိုးပေးရသည်။

- ဆေးထိုးပြီး ၁ဝ နာရီခန့်အကြာတွင် ငါးမများကို ဥညှစ်ခြင်း(Stripping) ပြုလုပ်ရန်အဆင့်သင့်ဖြစ်ပြီဖြစ်၍ ငါးမများ၏ ဦးခေါင်းပိုင်းကို ရေစိုအဝတ်စဖြင့်ဖုံးအုပ်၍ ဥများကို ဇလုံများထဲသို့ ညှစ်ယူရသည်။

- ထို့နောက် ငါးထီးကိုလည်း ခေါင်းကို ရေစိုအဝတ်စဖြင့်ဖုံးအုပ်၍ မျိုးရည်ကို ညှစ်ယူကာ ဇလုံထဲရှိ ငါးဥများပေါ်သို့ကျစေပြီး ကြက်တောင်‌ဖြင့်ကောင်းစွာသမအောင်‌မွှေကာ ရောစပ်ပေးရပါမည်။။ ၁ မိနစ်၂ မိနစ်ခန့်မွှေပေးရပါမည်။
Ref: GreenWayMyanmar
 """,

  imageURL: "assets/images/post_ngadan1.jpg",
  postTime: DateTime(2022, 11, 25),
  reacts: 13,
  views: 45,
  comments: _comments,
  ),
  PostModel(
  id: "2",
  author: users[4],
  title: "Fish",
  summary: """ဆေးထိုးသားဖောက်နည်း(၂).. """,
  body: """- ထို့နောက်ယင်းဥများပေါ်သို့ (ဆား + Carbamide ) ဖျော်ရည်ကို ဥများမြုပ်သည်ထိ လောင်းပေးမွှေထားပေးပြီး ယင်းဖျော်ရည်ဖြင့် ၂ ကြိမ်ခန့်ဆေးကြောပေးရပါမည်။ 

-  ဆက်လက်၍ ဥများကို မကပ်‌စေရန်Tunnin ဆေးဖျော်ရည် (5gm /10 lit) ထဲသို့ လောင်းထည့်ပြီး ၅ စက္ကန့်ခန့်မွှေပေးပြီးနောက် ရေသန့်ဖြင့်ကောင်းမွန်စွာဆေးကြောပေးရမည်။ ထိုအခါဥများ၏ စေးကပ်မှုပျောက်သွားလိမ့်မည်။

- ထို့နောက်ဥဖောက်ရေလည်ကတော့များထဲသို့ ထည့်သွင်းဖောက်ယူနိုင်ပါသည်။ ဥဖောက်ရေလည်ကတော့ထဲ၌ ရေအပူချိန် 28°C မှ 31°C အတွင်း၂၄ နာရီမှ ၃၆ နာရီအကြာတွင်ဥမှငါးမှုန်များပေါက်လာမည်။

- ငါးမှုန်များမှာ ၂ ရက်အတွင်း ဥအစာအိတ်ကုန်ခမ်းသွားမည်ဖြစ်၍ အမြန်ဆုံးပြုစုရန်မြေသားကန်ထဲသို့ ထည့်သွင်းရမည်ဖြစ်သည်။

- ဥမှပေါက်ပြီး ၃၆ နာရီအတွင်း မြေသားကန်ထဲသို့ ထည့်ပေးရမည်ဖြစ်သည်။

- ငါးမှုန်ပြုစုကန်မြေကန်များအတွင်းသို့ အော်ဂဲနစ်မြေဩဇာများ ကြိုတင်ထည့်သွင်းပြီး သတ္တမျှော (Monia)များကို ပွားများလာအောင် ပြုလုပ်ပေးရမည်။ကန်ထဲသို့လွှတ်လိုက်သောငါးမှုန်များက ပထမဆုံး အစာအဖြစ်သတ္တမျှော(Moina) များကို စားသုံးကြမည် ဖြစ်သည်။

- (၁၀)ရက်ခန့်အကြာ၌ ငါးမှုန်စာအဖြစ် ငါးပေါင်းမှုန့်  ၅၀%နှင့် ဖွဲနုကို ရောစပ်ကာ ၃၅% ပရိုတိန်းအစာအဖြစ် တစ်နေ့  ၂ ကြိမ်မှ ၃ ကြိမ်ခန့် ကျွေး‌ပေးရပါမည်။ ၁ လခန့်မြေသားကန်ထဲ၌ပြုစုပြီး‌နောက် ၁၄ လက်မအရွယ်သို့ ရောက်ရှိနိုင်ပါသည်။

Ref: GreenwayMyanmar
""",
  imageURL: "assets/images/post_ngadan2.jpg",
  postTime: DateTime(2022, 11, 25),
    reacts: 30,
    views: 65,
    comments: _comments,
  ),

  ];
}