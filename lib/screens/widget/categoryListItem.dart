import 'package:flutter/material.dart';
import 'package:saheefa/domain/model/Category.dart';
import 'package:saheefa/util/mycolor.dart';

class BuildCategoryListItem extends StatefulWidget {
  const BuildCategoryListItem({
    Key key,
    @required this.categorieslist,
  }) : super(key: key);

  final List<CategoryList> categorieslist;

  @override
  _BuildCategoryListItemState createState() =>
      _BuildCategoryListItemState(categorieslist);
}

class _BuildCategoryListItemState extends State<BuildCategoryListItem> {
  List<CategoryList> categorieslist;
  _BuildCategoryListItemState(this.categorieslist);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex=0 ;
    return SizedBox(
      height: 50.0,
      
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.categorieslist.length,
          itemBuilder: (context, index) {
            return GestureDetector(

                 onTap: () {
               
                setState(() {
                    _selectedIndex = index;
   
                });
                
              
              },

              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: _selectedIndex == index
                    ? Container(
                       
                        constraints: BoxConstraints(minWidth: 120),
                        decoration: BoxDecoration(
                            color: mycolor.myCustomBlack,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            widget.categorieslist[index].Name,
                            style: Theme.of(context).textTheme.headline6.copyWith(
                              color:Colors.white
                            ),
                          ),
                        ))
                    : Container(
                        
                        constraints: BoxConstraints(minWidth: 120),
                        decoration: BoxDecoration(
                            color: mycolor.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            widget.categorieslist[index].Name,
                            style: Theme.of(context).textTheme.headline6.copyWith(
                              color:Colors.black
                            ),
                          ),
                        )
                        
                        ),
              ),
           
            );
          },
        ),
      
    );
    ;
  }
}
