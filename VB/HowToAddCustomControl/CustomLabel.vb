﻿Imports System.ComponentModel
Imports DevExpress.XtraReports.UI
Imports DevExpress.Utils.Serializing

Namespace Sample
    Public Class CustomLabel
        Inherits XRLabel

        Private _someProperty As String
        Private _bindableProperty As String

        <Browsable(True), Bindable(False), Category("Data"), XtraSerializableProperty, DefaultValue(""), DesignerSerializationVisibility(DesignerSerializationVisibility.Visible), EditorBrowsable(EditorBrowsableState.Always)> _
        Public Property SomeProperty() As String
            Get
                Return Me._someProperty
            End Get
            Set(ByVal value As String)
                Me._someProperty = value
            End Set
        End Property

        <Browsable(True), Bindable(True), Category("Data"), XtraSerializableProperty, DefaultValue(""), DesignerSerializationVisibility(DesignerSerializationVisibility.Visible), EditorBrowsable(EditorBrowsableState.Always)> _
        Public Property BindableProperty() As String
            Get
                Return Me._bindableProperty
            End Get
            Set(ByVal value As String)
                Me._bindableProperty = value
            End Set
        End Property

        Protected Overrides Sub PutStateToBrick(ByVal brick As DevExpress.XtraPrinting.VisualBrick, ByVal ps As DevExpress.XtraPrinting.PrintingSystemBase)
            MyBase.PutStateToBrick(brick, ps)
            brick.Text = Me.BindableProperty
        End Sub
    End Class
End Namespace