import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/133';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostSesamePage2 extends StatelessWidget {
  const PostSesamePage2({Key? key}) : super(key: key);
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
        title: Text("နှမ်းစိုက်ပျိုးနည်း"),
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
      author: users[5],
      title: "Sesame",
      summary: """စိုက်ပျိုးနည်းစနစ်... """,
      body: """တစ်ဧကလျှင် အပင်ဦးရေ တစ်သိန်းလောက်ရဖို့ အတန်းလိုက်စိုက်ပျိုးမယ်ဆိုရင် သင့်တော်တဲ့ ပင်ကြားတန်းကြားကတော့ ဆင်းရတနာ-၄ နဲ့ ဆင်းရတာနာ-၁၂ တို့လို တစ်ပင်တိုင်မျိုးများအတွက် တန်းကြား ၁၂ လက် မနဲ့ ပင်ကြား ၄ လက်မ ထား ရှိပြီး ဆင်းရတနာ - ၃ ၊ ဆင်းရတနာ- ၅ နဲ့ ဆင်းရတနာ-၈၊ ဆင်းရတနာ-၉ တို့လို ကိုင်းဖြာမျိုးများအတွက် တန်းကြား ၁၅ လက်မနဲ့ ပင်ကြား ၄ လက်မထားသင့်ပါတယ်။ မျိုးစေ့ကို မြေအောက် ၁.၅-၂ လက် မထက် မနက်စေဘဲ အစိုဓါတ်မိအောင်စိုက်ပါ။ ကြဲပက်စိုက်ထားမယ်ဆိုရင် ထွန်နဲ့ ကန့်လန့်ဖြတ် မှုန်းပေးခြင်းကို အပင်ပေါက်စုံပြီး ၇-၁၀ ရက်အတွင်း ဆောင်ရွက်ဖို့လိုပါတယ်။
#crd
 """,
      imageURL: "assets/images/post_sesame21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[0],
      title: "Sesame",
      summary: """မျိုး/မျိုးစေ့နှုန်းထား...""",
      body: """ဆင်းပဒေသာ-၃ နှမ်းနက်မျိုးနဲ့ ဆင်းရတနာ-၄ နှမ်းမျိုးတို့ကို ရာသီမရွေးစိုက်ပျိုးနိုင်ပြီး အထက် မြန်မာနိုင်ငံ မိုးကြိုရေသွင်းစိုက်ဒေသများအတွက် ဆင်းရတနာ-၄ နှမ်းမျိုးနဲ့ ဆင်းရတနာ-၅ နှမ်းဝါ မျိုးများကို စိုက်ပျိုးနိုင်ပါတယ်။ ဆင်းရတနာ-၈၊ ဆင်းရတနာ-၉ နဲ့ ဆင်းရတနာ-၁၂ တို့ကိုလည်း စိုက်ပျိုးနိုင်ပါတယ်။ ကြဲပက်စိုက် မယ်ဆိုရင် တစ်ဧကကို ၂-၃ ပြီနှုန်း၊ အတန်းလိုက် စိုက်မယ်ဆိုရင် ၁.၅-၂ ပြီနှုန်း စိုက်ပျိုးသင့်ပါတယ်။ နှမ်းမစိုက် မီ အပင်ပေါက်ရာနှုန်းစမ်းသပ်ဖို့လိုပြီး အပင်ပေါက်ရာနှုန်း (၈၀) အထက်ရှိမှသာ စိုက်ပျိုးသင့်ပါတယ်။
#crd
""",
      imageURL: "assets/images/post_sesame22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}