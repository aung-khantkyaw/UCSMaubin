import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/159';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCanePage1 extends StatelessWidget {
  const PostCanePage1({Key? key}) : super(key: key);
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
        title: Text("ကြံစိုက်ပျိုးနည်း"),
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
      author: users[0],
      title: "Cane",
      summary: """ကြံစိုက်ပျိုးတော့မယ်ဆိုရင်...""",
      body: """ကြံစိုက်ပျိုးမည့်မြေကို ထယ်ရေးနက်နက် နှင့် ထွန်ရေးညက်ညက် ရရှိအောင် ပြုလုပ်ပါ။
- ထွန်မွှေနေစဉ်တွင် နွားချေး တစ်ဧကကို ၅ တန် ထည့်သွင်းပြီး စိုက်ပျိုးမြေကို ညီညာအောင် ညှိပါ။
- အလျား x အနံ x အမြင့် (၄၀ ပေ x ၁ ပေ x ၁၀ လက်မ) ရှိသော စိုက်မြောင်းများကို ၄ ပေ ခြား၍ ပြင်ဆင်ပါ။
ကြံစိုက်ပျိုးချိန် - နိုဝင်ဘာလ မှ ဖေဖော်ဝါရီလ
မျိုးပိုင်းများကို တန်းခြား ၁ ပေခြား၍ တေ့စပ် (သို့) နဘေထပ်ပုံစံထားပါ။
- မျိုးပိုင်းများပေါ်မှ မြေကြီးခပ်ပါးပါးဖုံးပေးပါ။
#crd
 """,
      imageURL: "assets/images/post_cane1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Cane",
      summary: "ကြံသင့်တော်သောရာသီဥတု...",
      body: """အပူချိန် (၂၀- ၄၂) ဒီဂရီစင်တီဂရိတ်တွင်ကောင်းစွာ စိုက်ပျိုး ဖြစ်ထွန်းသည်။ နေရောင် ကြာရှည်စွာ ရရှိခြင်းကို အလွန်တရာနှစ်သက်သည်။ အကောင်းဆုံး အပင်ဖွံဖြိုးမှု့အတွက် တနှစ်တာ မိုးရေချိန် (၇၀ -၉၈)လက်မကြား ရရှိရန် လိုအပ်သည်။ သွင်းရေ ရရှိနိုင်ပါက တနှစ်ပတ်လုံး စိုက်ပျိုး ဖြစ်ထွန်းနိုင်သော သီးနှံဖြစ်သည်။ ဆောင်းတွင်းတွင် (၆- ၈) ဒီဂရီစင်တီဂရိတ်ထိ နွေရာသီတွင် (၄၀ -၄၂) ဒီဂရီစင်တီဂရိတ် အထိ အပူချိန် အတက်အကျအနိမ့်အမြင့်ကို ခံနိုင်ရည်ရှိသည်။
#crd
""",
      imageURL: "assets/images/post_cane2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}