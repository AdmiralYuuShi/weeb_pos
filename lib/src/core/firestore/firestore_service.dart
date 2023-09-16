import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  var ff = FirebaseFirestore.instance; 

  WriteBatch batch() {
    return ff.batch();
  }

  void setData({
    required String path,
    required Map<String, dynamic> data,
    bool merge = false,
  }) {
    final reference = ff.doc(path);
    reference.set(data, SetOptions(merge: merge));
  }

  void addData({
    required String path,
    required Map<String, dynamic> data,
    bool merge = false,
  }) {
    final reference = ff.collection(path);
    reference.add(data);
  }

  String addDataGetId({
    required String path,
    required Map<String, dynamic> data,
    bool merge = false,
  }) {
    final reference = ff.collection(path).doc();
    reference.set(data);
    return reference.id;
  }

  Future<void> updateData({
    required String path,
    required Map<String, dynamic> data,
    bool merge = false,
  }) async {
    final reference = ff.doc(path);
    await reference.update(data);
  }

  Future<void> deleteData({required String path}) async {
    final reference = ff.doc(path);
    await reference.delete();
  }

  Stream<List<T>> collectionStream<T>({
    required String path,
    required T Function(DocumentSnapshot<Map<String, dynamic>> data) builder,
    Query Function(Query query)? queryBuilder,
    int Function(T lhs, T rhs)? sort,
  }) {
    Query query = ff.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final snapshots = query.snapshots() as Stream<QuerySnapshot<Map<String, dynamic>>>;
    return snapshots.map((snapshot) {
      final result = snapshot.docs.map((snapshot) => builder(snapshot)).where((value) => value != null).toList();
      if (sort != null) {
        result.sort(sort);
      }
      return result;
    });
  }

  Stream<Map<DocumentChangeType, List<T>>> collectionStreamQS<T>({
    required String path,
    required Map<DocumentChangeType, List<T>> Function(QuerySnapshot<Map<String, dynamic>> data) builder,
    Query Function(Query query)? queryBuilder,
  }) {
    Query query = ff.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final snapshots = query.snapshots() as Stream<QuerySnapshot<Map<String, dynamic>>>;
    return snapshots.map(builder);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> collectionQuerySnapshot({
    required String path,
    Query Function(Query query)? queryBuilder,
  }) {
    Query query = ff.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    return query.get().then((value) => value as QuerySnapshot<Map<String, dynamic>>);
  }

  Stream<T?> collectionStreamSingleDoc<T>({
    required String path,
    required T Function(DocumentSnapshot<Map<String, dynamic>> data) builder,
    Query Function(Query query)? queryBuilder,
    int Function(T lhs, T rhs)? sort,
    bool isFirstDoc = true,
  }) {
    Query query = ff.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final snapshots = query.snapshots() as Stream<QuerySnapshot<Map<String, dynamic>>>;
    return snapshots.map((snapshot) {
      final result = snapshot.docs.map((snapshot) => builder(snapshot)).where((value) => value != null).toList();
      if (sort != null) {
        result.sort(sort);
      }

      if (result.isEmpty) {
        return null;
      }
      return isFirstDoc ? result.first : result.last;
    });
  }

  Stream<List<T>> collectionGroupStream<T>({
    required String path,
    required T Function(DocumentSnapshot<Map<String, dynamic>> snapshot) builder,
    Query Function(Query query)? queryBuilder,
    int Function(T lhs, T rhs)? sort,
  }) {
    Query query = ff.collectionGroup(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final snapshots = query.snapshots() as Stream<QuerySnapshot<Map<String, dynamic>>>;
    return snapshots.map((snapshot) {
      final result = snapshot.docs.map((snapshot) => builder(snapshot)).where((value) => value != null).toList();
      if (sort != null) {
        result.sort(sort);
      }
      return result;
    });
  }

  Stream<T> collectionGroupStreamQS<T>({
    required String path,
    required T Function(QuerySnapshot<Map<String, dynamic>> snapshot) builder,
    Query Function(Query query)? queryBuilder,
  }) {
    Query query = ff.collectionGroup(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final snapshots = query.snapshots() as Stream<QuerySnapshot<Map<String, dynamic>>>;
    return snapshots.map(builder);
  }

  Stream<T> documentStream<T>({
    required String path,
    required T Function(DocumentSnapshot<Map<String, dynamic>> snapshot) builder,
  }) {
    final DocumentReference reference = ff.doc(path);
    final snapshots = reference.snapshots() as Stream<DocumentSnapshot<Map<String, dynamic>>>;
    return snapshots.map((snapshot) => builder(snapshot));
  }

  Future<List<T>> collectionGet<T>({
    required String path,
    required T Function(DocumentSnapshot<Map<String, dynamic>> data) builder,
    Query Function(Query query)? queryBuilder,
    int Function(T lhs, T rhs)? sort,
  }) async {
    Query query = ff.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final snapshots = await (query.get() as FutureOr<QuerySnapshot<Map<String, dynamic>>>);
    final result = snapshots.docs.map((snapshot) => builder(snapshot)).where((value) => value != null).toList();
    if (sort != null) {
      result.sort(sort);
    }
    return result;
  }

  Future<List<T>> collectionGroupGet<T>({
    required String path,
    required T Function(DocumentSnapshot<Map<String, dynamic>> snapshot) builder,
    Query Function(Query query)? queryBuilder,
    int Function(T lhs, T rhs)? sort,
  }) async {
    Query query = ff.collectionGroup(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final snapshots = await (query.get() as FutureOr<QuerySnapshot<Map<String, dynamic>>>);
    final result = snapshots.docs.map((snapshot) => builder(snapshot)).where((value) => value != null).toList();
    if (sort != null) {
      result.sort(sort);
    }
    return result;
  }

  Future<T> documentGet<T>({
    required String path,
    required T Function(DocumentSnapshot<Map<String, dynamic>> snapshot) builder,
  }) async {
    final DocumentReference reference = ff.doc(path);
    final snapshot = await (reference.get() as FutureOr<DocumentSnapshot<Map<String, dynamic>>>);
    return builder(snapshot);
  }

  String getDocumentId({required String path}) {
    final id = ff.collection(path).doc().id;
    return id;
  }

  DocumentReference<Map<String, dynamic>> newDocRef({required String path}) {
    return ff.collection(path).doc();
  }

  DocumentReference<Map<String, dynamic>> docRef({required String path}) {
    return ff.doc(path);
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> snapshot({required String path}) {
    return ff.doc(path).snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> snapshotCollection({
    required String path,
    Query Function(Query query)? queryBuilder,
  }) {
    Query query = ff.collection(path);

    if (queryBuilder != null) {
      query = queryBuilder(query);
    }

    return query.snapshots() as Stream<QuerySnapshot<Map<String, dynamic>>>;
  }
}
