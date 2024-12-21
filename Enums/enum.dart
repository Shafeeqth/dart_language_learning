enum Status { Started, Pending, Idle, Cancelled, Failed, Success }

void main(List<String> args) {
  print(Status.Started.index);
  print(Status.Started.name);
  for (var status in Status.values) {
    print(status);
  }



  Status status = Status.Success;

  print(status is Enum);


  switch (status) {
    case Status.Cancelled:
      print("Order cancelled");
      break;

    case Status.Success:
      print("Order success");
      break;

    case Status.Failed:
      print("Order failed");
      break;

    case Status.Started:
      print("Order process started");
      break;

    default:
      print("Something went wrong");
  }
  



}
