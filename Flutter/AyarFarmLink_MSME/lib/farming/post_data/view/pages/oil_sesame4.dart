import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/136';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostSesamePage4 extends StatelessWidget {
  const PostSesamePage4({Key? key}) : super(key: key);
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
        title: Text("နှမ်းဆီပြုလုပ်ပုံ"),
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
      name: "ဦးမိုးသူ",
      //email: "ishfar@gmail.com",
      email: "ကြံခင်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဖြူဖြူ၀◌င်း",
      //email: "ishrak@gmail.com",
      email: "ပရိုက်၀",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးတင့်ဆွေ",
      //email: "shakleen@gmail.com",
      email: "ဘုရားကုန်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဖိုးထူး",
      //email: "shakleen@gmail.com",
      email: "တဖြိုက်မိုး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးစိုးတင့်",
      //email: "shakleen@gmail.com",
      email: "လှိုင်သာယာ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မပိုးဉ",
      //email: "shakleen@gmail.com",
      email: "မြို့ကြီးသူ",
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
  author: users[0],
  title: "Sesame",
  summary: """နှမ်းဆီအကြောင်း... """,
  body: """နှမ်းစေ့များမှရရှိသော ဟင်းသီးဟင်းရွက်ဆီတစ်မျိုးဖြစ်သည်။ ဟင်းချက်ဆီအဖြစ် အသုံးပြုခြင်းအပြင် အချို့သော ဟင်းလျာများ၏ အရသာကို မြှင့်တင်ရန်အတွက်လည်း ၎င်းကို ၎င်း၏ ကြွယ်ဝသော အရသာကြောင့် အသုံးပြုပါသည်။
အဆီထုတ်လုပ်ရန် အသုံးပြုသည့် အမျိုးမျိုးသော စီမံဆောင်ရွက်သည့်နည်းလမ်းများစွာရှိသော်လည်း အစေ့များကို ပုံမှန်အားဖြင့် ကြေမွပြီး ဖိထားသည်။
#crd
 """,
  imageURL: "assets/se4.jpg",
  postTime: DateTime(2022, 11, 25),
  reacts: 13,
  views: 45,
  comments: _comments,
  ),
  PostModel(
  id: "1",
  author: users[1],
  title: "Sesame",
  summary: """ပျောက်ကင်းနိုင်သောရောဂါများ...""",
  body: """(၁) နားလေးခြင်း နားကိုက်ခြင်း နားအုံခြင်းတို့အတွက်နှမ်းဆီစစ်စစ် နဲ့နားကိုက်ကြပ်ပေးမယ် ဆိုရင် သက်သာပျောက်ကင်းပါတယ်။
(၂) ဝမ်းကိုက်ရောဂါအတွက်နှမ်းဆီစစ်စစ်ကိုထန်းလျှက်နဲ့ကြော်စားရင်ဝမ်းကို က်ရောဂါပျောက်ကင်းပါတယ်။
(၃)နှမ်းဆီစစ်စစ်ကိုခန္ဓာကိုယ်ကိုလိမ်းပေးပါက အကြောများသန်စွမ်းပြီး အသားရေစိုပြည် ကာတောင့်တင်းခိုင်မာ ပြီးအင်အားပိုရှိလာပါမယ်။
(၄) ဝမ်းချုပ်လွန်းပြီးစမြင်းခံပါက နှမ်းဆီစစ်စစ်ကိုဟင်းစားဇွန်းတစ်ဇွန်းခန့်သောက်ပေးပါက စမြင်းခံသောရောဂါကိုပျောက်ကင်းပါတယ်။
#crd
""",
    imageURL: "assets/se5.jpg",
    postTime: DateTime(2022, 11, 25),
    reacts: 30,
    views: 65,
    comments: _comments,
  ),
  ];
}