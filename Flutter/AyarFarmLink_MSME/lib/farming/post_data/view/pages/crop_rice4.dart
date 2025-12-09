import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/30';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostRicePage4 extends StatelessWidget {
  const PostRicePage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  HomePage();
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
      name: "ဖိုးထောင်",
      //email: "ishfar@gmail.com",
      email: "မြန်မာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ပု",
      //email: "ishrak@gmail.com",
      email: "သူကြီးကတော်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မောင်မောင်ကျော်",
      //email: "shakleen@gmail.com",
      email: "စိုက်ပျိုးရေးသမားလေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုသာဂိ",
      //email: "shakleen@gmail.com",
      email: "မလတ်တို",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးလှရွှေ",
      //email: "shakleen@gmail.com",
      email: "တောင်သူဉီးကြီး",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမြင့်",
      //email: "shakleen@gmail.com",
      email: "အပျိုကြီး",
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
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[5],
      title: "ရောဂါများတားဆီးကာကွယ်နည်း",
      summary: """စိုက်ပျိုးနည်းဖြင့်... """,
      body: """သက်လျင် (သက်တမ်းတို) စပါးမျိုးကိုစိုက်ပျိုးပါ။ 
(၂) နှစ်ကျော် စိုက်ပျိုးပြီး စပါးမျိုးများကို မျိုးလဲစိုက်ပျိုးပါ။
ဖြစ်နိုင်သမျှ တစ်ချိန်တည်း၊ တစ်ပြိုင်တည်း စိုက်ပါ။  (စိုက်ချိန်ကွာဟရက်  ၂ − ၃ ပတ်ထက် မပိုပါစေနှင့်) 
အပင်စိပ်စိပ်စိုက်ခြင်းကို ရှောင်ကြဉ်ပါ။ 
ဧရိယာအကျယ်ကြီးတွင် စပါးမျိုးတစ်မျိုးတည်းစိုက်ပျိုးခြင်းကို ရှောင်ကြဉ်ပါ။
လက်ခံပင်ပေါင်းမြက်များ (ဝမ်းဘဲစာ၊ မြက်မုံညင်း) ကို ဖယ်ရှားပါ။
စပါးမဟုတ်သော အခြားသီးနှံဖြင့် သီးလှည့်စိုက်ပါ။ (စပါးပြီးစပါးထပ်မစိုက်ပါနှင့်)
ဖြစ်နိုင်သမျှ အချိန်တိုင်း၊ နေရာတိုင်းတွင် သီးနှံစုံစိုက်ပျိုးပါ။
စပါးပင်စည်ပေါ်နှင့် ရေမျက်နှာပြင်ပေါ်တွင် ဖြုတ်ပိုးရှိမရှိ စပါးပျိုးခင်းကို နေ့စဉ်၊ စပါးခင်းကို အပတ်စဉ် ရှာဖွေပါ။
ပျိုးဘောင် သို့မဟုတ် တိုက်ရိုက်အစေ့ချစပါးခင်း၏ ဘေးဖက်ကို စစ်ဆေးပါ။
ရွှေ့ပြောင်းစိုက်ပျိုးသောစပါးခင်းအတွက် စပါးခင်းကို ထောင့်ဖြတ်သွားပြီး စပါးပင်မြုံ ၁၀ − ၂၀ မြုံ၏ အပင်ခြေများကိုကြည့်ပြီးစစ်ဆေးပါ။
စပါးခင်းတွင် (၆) ပေအကွာတိုင်း လေကြောင်း (၈) လက်မခန့်ခွဲပေးပါ။
တစ်ဧကလျှင် လျှပ်စစ်မီးလုံး သို့မဟုတ် ရေနံဆီမီးအိမ်ကဲ့သို့  အလင်းရောင် ထောင်ချောက် (၅) ခုကို နံရံဖျော့အနီးနှင့် ရေမျက်နှာပြင်ပေါ်တွင် ထားသုံးပါ။  (စပါးပျိုးခင်းနှင့် စပါးခင်းအနီးတွင် အလင်းရောင်ထောင်ချောက်များ မထားရပါ) 
တစ်ဧကလျှင် အဝါရောင်ကော်ထောင်ချောက် (၂၀) ခုနှုန်း အသုံးပြုပါ။ 
အစောပိုင်း ဖြုတ်ပိုးကျရောက်စဉ်ကာလအတွင်း စပါးခင်းထဲကရေကို (၃ − ၄) ရက် ထုတ်ပေးပါ။
စပါးခင်းကို စိုတစ်လှည့် ခြောက်တစ်လှည့်လုပ်ပေးပါ။ 
အပင်ခြေကို ရေခိုးရေငွေ့နည်းအောင်ပြုလုပ်ပါ။
ယူရီးယားမြေသြဇာကို (၂ − ၃) ကြိမ်ခွဲကျွေးပြီး ပိုတက်ရှ်မြေသြဇာကို မဖြစ်မနေသုံးစွဲပါ။
စပါးခင်းနှင့် ကန်သင်းပေါ်တွင် သဘာဝသားရဲကောင်များကို ဆွဲဆောင်ရန် အဖြူရောင်နှင့် အဝါရောင်ပွင့်သော ပန်းပင်များစိုက်ပျိုးပါ။ 
စပါးလမိုင်းမထားပါနှင့်။
ရိတ်သိမ်းပြီးစပါးခင်းကို ထယ်ထိုးပြီး ရိုးပြတ်များကိုဖယ်ရှားပါ။ 
      Credit 
ဒေါက်တာကိုကို (စိုက်ပျိုးရေး)
      """,

      imageURL: "assets/images/post_rice41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "ရောဂါများတားဆီးကာကွယ်နည်း",
      summary: """ဓါတုနည်းဖြင့်ကာကွယ်နှိမ်နင်းခြင်း...""",
      body: """သဘာဝသားရဲကောင်များ မသေဆုံးစေရန် လိုအပ်မှသာ ဆေးဖျန်းပါ။
တတ်နိုင်သမျှ စပါးပင်ကြီးထွားမှုအစောပိုင်းအဆင့် (စိုက်ပြီး ရက် − ၄၀ အတွင်း) တွင် ဘက်စုံသုံးပိုးသတ်ဆေး (ဥပမာ − ဆိုက်ပါမက်သရင်း၊ ဒယ်လ်တာ မက်သရင်း၊ အဘာမက်တင်၊ ကလိုပိုင်ရီဖော့စ်) ပက်ဖျန်းခြင်းကို ရှောင်ကြဉ်ပါ။
စပါးပင်မြုံတစ်မြုံမှာ ဖြုတ်ညို ၃ − ၅ ကောင်တွေ့ပါက အောက်ပါ ပိုးသတ်ဆေးတစ်မျိုးမျိုးကို ဆေးဘူး/အိတ်ပါ အညွှန်းစာအတိုင်း အသုံးပြုပါ။
ပိုင်မီထရိုဇိုင်း (Pymetrozine)၊ ဒိုင်နိုတီဖျူရမ် (Dinotefuran)၊ အီသိုဖန်ပရော့ဇ် (Ethofenprox)၊ ဖစ်ပရိုနေးလ် (Fipronil)၊ အီသီပရိုးလ် (Ethiprol)၊ ဘူပရိုဖီဇင် (Buprofezin)၊ အဆီဖိတ် (Acephate)၊ ကာတက်ဟိုက်ဒြိုကလိုရိုဒ် (Cartap hydrochloride)၊ ထရိုင်ဖလူမီဇိုပိုင်ရင် (Triflumezopyrim)၊ ဘိုင်ဖီနိုမီသိုင်း ကာဘာမိတ်  (Bi Pheno Methyl Carbamate, BPMC)၊ တမာ ပိုးသတ်ဆေး (Azadirachtin)၊
Credit 
ဒေါက်တာကိုကို (စိုက်ပျိုးရေး)
""",
      imageURL: "assets/images/post_rice42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

