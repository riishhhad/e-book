
import 'package:ebook2/Repository/API/api_book.dart';
import 'package:ebook2/Repository/Modelclass/ebook.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'ebook_event.dart';
part 'ebook_state.dart';

class EbookBloc extends Bloc<EbookEvent, EbookState> {
  late List<Ebook> ebook;
  Ebookapi ebookapi = Ebookapi();
  EbookBloc() : super(EbookInitial()) {
    on<EbookEvent>((event, emit) async {
      emit (ebookBlocloading());
      try{
        ebook= await ebookapi.getbook();
        emit(ebookBlocloaded());

      }
      catch(a){
        emit(ebookBlocerror());
      }
      // TODO: implement event handler
    });
  }
}
