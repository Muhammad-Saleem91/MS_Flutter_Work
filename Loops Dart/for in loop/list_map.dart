void main() {
  Map CS3AINFO = {
    "name": ["saleem", "ahmed", "fahad"],
    "id": [12, 14, 17]
  };
  

  for (var i = 0; i <= CS3AINFO.length; i++) {
    print("hi");
    if (CS3AINFO["name"][i] == "ahmed") {
      print("${CS3AINFO["name"][i]} --- ${CS3AINFO["id"][i]}  ");
    }
  }
}
