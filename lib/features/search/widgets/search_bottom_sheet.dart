import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/search/widgets/search_base_bottom_sheet.dart';

class SearchContactsBottomSheet extends StatelessWidget {
  const SearchContactsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 215, 214, 214)
                            .withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search contacts...',
                        hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w400),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 12),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 43,
                  width: 43,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(Icons.search, color: Colors.black),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => ListTile(title: Text('Name'),
                onTap: () {},
                ),
                separatorBuilder: (context, _) => const Divider(height: 1),
                itemCount: 15),
          ),
        ],
      ),
    );
  }
}
