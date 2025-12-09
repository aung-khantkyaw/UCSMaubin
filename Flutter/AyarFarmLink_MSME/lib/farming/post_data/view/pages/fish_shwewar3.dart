import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngashwewah.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/63';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostShwewarPage3 extends StatelessWidget {
  const PostShwewarPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ShweWarPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ငါးကန်တူးဖော်ခြင်း"),

      ),
      body: ListView.builder(
        itemCount: DemoValues.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(postData: DemoValues.posts[index]);
        },
      ), floatingActionButton: const FloatingActionButton.extended(
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
      name: "ဦးအောင်သူ",
      //email: "topekyii@gmail.com",
      email: "မရမ်းခွ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မောင်သန့်ဇင်အောင်",
      //email: "zawzaw@gmail.com",
      email: "သံဖြူဇရပ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမင်းနိုင်",
      //email: "kokhant@gmail.com",
      email: "ထန်းပင်စု",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဖိုးချို",
      //email: "shakleen@gmail.com",
      email: "လက်ပံတော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးနိုင်လင်း",
      //email: "shakleen@gmail.com",
      email: "မိုးညှင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေ၀သန်",
      //email: "shakleen@gmail.com",
      email: "ကလေးမြို့",
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
      summary: """မွေးမြူကန်...""",
      body: """မွေးမြူကန်
၁။ ရွှေဝါငါးကြင်းမွေးမြူရန်ကန်ကို အနည်းဆုံး အလျားပေ-၂၀၀၊ အနံပေ-၁၀၀ ရှိ ဧကဝက်ခန့် အကျယ်ဖြစ်အောင်တူးပါ။
၂။ ကန်ကို တစ်နှစ်ပတ်လုံး ရေအနက် (၄)ပေ ရှိနေစေရန် (၆) ပေခန့်နက်အောင် တူးထားရပါမည်။
၃။ ကန်ဘောင်ဖို့လျှင်လည်း ကန်နှုတ်ခမ်းမှ နေ၍ နောက်သို့ (၅) ပေဆုတ်ပြီး ကန်ဘောင်ဖို့ထားပေးပါ။
၄။ ကန်ဘောင်ထိပ်မှနေ၍ အောက်တည့်တည့်သို့ (၁)တောင် (သို့မဟုတ်) (၁၈) လက်မ အကွာတွင် ရေလျှံပေါက်တစ်ခု တပ်ထားပြီး ကန်ဘောင် မပြိုရန် ကန်ဘောင်တွင် မြက်များအပြည့်ကပ်၍ စိုက်ထားပေးပါ။
၅။ ကန်ကို ရေမထည့်မီ ထုံးမှုန့်ပိဿာ (၁၅၀) ကို ဖြန့်ပြီး ဖြူးပေးပါ။ ထုံးမှုန့်ထည့်ပြီးလျှင် ရေထည့်ပါ။
၆။ ရေထည့်ပြီး (၁)ပတ်ကြာလျှင် နွားချေး၊ ကျွဲချေး၊ ဝက်ချေး၊ ကြက်ချေး၊ ဘဲချေး စသော မည်သ ည့်တိရိစ္ဆာန်ချေးများကို ဖြစ်စေ (၄)ဂါလံဝင်ပုံးနှင့် ပုံး(၁၅၀) ထည့်ပေးပါ။
၇။ တစ်ပါတ်ကြာလျှင် ကန်ရေသည် စိမ်းလာပါမည်။ ကန်ရေစိမ်းလာသောအခါ ငါးသားပေါက်များ ထည့်နိုင်ပါသည်။
#crd
 """,

      imageURL: "assets/images/post_shwewar31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Fish",
      summary: """သြဇာဓါတ်ပြည့်ဝရန် ပြုပြင်ခြင်း...""",
      body: """  ငါးမွေးမြူရေးကန် သြဇာဓါတ်ပြည့်ဝရန် ပြုပြင်ခြင်း 
      (၁) ကန်သစ်တူးဖော်ပြီးလျှင် ထုံးနှင့်နွားချေး (သို့မဟုတ်) ကြက်ချေးထည့်၍ ရေသြဇာဓါတ်ကောင်းအောင် ပြုပြင်ရမည်။
       (၂) ထုံးထည့်ခြင်းအားဖြင့် ရေကြည်စေသည်။ ပိုးမွှားနှင့် ငါးရိုင်းများသေစေသည်။ ကန်ရေ၏ချဉ်ဖန်နှုန်း (PH) ကိုမြှင့်တင်ပေးနိုင်သည်။ 
       (၃) နွားချေးကိုထည့်ပေးခြင်းဖြင့် ရေတွင်သဘာဝငါးအစာအပင်ငယ်လေးများ (အပင်မျှောလှေးများ) ဖြစ်စေသောကြောင့် ကန်ရေစိမ်းလာမည်။
       (၄) ကြက်ချေးကိုထည့်ပေးခြင်းဖြင့် ရေတွင်သဘာဝငါးစာအကောင်ငယ်လေးများ (အကောင်မျှောလှေး) ဖြစ်စေသည်။
#crd
""",
      imageURL: "assets/shwewar1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}