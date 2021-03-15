<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="ViewCart.aspx.vb" Inherits="StoreProject.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sqlDSCart1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringOnlineStore %>"> 
    </asp:SqlDataSource>
        <div class="breadcrumb-area bg-gray">
            <div class="container">
                <div class="breadcrumb-content text-center">
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li class="active">Cart Page </li>
                    </ul>
                </div>
            </div>
        </div>
        <asp:ListView ID="lvCart" runat="server" DataSourceID="sqlDSCart1"
            OnItemCommand="lvCart_OnItemCommand" CellPadding="3" DataKeyField="CartNo"
            CellSpacing="0" RepeatColumns="1" DataKeyNames="ID">
        <LayoutTemplate>
            <div class="cart-main-area pt-115 pb-120">
                <div class="container">
                <h3 class="cart-page-title">Your cart items</h3>
                <asp:Label ID="lblPage" runat="server" Text="" Font-Size="14px"></asp:Label>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="table-content table-responsive cart-table-content">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Image</th>
                                            <th>Product Name</th>
                                            <th>Until Price</th>
                                            <th>Qty</th>
                                            <th>Subtotal</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                        <asp:PlaceHolder runat="server" id="itemPlaceholder"></asp:PlaceHolder>

                                    </tbody>
                                </table>
                            </div>
                            </LayoutTemplate>


                            <ItemTemplate>
                                        <tr>
                                            <td class="product-thumbnail">
                                                <a href=""><img src="StoreAssets/images/<%# Trim(Eval("ProductNo")) %>.jpg" alt="product image" style="height: 125px;"></a>
                                            </td>
                                            <td class="product-name">
                                                <a href=""><%# Trim(Eval("ProductName")) %></a><br />
                                                Web ID: <%# Eval("ProductNo") %>
                                            </td>
                                            <td class="product-price-cart"><span class="amount">$<%# Eval("Price") %></span></td>
                                            <td class="product-quantity pro-details-quality">
                                                <div class="cart">
                                                    <asp:TextBox ID="tbQuantity" Text='<%# Eval("Quantity")%>' Width="50px" CssClass="" runat="server"></asp:TextBox>
                                                    <asp:RangeValidator ID="rvQuantity" runat="server" Type="Integer" MinimumValue="1" MaximumValue="50" ControlToValidate="tbQuantity" ErrorMessage="Please enter a whole number from 1-50." Display="Dynamic">Please enter a whole number from 1-50.</asp:RangeValidator>
                                                    <asp:ValidationSummary ID="vsQuantity" runat="server" CssClass="sku" />
                                                </div>
                                                 <asp:LinkButton runat="server" ID="lbUpdate" Text='Update'
                                                    CommandName="cmdUpdate" CommandArgument='<%# Eval("ProductNo")%>' />
                                                <asp:LinkButton runat="server" ID="lbDelete" Text='Delete'
                                                    CommandName="cmdDelete" CommandArgument='<%# Eval("ProductNo")%>' />
                                            </td>
                                            <td class="product-subtotal"><span class="amount">$<%# Eval("Price") * Eval("Quantity")%></span>
                                            </td>
                                        </tr>
                            </ItemTemplate>


                            
                        </asp:ListView>
                                <div style="padding: 8px;width: 100%;text-align: center;">
        <div style="display: inline-block; margin-top: 5px">
            <asp:Button runat="server" Text="&laquo;" id="show_prev" CssClass="show_prevx"></asp:Button>
            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lvCart" PageSize="3">
                <Fields>        
                <asp:NumericPagerField NextPageText='&raquo;' PreviousPageText='&laquo;' ButtonCount="5" 
                    ButtonType="Button" NextPreviousButtonCssClass="next_prevx" NumericButtonCssClass="numericx" 
                    CurrentPageLabelCssClass="currentx" RenderNonBreakingSpacesBetweenControls="False" />
                </Fields>
            </asp:DataPager>
            <asp:Button runat="server" Text="&raquo;" id="show_next" CssClass="show_nextx"></asp:Button>
        </div>
    </div> 
                             

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="cart-shiping-update-wrapper">
                                        <div class="cart-shiping-update">
                                            <a href="#">Continue Shopping</a>
                                        </div>
                                        <div class="cart-clear">
                                             <button><asp:Button ID="btnEmptyCart" runat="server" Text="Empty the Cart" /></button>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="cart-tax">
                                    <div class="title-wrap">
                                        <h4 class="cart-bottom-title section-bg-gray">Estimate Shipping And Tax</h4>
                                    </div>
                                    <div class="tax-wrapper">
                                        <p>Enter your destination to get a shipping estimate.</p>
                                        <div class="tax-select-wrapper">
                                            <div class="tax-select">
                                                <label>
                                                    * Country
                                                </label>
                                                <select class="email s-email s-wid">
                                                    <option>Bangladesh</option>
                                                    <option>Albania</option>
                                                    <option>Åland Islands</option>
                                                    <option>Afghanistan</option>
                                                    <option>Belgium</option>
                                                </select>
                                            </div>
                                            <div class="tax-select">
                                                <label>
                                                    * Region / State
                                                </label>
                                                <select class="email s-email s-wid">
                                                    <option>Bangladesh</option>
                                                    <option>Albania</option>
                                                    <option>Åland Islands</option>
                                                    <option>Afghanistan</option>
                                                    <option>Belgium</option>
                                                </select>
                                            </div>
                                            <div class="tax-select">
                                                <label>
                                                    * Zip/Postal Code
                                                </label>
                                                <input type="text">
                                            </div>
                                            <button class="cart-btn-2" type="submit">Get A Quote</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="discount-code-wrapper">
                                    <div class="title-wrap">
                                        <h4 class="cart-bottom-title section-bg-gray">Use Coupon Code</h4>
                                    </div>
                                    <div class="discount-code">
                                        <p>Enter your coupon code if you have one.</p>
                                        <form>
                                            <input type="text" required="" name="name">
                                            <button class="cart-btn-2" type="submit">Apply Coupon</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-12">
                                <div class="grand-totall">
                                    <div class="title-wrap">
                                        <h4 class="cart-bottom-title section-bg-gary-cart">Cart Total</h4>
                                    </div>
                                    <h4 class="grand-totall-title">Grand Total <span>$<asp:Label ID="ordertotal" runat="server" Text="Label"></asp:Label></span></h4>
                                    <a href="Checkout.aspx">Proceed to Checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
