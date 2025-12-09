import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ani.dart';
import 'package:chatapp_firebase/farming/views/cow.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/79';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostCowPage4 extends StatelessWidget {
  const PostCowPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  CowPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("အစာကျွေးစနစ်"),

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
      name: "မောင်သက်ဝေ",
      //email: "ishfar@gmail.com",
      email: "ငပိချောင်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "စိုးစိုးမူ",
      //email: "ishrak@gmail.com",
      email: "တံပိုးကုန်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးအလကာ္",
      //email: "shakleen@gmail.com",
      email: "ဝသုန်မိုး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုကျော်စိုး",
      //email: "shakleen@gmail.com",
      email: "ပိတောက်ခြံ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလွင်ကို",
      //email: "shakleen@gmail.com",
      email: "ပရိုက်ကြံခင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေသူ",
      //email: "shakleen@gmail.com",
      email: "အိမ်မဲ",
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
      id: "2",
      author: users[2],
      title: "Cow",
      summary: """လိုအပ်သည့်အစာများ...""",
      body: """အစာတွင်အစာကြမ်းနှင့်အစာနုဟူ၍နှစ်မျိုးရှိသည်။အစာကြမ်းဆိုသည်မှာ ကောက်ရိုး၊ပဲရိုး၊ပြောင်းရိုးတို့ဖြစ်ပြီး အစာနုဆိုသည်မှာ ဆန်ကွဲ၊ဖွဲ၊ ပဲဖတ်၊ နှမ်းဖတ်၊ ကောက်ပဲသီးနှံ၊ အစေ့အစံများဖြစ်ပါသည်။
#crd
""",
      imageURL: "assets/images/post_cow14.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Cow",
      summary: """အစာစပ်နည်း...""",
      body: """အသက်နှစ်လကျော်လျှင် ဖွဲနု ၃၄% ၊ နှမ်းဖတ်ပဲဖတ်မှုန့် ၃၀% ၊ ဆန်ကွဲ သို့မဟုတ် ပြောင်းမှုန့် ၃၀% 
      ဆား ၁% ခရုမှုန့် ၅% တို့ကိုရောစပ်၍ နံနက် / ည ၂၅ကျပ်သားစီ ကျွေးမွေးပေးရပါမည်။
      
#crd
""",
      imageURL: "assets/images/post_cow15.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Cow",
      summary: """အရွယ်ရောက်ပီး နွားများအတွက်...""",
      body: """နို့ ၄ပိဿာ ပေးနွားမအတွက် တနေ့လျှင် အစာနု ၃ပိဿာ နှုန်းနှင့် အစာကြမ်း ၁၀-၁၂ပိဿာ ခန့်ကျွေးမွေးပေးရပါမည်။
      အသားထွက်နှုန်းကောင်းစေရန် မျိုးကောင်းမျိုးသန့် ရွေးချယ်မွေးမြူပီး အစာနှင့်ရေကိုမျှတစွာကျွေးမွေးရမည်။
      
#crd
""",
      imageURL: "assets/images/post_cow1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

