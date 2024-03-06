import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;

  const User(
      {required this.id,
      required this.name,
      required this.age,
      required this.imageUrls,
      required this.bio,
      required this.jobTitle});

  @override
  List<Object?> get props => [
        id,
        name,
        age,
        imageUrls,
        bio,
        jobTitle,
      ];

  static List<User> users = [
    const User(
        id: 1,
        name: 'Jessica',
        age: 25,
        imageUrls: [
          'https://cdn.discordapp.com/attachments/1171768174195261480/1212832000101060691/image.png?ex=65f344d2&is=65e0cfd2&hm=41081a510a49590a004cb643d61e3f18a00601c7ef65dc5a41956e9f36cad701&'
        ],
        bio: 'bio',
        jobTitle: 'Professional model'),
    const User(
        id: 2,
        name: 'Anna',
        age: 25,
        imageUrls: [
          'https://cdn.discordapp.com/attachments/1171768174195261480/1212824554175463434/top-10-most-beautiful-women-in-the-world-2021-4.png?ex=65f33de2&is=65e0c8e2&hm=088c532ca377942a9b188d69f5d53d730c3fdbeda6db47535e05b42ef95e1095&'
        ],
        bio: 'bio',
        jobTitle: 'jobTitle'),
    const User(
        id: 3,
        name: 'Rose',
        age: 21,
        imageUrls: [
          'https://cdn.discordapp.com/attachments/1171768174195261480/1212824554465001473/most-beautiful-woman-in-the-world-1.jpg?ex=65f33de2&is=65e0c8e2&hm=287d6c58461a75528e3f5e29f375bf0b6d150a03abe7dcf9560fd4b098707682&'
        ],
        bio: 'bio',
        jobTitle: 'jobTitle'),
    const User(
        id: 4,
        name: 'Maria',
        age: 26,
        imageUrls: [
          'https://cdn.discordapp.com/attachments/1171768174195261480/1212824553718292610/pexels-yuri-manei-2272853.jpg?ex=65f33de2&is=65e0c8e2&hm=8d95d755b6de864f3427bccca1027bb6a1db7519967013a63ba0828c4f327816&'
        ],
        bio: 'bio',
        jobTitle: 'jobTitle'),
    const User(
        id: 5,
        name: 'Kale',
        age: 27,
        imageUrls: [
          'https://cdn.discordapp.com/attachments/1171768174195261480/1212824552565116928/Mental-Strong-Women-min.jpg?ex=65f33de2&is=65e0c8e2&hm=ce8399f6cf6570bfbbed743dbd327c686056dab9d7fe63120d8a1f5fcd47cbb1&'
        ],
        bio: 'bio',
        jobTitle: 'jobTitle'),
  ];
}
