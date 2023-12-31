import 'package:api/constants/MyColors.dart';
import 'package:api/data/models/ModelCharacter.dart';
import 'package:flutter/material.dart';

import '../../constants/string.dart';

class CharacterItem extends StatelessWidget {

  final ModelCharacters character;


  const CharacterItem({Key? key,required this.character}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      
      child: InkWell(
        onTap: ()=> Navigator.
        pushNamed(context, charactersDetailsScreen,arguments: character),
        child: GridTile(
          child: Hero(
            tag: character.id,
            child: Container(
              color: MyColors.myGrey,
              child: character.image.isNotEmpty?
              FadeInImage.assetNetwork(
                  width: double.infinity,
                  height: double.infinity,
                  placeholder: 'assets/images/loading.gif', image: character.image,
                  fit: BoxFit.cover,

              ):Image.asset("assets/images/messi.png"),
            ),
          ),
          footer: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Text('${character.name}',style: TextStyle(
              height: 1.3,
              fontSize: 16,
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
            ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center ,
            ),
          ),
        ),
      ),

    );
  }
}
