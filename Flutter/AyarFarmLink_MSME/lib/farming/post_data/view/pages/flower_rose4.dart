import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/190';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostRosePage4 extends StatelessWidget {
  const PostRosePage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FlowerPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("နှင်းဆီအမျိုးအစားများ"),

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
      name: "မောင်ထူး",
      //email: "ishfar@gmail.com",
      email: "မြင်းခြံ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ကြည်အေး",
      //email: "ishrak@gmail.com",
      email: "တောင်တွင်းကြီး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးတင်အောင်",
      //email: "shakleen@gmail.com",
      email: "ပုပွါး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုသူ",
      //email: "shakleen@gmail.com",
      email: "ဝါးတော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးငွေ",
      //email: "shakleen@gmail.com",
      email: "ဉယျာဉ်မှူး",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "နွယ်နီ",
      //email: "shakleen@gmail.com",
      email: "တောသူ",
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
      author: users[0],
      title: "Banksiae",
      summary: """တရုတ်၏ဇာတိမျိုးစိတ်Banksiae... """,
      body: """ Rosa Banksiae ၎င်းသည်တရုတ်၏ဇာတိမျိုးစိတ်ဖြစ်ပြီးအထူးသဖြင့်အနောက်နှင့်ဗဟို၏အဓိကနေရာဖြစ်သည်။ ၎င်းသည်အခြားအပင်များ၏ပင်စည်များပေါ်တွင်ဥယျာဉ်များ၌စိုက်ပျိုးခြင်း၊ ရာဇမတ်ကွက်များ၊ ပီဂလပ်စ် (သို့) အခြားမျက်နှာပြင်များပေါ်တွင်မြင့်တက်နေသည့် ၆၀၀ မီတာအထိမြင့်တက်သောအမြဲတမ်းစိမ်းလန်းသောချုံဖုတ်ကဲ့သို့ကြီးထွားလာသည်။ ကျောရိုးအနည်းငယ်သို့မဟုတ်လုံးဝမရှိဘူး။

၎င်း၏ပန်းများသည်အဝါရောင်နှင့်သေးငယ်ပြီးအချင်း 2,5m ထက်မပိုပါ, သို့သော်၎င်းသည်၎င်းတို့ကိုထိုကဲ့သို့သောနံပါတ်များဖြင့်အစောပိုင်းထုတ်လုပ်သည် (၎င်းသည်အစောပိုင်းကပန်းပွင့်များမှတစ်ခုအပါအ ၀ င်) ဖြစ်သောကြောင့်၎င်းတို့သည်အံ့သြဖွယ်ကောင်းသည်။ ထို့အပြင်သူတို့ကမွှေးကြိုင်, ခရမ်းရောင်၏အနံ့ဖြစ်ကြ၏။
#crd

 """,

      imageURL: "assets/images/post_rose41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Pompon ",
      summary: """ Pompon နှင်းဆီ...""",
      body: """
    ရေနံချောင်းထောင်ပြီးနှင်းဆီသို့မဟုတ်သေးငယ်သောနှင်းဆီဟုလည်းလူသိများသောနှင်းဆီအမျိုးအစားသည်အချို့သောနှင်းဆီဟောင်းများနှင့်ခေတ်သစ်နှင်းဆီပန်းအချို့၏ hybrids များမှပြုလုပ်ထားသည့်မျိုးပွားခြင်းအမျိုးအစားမှဖန်တီးထားခြင်းဖြစ်သည်။ ဤသည်ချုံထဲကနေဗီဇရှိပါတယ်နှင်းဆီပန်း Gallica နှင်းဆီ နှင့် Centifolia ထအခြားသူများများထဲတွင်။

၎င်းသည်အစဉ်အမြဲစိမ်းလန်းသောချုံပင်ဖြစ်ပြီး ၄၀ စင်တီမီတာခန့်အထိကြီးထွားလာသည် ၎င်းသည်အချင်း ၂ စင်တီမီတာခန့်ရှိသောပန်းများကိုများပြားစွာအရောင်အမျိုးမျိုးထုတ်လုပ်သည် (အနီရောင်၊ အဖြူရောင်၊ ပန်းရောင်၊ လိမ္မော်ရောင်၊ ) ။
#crd
""",
      imageURL: "assets/images/post_rose42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "Gallica ",
      summary: """Gallica နှင်းဆီ.. """,
      body: """ Gallica နှင်းဆီ ၎င်းသည် Castile ၏နှင်းဆီ၊ ပြင်သစ်နှင်းဆီ (သို့) Provins of rose ဟုခေါ်သည့်မျိုးစိတ်ဖြစ်ပြီးဥရောပအလယ်ပိုင်းနှင့်တောင်ပိုင်းမှအာရှအနောက်ပိုင်းဒေသများဖြစ်သည်။ ၎င်းသည်အမြင့် ၂ မီတာခန့်တွင်ရှိသောဆူးများသောချုံဖုတ်ကဲ့သို့ကြီးထွားလာသည်။ 
      ၎င်းသည်ပန်းပွင့်များကိုအချင်း ၄ စင်တီမီတာမှ ၄ စင်တီမီတာခန့်အထိထွက်ရှိပြီးပွင့်ချပ်များဖြင့်ဖွဲ့စည်းထားသောနွေ ဦး တိုင်းမွှေးသောအနံ့ထွက်စေသည်။.#crd

 """,

      imageURL: "assets/images/post_rose43.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

  ];
}