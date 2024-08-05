import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:internshala_assignment/data/providers/posts_provider.dart';

class FiltersPage extends ConsumerWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postsProvider);

    var durations = posts.map((e) => e.duration).toSet();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _heading('Profile'),
                        TextButton(
                          style: const ButtonStyle(
                              padding: WidgetStatePropertyAll(EdgeInsets.zero)),
                          onPressed: () => showDialog(
                            context: context,
                            builder: (context) {
                              List<String> profiles = posts
                                  .map((e) => e.profileName)
                                  .toSet()
                                  .toList();

                              profiles = profiles.toSet().toList();

                              return AlertDialog(
                                content: SizedBox(
                                  height: 500,
                                  width: 300,
                                  child: ListView.builder(
                                    itemCount: profiles.length,
                                    itemBuilder: (context, index) {
                                      final profile = profiles.elementAt(index);

                                      return ListTile(
                                        title: Text(profile),
                                        onTap: () {
                                          ref
                                              .read(postsProvider.notifier)
                                              .filterByProfile(profile);
                                          context.pop();
                                          context.pop();
                                        },
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                          child: const Text('+   Add Profile'),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _heading('City'),
                        TextButton(
                          style: const ButtonStyle(
                              padding: WidgetStatePropertyAll(EdgeInsets.zero)),
                          onPressed: () => showDialog(
                            context: context,
                            builder: (context) {
                              List<String> cities = [];
                              for (var post in posts) {
                                for (var location in post.locationNames) {
                                  cities.add(location);
                                }
                              }

                              cities = cities.toSet().toList();

                              return AlertDialog(
                                content: SizedBox(
                                  height: 500,
                                  width: 300,
                                  child: ListView.builder(
                                    itemCount: cities.length,
                                    itemBuilder: (context, index) {
                                      final city = cities.elementAt(index);

                                      return ListTile(
                                        title: Text(city),
                                        onTap: () {
                                          ref
                                              .read(postsProvider.notifier)
                                              .filterByCity(city);
                                          context.pop();
                                          context.pop();
                                        },
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                          child: const Text('+   Add City'),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _heading('City'),
                        DropdownMenu(
                          label: const Text('Choose Duration'),
                          dropdownMenuEntries: List.generate(
                            durations.length,
                            (index) {
                              final duration = durations.elementAt(index);

                              return DropdownMenuEntry(
                                  value: duration, label: duration);
                            },
                          ),
                          onSelected: (value) {
                            if (value != null) {
                              ref
                                  .read(postsProvider.notifier)
                                  .filterByDuration(value);
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)))),
                    onPressed: () {
                      ref.read(postsProvider.notifier).clearAllFilters();
                      context.pop();
                    },
                    child: const Text('Clear All'),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: FilledButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)))),
                    onPressed: () => context.pop(),
                    child: const Text('Apply'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _heading(String text) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
}
