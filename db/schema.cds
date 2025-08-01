namespace cap.schema;

using {
    managed,
    cuid
} from '@sap/cds/common';

entity Wallets {
    key ID          : UUID;
        name        : String(100);
        description : String(200);
        createdAt   : DateTime;
}

@fiori.draft.enabled
entity Categories : cuid, managed {
    @title: 'Nome'
    name  : String(100);

    @title: 'ìcone'
    icon  : String(50); // Nome do ícone Fiori

    @title: 'Cor'
    color : String(10); // Opcional
}

entity Movements {
    key ID        : UUID;
        title     : String(200);
        amount    : Decimal(15, 2);
        date      : Date;
        type      : String(10); // "IN" = Receita, "OUT" = Despesa
        wallet    : Association to Wallets;
        category  : Association to Categories;
        notes     : String(500);
        createdAt : DateTime;
}
