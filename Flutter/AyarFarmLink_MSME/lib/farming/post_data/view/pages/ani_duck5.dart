import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/duck.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/107';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostDuckPage5 extends StatelessWidget {
  const PostDuckPage5({Key? key}) : super(key: key);
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
        title: Text("ဘဲရောဂါများ ကာကွယ်ကုသနည်း"),
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
      user: users[5],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[1],
      title: "Duck",
      summary: """ကာကွယ်ကုသနည်းများ...""",
      body: """ဘဲရောဂါများနှင့် ကာကွယ်ကုသနည်းများ

  ဘဲရောဂါများအနေဖြင့် ကူးစက်ရောဂါပိုးမွှားများဖြစ်သော ဗိုင်းရပ်စ်၊ ဘက်တီးရီးယား၊ ပရိုတိုဇိုးဝါးပိုးများ၊ ကိုယ်တွင်းကိုယ်ပ ကပ်ပါးပိုးများ၊ အစာအာဟာရ မပြည့်စုံခြင်း၊ ပတ်ဝန်းကျင်ဒဏ်၊ ဇီဝလုံခြုံမှု အားနည်းခြင်းတို့ကြောင့် ဖြစ်ပေါ်စေနိုင်ပြီး တချို့ဗိုင်းရပ်စ်ပိုးများသည် ကုသ၍ မရနိုင်ပါ။

  ထို့ကြောင့် ဘဲများကို ကြိုတင်ကာကွယ်ဆေးထိုးခြင်းဖြင့် ကာကွယ်သင့်ပါသည်။

  ရောဂါဝင်ရောက်ပါက တစ်ခြံလုံးသို့ ကူးစက်နိုင်သလို ရောဂါဖြစ်ချိန်တွင် ကာကွယ်ဆေးပေးပါကလည်း ရောဂါပိုမိုပြင်းထန်လာနိုင်သဖြင့် အားလုံးရှင်းပစ်သင့်ပါသည်။

  ဘက်တီးရီးယားပိုးများကိုမူ ပဋိဇီဝဆေးဖြင့် ကုသနိုင်ပါသည်။ ကျွမ်းကျင်သော တိမွေးကုဆရာဝန်နှင့် ကုသပါ။
  ကပ်ပါးပိုးများကို သန်ချဆေးတိုက်ကျွေးခြင်းဖြင့် ကုသနိုင်ပါသည်။အထူးသဖြင့် အစာတွင် ကပ်ပါးပိုးများ ပါဝင်မှု မရှိရန် ဂရုစိုက်ရပါမည်။
  ကျွေးမွေးသည့်အစာတွင် အာဟာရဓာတ် မညီမျှပါကလည်း ရောဂါဖြစ်ပွားနိုင်ပါသည်။
  အထူးသဖြင့် ကာကွယ်ဆေးများ ကြိုတင်ထိုးနှံနိုင်ရန် အရေးကြီးလှပါသည်။
 """,
      imageURL: "assets/images/post_duck11.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Duck",
      summary: """ပြုစုစောင့်ရှောက်နည်းများမှာ...""",
      body: """
       ဘဲများ ကျန်းမာရေးကောင်းမွန်စေရန် အားဆေးများ၊ အစိမ်းရောင်နှင့် အဝါရောင်အသီးအရွက်များကို ကျွေးနိုင်ပါသည်။
သန့်ရှင်းသောသောက်ရေ မပြတ်စေရန် အရေးကြီးပါသည်။
ဘဲမွေးမြူရာတွင် ဘဲများကို ခြံသို့မရွှေ့မီအချိန်များတွင် ပိုးသတ်ဆေးဖျန်းပေးခြင်းများ ဆောင်ရွက်ပေးရပါမည်။
ကာကွယ်ဆေးများကို တိမွေးကုဆရာဝန်(သို့မဟုတ်) ကျွမ်းကျင်သူနှင့် ထိုးနှံပေးရပါမည်။
ဘဲငယ်များကို မထည့်ခင် အနွေးပေးရုံတွင် ရိုင်ဖြင့် ၁၀ ပေ ပတ်လည်တစ်ဝိုင်းနှုန်းနှင့် စီစဉ်ထားရှိပြီး တစ်ဝိုင်းလျှင် ဘဲငယ်ကောင်ရေ ၂၀၀ မှ ၂၅၀ ထည့်ပေးရပါမည်။
အစာဗန်း၊ ရေခွက်၊ အနွေးပေးအုပ်ဆောင်းများကို အဆင်သင့်ပြင်ထားရပါမည်။
အုပ်ဆောင်းတစ်ခုလျှင် ၆၀ ဝပ်မီးသီး ၄ လုံး ထားပေးရပါမည်။
ရက်သားဘဲပေါက်မှ ၃ ပတ်သားအထိကို ဘဲငယ်လေးအဖြစ် သတ်မှတ်၍ အနွေးပေးအုပ်ဆောင်းကို လိုသလိုအသုံးပြုနိုင်ရန် ကြိုးနှင့်ထိန်းထားပေးရပါမည်။
ဘဲငယ်များရောက်ရောက်ချင်း ဘဲများ Stress မဖြစ်စေရန် Antibiotics နှင့် Glucose ရော၍ ရေတွင်ထည့်တိုက်ပါ။
အစာကိုလည်းရောပြီး နာရီဝက်ကြာမှ ကျွေးပါ။
၃ရက်သားမှ စ၍ ရိုင်ကို ချဲ့ပေးရန် လိုအပ်ပါသည်။
ဘဲငယ် ၄ ပတ်သားမှစ၍ မနက်၊ ည(၂)ကြိမ် ရေချပေးပါ။ ၁ ကြိမ်လျှင် နာရီဝက်ခန့်ထက် မပိုရပါ။
  #crd
""",
      imageURL:"assets/images/post_duck14.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}