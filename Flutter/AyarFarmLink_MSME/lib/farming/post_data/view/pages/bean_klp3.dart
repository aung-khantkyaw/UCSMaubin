import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/153';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostKlpPage3 extends StatelessWidget {
  const PostKlpPage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  BeanPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ကုလားပဲအမျိုးအစားများ"),
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
      name: "ကိုတူး",
      //email: "ishfar@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 22),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မြမြ",
      //email: "ishrak@gmail.com",
      email: "ကျုံစုတ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 12, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဇော်ဇော်",
      //email: "shakleen@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုပြူး",
      //email: "shakleen@gmail.com",
      email: "ကျောင်းရွာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလှစိုး",
      //email: "shakleen@gmail.com",
      email: "အမေ့သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မအေး",
      //email: "shakleen@gmail.com",
      email: "ကျေးလက်သူ",
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
      user: users[4],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[1],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[0],
      title: "Chickpeas",
      summary: """ဒေစီနှင့်ကာဘူလီ.. """,
      body: """ကုလားပဲအား အစေ့အရွယ်အစားနှင့် အရောင်ပေါ်မူတည်ပြီး “ဒေစီနှင့် ကာဘူလီ”ဟူ၍ (၂)မျိုး ခွဲခြားထားသည်။
(၁) “ဒေစီ”သည် လုံးဝန်းပြီး အရွယ်ကြီးကာ အစေ့အရောင်မှာ နို့နှစ်ရောင်ဖြစ်သည်။ အပင်မြင့်၊ အရွက်ကြီးပြီး အပွင့်မှာ အဖြူရောင်ဖြစ်သည်။
(၂) “ကာဘူလီ”သည် အစေ့အရွယ်သေးကာ စောင်းများပါသည်။ အရောင်မှာ နို့နှစ်၊ အညို၊ အဝါ၊ အစိမ်း ဟူ၍ အမျိုးမျိုးရှိနိုင်သည်။ ဤမျိုးတွင် သီးတောင့် (၁)တောင့်တွင် အစေ့ (၂)စေ့ခန့်သာ ပါဝင်လေ့ရှိပြီး အပင်ပုသည်။ အရွက်သေးပြီး အပွင့်သည် ခရမ်းရောင်ဖြစ်သည်။
#crd
 """,
      imageURL: "assets/images/post_klp21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Chickpeas",
      summary: """စိုက်ပျိုးရာဒေသများ..""",
      body: """ကုလားပဲကို မြန်မာနိုင်ငံတွင် စစ်ကိုင်းတိုင်း၊ ပဲခူးတိုင်း၊ မကွေးတိုင်း၊ မန္တလေးတိုင်း နှင့် ဧရာဝတီတိုင်း ဒေသကြီးတို့တွင်အများဆုံး စိုက်ပျိုးကြသည်။
ကုလားပဲသီးနှံသည် မြေအတန်းအစားမရွေး ဖြစ်ထွန်းနိုင်သည့်အားလျှော်စွာ ဧရာဝတီတိုင်း၊ ရန်ကုန်တိုင်း၊ ပဲခူးတိုင်း၊ မွန်ပြည်နယ်နှင့် ရခိုင်ပြည်နယ်တို့ရှိ လယ်မြေများပေါ်တွင် စပါးအပြီး သီးထပ်အဖြစ် စိုက်ပျိုးနိုင်ပြီး ကျန်ပြည်နယ်နှင့် တိုင်းများတွင် မိုးနှောင်းဆောင်းသီးနှံအဖြစ် ထယ်ရေးထွန်ရေးဖြင့် ကောင်းမွန်စွာ စိုက်ပျိုးနိုင်ကြပါသည်။ 
#crd
""",
      imageURL: "assets/images/post_klp22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Chickpeas",
      summary: """အပင်ပြုစုစောင့်ရှောက်ခြင်း..""",
      body: """ကုလားပဲသီးနှံသည် အခြားသီးနှံများနည်းတူ အပင်များငယ်စဉ်တွင် ပေါင်းမြက်များထူထပ်ခြင်းကို မနှစ်သက်ပါ။ ပန်းမပွင့်မီ ပေါင်းမနှိမ်နင်းပါက သီးနှံအထွက်နှုန်းကို ၂၀-၃၀% အထိလျော့နည်းစေပါသည်။ သို့ဖြစ်၍ စိုက်ပျိုးချိန်မှ ပန်းပွင့်သည့်အချိန်အထိ ၄၅ ရက်ခန့်အတွင်းတွင် ပေါင်းမြက်များရှင်းလင်းခြင်းကို မဖြစ်မနေဆောင်ရွက် ပေးရပါမည်။ အခြားပြုစုပေးရန် အချက်တစ်ချက်မှာ မြေဆီသြဇာထက်သန်သော မြေမျိုးတွင် ကုလားပဲသီးနှံ စိုက်ပျိုးသည့်အခါ အပင်သန်စွမ်းလွန်း၍ ဟုန်ပြီးအသီးအပွင့် နည်းတတ်ပါသည်။ ထိုအခါမျိုးတွင် ခေါင်ညွန့်များကို ဝါးခြမ်းဖြင့် ရိုက်ခါဖြတ်တောက်၍ဖြစ်စေ၊ နီယွန်ဆေးကို ပက်ဖျန်း၍ဖြစ်စေ နှိမ်ပေးရန် လိုအပ်မည်ဖြစ်ပါသည်။  
#crd
""",
      imageURL: "assets/images/post_klp13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}