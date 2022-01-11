function solution(m, musicinfos) {
  let array = [];

  function changeMelody(melody) {
    const mSplit = melody.split("");
    const mapMSplit = mSplit.map((ele, i) => {
      if (mSplit[i + 1] === "#") {
        ele = ele.toLowerCase();
      }
      return ele;
    });
    return mapMSplit.filter((ele) => ele != "#").join("");
  }

  m = changeMelody(m);

  for (let music of musicinfos) {
    let [start, end, title, melody] = music.split(",");
    let [start_hour, start_min] = start.split(":");
    let [end_hour, end_min] = end.split(":");
    let gap = (end_hour - start_hour) * 60;
    gap =
      start_min > end_min
        ? gap - (start_min - end_min) * 1
        : gap + (end_min - start_min) * 1;
    melody = changeMelody(melody);
    // console.log("melody: ", melody);
    let loop = parseInt(gap / melody.length);
    const index = gap % melody.length;
    let new_melody = "";
    if (loop > 0) {
      while (loop > 0) {
        new_melody += melody;
        loop -= 1;
      }
      new_melody += melody.slice(0, index);
    } else new_melody = melody.slice(0, gap);
    if (new_melody.includes(m)) {
      if (array[0] === undefined) array.push({ gap: gap, title: title });
      else if (gap > array[0].gap) {
        array.pop();
        array.push({ gap: gap, title: title });
      }
    }
  }

  return array[0] === undefined ? "(None)" : array[0].title;
}
