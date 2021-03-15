﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="ViewCart1.aspx.vb" Inherits="StoreProject.ViewCart1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:SqlDataSource ID="SqlDSCart" runat="server" 
        DataSourceMode="DataSet"
        ConnectionString="<%$ ConnectionStrings:ConnectionStringOnlineStore %>" 
        SelectCommand=""
        DeleteCommand="DELETE FROM [Cart] WHERE ([CartNo] = @CartNo AND [ProductNo] = @ProductNo)"
        UpdateCommand="UPDATE [Cart] SET [Quantity] = @Quantity WHERE ([CartNo] = @CartNo AND [ProductNo] = @ProductNo)">
    </asp:SqlDataSource>
    <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDSCart" AllowPaging="True" PageSize="3" DataKeyNames="CartNo,ProductNo"
        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
        EmptyDataText="There are no product in the cart.">
        <Columns>
            <asp:BoundField DataField="ProductNo" HeaderText="Product No" InsertVisible="False" ReadOnly="true"
                SortExpression="ProductNo" />
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" InsertVisible="False" ReadOnly="true"
                SortExpression="ProductName" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />

            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" InsertVisible="False" ReadOnly="true" />
        </Columns>
    </asp:GridView>
</asp:Content>