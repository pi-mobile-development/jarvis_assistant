import 'package:jarvis_assistent/Utils/configs.dart';

import '../Login/login_model.dart';

Future<void> signOut() async {
  await googleSignIn.signOut();
  await auth.signOut();
}

void setLoggedUser() {
  loggedUser = UserModel(
      username: auth.currentUser!.displayName!,
      email: auth.currentUser!.email!,
      photoUrl: auth.currentUser!.photoURL
  );
}