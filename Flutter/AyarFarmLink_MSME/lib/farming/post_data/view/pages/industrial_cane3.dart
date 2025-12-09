import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/163';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCanePage3 extends StatelessWidget {
  const PostCanePage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  IndustrialPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ကြံနှင့်ကုန်ကြမ်းထုတ်လုပ်ပုံများ"),
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
      name: "ဦးကျော်မင်းခိုင်",
      //email: "ishfar@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်အေးအေးရီ",
      //email: "ishrak@gmail.com",
      email: "စစ်တွေ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုကောင်းကောင်း",
      //email: "shakleen@gmail.com",
      email: "သမက်ပြေ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုအောင်ထက်နိုင်",
      //email: "shakleen@gmail.com",
      email: "ငါးသိုင်းချောင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးမိုးဒီ",
      //email: "shakleen@gmail.com",
      email: "ပုသိမ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မခိုင်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ရုံးဒေါင့်",
      image: "assets/images/cus6.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
  ];
  static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment:
      "အသုံးဝင်လို့ကျေးဇူးပါ",
      user: users[0],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ခုလိုတွေများများတင်ပေးပါနော် ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "တကယ်လားခုမှသိတယ်ဟီး",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးအထူးတင်ပါတယ်ဗျ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[2],
      title: "Cane",
      summary: """သကြားထုတ်လုပ်ပုံ......""",
      body: """သကြားထုတ်လုပ်ပုံအဆင့်ဆင့် အပိုင်း(၁)
      
      အဆင့်(၁) ကြံကုန်ကြမ်းများအားကြံကြိတ်စက်သို့ပို့ဆောင်ပါသည်။
      အဆင့်(၂) ထွက်ရှိလာသောကြံရည်များအားကြည်စေရန်အတွက်မဖောက်ထုံးအသုံးပြုပြီးအကြည်ခံခြင်းနှင့်သန့်စင်ခြင်း။
      အဆင့်(၃) သန့်စင်ပြီးသောကြံရည်များအားသကြားစက်ဌာနသို့ပို့ဆောင်ပါသည်။
      အဆင့်(၄) သကြားချက်လုပ်ဌာနမှလိုအပ်သောရေများအားစက်ရုံတွင်းရေသန့်စက်တွင်သန့်စင်ပါသည်။
Crd#
 """,
      imageURL: "assets/images/post_cane31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[3],
      title: "Cane",
      summary: """သကြားထုတ်လုပ်ပုံ......""",
      body: """သကြားထုတ်လုပ်ပုံအဆင့်ဆင့် အပိုင်း(၂)
      
      အဆင့်(၄) သကြားချက်လုပ်ဌာနမှကြံရည်အတွင်းရှိပါရှိသောရေဓာတ်မျာအားဖယ်ရှားရန်ကြိုချက်ခြင်း။
      အဆင့်(၅) ကြံချက်ပြီးထွက်ရှိလာသောကြံမြုပ်ချေးများအားကြံစိုက်တောင်သူများမှလာရောက်သယ်ဆောင်ခြင်း။
      အဆင့်(၆) ကြံချက်ပြီးထွက်ရှိလာသောကြံရည်များအားသကြားချက်လုပ်ဌာနသို့့ပို့ဆောင်ခြင်း။
      
Crd#
 """,
      imageURL: "assets/images/post_cane32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

    PostModel(
      id: "3",
      author: users[1],
      title: "Cane",
      summary: """သကြားထုတ်လုပ်ပုံ......""",
      body: """သကြားထုတ်လုပ်ပုံအဆင့်ဆင့် အပိုင်း(၃)
      
      အဆင့်(၇) သကြားချက်လုပ်ရန်အတွက်မဖောက်ထုံးကိုသာအဓိကအသုံးပြုခြင်း။
      အဆင့်(၈) သကြားချက်လုပ်ပြီးပါကပက်ကင်းဌာနသို့ပို့ဆောင်ပြီး ဈေးကွက်တွင်းသို့တင်ပို့ရောင်းချခြင်း။
      
Crd#
 """,
      imageURL: "assets/images/post_cane33.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
  ];
}