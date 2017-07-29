object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Client Magento SOAP Vers'#227'o 1'
  ClientHeight = 265
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object gbRequest: TGroupBox
    Left = 0
    Top = 0
    Width = 720
    Height = 88
    Align = alTop
    Caption = 'Request'
    TabOrder = 0
    object Label1: TLabel
      Left = 455
      Top = 11
      Width = 101
      Height = 13
      Caption = 'M'#233'todo API Magento'
    end
    object btnLogin: TButton
      Left = 275
      Top = 52
      Width = 156
      Height = 31
      Caption = 'Login'
      TabOrder = 5
      OnClick = btnLoginClick
    end
    object edtPassword: TLabeledEdit
      Left = 156
      Top = 28
      Width = 121
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Password'
      TabOrder = 1
    end
    object edtUsername: TLabeledEdit
      Left = 23
      Top = 28
      Width = 121
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Username'
      TabOrder = 0
    end
    object cbMetodoAPIMagento: TComboBox
      Left = 455
      Top = 28
      Width = 242
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
      Text = 'customer.info'
      Items.Strings = (
        'customer.info')
    end
    object edtPortaApache: TLabeledEdit
      Left = 274
      Top = 28
      Width = 71
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = 'Porta Apache'
      NumbersOnly = True
      TabOrder = 2
      Text = '80'
    end
    object edtCustomerId: TLabeledEdit
      Left = 372
      Top = 28
      Width = 71
      Height = 21
      EditLabel.Width = 56
      EditLabel.Height = 13
      EditLabel.Caption = 'CustomerId'
      NumbersOnly = True
      TabOrder = 3
      Text = '1'
    end
  end
  object gbResponse: TGroupBox
    Left = 0
    Top = 88
    Width = 720
    Height = 177
    Align = alClient
    Caption = 'Response'
    TabOrder = 1
    object memPrincipal: TMemo
      Left = 2
      Top = 15
      Width = 716
      Height = 160
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
