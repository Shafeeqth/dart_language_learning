import 'dart:io';

enum Stages {
  Start(0),
  Quarter(25),
  Half(50),
  ThreeQuarters(75),
  Finish(100);

  set progress(int progress) => this.progress = progress;
  final int progress;
  const Stages(this.progress);

  bool operator >(Stages other) => progress > other.progress;
  bool operator <(Stages other) => progress < other.progress;
}

void main(List<String> args) {
  Stages stage = Stages.Start;
  print(stage.progress);
  

  Stages stage2 = Stages.Finish;
  print(stage2 < stage);
}
