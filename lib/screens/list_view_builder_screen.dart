
import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      if((scrollController.position.pixels +500) >= scrollController.position.maxScrollExtent){
        fetchData();
        //print('5 mas');
      }
      print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
    });
  }

  Future fetchData() async{
    if(isLoading == true){
      return;
    }
    isLoading = true;
    setState(() {});

    await Future.delayed(Duration(seconds: 3));
    cargar_mas();
    isLoading= false;
    setState(() {});

    // animacion cuando termina de cargar
    if (scrollController.position.pixels+100<=scrollController.position.maxScrollExtent) return;
    
    scrollController.animateTo(
      scrollController.position.pixels + 120, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.fastOutSlowIn);
    


  } 


  void cargar_mas(){
    final lastId = imagesIds.last;
    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e )
    );
    setState(() {});
  }

  Future<void> onRefresh() async{
    await Future.delayed(Duration(seconds: 2));
    final lastid = imagesIds.last;

    imagesIds.clear();

    imagesIds.add(lastid+1);
    cargar_mas();
    
  }


  @override
  Widget build(BuildContext context) {


    final size = MediaQuery.of(context).size; // saber alto y ancho del disp
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(), // simular comprtamiento a IOS
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index){
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}')
                    );
                }
                ),
            ),

              if(isLoading)// condicion
                Positioned(
                  bottom: 40,
                  left: size.width * 0.5 - 30,

                  child: const _loadingIcon()
                  ),
          ],
        ),
      )
    );
  }
}

class _loadingIcon extends StatelessWidget {
  const _loadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: AppTheme.iconscolor.withOpacity(0.6),
        shape: BoxShape.circle

      ),
      child: const CircularProgressIndicator(color: AppTheme.primary,),
    );
  }
}