import 'package:pay_app/constants/images.dart';

class CustomLists{
  static List buttonList =[
    {
      "bText": "Comics",
      "isSelected":"true",
    },
    {
      "bText": "Recipe",
      "isSelected":"false",
    },
    {
      "bText": "Novel",
      "isSelected":"false",
    },
    {
      "bText": "Biography",
      "isSelected":"false",
    },
  ];



  static List bookList=[
    {
      "imgUrl":AppImages.fatalTree,
      "bookName": "The Fatal Tree",
      "author":"by Jake Arnott",
      "stars": 3.0,
      "recommendedValue": 0.45,
      "price":20.0,
      "details":{
        "numberPages":120,
        "bookIntro":"The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.",
        "language":"Eng"
      }
    },
    {
      "imgUrl": AppImages.dayFour,
      "bookName": "Day Four",
      "author": "by Lotz Sarah",
      "stars": 2.0,
      "recommendedValue": 0.35,
      "price": 15.0,
      "details": {
        "numberPages": 200,
        "bookIntro": "The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.",
        "language": "Eng, Hindi"
      },
    },
    {
      "imgUrl":AppImages.graphicNovels,
      "bookName": "Star Trek",
      "author":"by Edward Humes",
      "stars": 4.0,
      "recommendedValue": 0.70,
      "price": 40.0,
      "details": {
        "numberPages": 90,
        "bookIntro": "The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.",
        "language": "Urdu"
      },
    },
    {
      "imgUrl":AppImages.dayFour,
      "bookName": "Day Four",
      "author":"by Lotz Sarah",
      "stars": 4.0,
      "recommendedValue": 1.00,
      "price": 40.0,
      "details": {
        "numberPages": 300,
        "bookIntro": "The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.",
        "language": "Eng"
      },
    },
    {
      "imgUrl":AppImages.graphicNovels,
      "bookName": "Star Trek",
      "author":"by Edward Humes",
      "stars": 5.0,
      "recommendedValue": 0.60,
      "price": 50.0,
      "details": {
        "numberPages": 500,
        "bookIntro": "The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.",
        "language": "Turkish"
      },
    },

  ];
}