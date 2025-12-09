import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/pig.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/84';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostPigPage1 extends StatelessWidget {
  const PostPigPage1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PigPage();
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
      name: "တိုးအောင်",
      //email: "ishfar@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ပပ",
      //email: "ishrak@gmail.com",
      email: "ချောင်းတွင်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုပေါ",
      //email: "shakleen@gmail.com",
      email: "တောသား",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "နောင်ကြီး",
      //email: "shakleen@gmail.com",
      email: "ဘောစိ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ချစ်ဖူး",
      //email: "shakleen@gmail.com",
      email: "မြို့သစ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမြ၀င်း",
      //email: "shakleen@gmail.com",
      email: "မြစ်သား",
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
      author: users[5],
      title: "Pig",
      summary: """ဝက်၏ဘဝအစနှင့်သဘာဝ. ..""",
      body: """
    တိုးတက်သော ဝက် မွေးမြူရေးအမြင်ရှိသူတွေဟာ ဝက်ရဲ့သက်တမ်းကို ဝက်မွေးချိန်မှစပြီး မမှတ်ကြပါ။ မိခင်ဝက် မကြီး ပဋိသန္ဓေစတည်တဲ့ အချိန်မှစပြီး မှတ်ကြပါတယ်။ ဝက် မ ပဋိသန္ဓေတည်တဲ့ ရက်ကို ၁၁၃ ရက် သို့မဟုတ် ၁၁၄ ရက်လို့ သတ်မှတ်ကြပါတယ်။ ဝက်ကို သားတင်တဲ့အခါ အရွယ်ရောက်ပြီး ကျန်းမာတဲ့ ဝက်မနဲ့ ဝက်ထီးကိုသာအသုံးပြုရပါတယ်။  ဝက်သိုးအငှားလိုက်သူများက တစ်ရက်အတွင်း ဝက်မ ၄၊  ၅ ကောင်ဖြင့် လိုက်စေခြင်းမှာ မှန်ကန်ခြင်းမရှိပါ။ တစ်ရက်အတွင်း ဝက်မတစ်ကောင်သာ လိုက်သင့်ပါတယ်။ ဝက်တွေမှာ ဗီဇအားဖြင့် သွေးအားနည်းတဲ့ရောဂါရှိကြပါတယ်။ သွေးအားနည်းရောဂါမှာ သံဓာတ်ချို့တဲ့ ခြင်းကြောင့် ဖြစ်ပါတယ်။  ဝက်ကလေးများမမွေးဖွားမီ သံဓာတ်ချို့တဲ့မှုမဖြစ်အောင် ကြိုတင်လုပ်ဆောင်ချက်တွေ လုပ်ထားသင့်ပါတယ်။ ပထမနည်းမှာ သန္ဓေတည်စဝက်မကြီးအား သံဓာတ်ကြွယ်ဝတဲ့ ကြက်ဟင်းခါးသီး၊ ကြက်ဟင်းခါးရွက်၊ ဒန့်ဒလွန်ရွက်၊ ကြိတ်မှန်ရွက်များကို ကျွေးထားသင့်ပါတယ်။ အချို့က သံဓာတ်ပါတဲ့ ဖဲရပ်စ်ဆာလ်ဖိတ် ခေါ် သံဒုတ္ထာကို အစာအတွင်း အနည်းငယ်ထည့်ကျွေးခြင်း၊ အချို့က သံဓာတ်ပါသောထိုးဆေးများကို ဝက် မကြီးအား ၃၊ ၄ ကြိမ် ထိုးပေးကြပါတယ်။  #crd
 """,
      imageURL: "assets/images/post_pig1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Pig",
      summary: """ သံဓာတ်ဖြင့်သွေးကိုမွေးခြင်း..""",
      body: """သာမန်ဝက်ကလေးတွေမွေးဖွားလာဖို့  ကြိုတင်ပြီး သံဓာတ်ရရှိအောင် ပြုလုပ်မထားပါက သံဓာတ်ချို့တဲ့မှုကြောင့်  သွေးအားနည်းတဲ့အခြေအနေမျိုး မလွဲမသွေရောက်ကြရပါတယ်။  သွေးအားနည်းခြင်းကြောင့် ဝက်ငယ်ရဲ့နှာခေါင်းနဲ့ စအိုဝမှ ရောဂါစဝင်ပါတယ်။ နှာခေါင်းမှာကျရောက်တဲ့ရောဂါတွေက အအေးမိ၊ နှာစေး၊ ချောင်းဆိုးခြင်းဖြစ်ပြီး၊ စအိုဝမှာ ဝမ်းပျက်ရောဂါဖြစ်နိုင်ပါတယ်။ ရောဂါရဲ့အရင်းအမြစ်မှာ သံဓာတ်ချို့တဲ့ခြင်းကြောင့်ဖြစ်ရတဲ့ သွေးအားနည်းရောဂါဖြစ်ပါတယ်။ ဒါကြောင့် ဝက်ကလေးများ သံဓာတ်မချို့တဲ့စေရန်  ကြိုတင်ကာကွယ်မှုများ ပြုလုပ်ဖို့ အထူးလိုအပ်ပါတယ်။ အချို့က သံဓာတ်နဲ့ ဗီတာမင်ဘီ-၁၂ ထိုးဆေးကို အသုံးပြုကြပါတယ်။ အချို့က ဖဲရပ်စ်ဆာလ်ဖိတ်လို့ခေါ်တဲ့ သံဒုတ္ထာကို သနပ်ခါးကဲ့သို့ ပျစ်ပျစ်အရည်ဖျော်ပြီး  ဝက် မကြီးရဲ့နို့သီးတွေမှာ သုတ်လိမ်းထားပါတယ်။ ဝက်ကလေးတွေနို့စို့တဲ့အခါ ဝက် မကြီးရဲ့ နို့သီးမှာရှိနေတဲ့ သံဒုတ္ထာများ ဝက်ကလေးများရဲ့ အစာလမ်းကြောင်းအတွင်း ရောက်ရှိသွားမှာဖြစ်ပါတယ်။ အချို့ကလည်း ကြက်ဟင်းခါးရွက်၊ ကြိတ်မှန်ရွက်၊ ဒန့်ဒလွန်ရွက်ရဲ့ သတ္ထုရည်ကို ဝက်ကလေးတွေကို တိုက်ကျွေးကြပါတယ်။ ဝက်ငယ်တွေမှာ ဖြစ်တတ်တဲ့ အအေးမိ၊ နှာစေး၊ ချောင်းဆိုး၊ ဝမ်းပျက်၊ ဝမ်းလျောခြင်းကို ကြိုတင်ကာကွယ်ခြင်း ဖြစ်ပါတယ်။ 
#crd
""", imageURL:"assets/images/post_pig2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Pig",
      summary: """ မျိုးကောင်းမျိုးသန့်လက္ခဏာများ..""",
      body: """
      -အစာမှအသားပြောင်းလဲမှုမြင့်မားမှု။
      -ရောင်းတန်းဝင်အသားအရည်အသွေးကောင်းမှု။
      -ရောဂါဒဏ်ခံနိုင်ရည်ရှိမှု တို့ကိုဦးစားပေးရွေးချယ်ရပါမည်။
      #crd
""", imageURL:"assets/images/post_pig14.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}