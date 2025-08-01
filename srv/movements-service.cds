using cap.schema from '../db/schema';


service movements {

    entity MovementType as projection on schema.MovementType;
    entity Wallets      as projection on schema.Wallets;
    entity Categories   as projection on schema.Categories;

    @UI: {
        SelectionFields : [title],
        LineItem        : [
            {Value: title},
            {
                Value      : amount,
                Criticality: {$value: criticality}
            },
            {
                Value: type_name,
                Label: 'Tipo'
            },
            {
                Value: wallet_name,
                Label: 'Carteira'
            },
            {
                Value: category_name,
                Label: 'Categoria'
            }
        ],
        Facets          : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Detalhes',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroup #Main: {Data: [
            {Value: title},
            {Value: amount},
            {Value: type_ID},
            {Value: wallet_ID},
            {Value: category_ID}
        ]}
    }
    entity Movements @(Capabilities: {
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
    })                  as
        projection on schema.Movements {
            ID,
            title,
            amount,
            @Common.ValueList      : {
                Label         : 'Tipo de Movimento',
                CollectionPath: 'MovementType',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'type_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'label'
                    }
                ]
            }
            @Common.TextArrangement: #TextOnly
            @Common.Text           : type_name
            type,
            type.label                            as type_name,
            case
                when type.label = 'RECEITA'
                     then 3
                when type.label = 'DESPESA'
                     then 1
            end                                   as criticality   : Integer,
            @Common.ValueList      : {
                Label         : 'Carteira',
                CollectionPath: 'Wallets',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'wallet_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'name'
                    }
                ]
            }
            @Common.TextArrangement: #TextOnly
            @Common.Text           : wallet_name
            wallet,
            @Common.ValueList      : {
                Label         : 'Categoria',
                CollectionPath: 'Categories',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'category_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'name'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'icon'
                    }
                ]
            }
            @Common.TextArrangement: #TextOnly
            @Common.Text           : category_name
            category,
            wallet.name                           as wallet_name,
            category.icon || ' ' || category.name as category_name : String(50)
        };

    annotate Movements with @odata.draft.enabled;
}
