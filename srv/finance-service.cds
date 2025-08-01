using cap.schema from '../db/schema';

service finance {
    entity Wallets   as projection on schema.Wallets;
    entity Movements as projection on schema.Movements;
}
