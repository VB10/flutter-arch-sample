import 'package:mvvmarchexample/core/services/api.dart';
import 'package:mvvmarchexample/core/services/authentication_serivce.dart';
import 'package:provider/provider.dart';


List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders,
];


List<SingleChildCloneableWidget> independentServices = [
  Provider.value(value: Api(),)
];

List<SingleChildCloneableWidget> dependentServices = [
  ProxyProvider<Api,AuthenticationService>(
    builder: (context,api,authenticationService)=> AuthenticationService(api),
  )
];

List<SingleChildCloneableWidget> uiConsumableProviders = [
  StreamProvider()
];