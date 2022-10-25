import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_ddd_bloc/domain/auth/i_auth_facade.dart';
import 'package:flutter_firebase_ddd_bloc/domain/core/errors.dart';
import 'package:flutter_firebase_ddd_bloc/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(
          user.id.getOrCrash(),
        );
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
