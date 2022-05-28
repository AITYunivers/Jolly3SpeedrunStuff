state("jolly3") {
  int area : "jolly3.exe", 0xB39CC, 0x1F0;
}

start {
  if(current.area == 3 && old.area == -1) {
    return true;
  }
}

split {
  if(current.area == 3 && old.area == -1 || current.area == 5 && old.area == -1 || current.area == 14 && old.area == -1 || current.area == 15 && old.area == -1 || current.area == 16 && old.area == -1 || current.area == 18 && old.area == -1 || current.area == 29) {
    return true;
  }
}

isLoading {
  if(current.area == -1 || current.area == 2) {
    return true;
  }
  else {
    return false;
  }
}