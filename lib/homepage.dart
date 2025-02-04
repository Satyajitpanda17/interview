import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   int _selectedIndex = 0; // Track the selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }
      final List<Map<String, dynamic>> basketItems = [
    {"name": "1 Curry", "image": "assets/images/curry.png"},
    {"name": "Dal", "image": "assets/images/dal.png"},
    {"name": "Fries", "image": "assets/images/fries.png"},
    {"name": "Pickle", "image": "assets/images/pickle.png"},
    {"name": "Salad", "image":"assets/images/salad.png"},
    {"name": "Sweets", "image": "assets/images/sweets.png"},
    {"name": "Dessert", "image": "assets/images/dessert.png"},
    {"name": "More", "image": "assets/images/more.png"},
  ];
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth =  MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        title: const Text('Curry Basket'),
         actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {
                  // Handle notification tap
                },
              ),
              Positioned(
                right: 9,
                top: 3,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  // child: Text(
                  //   '3', // Example notification count
                  //   style: TextStyle(fontSize: 12, color: Colors.white),
                  // ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(91, 61, 44, 1),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.fromLTRB(
          screenwidth*0.05128205128, 
          screenheight*0.02369668246, 
          screenwidth*0.05128205128, 
          0),
            height: screenheight,
            width: screenwidth,
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Container(
                  height: screenheight*0.1789099526,
                  width: screenwidth*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image : AssetImage('assets/images/img1.png'),
                    fit: BoxFit.fill)
                  ),
                 ),
                 SizedBox(height: screenheight*0.02369668246,),
                 Container(
                  height: screenheight*0.03266587677,
                  width: screenwidth*0.89743589743,
                   child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(screenwidth*0.03669230769, screenheight*0.00677725118, screenwidth*0.03669230769, screenheight*0.00677725118),
                        width: screenwidth*0.2641025641,
                        height: screenheight*0.03252369668,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child:  Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Image.asset("assets/images/delivery.png",
                              width: screenwidth*0.04102564102,
                              height: screenheight*0.01895734597,
                              fit: BoxFit.fill,),
                            ),
                            SizedBox(width: screenwidth*0.01538461538,),
                            Text('Delivery',style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w600,
                              //fontSize: screenheight*0.00016587677
                              ),),
                          
                          ],
                        ),
                      ),
                      SizedBox(width: screenwidth*0.05128205128,),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(screenwidth*0.03669230769, screenheight*0.00677725118, screenwidth*0.03669230769, screenheight*0.00677725118),
                          width: screenwidth*0.2641025641,
                          height: screenheight*0.03252369668,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Image.asset("assets/images/vendor.png",
                                                            width: screenwidth*0.04102564102,
                                                            height: screenheight*0.01895734597,
                                                            fit: BoxFit.fill,),
                              ),
                              SizedBox(width:  screenwidth*0.01538461538,),
                                Text('Vendors',style: TextStyle(color: Colors.black,
                                                             fontWeight: FontWeight.w600,
                                                             //fontSize: screenheight*0.00016587677
                                                             )),
                               
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: screenwidth*0.05128205128,),
                      Container(
                        padding: EdgeInsets.fromLTRB(screenwidth*0.03669230769, screenheight*0.00677725118, screenwidth*0.03669230769, screenheight*0.00677725118),
                        width: screenwidth*0.2641025641,
                        height: screenheight*0.03252369668,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Image.asset("assets/images/franchise.png",
                              width: screenwidth*0.04102564102,
                              height: screenheight*0.01895734597,
                              fit: BoxFit.fill,),
                            ),
                            SizedBox(width: screenwidth*0.01538461538,),
                            
                              Text('Franchise',style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w600,
                              //fontSize: screenheight*0.00016587677
                              )),
                           
                          ],
                        ),
                      ),
                    ],
                   ),
                 ),
                  SizedBox(height: screenheight*0.02369668246),
                  Container(
                    height: screenheight*0.02606635071,
                    width: screenwidth*0.89743589743,
                    child: Text("Basket Contains",style: TextStyle(fontSize: screenheight*0.02158767772,fontWeight: FontWeight.w700
                    ),),
                  ),
                   SizedBox(height: screenheight*0.02369668246),
                    GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: basketItems.length,
                  itemBuilder: (context, index) {
                     return Column(
                children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30), // Make image circular
              child: Image.asset(
                basketItems[index]["image"], 
                fit: BoxFit.cover, // Ensure it covers the avatar
                width: screenwidth*0.13333333333, // Adjust size as needed
                height: screenheight*0.0616113744,
              ),
            ),
          ),
          SizedBox(height: screenheight*0.01295023696),
          Text(
            basketItems[index]["name"],
            style: TextStyle(fontSize: 14, color: Colors.black),
            textAlign: TextAlign.center,
          ),
                ],
              );
                  },
                ),
                 SizedBox(height: screenheight*0.02369668246),
              // Membership Banner
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(screenwidth*0.07471794871, screenheight*0.03452606635, screenwidth*0.07471794871, 0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Unlock Monthly Membership for Exclusive Delivery Benefits",
                        style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenheight*(21.85/844)),
                       Text(
                        "Perks List",
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenheight*(10/844),),
                      Row(
                        children: [
                          Image.asset("assets/images/image 11.png",
                          width: screenwidth*0.05128205128,
                          height: screenheight*0.02369668246,
                          fit: BoxFit.fill,),
                          SizedBox(width: 8),
                          Text(
                            "Free Delivery on all orders",
                            style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      
    );
  }
}