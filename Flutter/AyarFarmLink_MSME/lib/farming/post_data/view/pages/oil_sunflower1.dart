import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/175';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}



class PostSunflowerPage1 extends StatelessWidget {
  const PostSunflowerPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  OilPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("နေကြာစိုက်ပျိုးနည်း"),

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
      name: "မောင်မျိုးမင်း",
      //email: "ishfar@gmail.com",
      email: "ရင်တွင်းဖြစ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဦးအုန်းကျော်",
      //email: "ishrak@gmail.com",
      email: "ကျုံမငေး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဖိုးကဲ",
      //email: "shakleen@gmail.com",
      email: "ချောင်းတွင်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုသန်းထိုက်",
      //email: "shakleen@gmail.com",
      email: "သာမည",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးစိုးလွင်လွင်",
      //email: "shakleen@gmail.com",
      email: "ကျုံကလွတ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မချိုချို",
      //email: "shakleen@gmail.com",
      email: "မငေးကျောင်း",
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
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "2",
      author: users[1],
      title: "Sunflower",
      summary: """စိုက်ပျိုးနည်း...""",
      body: """နေကြာသီးနှံသည် စိုက်ပျိုးထုတ်လုပ်မှု စရိတ် နည်းပါးခြင်း၊ အပျက်အစီး နည်းခြင်း၊ အထွက်နှုန်းနှင့် တစ်ဧကလျှင် ဆီထွက်နှုန်းကောင်းမွန်ခြင်းတို့ကြောင့် ပြည်တွင်း စားသုံးဆီ ဖူလုံရေးအတွက် အထောက်အကူ ပြုနိုင်သည့် သီးနှံ ဖြစ်ပါသည်။
      နေကြာမျိုးတွင် အရိုင်းမျိုးနဲ့ အယဉ်မျိုးဆိုပြီးတော့ ၂မျိုးရှိပါတယ် ။အရိုင်းပင်က နှစ်ရှည်ခံအပင်ဖြစ်ပြီး နေကြာအယဉ်ကတော့ တစ်နှစ်ခံပင်ပဲဖြစ်ပါတယ်။
မြေသားနက်၍ မွပြီး မြေဆီအာဟာရ ထက်သန်သောမြေနှင့် နုန်းမြေတွင် စိုက်ပျိုးနိုင်ပါတယ်။ရေစိမ့်အားကောင်းပြီး ရေမ၀ပ်သော မြေဖြစ်ရမည်။ 
မြေချဉ်ငံကိန်း (pH) ၆.၀ မှ ၇.၅ ဖြစ်ရမည်။
နုန်းမြေ ၊ သဲနုန်းမြေ ၊ နုန်းမြေဆွေးတို့မှာ နေကြာကကောင်းစွာဖြစ်ထွန်းပါတယ်။သဲမြေသန့်သန့် ရွှံ့ဆွေးမြေနဲ့ ကျောက်စရစ်မြေမျိုးတွင် နေကြာကို မစိုက်ပျိုးသင့်ပါ။
နေကြာပင်ဟာ မိုးခေါင်တာကို ခံနိုင်ပြီးတော့ မိုးများပြီး ရေဝပ်တဲ့ဒဏ်ကို မခံနိုင်တဲ့အတွက်မိုးများတဲ့ဒေသတွေမှာဆိုရင် မိုးလယ်နဲ့ ဆောင်းဦးလိုအချိန်မျိုးတွင်စိုက်ပျိုးသင့်ပါတယ်။
အကောင်းဆုံးကတော့ မိုးနှောင်းပိုင်းမှာ စိုက်ပျိုးတာပဲဖြစ်ပါတယ် ။
နေကြာပန်းပင်စိုက်ပျိုးမဲ့ မြေကိုတော့ သုံးသွားလင်ဗန်းထယ်နဲ့ထိုးပေးပြီး ၁၆သွားထွန်နဲ့ ၂စပ်၃စပ် မွှေပေးရမှာဖြစ်ပါတယ်။စိုက်ဘောင်များကိုဖော်၍မျိုးစေ့များကို မြေအနက်၂လက်မအထက် ပို၍ မနက်စေပဲ မျိုးစေ့ချပေးရမှာဖြစ်ပါတယ်။
တစ်ကျင်းကိုတော့ အစေ့ ၄စေ့၅စေ့ ချပေးရမှာဖြစ်ပြီးလေးငါးရက်အတွင်းမှာ အပင်ပေါက်ကလေးများထွက်လာမှာပဲဖြစ်ပါတယ် ။အရွက်များထွက်လာတဲ့အခါမှာတော့ အကောင်းဆုံးအပင်ကို ချန်ထားပြီးတော့ ကျန်အပင်တွေကို နှုတ်ပေးရမှာဖြစ်ပါတယ်။
#crd


 """,

      imageURL: "assets/images/post_sunflower1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[3],
      title: "Sunflower",
      summary: """ရိတ်သိမ်းနည်းစနစ်...""",
      body: """နေကြာပွင့် နောက်ကျောဘက် အဝါရောင် သမ်းလာချိန် သို့မဟုတ် ရက်၁၀၀မှာ ပန်းပွင့်တွေရဲ့ပုံသဏ္ဍာန်ဟာညို၀ါရောင်ပြောင်းလာချိန်တွင် အစေ့များအောင်မြင်ပြီဖြစ်၍ စတင်ရိတ်သိမ်းနိုင်ပါတယ်။
      ဒါကြောင့် ပန်းပွင့်အုံရဲ့အောက် လေးလက်မခန့် ခွာပြီးတော့ ခုတ်သိမ်းပေးရမှာလည်း ဖြစ်ပါတယ်။

ရိတ်သိမ်းပြီး နေကြာပွင့်အား တစ်ပွင့်နှင့် တစ်ပွင့် မထပ်စေဘဲ (၂-၃) ရက် နေလှန်း အစေ့ခြွေနိုင်ပါတယ်။
အစေ့တွင်း အစိုဓာတ် (၅-၆) ရာခိုင်နှုန်းထိ ရရှိရန် (၂-၃)ရက် နေလှန်း၍ လေလုံအောင် သိုလှောင်ရပါမယ်။
#crd greenwaymyanmar
""",
      imageURL: "assets/images/post_sunflower2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}