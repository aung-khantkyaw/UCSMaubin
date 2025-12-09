import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/176';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}



class PostSunflowerPage2 extends StatelessWidget {
  const PostSunflowerPage2({Key? key}) : super(key: key);

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
        title: Text("နေကြာဖျက်ပိုး"),

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
      author: users[0],
      title: "Disease",
      summary: """အဓိကဖျက်ဆီးသည့်ပိုးမွှား...""",
      body: """နေကြာသီးနှံကို အဓိကဖျက်ဆီးသည့် ပိုးမွှားတစ်ကောင်မှာ ပိုးနဂါး (Tobacco Caterpillar)ဖြစ်သည်။ ဤပိုးသည် သီးနံှအတော်များများကို ဖျက်ဆီးစားသောက်သည်။ အရွယ်ရောက်ဖလံသည် အညိုရောင်ရှိသည်။ ရှေ့အတောင်ပံ၌ အစက်အပြောက်များပါရှိသည်။ ဖလံအမသည် အရွက်အပေါ်မျက်နှာပြင်တွင် ရာပေါင်းများစွာသော ဥတို့ကို အစုလိုက်အပြုံလိုက် ဥချသည်။ ဥမှပေါက်ခါစလောက်ကောင်များသည် အစိမ်းနုရောင်ဖြစ်ပြီး ကြီးလာသောအခါ ကျောပေါ်တွင် အစိမ်းရင့်ရောင်ဖြစ်လာသည်။
အောက်ပိုင်းမှာ အစိမ်းနုရောင်သာဖြစ်သည်။ ပါးစပ်ပတ်ဝန်းကျင်တွင် ထင်ရှားသော အနက်အပြောက်များပါရှိသည်။ ပေါက်ခါစ လောက်ကောင်ငယ်များသည် အရွက်ပေါ်တွင် စုနေပြီး အရွက်အစိမ်းသားများကို ခြစ်ပြီးစားသောက်သည်။ အရွယ်ကြီးလာပါက အရွက်များကိုကိုက်ဖြတ်စားသောက်သည်။ ၄-၅ ရက်ကြာသောအခါ တစ်ကောင်စီပျံ့နှံ့သွားပြီး တစ်ရွက်မှတစ်ရွက်၊ တစ်ပင်မှတစ်ပင်သို့ ကူး၍ စားသောက်ဖျက်ဆီးကြသည်။ ရုပ်ဖုံးကို မြေကြီးထဲတွင် ပြုလုပ်သည်။
ညအခါ အပင်ပေါ်သို့ တက်ရောက်စားသောက်ဖျက်ဆီးပြီး နေ့အခါ အပင်ခြေရင်းမြေကြီးထဲတွင် ခိုအောင်းနေတတ်သည်။
#crd ထွက်တိုး


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
      summary: """ရွက်စုံစားခူဝါ...""",
      body: """နေကြာသီးနှံကို ဒုက္ခပေးနေသောနောက်ပိုးတစ်ကောင်မှာ ရွက်စုံစားခူဝါ ဖြစ်သည်။ဤပိုးသည် ပဲမျိုးစုံ၊ မြေပဲ၊ ဂုန်လျှော် စသည့် သီးနှံအတော်များများကို ဖျက်ဆီးသည်။ ပေါင်းပင်၊ သစ်ပင်များပေါ်တွင် ခိုအောင်းနေထိုင်စားသောက် အသက်ရှင်နိုင်သဖြင့် အထူးအလေးထားရန် လိုသည်။ 
      အချို့ရာသီဥတု အခြေအနေပေးသောနှစ်များတွင် ဆိုးဆိုးရွားရွား ကျရောက်တတ်သည်။
ဖလံအမသည် ဥ ၅၀ မှ ၁၀၀ အထိ အစုအပြုံလိုက် ဥပေါင်း ၇၀၀ မှ ၁၂၀၀ အထိ ဥနိုင်သည်။ အရွက်မျက်နှာပြင်အပေါ်၊အောက် နှစ်ဖက်စလုံး ဥချသည်။ ဥပြီး ၄-၅ ရက်ကြာသော် ခူကောင်လေးများ ပေါက်လာသည်။ ငယ်စဉ်တွင် အစုလိုက် အပြုံလိုက်နေထိုင်ပြီး အရွက်အစိမ်းရောင်များကို ခြစ်၍ စားသည်။ အရွယ်ကြီးလာသောအခါ အနီးအနားရှိ အပင်များသို့ ပျံ့နှံ့သွားပြီးအပွင့်၊ အဖူး၊ အညွန့်၊
ရွက်ညှာနှင့် အရွက်များကို အပေါက်ဖြစ်အောင် ကိုက်စားပြီးရွက်ကြောသာကျန်သည်။ဆန်ခါပေါက်သဖွယ်ဖြစ်နေသည်။
အရွက်များပေါ်တွင် မစင်လုံးများကို တွေ့ရသည်။ ခူကောင်များ အစာဝလာသောအခါ သစ်ရွက်ခြောက်ကြားနှင့် မြေကြီးထဲတွင် ရုပ်ဖုံးပြုလုပ်သည်။ ဥဘ၀ ငါးရက်၊ ခူကောင်ဘ၀ နှစ်ပတ်၊ ရုပ်ဖုံး ဘ၀ ခုနစ်ရက်ခန့် ကြာသည်။ 
ဤပိုးကို ကာကွယ်နှိမ်နင်းရန်မှာ ပေါင်းမြက်ချုံနွယ်များကို ပြောင်စင်အောင်ရှင်း၍ မီးရှို့ပါ။ ဥနှင့် ခူကောင်ရှိသော အရွက်များကို ခူးယူဖျက်ဆီးပစ်ပါ။
#crd ထွက်တိုး
""",
      imageURL: "assets/images/post_sunflower22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[5],
      title: "Sunflower",
      summary: """ရွက်ပြောက်ရောဂါ...""",
      body: """နေကြာသီးနှံကို နောက်ထပ်တိုက်ခိုက်ဖျက်ဆီးနေသော ရောဂါတစ်
မျိုးမှာရွက်ပြောက်ရောဂါဖြစ်သည်။ ၂၆ ဒီဂရီစင်တီဂရိတ်တွင် မှိုမျှင်များ ပွားများမှု အားကောင်းစေသည်။ နို့ရည်တည်စချိန် မိုးမကြာခဏရွာပြီး ပူပြင်းခြောက်သွေ့နေပါက ရောဂါပိုဖြစ်စေသည်။
 အရွက်များပေါ်တွင် အညိုရောင်အပြောက်များ စဖြစ်သည်။ အဝိုင်းပုံ၊ အချို့ဘဲဥပုံအကွက်များဖြစ်ပြီး အချင်း ၃ ဒသမ ၂ မှ ၅ ဒသမ သုည မီလီမီတာခန့်ရှိသည်။
အကွက်၏အလယ်တွင် ဖြူမွဲရောင်ရှိပြီး ပတ်လည်တွင် အညိုဖျော့ရောင် စက်ဝိုင်းရစ်ဖြစ်ပေါ်နေသည်။ အဝါရောင်၊ စိမ်းဖျော့ရောင် စက်ဝိုင်းရစ်များလည်း တွေ့ရှိနိုင်သည်။သေးငယ်သောအကွက်ပြောက်များသည် အောက်ခြေအရွက်များတွင် စတင်ဖြစ်ပေါ်ပြီး အပေါ်ပိုင်းအရွက်များသို့ ပျံ့နှံ့လာသည်။ ရောဂါရင့်လာပါကအကွက်အပြောက်များ ရှည်လျားလာသည်။ ရိုးတံ၊ ပင်စည်၊ ပွင့်ဖတ်များတွင် အဖြစ်များသည်။ 
ရောဂါပြင်းလာပါက ကွက်ပြောက်များအရွယ်အစားကြီးလာပြီး အရွက်များတွန့်ခြောက်လာသည်။ ပွင့်အုံလည်း ပုပ်ဆွေးကျိုးကျသွားသည်။
#crd ထွက်တိုး
""",
      imageURL: "assets/images/post_sunflower32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}