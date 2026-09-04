using {print} from '../db/schemas';

service MainService {
    entity Printer   as projection on print.Printers;
    entity Filaments as projection on print.Filaments;
    entity Pieces    as projection on print.Pieces;
}
