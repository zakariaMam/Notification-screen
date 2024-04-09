class Notificationss {
  Notificationss({
    required this.name,
    required this.sends,
    required this.image,
    required this.time,
  });

  String name;
  String sends;
  String image;
  String time;

  factory Notificationss.fromJson(Map<String, dynamic> json) => Notificationss(
        sends: json["sends"],
        name: json["name"],
        time: json["time"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "sends": sends,
        "image": image,
        "time": time,
      };
}

final Notificationinfo = [
  Notificationss(
    sends: 'just sent a photo, please check your message',
    image: 'images/kk.png',
    name: 'Mohamed',
    time: 'Today at 8:00 AM',
  ),
  Notificationss(
    sends: 'just made a request',
    image: 'images/mm.png',
    name: 'Saifeden',
    time: 'Today at 5:00 PM',
  ),
  Notificationss(
    sends: 'just liked your product',
    image: 'images/nn.png',
    name: 'Zakaria',
    time: 'Today at 9:00 AM',
  ),
  Notificationss(
    sends: 'just sent a photo, please check your message',
    image: 'images/vv.png',
    name: 'Yanis',
    time: 'Today at 8:00 AM',
  ),
  Notificationss(
    sends: 'Just canceled his order',
    image: 'images/zz.png',
    name: 'Rayan',
    time: 'Today at 11:00 AM',
  ),
];
