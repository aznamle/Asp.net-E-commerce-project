Imports System.Data
Imports System.Data.SqlClient
Public Class Category
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.QueryString("search") <> "" Then
            Dim strSQL As String = "Select * from Product Where ProductName LIKE '%" & Request.QueryString("search") & "%'"
            SqlDSProductList.SelectCommand = strSQL
            lblProductList.Text = "Search Results for " & Request.QueryString("search")
        End If

        If Request.QueryString("MainCategoryID") <> "" Then
            SqlDSSubCategory.SelectCommand = "Select * from Category Where parent =" & CInt(Request.QueryString("MainCategoryID"))
            SqlDSProductList.SelectCommand = "Select * From Product Where featured = 1 and maincategoryid = " & CInt(Request.QueryString("MainCategoryID"))
            lblMainCategoryName.Text = Request.QueryString("MainCategoryName")
            lblMainCategoryName1.Text = Request.QueryString("MainCategoryName")
        End If

        If Request.QueryString("SubCategoryID") <> "" Then
            SqlDSProductList.SelectCommand = "Select * from Product Where subcategoryid = " & CInt(Request.QueryString("SubCategoryID"))
            lblProductList.Text = "Products for " + Request.QueryString("SubCategoryName")
        End If

    End Sub

    Private Sub SqlDSProductList_Selected(sender As Object, e As SqlDataSourceStatusEventArgs) Handles SqlDSProductList.Selected
        If e.AffectedRows = 0 Then
            lblProductList.Text = "Products don't exist"
        End If
    End Sub

    Public Function GetWholesalePrice(ByVal OriginalPrice As Decimal) As String
        Dim decWholesalePrice As Decimal = 0.00
        If Session("Customer") <> "" Then
            decWholesalePrice = OriginalPrice * 0.9
        Else
            decWholesalePrice = OriginalPrice
        End If
        Return decWholesalePrice
    End Function

End Class