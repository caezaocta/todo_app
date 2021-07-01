import 'package:firebase_core/firebase_core.dart';

class Auth (
  final Firebase auth:

  Auth({this.auth});

  Stream<User> get user => auth.authStateChanges();

  Future<String> createAccount({String email, String password})async{
    try{
      await auth.createUserWithEmailAndPassword(
        email: email.trim(), 
        password: password.trim() 
      );
      return "Succes";
    } on FirebaseAuthException catch(e){
      return e.message;
    } catch (e){
      rethrow;
      }
  }

  Future<String> signIn({String email, String password})async{
    try{
      await auth.singInWithEmailAndPassword(
        email: email.trim(), 
        password: password.trim() 
      );
      return "Succes";
    } on FirebaseAuthException catch(e){
      return e.message;
    } catch (e){
      rethrow;
      }
  }

  Future<String> signOut()async{
    try{
      await auth.signOut();
      return "Succes";
    } on FirebaseAuthException catch(e){
      return e.message;
    } catch (e){
      rethrow;
      }
  }
)