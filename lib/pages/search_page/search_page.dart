import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala_assignment/data/providers/posts_provider.dart';
import 'package:internshala_assignment/pages/search_page/widgets/post_tile.dart';
import 'package:internshala_assignment/routes/routes.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  void initState() {
    ref.read(postsProvider.notifier).fetchUsers();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    final posts = ref.watch(postsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Internships'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              OutlinedButton.icon(
                onPressed: () => const FiltersRoute().push(context),
                style: ButtonStyle(
                    padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 0)),
                    side: WidgetStatePropertyAll(
                        BorderSide(color: color.primary))),
                icon: const PhosphorIcon(PhosphorIconsRegular.funnel, size: 15),
                label: const Text(
                  'Filters',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Text(
                '${posts.length} total internships',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          const Divider(color: Colors.grey),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts.elementAt(index);

                return PostTile(post: post);
              },
            ),
          ),
        ],
      ),
    );
  }
}
