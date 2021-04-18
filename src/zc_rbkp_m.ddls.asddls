@EndUserText.label: 'RBKP Managed Consumption view'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@UI: {
 headerInfo: {
               typeName: 'Header',
               typeNamePlural: 'Product Header',
               title: { type: #STANDARD, value: 'Belnr' } }
              }

@Search.searchable: true

@ObjectModel.semanticKey: ['Belnr']
@ObjectModel.representativeKey: 'Belnr'

define root view entity ZC_RBKP_M
  as projection on ZI_RBKP_M
{

      @UI.facet: [{
              id: 'InvHdr',
              purpose: #STANDARD,
              type: #IDENTIFICATION_REFERENCE,
              position: 10,
              label: 'Header Details'
              }]

      @UI : { lineItem: [{position: 10, importance: #HIGH, label: 'Invoice Doc. no' },
                     { type: #FOR_ACTION,dataAction: 'post',label: 'Post' },
                     { type: #FOR_ACTION,dataAction: 'saveComplete',label: 'Save as Completed' },
                     { type: #FOR_ACTION,dataAction: 'park',label: 'Park Document' }],
       // Use '@UI.identification' only when #IDENTIFICATION_REFERENCE is used in Facet->type
       // Add actions in both Lineitem and Identification annotations
       fieldGroup: [{qualifier: 'GeneralData1',position: 10,importance: #HIGH, label: 'Invoice Doc. no' }],
      identification: [{position: 10,label: 'Invoice Doc. no' },
                                 { type: #FOR_ACTION,dataAction: 'post',label: 'Post' },
                                 { type: #FOR_ACTION,dataAction: 'saveComplete',label: 'Save as Completed' },
                                 { type: #FOR_ACTION,dataAction: 'park',label: 'Park Document' }],
      selectionField: [{position: 10 }] }
      @EndUserText.quickInfo: 'Invoice Document number'
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
  key belnr as Belnr,

      @UI: { lineItem: [{position: 20, importance: #HIGH, label: 'Fiscal year' }],
         fieldGroup: [{qualifier: 'GeneralData1',position: 20,importance: #HIGH, label: 'Fiscal year' }],
         identification: [ { position: 20, label: 'Fiscal year' } ],
         selectionField: [{position: 20 }] }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      @EndUserText.quickInfo: 'Fiscal year'
  key gjahr as Gjahr,

      @UI : { identification: [ { position: 30, label: 'Object Id' } ] }
      @EndUserText.quickInfo: 'Object Id'
      objid,

      @UI : { identification: [ { position: 40, label: 'Document type' } ] }
      @EndUserText.quickInfo: 'Document type'
      blart,

      @UI : { identification: [ { position: 50, label: 'Document date' } ] }
      @EndUserText.quickInfo: 'Document date'
      bldat,

      @UI : { identification: [ { position: 60, label: 'Posting date' } ] }
      @EndUserText.quickInfo: 'Posting date'
      budat,

      @UI : { identification: [ { position: 70, label: 'Transaction code' } ] }
      @EndUserText.quickInfo: 'Transaction code'
      tcode,

      @UI : { identification: [ { position: 80, label: 'Invoice creator' } ] }
      @EndUserText.quickInfo: 'Invoice creator'
      usnam,
      @UI : { identification: [ { position: 90, label: 'Invoice Date' } ] }
      @EndUserText.quickInfo: 'Invoice Date'
      cpudt,

      @UI : { identification: [ { position: 100, label: 'Invoice time' } ] }
      @EndUserText.quickInfo: 'Invoice time'
      cputm,
      @UI : { identification: [ { position:110, label: 'Reference Document no' } ] }
      @EndUserText.quickInfo: 'Reference Document no'
      xblnr,
      @UI : { identification: [ { position: 120, label: 'Vendor' } ] }
      @EndUserText.quickInfo: 'Vendor'
      lifnr,
      @UI : { identification: [ { position: 130, label: 'Currency' } ] }
      @EndUserText.quickInfo: 'Currency'
    @Consumption.valueHelpDefinition: [{entity: {name: 'I_Currency', element: 'Currency' }}]
      waers,
      @UI : { identification: [ { position: 140, label: 'Exchange Rate' } ] }
      @EndUserText.quickInfo: 'Exchange Rate'
      kursf,
      @UI : { identification: [ { position: 150, label: 'Tax Amount' } ] }
      @EndUserText.quickInfo: 'Tax Amount'
      @Semantics.amount.currencyCode: 'waers'
      wmwst1,
      @UI : { identification: [ { position: 160, label: 'Invoice Amount' } ] }
      @EndUserText.quickInfo: 'Invoice Amount'
      @Semantics.amount.currencyCode: 'waers'
      dmbtr,
      @UI : { identification: [ { position: 170, label: 'Tax code' } ] }
      @EndUserText.quickInfo: 'Tax code'
      mwskz1,
      @UI : { identification: [ { position: 180, label: 'Terms of Payment' } ] }
      @EndUserText.quickInfo: 'Terms of Payment'
      zterm,
      @UI : { identification: [ { position: 190, label: 'Invoice status' } ] }
      @EndUserText.quickInfo: 'Invoice status'
      @ObjectModel.text.element: ['docst']
      rbstat,
      @UI : { identification: [ { position: 200, label: 'Invoice status' } ] }
      @EndUserText.quickInfo: 'Invoice status'
      @UI.hidden: true
      docst
}
