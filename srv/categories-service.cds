using cap.schema from '../db/schema';

service categories {

    @UI: {
        SelectionFields : [name],
        LineItem        : [
            {
                Value: icon,
                Label: 'Ícone'
            },
            {
                Value: name,
                Label: 'Nome'
            },
        ],
        Facets          : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Detalhes da Categoria',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroup #Main: {Data: [
            {
                Value: name,
                Label: 'Nome'
            },
            {
                Value: icon,
                Label: 'Ícone'
            }
        ]}
    }
    entity Categories @(Capabilities: {
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
    }) as projection on schema.Categories;

    annotate Categories with @odata.draft.enabled;

}
