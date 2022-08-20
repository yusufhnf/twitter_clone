part of './dashboard_screen.dart';

class _DrawerView extends StatelessWidget {
  const _DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d"),
                radius: 40,
              ),
              title: const Text("Welcome"),
              subtitle: const Text("John Doe"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text("Log out"),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
