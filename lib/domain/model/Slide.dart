class Slide{

  String Title,Content,Image;


  Slide({this.Title,this.Content,this.Image});

  void setImage(String getImage){
    Image = getImage;
  }
  
  void setTitle(String getTitle){
    Title = getTitle;
  }
  void setContent(String content){
    Content = content;
  }



String getImage(){
    return Image;
  }
  
   String  getTitle(){
    return Title;
   }
   String getContent(){
    return Content;
   }

}


List<Slide> getSlides(){

  List<Slide> slideList= [];

  Slide slide=new Slide();

  slide.setTitle("Test Title");

  slide.setContent("dbdjshsmsnjsns")
;
slide.setImage("images/image1.jpg");


slideList.add(slide);

    slide=new Slide();

  slide.setTitle("Test Title");

  slide.setContent("dbdjshsmsnjsns")
;
slide.setImage("images/image2.jpg");


slideList.add(slide);


    slide=new Slide();

  slide.setTitle("Test Title");

  slide.setContent("dbdjshsmsnjsns")
;
slide.setImage("images/img3.jpg");


slideList.add(slide);



return slideList;




  
}



