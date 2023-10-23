import 'package:airplanes/shared/theme.dart';
import 'package:airplanes/ui/widgets/destination_card.dart';
import 'package:airplanes/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Here you can explore our most popular and recomended locations.',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/profil.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestintions() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'BROMO',
                city: 'Malang',
                imageUrl: 'assets/image_destination_bromo.jpg',
                rating: 4.9,
              ),
              DestinationCard(
                name: 'Rinjani',
                city: 'Lombok',
                imageUrl: 'assets/image_destination_rinjani.jpg',
                rating: 4.9,
              ),
              DestinationCard(
                name: 'Ijen',
                city: 'Banyuwangi',
                imageUrl: 'assets/image_destination_ijen.jpg',
                rating: 4.9,
              ),
              DestinationCard(
                name: 'Semeru',
                city: 'Jatim',
                imageUrl: 'assets/image_destination_semeru.jpg',
                rating: 4.9,
              ),
              DestinationCard(
                name: 'Kelimutu',
                city: 'NTT',
                imageUrl: 'assets/image_destination_kelimutu.jpg',
                rating: 4.9,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Destinasi Wisata Mendaki',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTIle(
              name: 'Bromo',
              city: 'Malang',
              imageUrl: 'assets/image_destination_bromo.jpg',
              rating: 4.3,
            ),
            DestinationTIle(
              name: 'Rinjani',
              city: 'Lombok, Nusa Tenggara Barat',
              imageUrl: 'assets/image_destination_rinjani.jpg',
              rating: 4.3,
            ),
            DestinationTIle(
              name: 'Ijen',
              city: 'Banyuwangi',
              imageUrl: 'assets/image_destination_ijen.jpg',
              rating: 4.3,
            ),
            DestinationTIle(
              name: 'Semeru',
              city: 'Jawa Timur',
              imageUrl: 'assets/image_destination_semeru.jpg',
              rating: 4.3,
            ),
            DestinationTIle(
              name: 'Kelimutu',
              city: 'Flores, Nusa Tenggara Timur',
              imageUrl: 'assets/image_destination_kelimutu.jpg',
              rating: 4.3,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestintions(),
        newDestinations(),
      ],
    );
  }
}
