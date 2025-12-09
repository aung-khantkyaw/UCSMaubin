import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngadan.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/42';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaDanPage2 extends StatelessWidget {
  const PostNgaDanPage2({Key? key}) : super(key: key);

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
      author: users[3],
      title: "Fish",
      summary: """မွေးမြူရေးနည်းစနစ်များ..""",
      body: """မွေးမြူရေးနည်းစနစ်များ

ငါးတန်သည် လေထုမှ အောက်စီဂျင်ကို တိုက်ရိုက်ရယူအသက်ရှူနိုင်သဖြင့် ပျော်ဝင်အောက်စီဂျင် DO2 ပမာဏ (0.5-0.1 ppm) အထိနည်းသော ရေတွင်သော်လည်းကောင်း ရေထုညစ်ညမ်းမှု မြင့်မားသောအခြေအနေ (Chemical Oxygen Demand-25 ppm) တွင်သော်လည်းကောင်း ရှင်သန်နိုင်သည်။ ထို့ကြောင့် ဧရိယာ တစ်စတုရန်းမီတာလျှင် (၁၂၀) အထိ ကန်ကြပ်မွေးမြူနိုင်သည်။

ငါးတန်များကို အများအားဖြင့် နည်းလမ်း (၃) မျိုးဖြင့် အသားတိုးမွေးမြူသည်။

၁။ မြေကန်ဖြင့် မွေးမြူခြင်း

၂။ လှောင်အိမ်ဖြင့် မွေးမြူခြင်း

၃။ ပိုက်သားဖြင့် ခြံခတ်မွေးမြူခြင်း စသည်တို့ဖြစ်သည်။

ဥပမာ ဗီယက်နမ်နိုင်ငံ မဲခေါင်မြစ်ဝကျွန်းပေါ်ဒေသ မြစ်ချောင်းများတွင် လှောင်အိမ်ဖြင့်မွေးမြူခြင်းနှင့် ပိုက်သားဖြင့် ခြံခတ်မွေးမြူခြင်းကို အကောင်းဆုံးနည်းစနစ်အဖြစ် လက်ခံထားကြသည်။
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
      author: users[2],
      title: "Fish",
      summary: """ကိုင်တွယ်ခြင်းနှင့် စီမံပြုပြင်ခြင်း... """,
      body: """ကိုင်တွယ်ခြင်းနှင့် စီမံပြုပြင်ခြင်း

ငါးအရှင်များကို ရေလှည့်စနစ်တပ်ဆင်ထားသော လှေဖြင့် စီမံပြုပြင်စက်ရုံသို့ ရေလမ်းမှ ပေးပို့သည်။ ငါးတန်အသားလွှာများကို အအေးခန်းကွန်တိန်နာများဖြင့် သင်္ဘောတင် ပြည်ပတင်ပို့သည်။ ငါးတန်အသားလွှာ တစ်ကီလိုရရှိရန် ငါးတန်ကုန်ကြမ်း (၂.၇-၃.၃) ကီလိုခန့် အသုံးပြုသည်။ ပြည်တွင်းဈေးကွက်တွင် ငါးကောင်လုံးရောင်းချသည်။ ဈေးကွက်တင်ပို့ရာတွင် ရေလှည့်စနစ်ပါဝင်သော မော်တော်ဘုတ် (သို့) ကားပေါ်တွင် ရေတိုင်ကီတင်ပြီး လေပေးစနစ်ဖြင့် သယ်ပို့သည်။

ငါးတန် (Pangasianodon hypophthalmus) များမှာ မြစ်ငါးများဖြစ်ပြီး ကန်ကြီးများဖြင့် ကောင်းစွာ မွေးမြူထုတ်လုပ်နိုင်လျက်ရှိပါသည်။ ထို့ကြောင့် ငါးတန်များကို (၀.၂၅) ဧက (၀.၁ ဟက်တာ) အထက်ကြီးသော ကန်များတွင် မွေးမြူသင့်ကြောင်း MYSAP အနေဖြင့် အကြံပြုပါသည်။ 
Ref: GreenwayMyanmar
""",
      imageURL: "assets/ngadan2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}