import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class HoveredChatOptionsComponents extends StatefulWidget {
  const HoveredChatOptionsComponents({
    super.key,
    required this.iconpath,
    required this.chatoptionsname,
    required this.shortcut,
    required this.isSelected,
    required this.onTap,
  });

  final String shortcut;
  final String chatoptionsname;
  final String iconpath;
  final bool isSelected;
  final Function() onTap;

  @override
  State<HoveredChatOptionsComponents> createState() =>
      _HoveredChatOptionsComponentsState();
}

class _HoveredChatOptionsComponentsState
    extends State<HoveredChatOptionsComponents> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return MouseRegion(
      onEnter: (_) => setState(() {
        isHovered = true;
      }),
      onExit: (_) => setState(() {
        isHovered = false;
      }),
      child: GestureDetector(
        onTap: () => widget.onTap(),
        child: Container(
          padding: const EdgeInsets.only(
            left: Grid.padmedium,
            right: Grid.small,
            top: Grid.small,
            bottom: Grid.small,
          ),
          decoration: BoxDecoration(
              borderRadius: br8,
              color: widget.isSelected ? Palette.black : Palette.lightgray,
              boxShadow: [
                BoxShadow(
                  color: widget.isSelected
                      ? Palette.lightblue
                      : theme.borderColor, // Colore dell'ombra
                  spreadRadius: 0, // Raggio di diffusione
                  blurRadius: 0, // Raggio di sfocatura
                  offset: const Offset(0, 1), // Offset (spostamento) dell'ombra
                ),
              ]),
          child: Row(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: IconHeight.medium,
                    //child: Image.asset(, color: Palette.black),
                    child: Image.asset(widget.iconpath,
                        color:
                            widget.isSelected ? Palette.white : Palette.black),
                  ),
                  const SizedBox(width: Grid.medium),
                  Paragraph(widget.chatoptionsname,
                      textcolor:
                          widget.isSelected ? Palette.white : Palette.black)
                ],
              ),
              const Spacer(),
              Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: Grid.padsmall),
                  decoration: BoxDecoration(
                    color:
                        widget.isSelected ? Palette.white15 : Palette.black15,
                    borderRadius: br4,
                  ),
                  child: DetailsText(
                    widget.shortcut,
                    textcolor:
                        widget.isSelected ? Palette.white : Palette.black,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

/*

children: [
            Text(
              suggestedinput,
              style: GoogleFonts.sora(
                color: const Palette.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 10),
            Icon(
              iconsuggested,
              color: const Palette.black,
              size: 21,
              weight: 100,
              grade: -25,
              opticalSize: 20.0,
              fill: 0,
            )
          ],

          */