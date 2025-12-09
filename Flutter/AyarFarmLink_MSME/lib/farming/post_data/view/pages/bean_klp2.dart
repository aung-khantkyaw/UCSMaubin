import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/151';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostKlpPage2 extends StatelessWidget {
  const PostKlpPage2({Key? key}) : super(key: key);
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
        title: Text("ကုလားပဲစိုက်ပျိုးနည်း"),
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
      id: "1",
      author: users[0],
      title: "Chickpeas",
      summary: """စိုက်ပျိုးနည်းစနစ်.. """,
      body: """- မျိုးစေ့များကို နာရီဝက်ခန့် ရေစိမ်ပြီး ပဲမြစ်ဖု ဇီဝမြေသြဇာ တစ်ထုပ်နှင့် သမအောင်ရောမွှေစိုက်ပါ။
- အပင်အစိပ်အကျဲညီအောင် မျိုးစေ့ကို ကြဲပါ။
- မျိုးစေ့ကြဲပြီးပြီးချင်း ကြမ်းဖြင့် နှစ်ပြန်အုပ်ပေးပါက အစိုဓာတ် လုံလောက်စွာ ရရှိ၍ အပင်ပေါက် ညီညာပြီး လိုအပ်သော အပင်ဦးရေ ရရှိနိုင်ပါသည်။
#crd
 """,
      imageURL: "assets/images/post_klp11.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Chickpeas",
      summary: """မြေပြုပြင်ခြင်း..""",
      body: """- ထယ်ရေးနက်၍ ထွန်ရေးညက်စေရန် ထွန်စက်ဖြင့် ၂ စပ်ထွန်ပါ။ မြေအမျိုးအစားအလိုက် ထယ် ၃  ၄ စပ် လိုအပ်ပါသည်။
- မြေပြုပြင်ချိန်တွင် နွားချေးမြေဩဇာ - တစ်ဧကလျှင် ၁၀၀ တင်းနှင့် မြေအမျိုးအစားအလိုက် တီစူပါ (၈  ၂၄) ပြည်နူန်းထည့်ပါက အထွက်နူန်း ကောင်းမွန်စေပါသည်။
- ထယ်ရေးနက်နက် (၈ လက် မ  ၁၀ လက် မ) ထွန်ယက်ခြင်းဖြင့် လေဝင်လေထွက်ကောင်းမွန်စေပြီး ပင်ညှိုးရောဂါ ကျရောက် မှုကို ကာကွယ်နိုင်ပါသည်။
#crd
""",
      imageURL: "assets/images/post_klp12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Chickpeas",
      summary: """မျိုးစေ့နှုန်းထား..""",
      body: """အတန်းလိုက်စိုက်ခင်းတွင် တစ်ဧက ပျမ်းမျှ (၁၆) ပြည်နှုန်းအားလည်းကောင်း၊ ကြဲပက်သည့် စိုက်ခင်းတွင် တစ်ဧကပျမ်းမျှ (၂၄) ပြည်နှုန်းသုံးစွဲပါ။
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