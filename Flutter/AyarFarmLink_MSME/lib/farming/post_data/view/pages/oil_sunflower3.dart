import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/177';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}



class PostSunflowerPage3 extends StatelessWidget {
  const PostSunflowerPage3({Key? key}) : super(key: key);

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
        title: Text("ရောဂါများတားဆီးကာကွယ်နည်း"),

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
      author: users[4],
      title: "Disease",
      summary: """ပိုးနဂါးအန္တာရာယ်အတွက်...""",
      body: """နေကြာဖျက်ဆီးသည့် ပိုးမွှားတစ်ကောင်မှာ ပိုးနဂါး ဖြစ်ပြီး ကာကွယ်ရန်မှာ ပေါင်းမြက် ပြောင်အောင်ရှင်းလင်းပါ။ ထယ်ရေးနက်နက် ထိုးပြီး ဥနှင့်အကောင်ပါသော အရွက်များကို ဖျက်ဆီးပါ။ ဒိုင်ယာဇီနွန် တစ်ဧက ၃ကီလိုနှုန်း မြေပြင်ချိန်တွင် ထည့်ပါ။ 
      ၁၂ပင်တွင် ၅၈ ကောင်တွေ့ပါက ဒိုင်ယာ/မြန်မာ ဇီနွန်ကို ညနေ၊ညဦးနှင့် နံနက်စောစောပိုင်းတို့တွင် နှုန်းထားမှန်အောင်ဖျန်းက ပို၍ ထိရောက်စေပါသည်။
#crd ရွှေနဂါး
 """,

      imageURL: "assets/images/post_sunflower21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[2],
      title: "Sunflower",
      summary: """ရွက်စုံစားခူဝါအန္တရာယ်အတွက်...""",
      body: """ရွက်စုံစားခူဝါမှာ ပေါင်းမြက်ရှင်းလင်း၍ ဥနှင့် ခူကောင်ရှိသော အရွက်များကို ဖျက်ဆီးပါ။ ၁၂ပင်တွင် ၅၈ ကောင်တွေ့ပါက မာလာသီယွန် တစ်ဧက ၅၀၀ စီစီနှုန်း သုံးပါ။ မြေပြင်ချိန်တွင် မြေအောင်းပိုးသတ်ဆေး ၁ဧက ၅ကီလိုနှုန်း ထည့်ပေးရန် လိုပါသည်။ 
      နေသာသောနေ့တွင် မီးခိုးမှိုင်းတိုက်ပေးပါ။ တမာပိုးသတ်ဆေး ၁ဧက ၆၀ စီစီ ရေ၁ဂါလံနှင့်ဖျော်၍ ၁ပတ်၁ကြိမ် မှန်မှန်ဖြန်းပေးရန် လိုသည်။
#crd ရွှေနဂါး
""",
      imageURL: "assets/images/post_sunflower22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[3],
      title: "Sunflower",
      summary: """ရွက်ပြောက်ရောဂါအန္တရာယ်အတွက်...""",
      body: """ရွက်ပြောက်ရောဂါမှာ ၂၆ ဒီဂရီစင်တီဂရိတ်တွင် မှိုမျှင်များ ပွားများမှု အားကောင်းစေသည်။
       မိုးမကြာခဏရွာပြီး ပူပြင်းခြောက်သွေ့က ရောဂါပိုဖြစ်သည်။ ရောဂါရအပင်များကိုနုတ်၍ မီးရှို့ပါ။ မျိုးမတူသီးနှံများ အလှည့်ကျစိုက်ပါ။ ပင်လုံးပြန့် မှိုသတ်ဆေးဖြင့် ကာကွယ်နှိမ်နင်းပါ။
#crd ရွှေနဂါး
""",
      imageURL: "assets/images/post_sunflower32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}