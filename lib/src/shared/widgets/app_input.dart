import 'package:sdk_chat_remarked/src/core/ext.dart';
import 'package:sdk_chat_remarked/src/shared/widgets/app_text.dart';
import 'package:sdk_chat_remarked/src/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sdk_chat_remarked/src/core/consts.dart';

/// Виджет текстового поля вввода.
///
/// [suffixIcon] - иконка справа. В случае добавления иконки справа обработчик
///   автоматически не добавляется, его нужно добавить вручную снаружи.
class AppInput extends StatefulWidget {
  /// Виджет текстового поля вввода.
  const AppInput({
    super.key,
    this.width,
    this.height,
    this.obscuringCharacter,
    this.keyboardType = TextInputType.streetAddress,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
    this.prefixText,
    this.suffixText,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixIconConstraints,
    this.prefixIconConstraints,
    this.contentPadding,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.hintFocusText,
    this.hintText,
    this.obscureText,
    this.onChanged,
    this.controller,
    this.onTap,
    this.onFieldSubmitted,
    this.prefix,
    this.title,
    this.titleColor,
    this.hintMaxLines,
    this.readOnly = false,
    this.fillColor,
    this.validator,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.enabledBorder,
    this.focusedBorder,
    this.counterText,
    this.autoFocus = false,
    this.expands = false,
    this.validateIfTextIsEmpty = false,
    this.focusNode,
    this.textInputAction,
    this.onEditingComplete,
    this.scrollPadding = const EdgeInsets.all(20),
  });

  ///
  /// [AppInput.textarea]
  const AppInput.textarea({
    this.width,
    this.height,
    this.inputFormatters,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.hintFocusText,
    this.hintText,
    this.onChanged,
    this.controller,
    this.onTap,
    this.onFieldSubmitted,
    this.prefix,
    this.title,
    this.titleColor,
    this.hintMaxLines,
    this.readOnly = false,
    this.fillColor,
    this.validator,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.enabledBorder,
    this.focusedBorder,
    this.counterText,
    this.autoFocus = false,
    this.validateIfTextIsEmpty = false,
    this.focusNode,
    this.expands = false,
    this.textInputAction,
    this.onEditingComplete,
    super.key,
  })  : obscureText = false,
        obscuringCharacter = '•',
        keyboardType = TextInputType.multiline,
        textAlign = TextAlign.start,
        prefixText = null,
        suffixText = null,
        suffixIcon = null,
        prefixIcon = null,
        suffixIconConstraints = null,
        prefixIconConstraints = null,
        contentPadding =
            const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        scrollPadding = const EdgeInsets.all(20);

  /// Ширина - стараемся использовать только в **крайнем** случае
  /// Не задаем напрямую, ограничиваем внешними пэддингами
  final double? width;

  /// Высота понадобилась, так как внезапно на экране 6.1.1
  /// решили сделать кастомную высоту ввода.
  final double? height;

  /// Прятать ли текст при воводе
  final bool? obscureText;

  /// Какой символ указывать, если прячем текст
  final String? obscuringCharacter;

  /// Пэддинг внутри поля
  final EdgeInsetsGeometry? contentPadding;

  /// Тип клавиатуры, которая открывается, когда поле получает фокус
  final TextInputType? keyboardType;

  /// Выравнивание текста.
  final TextAlign textAlign;

  /// Форматтеры для ограничения вводимых символов
  final List<TextInputFormatter>? inputFormatters;

  /// Заблокировано ли поле
  final bool readOnly;

  /// Виджет слева от текста
  final Widget? prefix;

  /// Префикс текста
  final String? prefixText;

  /// Суффикс текста
  final String? suffixText;

  /// Виджет справа от текста
  final Widget? suffixIcon;

  /// Ограничения на размер для suffixIcon
  final BoxConstraints? suffixIconConstraints;

  /// Иконка prefixIcon
  final Widget? prefixIcon;

  /// Ограничения на размер для  prefixIcon
  final BoxConstraints? prefixIconConstraints;

  /// Минимальное количество линий (полезно если нужно создать большое поле
  /// в высоту
  final int? minLines;

  /// Максимальное количество линий (используем если надо создать небольшое
  /// поле
  final int? maxLines;

  /// Ограничение на длину вводимого текста
  final int? maxLength;

  /// Подсказка, которая отображатеся на текстовом поле после того, как
  /// пользователь начал ввод
  final String? hintFocusText;

  /// Текст подсказки при отсутстии фокуса
  final String? hintText;

  /// Подсказка, отображающаяся внутри границы поля слева сверху, которая не
  /// мешает вводу
  final String? title;

  /// Цвет подсказки
  final Color? titleColor;

  /// Огранчение на длину подсказки
  final int? hintMaxLines;

  /// Коллбэк, срабатывающий каждый раз при изменении вводимого текста
  final ValueChanged<String>? onChanged;

  /// Контроллер ввода текста. Стараемся его указывать ВСЕГДА
  final TextEditingController? controller;

  /// Коллбэк при нажатии на поле
  final GestureTapCallback? onTap;

  ///
  final void Function()? onEditingComplete;

  /// Коллбэк при завершении ввода (нажатии клавши ввод)
  final void Function(String)? onFieldSubmitted;

  /// Бэкграунд поля
  final Color? fillColor;

  /// Выравнивание по вертикали
  final CrossAxisAlignment crossAxisAlignment;

  /// Функция валидации на значение. Использует текущее значение. Может
  /// возвращать текст (String) ошибки, если возвращаем null, значит текст
  /// прошел валидацию
  final FormFieldValidator<String>? validator;

  /// Когда проводим валидацию
  final AutovalidateMode? autoValidateMode;

  /// Цвет границы при отсутствии фокуса
  final Color? enabledBorder;

  /// Цвет границы при фокусе
  final Color? focusedBorder;

  /// Счетчик текста внизу теперь опциональный.
  final String? counterText;

  /// Запрашивать ли фокус?
  final bool autoFocus;

  ///
  final bool expands;

  ///
  final TextInputAction? textInputAction;

  /// Автовалидация при пустом тексте.
  /// В этом случае автоматически срабатывает флаг isError.
  final bool validateIfTextIsEmpty;

  /// Внешний фокус для инпута.
  final FocusNode? focusNode;

  /// Отступ вниз от поля ввода при скроллинге (актуально при выползаниии клавы)
  final EdgeInsets scrollPadding;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  /// Переменная показывает прошли мы валидацию или нет,
  /// Если нет, меняется цвет заливки поля. Тк данного метода нет в стандартных
  /// пришлось делать listener
  bool isError = false;

  @override
  void initState() {
    super.initState();
    widget.validateIfTextIsEmpty
        ? widget.controller?.addListener(simpleErrorListener)
        : widget.controller?.addListener(controllerListener);
  }

  @override
  void dispose() {
    widget.controller?.removeListener(simpleErrorListener);
    widget.controller?.removeListener(controllerListener);
    super.dispose();
  }

  void controllerListener() {
    setState(() {
      isError = widget.validator?.call(widget.controller?.text) != null;
    });
  }

  void simpleErrorListener() {
    setState(() {
      if (widget.validateIfTextIsEmpty) {
        final txt = widget.controller?.text ?? '';
        isError = txt.isEmpty;
      } else {
        isError = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Consts.borderRadius20);

    return SizedBox(
      width: widget.width,
      child: Column(
        crossAxisAlignment: widget.crossAxisAlignment,
        children: [
          if (widget.title != null) ...[
            AppText.medium14(
              widget.title ?? '',
              color: widget.titleColor,
            ),
            8.sbHeight,
          ],
          Container(
            height: widget.height ?? 49,
            decoration: BoxDecoration(boxShadow: AppColors.dropShadow),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.top,
              textAlign: widget.textAlign,
              autofocus: widget.autoFocus,
              focusNode: widget.focusNode,
              maxLength: widget.maxLength,
              minLines: widget.minLines,
              maxLines: widget.maxLines,
              expands: widget.expands,
              readOnly: widget.readOnly,
              keyboardType: widget.keyboardType,
              inputFormatters: widget.inputFormatters,
              controller: widget.controller,
              onChanged: widget.onChanged,
              onTap: widget.onTap,
              validator: widget.validator,
              autovalidateMode: widget.autoValidateMode,
              onFieldSubmitted: widget.onFieldSubmitted,
              cursorColor: AppColors.black,
              scrollPadding: widget.scrollPadding,
              style: AppStyles.semiBold14.copyWith(
                decorationThickness: 0,
                decorationColor: Colors.transparent,
              ),
              onEditingComplete: widget.onEditingComplete,
              textInputAction: widget.textInputAction ?? TextInputAction.done,
              obscureText: widget.obscureText ?? false,
              obscuringCharacter: widget.obscuringCharacter ?? '*',
              decoration: InputDecoration(
                prefixText: widget.prefixText,
                suffixText: widget.suffixText,
                counterText: widget.counterText,
                hintText: widget.hintText,
                errorStyle: AppStyles.semiBold14.copyWith(
                  color: AppColors.red,
                ),
                // Паддинг справа от иконки удалось добавить
                // только таким образом.
                suffixIcon: widget.suffixIcon != null
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          widget.suffixIcon!,
                          10.sbWidth,
                        ],
                      )
                    : null,
                suffixIconConstraints: widget.suffixIconConstraints ??
                    const BoxConstraints(maxHeight: 20),
                // Паддинг слева от иконки удалось добавить
                // только таким образом.
                prefixIcon: widget.prefixIcon != null
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          16.sbWidth,
                          widget.prefixIcon!,
                          8.sbWidth,
                        ],
                      )
                    : null,
                prefixIconConstraints: widget.prefixIconConstraints ??
                    const BoxConstraints(maxHeight: 20),
                hintMaxLines: widget.hintMaxLines,
                prefix: widget.prefix,
                contentPadding: widget.contentPadding ??
                    () {
                      return widget.suffixIcon == null
                          ? const EdgeInsets.symmetric(horizontal: 16)
                          : const EdgeInsets.fromLTRB(16, 0, 5, 0);
                    }(),
                hintStyle: AppStyles.reqular14.copyWith(
                  color: AppColors.paleVioletTxt,
                ),
                filled: true,
                fillColor: widget.fillColor ??
                    (isError
                        ? AppColors.red
                        : widget.readOnly
                            ? AppColors.paleVioletTxt.withOpacity(.3)
                            : AppColors.white),

                enabledBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(
                    color: widget.readOnly
                        ? AppColors.transparent
                        : widget.enabledBorder ?? AppColors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(
                    width: 0,
                    // по умолчанию цвет из конструктора BorderSide
                    color: widget.readOnly
                        ? AppColors.transparent
                        : widget.focusedBorder ?? AppColors.transparent,
                  ),
                ),

                errorBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(color: AppColors.red),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(color: AppColors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
