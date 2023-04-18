class CharModel{
  String charName;
  String charDesc;
  String charImgPath;
  List<String> artefIcon;
  List<String> charArtefStat;
  List<String> charSkills;
  List<String> charBestArtef;
  String charArtefSets;

  CharModel({
    required this.charName,
    required this.charDesc,
    required this.charImgPath,
    required this.charArtefStat,
    required this.charSkills,
    required this.artefIcon,
    required this.charBestArtef,
    required this.charArtefSets,
  });
}

List<String> getArtefIcon() {
  List<String> artefIcons = [
    "images/Icon_Flower_of_Life.png",
    "images/Icon_Plume_of_Death.png",
    "images/Icon_Sands_of_Eon.png",
    "images/Icon_Goblet_of_Eonothem.png",
    "images/Icon_Circlet_of_Logos.png",
  ];
  return artefIcons;
}

var charModelList = [
  CharModel(
    charName: "Ganyu",
    charDesc: "The secretary at Yuehai Pavilion. The blood of the qilin, an illuminated beast, flows within her veins.",
    charImgPath: "images/GenshinChar_ganyu.png",
    artefIcon: getArtefIcon(),
    charArtefStat: ["HP%", "Flat ATK", "ATK%", "Cryo Bonus", "C.DMG/C.RATE"],
    charSkills: ["images/Bow_Cryo.png", "images/Talent_Celestial_Shower.png", "images/Talent_Trail_of_the_Qilin.png",],
    charBestArtef: ["images/Item_Snowswept_Memory.png","images/Item_Troupe27s_Dawnlight.png"],
    charArtefSets: "4 Sets"
  ),
  CharModel(
    charName: "Shenhe",
    charDesc: "An adepti disciple with a most unusual air about her. Having spent much time cultivating in isolation in Liyue's mountains...",
    charImgPath: "images/GenshinChar_shenhe.png",
    artefIcon: getArtefIcon(),
    charArtefStat: ["HP%", "Flat ATK", "ATK%", "ATK%", "ATK%"],
    charSkills: ["images/Talent_Spring_Spirit_Summoning.png","images/Talent_Divine_Maiden_s_Deliverance.png", "images/Polearm_Cryo.png"],
    charBestArtef: ["images/Item_Gladiator27s_Nostalgia.png","images/Item_Entangling_Bloom.png"],
    charArtefSets: "2 Sets"
  ),
  CharModel(
    charName: "Ayaka",
    charDesc: "Daughter of the Yashiro Commission's Kamisato Clan. Dignified and elegant, as well as wise and strong.",
    charImgPath: "images/GenshinChar_ayaka.png",
    artefIcon: getArtefIcon(),
    charArtefStat: ["HP%", "Flat ATK", "ATK%", "Cryo Bonus", "C.DMG/C.RATE"],
    charSkills: ["images/Talent_Kamisato_Art_Soumetsu.png","images/Sword_Cryo.png","images/Talent_Kamisato_Art_Hyouka.png",],
    charBestArtef: ["images/Item_Snowswept_Memory.png"],
    charArtefSets: "4 Sets"
  ),
  CharModel(
    charName: "Eula",
    charDesc: "The Spindrift Knight, a scion of the old aristocracy, and the Captain of the Knights of Favonius Reconnaissance Company...",
    charImgPath: "images/GenshinChar_eula.png",
    artefIcon: getArtefIcon(),
    charArtefStat: ["HP%", "Flat ATK", "ATK%", "Physical Bonus", "C.DMG/C.RATE"],
    charSkills: ["images/Claymore_Cryo.png", "images/Talent_Glacial_Illumination.png", "images/Talent_Icetide_Vortex.png",],
    charBestArtef: ["images/Item_Stainless_Bloom.png"],
    charArtefSets: "4 Sets"
  ),
];