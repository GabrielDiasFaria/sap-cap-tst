namespace cap.schema;

using {
    managed,
    cuid
} from '@sap/cds/common';

entity Wallets : cuid, managed {
    @title: 'Nome'
    name      : String(100);
    createdAt : DateTime;
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

entity Movements : cuid, managed {
    @title: 'Título'
    title     : String(200);

    @title: 'Valor'
    amount    : Decimal(15, 2);

    @title: 'Data'
    date      : Date;

    @title: 'Tipo'
    type      : Association to MovementType;

    @title: 'Carteira'
    wallet    : Association to Wallets;

    @title: 'Categoria'
    category  : Association to Categories;

    @title: 'Nota'
    notes     : String(500);
    createdAt : DateTime;
}

entity MovementType : cuid, managed {
    label : String(50);
}
