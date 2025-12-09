import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/166';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostYamPage2 extends StatelessWidget {
  const PostYamPage2({Key? key}) : super(key: key);
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
        title: Text("ပီလောပီနံစိုက်ပျိုးနည်း"),
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
      name: "အကြီးကောင်",
      //email: "ishfar@gmail.com",
      email: "ထာဝရမြန်မာပြည်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ကရား",
      //email: "ishrak@gmail.com",
      email: "မင်းလှ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုသက်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ပေါက်တော",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ဂွစာ",
      //email: "shakleen@gmail.com",
      email: "ငပုတော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးတောက်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ကြံခင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မရွှေဘုံ",
      //email: "shakleen@gmail.com",
      email: "စစ်ချောင်း",
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
      author: users[5],
      title: "Yam",
      summary: """စိုက်နည်းစနစ်..""",
      body: """မြေပြင်ရာတွင်ပေါင်းမြက်ကို ရှင်းလင်းပါ။ ထယ်ထိုးထွန်မွှေ တစ်ကြိမ်ပြီးပါက ထုံးထည့်ပါ။ ထပ်မံ၍ ထယ်ထိုးထွန်မွှေပါ။ စုစုပေါင်း ထယ်ထိုးထွန်မွှေ သုံးကြိမ်ပြုလုပ်ရမည်။ ပြီးလျှင်အရှည်လိုသလောက်ဘောင်များဆွဲပါ။ ဘောင်အမြင့် ၉ လက်မ နှင့် ၁၅ လက်မ ကြားတွင်ရှိရမည်။ တစ်ဘောင်နှင့်တစ်ဘောင်သုံးပေကွာရမည်။ တောင်ပေါ်တွင်စိုက်ပါက ကွန်တိုလိုင်းတစ်လျောက်ဘောင်ဖော်ပါ။

ရှစ်လမှ တစ်နှစ်သုံးလထိအောင် ကောင်းစွာကြီးထွားသော အပင်မှကိုင်းကို ပင်စည်အလည်လောက်တွင် အဆစ်ပေါင်း ကိုးဆစ်မှ ဆယ့်နှစ်ဆစ်ထိပါသော ကိုင်းအရှည် ဆယ့်တစ်လက်မ ကိုင်းလေးများ ဖြတ်ပါ။ ဖြတ်ရာတွင် အသုံးပြုသော ကတ်ကြေး၊ လွှတို့ကို အိမ်သုံးအရောင်ချွတ်ဆေး တစ်ရာရာခိုင်နှုန်း ဖျော်ထားသော ဆေးရည်ထဲသို့ တစ်ပင်မှ တစ်ကိုင်ဖြတ်ပြီးတိုင်း စိမ်၍ ဆေးပါ။ ဖြတ်ပြီးသား ကိုင်းများကိုမူ မှိုသတ်ဆေး၊ မြေအောင်းသတ်ဆေးများနှင့်စိမ်၍ ထားပါ။
#crd
 """,
      imageURL: "assets/images/post_yam21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "yam",
      summary: """စိုက်ပျိုးပုံ..""",
      body: """စိုက်မြောင်းများတွင် ခပ်စောင်းစောင်းအနေအထားတွင်ထား၍ တစ်ကိုင်းနှင့်တစ်ကိုင်း နှစ်ပေခွာ၍ စိုက်ပျိုးပါ။ မြေပေါ်တွင် အတက်သုံးတက်မှလေးတက်ထိ ဖော်၍စိုက်ပါ။ မတ်လမှ ဧပရယ်လဆန်းထိနောက်ဆုံး ထား၍စိုက်ကြသည်။ မစိုက်မီ ပေါင်းသတ်ဆေး အသုံးပြုနိုင်ပါက စိုက်ပြီး တစ်လကြာလျှင် ပေါင်းနှိမ်ရာတွင် သက်သာမည်။ ပေါင်းသတ်ဆေး မသုံးပါက တစ်လတစ်ကြိမ် ပေါင်းနှိမ်ပေးရသည်။
#crd
""",
      imageURL: "assets/yam5.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}