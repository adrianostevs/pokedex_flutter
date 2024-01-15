import 'package:berry/domain/entity/list_berry/result/result.dart';
import 'package:berry/ui/main/main_provider.dart';
import 'package:berry/util/string_extension.dart';
import 'package:berry/util/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_dependency/shared_dependency.dart';

class MainScreen extends ConsumerWidget {
  static const routeName = '/berry/main';

  const MainScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        MainProvider provider = ref.watch(mainProvider);
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
            backgroundColor: Colors.transparent,
          ),
          body: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: Image.asset(
                  Assets.images.pokeball.path,
                  color: const Color.fromRGBO(0, 0, 0, 0.1),
                  repeat: ImageRepeat.repeat,
                  scale: 9,
                ),
              ),
              if (provider.listBerry.results.isNotEmpty) ...{
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 24),
                    child: LayoutBuilder(builder: (context, constraints) {
                      return PagedListView(
                        pagingController: provider.pagingController,
                        builderDelegate: PagedChildBuilderDelegate<Result>(
                            itemBuilder: (context, item, index) {
                          return Container(
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(110, 101, 128, 1),
                                    width: 4),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                      child: Image.network(
                                    item.name.getBerryImage(),
                                  )),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    item.name.uppercaseText,
                                    style: TextStyles.regular(
                                        fontSize: constraints.maxWidth > 600
                                            ? 20
                                            : 14),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      );
                    }),
                  ),
                )
              } else ...{
                const Center(
                  child: CircularProgressIndicator(),
                )
              }
            ],
          ),
        );
      },
    );
  }
}
