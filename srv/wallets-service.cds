using cap.schema from '../db/schema';

service wallets {

    @UI: {
        SelectionFields : [name],
        LineItem        : [{
            Value: name,
            Label: 'Nome'
        }, ],
        Facets          : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Detalhes da Categoria',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroup #Main: {Data: [{
            Value: name,
            Label: 'Nome'
        }]}
    }
    entity Wallets @(Capabilities: {
        InsertRestrictions: {
            $Type: 'Capabilities.InsertRestrictionsType',
            Insertable
        },
        UpdateRestrictions: {
            $Type: 'Capabilities.UpdateRestrictionsType',
            Updatable
        },
        DeleteRestrictions: {
            $Type: 'Capabilities.DeleteRestrictionsType',
            Deletable
        },
    }) as projection on schema.Wallets;

    annotate Wallets with @odata.draft.enabled;
}
