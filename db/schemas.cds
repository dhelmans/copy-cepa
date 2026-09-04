using {managed} from '@sap/cds/common';

namespace print;

entity Printers : managed {
    key id    : UUID;
        name  : String(30);
        brand : String(20);
        cost  : Decimal(15, 2);
        power : Integer;
}

entity Filaments : managed {
    key id    : UUID;
        brand : String(20);
        price : Decimal(15, 2);
        color : String(20);
        type  : String(10);
}

entity Pieces : managed {
    key id       : UUID;
        name     : String(50);
        filament : Association to Filaments;
        printer  : Association to Printers;
        weight   : Integer;
        time     : Time;
}
