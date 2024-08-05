import 'package:flutter/material.dart';
import 'package:internshala_assignment/data/models/post_model.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PostTile extends StatelessWidget {
  const PostTile({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(height: 0, color: Colors.grey.shade300),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(6)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                PhosphorIcon(
                  PhosphorIconsBold.trendUp,
                  color: color.primary,
                  size: 15,
                ),
                const SizedBox(width: 5),
                const Text(
                  'Actively hiring',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          title: Text(
            post.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            post.companyName,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
          ),
          // trailing: Image.network(post.companyLogo, height: 20, width: 40), // Commented this as no valid urls are provided.
        ),
        _infoTile(PhosphorIconsRegular.mapPin, post.locationNames.join(', ')),
        Row(
          children: [
            _infoTile(PhosphorIconsRegular.playCircle, post.startDate),
            _infoTile(PhosphorIconsRegular.calendarBlank, post.duration),
          ],
        ),
        _infoTile(PhosphorIconsRegular.money, post.stipend.salary),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Wrap(
            children: [
              if (post.ppoLabelValue != null)
                _infoChip(null, 'Internship ${post.ppoLabelValue!}'),
              if (post.partTime) _infoChip(null, 'Part Time'),
            ],
          ),
        ),
        Divider(height: 0, color: Colors.grey.shade300),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'View details',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              FilledButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)))),
                onPressed: () {},
                child: const Text('Apply now'),
              ),
            ],
          ),
        ),
        Divider(height: 0, color: Colors.grey.shade300),
        Container(color: Colors.grey.shade200, height: 8)
      ],
    );
  }

  _infoTile(PhosphorFlatIconData iconData, String text) => Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            PhosphorIcon(iconData, size: 14),
            const SizedBox(width: 4),
            Text(text, style: const TextStyle(fontSize: 12)),
          ],
        ),
      );

  _infoChip(PhosphorFlatIconData? iconData, String text) => Padding(
        padding: const EdgeInsets.only(right: 8.0, bottom: 16.0),
        child: Container(
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.grey.shade300,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (iconData != null) PhosphorIcon(iconData, size: 14),
              const SizedBox(width: 4),
              Text(text, style: const TextStyle(fontSize: 11)),
            ],
          ),
        ),
      );
}
