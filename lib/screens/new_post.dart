import 'package:flutter/material.dart';

class NewPostScreen extends StatefulWidget {
  @override
  _NewPostScreenState createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 100, top: 30, right: 100),
      child: Container(
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.40,
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                        'https://carsguide-res.cloudinary.com/image/upload/f_auto%2Cfl_lossy%2Cq_auto%2Ct_default/v1/editorial/story/hero_image/1908-Ford-Model-T_0.jpg',
                        fit: BoxFit.cover),
                  ),
                   Container(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          padding: EdgeInsets.all(18),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 30),
                              child: Text(
                                'Detail: Car For Bid',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                 
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                        'https://pix10.agoda.net/hotelImages/9065853/-1/142d78192fda46d5b58e14c9d3f2fe51.jpg?s=1024x768',
                        fit: BoxFit.cover),
                  ),
                   Container(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          padding: EdgeInsets.all(18),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 30),
                              child: Text(
                                'Detail: House For Bid',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP-0fTxb7ntfuu0NRk946XifiT9jgfadZdDiLe1DSg-Rvv6eRFysUtYHsibAevqMET0sI&usqp=CAU',
                        fit: BoxFit.cover),
                  ),
                   Container(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          padding: EdgeInsets.all(18),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 30),
                              child: Text(
                                'Detail: Land for bid',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}