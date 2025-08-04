 class UnboardingContent{
  String  image;
  String title;
  String description;
  UnboardingContent({ required this.description, required this.title, required this.image});
 }

 List<UnboardingContent> contents =[
   UnboardingContent(description:"Pick your food from our Menu \n  More than 35 times",
       image:"images/screen1.png",
       title:"Swlwct from our\n Best Menu"),

   UnboardingContent(description:"You can Pay Csh On Delivery and\n Card payament is avaliable  ",
       image:"images/screen2.png",
       title:"Easy and Online Payment"),
   UnboardingContent(description:"Deliver your food at your\n Doorsteps  ",
       image:"images/screen3.png",
       title:"Quick Delivery at your Doorstep"),
 ];


