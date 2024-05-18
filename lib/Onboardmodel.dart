class Onboardingcontent {
  String? image;
  String? text;
  String? number;
  String? quotes;
  Onboardingcontent({
    required this.image,
    required this.text,
    required this.number,
    required this.quotes,
  });
}

List<Onboardingcontent> contents = [
  Onboardingcontent(
    text: 'Most',
    quotes: 'Delivery in town ',
    
    image: 'assets/girl.png',
    number: '1'),


    Onboardingcontent(
    text: 'Delivered by',
    image: 'assets/boy.png',
    quotes: 'in-house delivery partners',
    number: '2'),


    Onboardingcontent(
    text: 'Get your parcel',
    quotes: 'Anywhere in the city',
    image: 'assets/receive.png',
    number: '3'),
  
  
  
  ];