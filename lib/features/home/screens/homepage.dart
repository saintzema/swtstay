import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/features/home/home_widgets/widgets.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/custom_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List rooms = ['Rooms', 'Apartments'];
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/searchScreen');
              },
              child: IgnorePointer(
                child: CustomSearchBar(readOnly: true, searchController: searchController),
              ),
            )),
            horizontalGap(10.w),
            const FilterButton()
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalGap(20.h),
            const BookNowContainer(),
            verticalGap(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  const Expanded(
                    child: ReferContainer(
                      image: GImage.refer1,
                      text: 'Refer & Get 10%\noff bookings',
                    ),
                  ),
                  horizontalGap(10.w),
                  const Expanded(
                    child: ReferContainer(
                      image: GImage.refer2,
                      text: 'Get sweet deals\ntoday',
                    ),
                  )
                ],
              ),
            ),
            verticalGap(20.h),
            Container(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              height: 56.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: rooms.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: CategoriesCard(
                        text: rooms[index],
                        isSelected: index == _selectedIndex,
                      ),
                    );
                  }),
            ),
            verticalGap(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10, // Define the number of items you want to display
                itemBuilder: (context, index) {
                  return const RoomsCard();
                },
              ),
            ),
            verticalGap(20.h)
          ],
        ),
      ),
    );
  }
}
