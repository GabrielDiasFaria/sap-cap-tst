using cap.schema from '../db/schema';

service movementsTypes {

    @UI: {
        SelectionFields : [label],
        LineItem        : [{
            Value: label,
            Label: 'Label'
        }, ],
        Facets          : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Detalhes da Categoria',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroup #Main: {Data: [{
            Value: label,
            Label: 'Label'
        }]}
    }
    entity movementsTypes @(Capabilities: {
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
    }) as projection on schema.MovementType;

    annotate movementsTypes with @odata.draft.enabled;
}
