import 'package:bumblebee/core/exceptions/failure.dart';
import 'package:bumblebee/core/models/property.dart';
import 'package:bumblebee/core/wrappers/firebase_singleton.dart';
import 'package:bumblebee/feature/authentication/data/models/user.dart';
import 'package:bumblebee/feature/manage%20properties/domain/usecases/read/get_properties_usecase.dart';
import 'package:bumblebee/feature/manage%20properties/presentation/landlord/property_tile.dart';
import 'package:dartz/dartz.dart' show Either;
import 'package:flutter/material.dart';

class PropertiesPage extends StatefulWidget {
  const PropertiesPage({super.key});

  @override
  State<PropertiesPage> createState() => _PropertiesPageState();
}

class _PropertiesPageState extends State<PropertiesPage> {
  List<Property> propertiesList = <Property>[];
  late Failure propertiesFailure;

  late Future<void> futureProperties;

  @override
  void initState() {
    super.initState();
    futureProperties = getProperties();
  }

  Future<Either<Failure, List<Property>>> getProperties() async {
    final query = await GetAllPropertiesUseCase().getAllPropertiesByID(
        auth: FirebaseSingleton().getAuth,
        firestore: FirebaseSingleton().getFirestore,
        userRole: userRoles.Landlord);

    query.fold((failure) {
      propertiesFailure = failure;
    }, (properties) {
      propertiesList = properties;
    });

    return query;
  }

  Future<Either<Failure, List<Property>>> refreshProperties() async {
    propertiesList.clear();
    final properties = getProperties();
    return properties;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getProperties(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (propertiesList.isEmpty) {
              return const Text("No properties found.");
            } else if (propertiesList.isNotEmpty) {
              return RefreshIndicator(
                onRefresh: refreshProperties,
                child: ListView.builder(
                    itemCount: propertiesList.length,
                    itemBuilder: (context, index) {
                      return PropertyTile(
                        propertyName: propertiesList[index].name,
                        propertyAddress: propertiesList[index].address,
                      );
                    }),
              );
            } else {
              return Text(propertiesFailure.message);
            }
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          return const Text('Something went wrong.');
        });
  }
}