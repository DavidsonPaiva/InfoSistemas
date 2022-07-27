object frmCadCliente: TfrmCadCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '[Info Sistemas] - Cadastro'
  ClientHeight = 407
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 41
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = 'Cadastro de Clientes'
    Color = 48123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitTop = -6
  end
  object pnlGeral: TPanel
    Left = 0
    Top = 41
    Width = 695
    Height = 346
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label5: TLabel
      Left = 32
      Top = 125
      Width = 24
      Height = 13
      Caption = 'Email'
    end
    object lblLogradouro: TLabel
      Left = 135
      Top = 181
      Width = 54
      Height = 13
      Caption = 'Logradouro'
    end
    object lblNumero: TLabel
      Left = 519
      Top = 181
      Width = 39
      Height = 13
      Caption = 'Numero'
    end
    object lblBairro: TLabel
      Left = 32
      Top = 229
      Width = 27
      Height = 13
      Caption = 'Bairro'
    end
    object lblCEP: TLabel
      Left = 32
      Top = 181
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object lblCidade: TLabel
      Left = 32
      Top = 285
      Width = 32
      Height = 13
      Caption = 'Cidade'
    end
    object lblUF: TLabel
      Left = 359
      Top = 285
      Width = 12
      Height = 13
      Caption = 'UF'
    end
    object lblNome: TLabel
      Left = 32
      Top = 21
      Width = 29
      Height = 13
      Caption = 'Nome'
    end
    object lblCPF: TLabel
      Left = 432
      Top = 21
      Width = 18
      Height = 13
      Caption = 'CPF'
    end
    object lblIdentidade: TLabel
      Left = 32
      Top = 69
      Width = 49
      Height = 13
      Caption = 'Identidade'
    end
    object lblTelefone: TLabel
      Left = 192
      Top = 69
      Width = 39
      Height = 13
      Caption = 'Telefone'
    end
    object lblComplemento: TLabel
      Left = 192
      Top = 229
      Width = 66
      Height = 13
      Caption = 'Complemento'
    end
    object lblPais: TLabel
      Left = 415
      Top = 285
      Width = 16
      Height = 13
      Caption = 'Pais'
    end
    object pnlButtons: TPanel
      Left = 610
      Top = 0
      Width = 85
      Height = 346
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object btnIncluir: TButton
        Left = 0
        Top = 0
        Width = 85
        Height = 25
        Align = alTop
        Caption = 'Incluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = btnIncluirClick
      end
      object btnSalvar: TButton
        Left = 0
        Top = 25
        Width = 85
        Height = 25
        Align = alTop
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnSalvarClick
      end
    end
    object edtCEP: TEdit
      Left = 32
      Top = 200
      Width = 97
      Height = 21
      Alignment = taCenter
      MaxLength = 8
      NumbersOnly = True
      TabOrder = 6
      OnExit = edtCEPExit
    end
    object edtLogradouro: TEdit
      Tag = 1
      Left = 135
      Top = 200
      Width = 378
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object edtUF: TEdit
      Tag = 1
      Left = 359
      Top = 304
      Width = 50
      Height = 21
      Alignment = taCenter
      CharCase = ecUpperCase
      TabOrder = 12
      Text = 'MS'
    end
    object edtCidade: TEdit
      Tag = 1
      Left = 32
      Top = 304
      Width = 321
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 11
      Text = 'CAMPO GRANDE'
    end
    object edtBairro: TEdit
      Tag = 1
      Left = 32
      Top = 248
      Width = 154
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object edtNumero: TEdit
      Tag = 1
      Left = 519
      Top = 200
      Width = 50
      Height = 21
      Alignment = taCenter
      TabOrder = 8
    end
    object edtNome: TEdit
      Left = 32
      Top = 40
      Width = 378
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      Text = 'DAVIDSON RECALDE PAIVA'
    end
    object edtCPF: TEdit
      Left = 432
      Top = 40
      Width = 137
      Height = 21
      Alignment = taCenter
      MaxLength = 11
      NumbersOnly = True
      TabOrder = 2
      OnExit = edtCEPExit
    end
    object edtIdentidade: TEdit
      Left = 32
      Top = 88
      Width = 137
      Height = 21
      Alignment = taCenter
      CharCase = ecUpperCase
      TabOrder = 3
      OnExit = edtCEPExit
    end
    object edtTelefone: TEdit
      Left = 192
      Top = 88
      Width = 137
      Height = 21
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 4
      Text = '67992677349'
      OnExit = edtCEPExit
    end
    object edtEmail: TEdit
      Left = 32
      Top = 144
      Width = 537
      Height = 21
      CharCase = ecLowerCase
      TabOrder = 5
      Text = 'asp.paiva@gmail.com'
      OnExit = edtCEPExit
    end
    object edtComplemento: TEdit
      Tag = 1
      Left = 192
      Top = 248
      Width = 377
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object edtPais: TEdit
      Tag = 1
      Left = 415
      Top = 304
      Width = 154
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 13
      Text = 'BRASIL'
    end
    object pnlMensagem: TPanel
      Left = 0
      Top = 125
      Width = 51
      Height = 50
      BevelOuter = bvNone
      Caption = 'MENSAGEM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      object ActivityIndicator1: TActivityIndicator
        Left = 0
        Top = 0
        IndicatorSize = aisLarge
        IndicatorType = aitSectorRing
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 387
    Width = 695
    Height = 20
    Cursor = crHandPoint
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'www.infosistemas.com.br'
    Color = clBlack
    DragCursor = crArrow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 48123
    Font.Height = -11
    Font.Name = 'Segoe UI '
    Font.Style = [fsBold, fsUnderline]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnClick = pnlRodapeClick
    ExplicitLeft = -56
    object Image1: TImage
      Left = 230
      Top = 0
      Width = 56
      Height = 20
      Align = alCustom
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000000CC
        0000004C08060000002192582A000000097048597300000B1300000B1301009A
        9C18000000206348524D00007A25000080830000F9FF000080E9000075300000
        EA6000003A980000176F925FC546000005C14944415478DAEC9DCF71E24814C6
        3F5CD69D8D60208215118C7CD0797004C61118478089C03802B4110C73E66039
        82D146B07204AB3B07EF418F192D85417FBA5B4DF7F755B95C76B95A8DDC3F7D
        EFBDFEA3C1C7C707288AAAA72BDE028A2230144560288AC0501481A128024351
        DEEBDAC50F35180C2EBAFFBB2D4200430091FCEAAB7CDFFF7EAFDB20C6A6EFFE
        FA3435710DAA4F3046024108E04FE0D7CF751502FD034387A1743A47248E110A
        206D5408282BDE5502E39A834C0590E8209C6AA304C00F1BC2300243A974913B
        0165A4A0C902C00B80248891F30E131842721A945510A3E05D2630AE845B0F0A
        21690DCA6E8B99401B9E08FD52F99E0378979F733A577D0D5C2C09EA2C2BEFB6
        880492A986E65700966D1C65B7C52B7E97A19B2A17785AE5473E9595094CB327
        F842B19B549FFC8F418CAC63FF9E1514160A9415B8BF82F89723111802536B10
        0E01CC25D4D1014A21A0240AFBBB903EAB0279790E1C024360543EB13FD306C0
        BD8E845E8A10AF0AFB9E4A5F730243600E07DB54401969EA9E52573108CDA7FD
        26301E022355AF7587C4B98E3294EBBF7213F741A0F9A9B8D9248871EF2B305C
        AD5C0EACB90C2C9DB0AC82181393255C2922A876B2D96E8BB5AF63C56B8731E4
        2A85C4FF9B9E1E062300FF6868FA3188CBB56C0CC93C00467295B5C6A41E28E7
        376EBB948B1541F3AFA6CF390E62E40CC9DC0FC19E007CD70C4B0660D2372C95
        BEE8D0C2B7B173E5212C6B03FFE804C08D456BC0743D186632F7E38DAE3D8465
        A61B96C32A92050A35B61DC1A34D6C5784C56D582457BB5418094C8F398B8FCE
        0200DF401198864FD8858FB0487E31E33027304D06CCDA47584426AA58198171
        473A174FEE07CBA3A50F8B10EA562D9F524A60DC709791E670A4805DA5E34399
        58BEB2F16DFBB4CB0EA33B1CB11616297284062EF583398C3B9A6A6C7B69C90C
        FE3158A6A67217DD5B14088CB9411369CC5DD220C693C5798BA995C48FF050AE
        3A4CE4DB40918AA0CA0D63E71C362530D439AD6C0CC50CC362ADC31298F6FAA2
        A1CD02C0D262584C24F919805B9F9F98AE02F3AEA14DEB4AA8523A3709CB8DEF
        A770F2E4CBFA7AB130C13715861116C71D4675429ADB94BB4815D0142C1BC2E2
        383052C129140F1A5B6099C36C35EC96B0B8EF30AA43A8770B4019CA9E9E6703
        972BC4559E88883FC0AC14BA4CD6332CFB7C656628041BFB3ACFE22D301246DC
        5FFAE790236B4D54C2729427DC3004F3D461206781AD143415F514827D87FEA3
        A080727E69C257019E9717E79229D8CF9F053126066189049491E64B2592D8E7
        5D1AE1417E8E0153096DBA2C4CD47EC698CCDA3F1BC855948042601C06A6923C
        AF5BE6035A5DC6D0499C4A4121308E0353199C73947B469A0E4EE5FBF70D9CEF
        5C08282FBA0E4227308E0353097FE668FE76B10D14BC0849C3DBC20E954B32AF
        7D0D1C81F1009823E1D03794BB34EBB84E810E27F27770B83AFDDA889B64A6EE
        3781F10C9823F07C9510E954AE9306316E1AB63D839E17CB6E50BE013939F210
        980948138664DDC5D5CA0712D7D854C2A650E0F922033D1467C87A04A580BC26
        BC1A724951E34E9CB27AADA17C8684FF613A8C52875198CC0F65E0AA02251790
        DFAAA1E00948B4172C1892111815A08C003C482834EC08480AE04DC2BFBCA36B
        15418C3F080C81B10218999D7F40FBE39D32F93A0AC891EBB579ABD8BD8EA391
        98C3506DF4DAE06F537190BF514E88A62DAE97A07949FA8E790C1DC61687F989
        FF57D5F610BC49929EA1DCB9992BBCE6139A1FDA77A37AE93E433202D3760087
        A6B7324B2ED3E4D0F53C8831263004C68AA4BF2F5051BEE4B66E0160A9723725
        8121309708CD10CD96DA285B7D4D6008CC258313A1DE5E9A0C8A4E83F109181E
        15EB9824A19FE0FC299D21CC1CA84187A1C35C8CDB8C244C9BE9CC6718921118
        178B02CFF87CCF4DA7094D0243605CCE6F169F80D31A1A0243607C709C8723A1
        DAB8CDC42A937ECAF5C240262B97C7F8BD54A600781E99970E435174188A2230
        144560288AC050144560288AC050942EFD37002EC678A2630FF9280000000049
        454E44AE426082}
      Proportional = True
      OnClick = Image1Click
    end
  end
end
