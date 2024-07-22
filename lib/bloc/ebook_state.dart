part of 'ebook_bloc.dart';

@immutable
sealed class EbookState {}

final class EbookInitial extends EbookState {}


final class ebookInitial extends EbookState {}
class ebookBlocloading extends EbookState {}
class ebookBlocloaded extends EbookState {}
class ebookBlocerror extends EbookState {}
