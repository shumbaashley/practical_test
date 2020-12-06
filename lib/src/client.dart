import 'package:grpc_app/protos/users.pb.dart';
import 'package:grpc_app/protos/users.pbgrpc.dart';
import 'package:grpc/grpc.dart';

// Fetch User Info Method
Future<double> displayBalance() async {
  final channel = ClientChannel(
        "178.62.63.123",
        port: 50000,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      ),
      stub = userServiceClient(channel,
          options: CallOptions(timeout: Duration(seconds: 30)));

  final info = information()
    ..username = "08644004295"
    ..domain = "talk.ai.co.zw"
    ..email = "example@mail.com";
  final user = await stub.display(info);

  await channel.shutdown();

  print(user.balance);
  return user.balance;
}
