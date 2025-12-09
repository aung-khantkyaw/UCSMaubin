import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/hen.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/98';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostHenPage4 extends StatelessWidget {
  const PostHenPage4({Key? key}) : super(key: key);
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
        title: Text("ကြက်များတွင်ဖြစ်တတ်သောရောဂါများ"),
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
      user: users[2],
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
      id: "2",
      author: users[3],
      title: "ကြက်",
      summary: """ ကြက်လည်လိမ်ရောဂါ...""",
      body: """
ကြက်လည်လိမ်ရောဂါဆိုတာ လည်လိမ်ဗိုင်းရပ်စ်ပိုး (Newcastle Disease Virus- ND) ကြောင့် ရောဂါ ဖြစ်ပွားတာပါ။ ရောဂါဖြစ်တဲ့ ကြက်ကတစ်ဆင့် ကူးစက်သလို ရောဂါပိုးပါတဲ့ လေကို ရှုရှိုက်မိရင်လည်း ကူးစက်ပါတယ်။ 
ဖြစ်ပွားမှု
ကြက်အသက်အရွယ်မရွေး ရောဂါဖြစ်နိုင်ပါတယ်။ အပြင်းဆုံးပိုးမျိုးကြောင့်ဖြစ်တဲ့ လည်လိမ်ရောဂါအပြင်စား ကို မြန်မာနိုင်ငံမှာ ဖြစ်ပွားတာတွေ့ရပါတယ်။ 
လက္ခဏာ 
ရောဂါဖြစ်တဲ့ ကြက်တွေဟာ အစိမ်းရောင် ဝမ်းသွားတတ်ပါတယ်။ ရောဂါဝင်ချိန်မှာ ကြက်မတွေ လုံးဝ မဥဘဲ နေတတ်ပါတယ်။ 
မသေဘဲကျန်တဲ့ ကြက်တွေမှာ လည်ပင်းလိမ်တဲ့ အာရုံကြော ထိခိုက်မှုနဲ့ ချွဲထ၊ အသက်ရှူသံ ပြင်းစတဲ့ အသက်ရှူလမ်းကြောင်း ဝေဒနာတွေ တွေ့ရတတ်ပါတယ်။ 
သေဆုံးတဲ့ ကြက်တွေမှာ အစာချေလမ်းကြောင်းအတွင်းပိုင်းတွေဖြစ်တဲ့ အမြစ်ဦးပိုင်း၊ အူသိမ် နံနေရာတစ်ချို့၊ အူပတ်နှစ်ခုရဲ့ ထိပ်ပိုင်းနဲ့ စအိုဝတွေမှာ သွေးယိုစီးတာတွေ ထင်ရှားစွာတွေ့ရတတ်ပါတယ်။ 
သတိပြုရန်
ကြက်လည်လိမ်ဗိုင်းရပ်စ်ပိုးတွေမှာ အလတ်စားပြင်းအားနဲ့ အပျော့စားအားဆိုပြီးရှိပါသေးတယ်။ သူတို့ကို ပိုးအရှင်ကာကွယ်ဆေးတွေမှာ ထည့်သွင်းထုတ်လုပ်ကြပါတယ်။ 
အဲဒီပိုး ၂မျိုးလုံးဟာ ကျန်းမာတဲ့ကြက်တွေနဲ့ လည်လိမ်ရောဂါခုခံစွမ်းအား အတန်အသင့်ရှိတဲ့ ကြက်တွေမှာ အန္တရာယ်တစ်စုံတစ်ရာ မဖြစ်စေဘဲ လည်လိမ်ရောဂါကို ကာကွယ်ပေးနိုင်စွမ်းဖြစ်ပေါ်စေနိုင်ကြပါတယ်။ 
ဒါပေမဲ့ လည်လိမ်ရောဂါအတွက် ခုခံစွမ်းအားမရှိသေးတဲ့ ကြက်တွေမှာ အလတ်စားပြင်းအားရှိတဲ့ လည်လိမ် ပိုးပါတဲ့ ကာကွယ်ဆေး အသုံးပြုပါက ဥကြက်မတွေ ရုတ်တရက်ဥနှုန်းလျော့ကျတာ၊ အသက်ရှူလမ်းကြောင်း ထိခိုက်တာ၊ လည်လိမ်တာ၊ အကြောဆွဲတာ စတဲ့လက္ခဏာတွေနဲ့ သေပျောက်တာတွေ ဖြစ်စေနိုင်ပါတယ်။ 
အပျော့စားလည်လိမ်ပိုးကြောင့် ထင်ရှားတဲ့ လက္ခဏာမဖြစ်ပေါ်ပေမဲ့ ဥနှုန်းအတန်အသင့်ကျ ဆင်းစေနိုင်ပါတယ်။ အသက်ရှူလမ်းကြောင်းရဲ့ လေအိတ်မြှေးတွေ ရောင်ရမ်းစေနိုင်ပါတယ်။ နောက်ပြီး အီးကိုလိုင်ဘက်တီးရီးယားပိုး လွယ်ကူစွာ ဝင်ရောက်နိုင်ရန် လမ်းစဖွင့်ပေးပြီး ထုတ်လုပ်မှုကျင်းဆင်းတာ၊ တဖြည်းဖြည်းသေပျောက်မှုတွေ ဖြစ်စေတဲ့ ‌နောက်ဆက်တွဲပြဿနာများကြုံတွေ့တတ်ပါတယ်။ 
ကာကွယ်ဆေးနည်း 
ကြက်လည်လိမ်ရောဂါအတွက် ကုသရန် ပဋိဇီဝဆေးမရှိသေးပါဘူး။ ကာကွယ်ပေးမှုစွမ်းအားမြင့်မားစွာ ပေါ် ထွက်စေနိုင်တဲ့ ကာကွယ်ဆေးအမျိုးအစားကို အသုံးပြုပြီး ကာကွယ်မှသာ လည်လိမ်ရောဂါအတွက် စိတ်ချရမှာပါ။ 
ရောဂါဝင်ရောက်ကြောင်း စောစီးစွာသိရှိပါက လည်လိမ်ရောဂါကွယ်ကွယ်ဆေးထိုးပေးခြင်းနဲ့ အသေပျောက် ဆုံးရှုံးမှုကို သက်သာစေနိုင်ပါတယ်။ 
ကာကွယ်ဆေး ကြိုတင်ထိုးနှံထားမှသာ ရောဂါကင်းရှင်းစေရန် စိတ်ချရပါမယ်။ 

      #crd
""", imageURL:"assets/images/post_hen11.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[1],
      title: "ကြက်",
      summary: """ဂမ်ဘိုရိုရောဂါ..""",
      body: """
     အဖြစ်အများဆုံး ရောဂါတစ်ခုဖြစ်တဲ့ - Infectious Bursal Disease (IBD) ဂမ်ဘိုရို ရောဂါဟာ ဥစားကြက်ငယ်နှင့် အသားတိုးကြက် များတွင်ဖြစ်ပွားပြီး အသက်(၃-၆) ပတ်အရွယ်တွင် ရောဂါဝင်ရောက်မှုအများဆုံးအရွယ်တွေမှာ ဖြစ်တတ်ပါတယ်
IBD ရောဂါဟာ ဗိုင်းရပ်စ်ပိုးကြောင့်ဖြစ်ပြီး ကြိုတင်ကာကွယ်ခြင်းသာ လုပ်ဆောင်နိုင်တယ်

ခြံ၏ ဇီဝလုံခြုံမှုလည်း အထူးကောင်းမွန်စွာ ဆောင်ရွက်ဖို့ လိုအပ်ပါတယ်
ရောဂါဖြစ်ပွားသည့်အခါကြက်မှာ မှိုင်တွေနေခြင်း၊အစာမစားချင်ဖြစ်ခြင်း၊တုန်ရီ နေပြီး လမ်းမလျှောက်နိုင်ခြင်း၊အစာခွက်ရေခွက်နားတွင် တိုးဝှေ့နေခြင်း၊ မစင်သွားသည့်နေရာတွင် အဖြူရောင်ဝမ်းမျာပေနေခြင်း၊ အဖြူရောင်ချွဲ ဝမ်းများသွားခြင်း။သေနှုန်း (၂၀-၆၀)% အထိ တစ်ပတ်အတွင်း မြင့်တက်ခြင်းတို့ကို တွေ့ရတတ်ပါတယ်

#crd
       """,
      imageURL: "assets/images/post_chicken2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "ကြက်",
      summary: """ ကြက်လေပြွန်ရောင်ရောဂါ ...""",
      body: """
ဒီရောဂါဟာ အိုင်ဘီဗိုင်းရပ်ပိုး (Infectious Bronchitis Virus- IB) ကြောင့် ဖြစ်ပွားပြီး ကူးစက်နှုန်းအလွန်လျင်မြန်တဲ့ ရောဂါဖြစ်ပါတယ်။ 
ကူးစက်ပုံ 
ရောဂါပိုးဟာ အသက်ရှူလမ်းကြောင်း၊ ဆီး- လိင် အင်္ဂါတွေနဲ့ အစာချေလမ်းကြောင်းကို ကူးစက်ဝင်ရောက်ပြီး ရောဂါဖြစ်တဲ့ ကြက်၊ ငုံးတို့ရဲ့ချွဲသလိပ်၊ နှာရည်အစက်အမှုန်များနဲ့ ချေးတို့ကတစ်ဆင့် ရောဂါဆက်ကူးစေတာပါ။ 
ဖြစ်ပွားမှု 
ကြက်၊ ငုံး အသက်အရွယ်မရွေး ရောဂါကျရောက်ဖြစ်ပွားနိုင်ပါတယ်။ 
လက္ခဏာ 
ရောဂါပိုးဝင်ရောက်ပြီး ၂ ရက်အတွင်း ရောဂါလက္ခဏာပြတတ်ပါတယ်။ တစ်ကောင်က တစ်ကောင်ကို ရောဂါ ကူးစက်မှု လျင်မြန်စေပါတယ်။ ‌ရောဂါဝင်ရင် တစ်ခြံလုံး ရာနှုန်းပြည့်ကူးစက်နိုင်စွမ်းရှိပါတယ်။ ကြက်၊ ငုံးငယ် တွေမှာချောင်းဆိုးတာ၊ နှာရည်ထွက်တာ၊ ချွဲထတာ၊ မျက်လုံးမှာ မျက်ရည်စိုနေတာစတဲ့ လက္ခဏာတွေ တွေ့ရတတ်ပါတယ်။ 
သေနှုန်း ၅ ရာခိုင်နှုန်းခန့်သာရှိတတ်ပေမဲ့ ကျောက်ကပ်မှာ ရောဂါပိုးဝင်ရောက်မှုရှိပါက သေနှုန်း ၆၀ ရာခိုင်နှုန်း အထိ မြင့်မားစေနိုင်ပါတယ်။ 
အိုင်ဘီရောဂါဖြစ်ပြီးတဲ့ အသားစားကြက်တွေဟာ အီးကိုလိုင်းဘက်တီးရီးယား လွယ်ကူစွာဝင်ရောက်ခံရပြီး သေပျောက်နှုန်းမြင့်မားစွာ ကြုံတွေ့တတ်ပါတယ်။ 
ကြက်မ၊ ငုံးမတွေ ငယ်ရွယ်စဥ်မှာ ရောဂါဝင်ရောက်ခဲ့ပါက ဥထုတ်လုပ်မှုတဲ့ အင်္ဂါရပ်တွေချွတ်ယွင်းစေပြီး ဥစမ်း ချိန်မှာ ရသင့်တဲ့ဥနှုန်း မရရှိတာ (သို့မဟုတ်) ဥ မဥတဲ့အဖြစ်ကို ရောက်ရှိစေနိုင်ပါတယ်။ 
ဥကြက်မ၊ ငုံးမတွေမှာ ရောဂါဝင်ရောက်ပါက ဥနှုန်းထက်ဝက် ကျဆင်းစေနိုင်ပါတယ်။ ပုံသဏ္ဌန်မမှန်တဲ့ ဥတွေ၊ အခွံပါးတဲ့ ဥတွေ၊ ဥ အတွင်းပိုင်း ဥအကာရည်မှာ ရေပါဝင်နေတဲ့ ဥတွေကို ဥလာစေတတ်ပါတယ်။ 
      #crd
""", imageURL:"assets/images/post_hen12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}