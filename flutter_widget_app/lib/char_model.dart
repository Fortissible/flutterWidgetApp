class CharModel{
  String charName;
  String charDesc;
  String charImgPath;

  CharModel({
    required this.charName,
    required this.charDesc,
    required this.charImgPath,
  });
}

var charModelList = [
  CharModel(
    charName: "Ganyu",
    charDesc: "The secretary at Yuehai Pavilion. The blood of the qilin, an illuminated beast, flows within her veins.",
    charImgPath: "images/GenshinChar_ganyu.png"
  ),
  CharModel(
      charName: "Shenhe",
      charDesc: "An adepti disciple with a most unusual air about her. Having spent much time cultivating in isolation in Liyue\'s mountains...",
      charImgPath: "images/GenshinChar_shenhe.png"
  ),
  CharModel(
      charName: "Ayaka",
      charDesc: "Daughter of the Yashiro Commission\'s Kamisato Clan. Dignified and elegant, as well as wise and strong.",
      charImgPath: "images/GenshinChar_ayaka.png",
  ),
  CharModel(
      charName: "Eula",
      charDesc: "The Spindrift Knight, a scion of the old aristocracy, and the Captain of the Knights of Favonius Reconnaissance Company...",
      charImgPath: "images/GenshinChar_eula.png"
  ),
];