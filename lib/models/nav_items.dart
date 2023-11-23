class NavItem {
  final int id;
  final String icon;
  final String label;

  NavItem({required this.id, required this.icon, required this.label});
}

List<NavItem> navItems = [
  NavItem(id: 0, icon: "assets/icons/home.svg", label: "홈"),
  NavItem(id: 1, icon: "assets/icons/star.svg", label: "추천"),
  NavItem(id: 2, icon: "assets/icons/square.svg", label: "카테고리"),
  NavItem(id: 3, icon: "assets/icons/loupe.svg", label: "검색"),
  NavItem(id: 4, icon: "assets/icons/user.svg", label: "마이컬리"),
];
