object Frm_Main: TFrm_Main
  Left = 0
  Top = 0
  Caption = 'Clipper4Web'
  ClientHeight = 554
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 911
    Height = 513
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 704
      Top = 0
      Width = 207
      Height = 513
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 207
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Project Files'
        Color = clMenuBar
        ParentBackground = False
        TabOrder = 0
      end
      object TV_projectfiles: TTreeView
        Left = 0
        Top = 21
        Width = 207
        Height = 211
        Align = alTop
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Indent = 19
        ParentCtl3D = False
        TabOrder = 1
        ExplicitTop = 22
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 152
      Height = 513
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 152
      Top = 0
      Width = 552
      Height = 513
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Panel5: TPanel
        Left = 0
        Top = 472
        Width = 552
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 552
        Height = 472
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 1
        TabPosition = tpBottom
        object TabSheet1: TTabSheet
          Caption = 'Code'
          object RichEdit1: TRichEdit
            Left = 0
            Top = 0
            Width = 544
            Height = 446
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              'RichEdit1')
            ParentFont = False
            TabOrder = 0
            Zoom = 100
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Preview'
          ImageIndex = 1
        end
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 911
    Height = 41
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        Width = 909
      end>
    EdgeInner = esNone
    EdgeOuter = esNone
    StyleElements = []
    object ToolBar1: TToolBar
      Left = 11
      Top = 0
      Width = 900
      Height = 25
      Caption = 'ToolBar1'
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 0
      end
      object ToolButton2: TToolButton
        Left = 23
        Top = 0
        Caption = 'ToolButton2'
        ImageIndex = 1
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 448
    Top = 128
    object File1: TMenuItem
      Caption = 'File'
      object NewProject1: TMenuItem
        Caption = 'New Project'
        OnClick = NewProject1Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 420
    Top = 245
  end
  object ImageList1: TImageList
    Left = 212
    Top = 229
  end
end
