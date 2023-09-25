
import 'package:bti_assignment/Assignments/Ass2%20SocialApp/data/post_model.dart';

List<PostModel> postsModelList = postsData.map((e) => PostModel(e)).toList();


List<Map> postsData = [
  {
    "image":
        "https://images.unsplash.com/photo-1534190760961-74e8c1c5c3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGxvcyUyMGFuZ2VsZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. #Post1 #LoremIpsum",
    "isFavourite": false,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Same Ahmad",
      "location": "Los Anglos"
    },
    "comments": [
      {
        "user": {
          "image":
              "https://plus.unsplash.com/premium_photo-1688350808212-4e6908a03925?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80",
          "name": "Shahed  Mohammad"
        },
        "text": "Great post!",
        "isLiked": true,
      },
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
          "name": "Mai Dani"
        },
        "text": "Wow!",
        "isLiked": false,
      },
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1553514029-1318c9127859?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80",
          "name": "Sarah Malik"
        },
        "text": "I love it!",
        "isLiked": true,
      },
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1614204424926-196a80bf0be8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
          "name": "Saeed Cam"
        },
        "text": "Great post!",
        "isLiked": true,
      },
    ]
  },
  {
    "image":
        "https://images.unsplash.com/photo-1587440871875-191322ee64b0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dXNlcnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "content": "Aenean ut ex ac libero consequat efficitur. #Post2 #AeneanUt",
    "isFavourite": true,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1590086782957-93c06ef21604?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Noor Moumen",
      "location": "Las Vagus"
    },
    "comments": [
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1489673446964-e1f989187ddc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
          "name": "Salem Mohanad",
        },
        "text": "Great post!",
        "isLiked": false,
      },
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
          "name": "Khaled Ali"
        },
        "text": "I love it!",
        "isLiked": true,
      }
    ]
  },
  {
    "image":
        "https://plus.unsplash.com/premium_photo-1679435363575-093a3d0a52f3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGVhdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "content":
        "Vestibulum auctor vehicula est, et maximus metus interdum et. #Post3 #VestibulumAuctor",
    "isFavourite": false,
    "user": {
      "image":
          "https://media.istockphoto.com/id/639468584/photo/head-and-shoulders-portrait-of-young-white-businesswoman.webp?s=170667a&w=0&k=20&c=irpHZawakrQ0Y8wULGm4JzsvksFpurm6EwLGdHrRnRE=",
      "name": "Samia Abd",
      "location": "US"
    },
    "comments": [
    ]
  },
  {
    "image":
        "https://plus.unsplash.com/premium_photo-1677343210300-717fba46be17?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c2VlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
    "content":
        "Phasellus tincidunt est id dui gravida, a ultrices leo iaculis. #Post4 #PhasellusTincidunt",
    "isFavourite": true,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Maram Khaled",
      "location": "California"
    },
    "comments": [
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
          "name": "Omnia Azmi"
        },
        "text": "Great post!",
        "isLiked": true,
      },
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1590086782957-93c06ef21604?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
          "name": "Islam Jehad"
        },
        "text": "I love it!",
        "isLiked": true,
      }
    ]
  },
  {
    "image":
        "https://images.unsplash.com/photo-1554435493-93422e8220c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJ1aWxkaW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
    "content":
        "Pellentesque non ullamcorper odio. Nulla facilisi. #Post5 #PellentesqueNon",
    "isFavourite": false,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1542596768-5d1d21f1cf98?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
      "name": "Baraa Liam",
      "location": "San Diego"
    },
    "comments": [
      {
        "user": {
          "image":
              "https://plus.unsplash.com/premium_photo-1664536392779-049ba8fde933?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
          "name": "Tammer Mazen"
        },
        "text": "Great post!",
        "isLiked": false,
      },
    ]
  },
  {
    "image":
        "https://images.unsplash.com/photo-1433086966358-54859d0ed716?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
    "content": "Cras ut mauris nec dolor congue vulputate. #Post6 #CrasUt",
    "isFavourite": true,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Salma Wessam",
      "location": "United Kingdom"
    },
    "comments": [
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
          "name": "Wael Naem"
        },
        "text": "Great post!",
        "isLiked": true,
      },
      {
        "user": {
          "image":
              "https://plus.unsplash.com/premium_photo-1689551670902-19b441a6afde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
          "name": "Yassmean ibrahem"
        },
        "text": "I love it!",
        "isLiked": false,
      },
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
          "name": "Ziad Marwan"
        },
        "text": "Great post!",
        "isLiked": true,
      },
    ]
  },
  {
    "image":
        "https://images.unsplash.com/photo-1533282960533-51328aa49826?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGxvcyUyMGFuZ2VsZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "content": "Fusce at gravida ante, eget tempus risus. #Post7 #FusceAt",
    "isFavourite": false,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1590086782957-93c06ef21604?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Haneen Ayman",
      "location": "France"
    },
    "comments": [
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1542596768-5d1d21f1cf98?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
          "name": "Mohanad Zain"
        },
        "text": "I love it!",
        "isLiked": true,
      }
    ]
  },
  {
    "image":
        "https://images.unsplash.com/photo-1610405205665-7087a10110de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
    "content": "Sed id lectus vel eros tempus tristique. #Post8 #SedIdLectus",
    "isFavourite": true,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1614204424926-196a80bf0be8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
      "name": "Bana Fadi",
      "location": "Russia"
    },
    "comments": [
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
          "name": "Jacob Maide"
        },
        "text": "I love it!",
        "isLiked": false,
      }
    ]
  },
  {
    "image":
        "https://images.unsplash.com/photo-1597982087634-9884f03198ce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bG9zJTIwYW5nZWxlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "content": "Morbi id metus in justo posuere luctus. #Post9 #MorbiIdMetus",
    "isFavourite": false,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1688350808212-4e6908a03925?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80",
      "name": "Jamel Ali",
      "location": "Egypt"
    },
    "comments": [
      {
        "user": {
          "image":
              "https://plus.unsplash.com/premium_photo-1664536392779-049ba8fde933?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
          "name": "Deeab Shareef"
        },
        "text": "Great post!",
        "isLiked": false,
      },
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1554425755-85d1309eaeb9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1886&q=80",
          "name": "Ola Kamal"
        },
        "text": "I love it!",
        "isLiked": true,
      }
    ]
  },
  {
    "image":
        "https://images.unsplash.com/photo-1574910844753-9f49dd2af188?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fGxvcyUyMGFuZ2VsZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "content":
        "Vivamus auctor lorem sit amet lacus bibendum, ac tincidunt ex ultrices. #Post10 #VivamusAuctor",
    "isFavourite": true,
    "user": {
      "image": "https://example.com/user10-image.jpg",
      "name": "Hala Jalal",
      "location": "Italy"
    },
    "comments": [
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
          "name": "Sameer  Omar"
        },
        "text": "Great post!",
        "isLiked": true,
      },
      {
        "user": {
          "image":
              "https://images.unsplash.com/photo-1542596768-5d1d21f1cf98?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
          "name": "Jamal Hani"
        },
        "text": "I love it!",
        "isLiked": false,
      }
    ]
  }
];
