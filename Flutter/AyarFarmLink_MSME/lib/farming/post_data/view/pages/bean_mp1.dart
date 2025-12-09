import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/147';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostMpPage2 extends StatelessWidget {
  const PostMpPage2({Key? key}) : super(key: key);

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
        title: Text("မတ်ပဲတင်ပို့ပုံ"),

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
      name: "ကိုသစ္စာ",
      //email: "ishfar@gmail.com",
      email: "မြင်းခြံ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မယ်မဒီ",
      //email: "ishrak@gmail.com",
      email: "ခနောင်တို",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "အောင်ကြီး",
      //email: "shakleen@gmail.com",
      email: "မကွေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "မိုးဒီ",
      //email: "shakleen@gmail.com",
      email: "လူဝကြီး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးအောင်",
      //email: "shakleen@gmail.com",
      email: "သံတွဲ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ဉမ္မာ",
      //email: "shakleen@gmail.com",
      email: "နတ်မောက်",
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
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "5",
      author: users[4],
      title: "black garm",
      summary: """အိန္ဒိယနိုင်ငံက... """,
      body: """မြန်မာနိုင်ငံမှာစိုက်ပျိုးမှုအများဆုံးပဲအမျိုးအစားတွေထဲမှာမတ်ပဲပါဝင်ပါတယ်။
       နည်းပညာမလို၊ အလုပ် မရှုပ်စေပဲ အချိန်တန်ရင် ထွက်နှုန်းတစ်ခုနဲ့ ဝင်ငွေရစေတဲ့သီးနှံဖြစ်ပါတယ်။ 
       မတ်ပဲကိုပြည်တွင်းမှာ စားသုံးတာမရှိသလောက်နည်းပါးပြီး ပြည်ပကိုသာအဓိကတင်ပို့ပါတယ်။ 
       အဓိကတင်သွင်းတဲ့နိုင်ငံ ကတော့ အိန္ဒိယနိုင်ငံဖြစ်ပါတယ်။ မြန်မာပြည်တွင်းစားသုံးမှုမရှိပဲ အိန္ဒိယကိုအဓိကတင်ပို့ရောင်းချတာ ကြောင့် မတ်ပဲဈေးနှုန်းဟာ အိန္ဒိယနိုင်ငံရဲ့ ပြည်တွင်းပေါက်ဈေးနဲ့ အိန္ဒိယနိုင်ငံအစိုးရရဲ့ ပဲမျိုးစုံအပေါ် ချမှတ်တဲ့ မူဝါဒများအပေါ်မူတည်နေပါတယ်။ 
       တနည်းအားဖြင့်တော့ ရောင်းသူဈေးကွက်မဟုတ်ပဲ ဝယ်သူဈေးကွက်ဖြစ်ပါတယ်။
အိန္ဒိယသည် ပဲစားသုံးမှုများပြားပြီး ပြည်ပကိုလဲ တဆင့်ပြန်လည်တင်ပို့နေတဲ့အတွက် ပြည်တွင်း ပဲစိုက်ပျိုးမှုနဲ့မလုံလောက်ပါဘူး။ 
နှစ်စဥ်ဝယ်ယူတင်သွင်းနေရသလို ပဲလိုအပ်ချက်ကလည်းများပါတယ်။ မြန်မာနိုင်ငံတခုတည်းကနေ ဝယ်ယူတင်သွင်းတာမဟုတ်ပဲ ပါကစ္စတန် နဲ့ ဥရောပ၊ အာဖရိက ဘက်က နေပါတင်သွင်းပါတယ်။ 
ရုရှား ကနေ ပဲရာဇာတင်သွင်းဖို့ကြိုးစားခဲ့ပါသေးတယ်။ ရုရှား-ယူကရိန်း အရေးအခင်းကြောင့် မတင်သွင်းဖြစ်ခဲ့တာပါ။


 """,

      imageURL: "assets/images/post_mp1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[5],
      title: "black garm",
      summary: """လက်ရှိအခြေအနေကတော့...""",
      body: """အိမ်နီးချင်းနိုင်ငံရဲ့ ပဲလိုအပ်ချက်ကလဲ များပြားနေကြောင်းသိရပြီး ပါကစ္စတန်နိုင်ငံမှာတောင် အိန္ဒိယဖက်ကအဝယ်လိုက်လို့ ပဲဈေးမြင့်လာတာတွေ့ရပါတယ်။ 
      အိန္ဒိယနိုင်ငံ ပြည်နယ်အချို့မှာလည်း ရာသီဥတုမမှန်တာတွေ ရေရရှိမှုအခက်အခဲတွေနဲ့ အထွက်နှုန်းထိခိုက်တာတွေရှိလာဦးမှာပါ။ 
🔹ဒါကြောင့် မတ်ပဲဈေးဆက်လက်တက်ဖို့ရှိပါသေးတယ်။ 
သို့သော် လက်ရှိအခြေအနေအားလုံးက တသမတ်တည်း သုံးသပ်နိုင်လောက်အောင်မဖြစ်နိုင်ပါဘူး။ 
အမြဲပြောင်းလဲနေပြီးခိုင်မာမှုလဲမရှိပါဘူး။
 ကမ္ဘာ့ဘဏ်ရဲ့ နှစ်စဥ်စီးပွားတိုးတက်မှုဆိုင်ရာတွက်ချက်မှုမှာ မြန်မာနိုင်ငံကိုထည့်သွင်းတွက်ချက်ခြင်း မရှိပဲ ဖယ်ချန်ထားရလောက်အောင် မသေချာမရေရာမှုတွေရှိနေပါတယ်။
 လက်ရှိ Export/Import ကိစ္စလေးတွေနဲ့ ငွေကြေးလဲလှယ်မှုအပိုင်းကို တနည်းနည်းနဲ့ကျော်လွှားနိုင်ခဲ့ရင်တော့ ပဲဈေးကောင်းမယ့် နှစ်လို့ပြောလို့ရပါတယ်။
#crd

""",
      imageURL: "assets/images/post_mp2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}