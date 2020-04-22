abstract class IRepository {
  loginWithEmailAndPassword(String email, String password);

  registerWithEmailAndPassword(String email, String password);

  googleLogin();

  facebookLogin();

  logout();
}
