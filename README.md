1. MyKurlyScreen
    - 아이콘의 크기가 크다 아니면 어떠한 위젯이 크다! 그러면 SizedBox로 감싼 뒤 height, width를 주면됨
    - 여러개의 Card위젯을 list로 보여주고 싶을 때는 Card위젯의 margin 을 0으로 주면 됨 - 당연한거,,
    - 저장한 아이콘을 사용하고 싶으면 IconButton(icon: SvgPicture.asset(path), onPress: (){}) 이런식으로 SvgPicture.asset() 을 쓰면 됨

기존 내가 알던 방식으로 안하고 새롭게 해서 어렵게 느낌..

2. HomeScreen
    - TabBar 쓰려면 아래대로 따라하셈
    - Scaffold를 DefaultTabController 위젯으로 감싸
    - 그럼 DefaultTabController(
        initialIndex: 0,
        length: list.length,
        child: Scaffold(
            appBar: AppBar(
                (생략)
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(),
                    child: Container(
                        child: TabBar(
                                tabs: List.generate(
                                    list.length,
                                    (index) => Tab(text: ~~),
                                ),
                                lableColor:
                                unselectedLabelColor:
                                labelStyle:
                                indicator: UnderlinTabIndicator(
                                    borderSide: BorderSide(width:,color:)
                                )
                        ),
                    )
                )
            ),
            body: TabBarView(
                children: [
                    페이지들
                ]
            )
        )
    )

3. KurlyPage
    - 이미지를 넘기는걸 쓰고 싶으면 아래대로 따라하면 됨
    - Stack( 
        children: [
            PageView.builder(
                itemCount: 이미지 리스트 개수
                itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            image: DecoraionImage(
                                image: AssetImage(리스트 이미지 경로),
                                fit: BoxFit.cover,
                            )
                        )
                    )
                },
                onPageChanged: (value) {
                    setState(() {
                        currentPage = value;
                    });
                },
            ),
            Positioned(
                child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                        child: Text(
                            "$currentPage / $length",
                                style: const TextStyle(color: Colors.white),
                        ),
                    ),
                ),
            ),
        ]
    ),

Positioned() 는 아래 이미지 순번 을 보여주는거임
1 / 리스트 개수, 2 / 리스트 개수 이런식으로
