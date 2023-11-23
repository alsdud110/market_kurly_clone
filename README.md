MyKurlyScreen
    - 아이콘의 크기가 크다 아니면 어떠한 위젯이 크다! 그러면 SizedBox로 감싼 뒤 height, width를 주면됨
    - 여러개의 Card위젯을 list로 보여주고 싶을 때는 Card위젯의 margin 을 0으로 주면 됨 - 당연한거,,
    - 저장한 아이콘을 사용하고 싶으면 IconButton(icon: SvgPicture.asset(path), onPress: (){}) 이런식으로 SvgPicture.asset() 을 쓰면 됨

기존 내가 알던 방식으로 안하고 새롭게 해서 어렵게 느낌..