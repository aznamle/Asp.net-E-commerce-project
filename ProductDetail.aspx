<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="ProductDetail.aspx.vb" Inherits="StoreProject.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="breadcrumb-area bg-gray">
            <div class="container">
                <div class="breadcrumb-content text-center">
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li class="active"><asp:Label ID="lblProductName1" runat="server" Text=""></asp:Label></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="product-details-area pt-120 pb-115">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="product-details-tab">
                            <div class="product-dec-right pro-dec-big-img-slider">
                                <asp:Image ID="imgProduct" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="product-details-content pro-details-content-mt-md">
                            <h2><asp:Label ID="lblProductName" runat="server" Text=""></asp:Label></h2>
                            <div class="product-ratting-review-wrap">
                                <div class="product-ratting-digit-wrap">
                                    <div class="product-ratting">
                                    </div>
                                </div>
                                                                    <div class="product-digit">
                                        <p>Web ID: <asp:Label ID="lblProductNo" runat="server" Text=""></asp:Label></p>
                                    </div>
                            </div>
                            <p><asp:Label ID="lblDescription" runat="server" Text=""></asp:Label></p>
                            <div class="pro-details-price">
                             <h3>$<asp:Label ID="lblPrice" runat="server" Text=""></asp:Label></h3>
                            </div>

                            <div class="pro-details-quality">
                                <span>Quantity:</span>
                                <div class="cart">
                                </div>
                            </div>
                            <div class="pro-details-action-wrap">
                                <div class="pro-details-add-to-cart">
                                    <asp:TextBox ID="tbQuantity" runat="server"></asp:TextBox>
                                    <asp:RangeValidator ID="rvQuantity" runat="server" Type="Integer" MinimumValue="1" MaximumValue="50" ControlToValidate="tbQuantity" ErrorMessage="Please enter a whole number from 1-50." Display="Dynamic">Please enter a whole number from 1-50.</asp:RangeValidator>
                                    <asp:ValidationSummary ID="vsQuantity" runat="server" CssClass="sku" />
                                    <asp:Button ID="btnAddtoCart" runat="server" Text="Add To Cart" />
                                </div>
                                <div class="pro-details-action">
                                    <a title="Add to Wishlist" href="#"><i class="icon-heart"></i></a>
                                    <a title="Add to Compare" href="#"><i class="icon-refresh"></i></a>
                                    <a class="social" title="Social" href="#"><i class="icon-share"></i></a>
                                    <div class="product-dec-social">
                                        <a class="facebook" title="Facebook" href="#"><i class="icon-social-facebook"></i></a>
                                        <a class="twitter" title="Twitter" href="#"><i class="icon-social-twitter"></i></a>
                                        <a class="instagram" title="Instagram" href="#"><i class="icon-social-instagram"></i></a>
                                        <a class="pinterest" title="Pinterest" href="#"><i class="icon-social-pinterest"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="description-review-wrapper pb-110">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="dec-review-topbar nav mb-45">
                            <a class="active" data-toggle="tab" href="#des-details1">Description</a>
                            <a data-toggle="tab" href="#des-details2">Specification</a>
                            <a data-toggle="tab" href="#des-details3">Meterials </a>
                            <a data-toggle="tab" href="#des-details4">Reviews and Ratting </a>
                        </div>
                        <div class="tab-content dec-review-bottom">
                            <div id="des-details1" class="tab-pane active">
                                <div class="description-wrap">
                                    <p><asp:Label ID="lblDescription2" runat="server" Text=""></asp:Label></p>
                                </div>
                            </div>
                            <div id="des-details2" class="tab-pane">
                                <div class="specification-wrap table-responsive">
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td class="title width1">Name</td>
                                                <td>Salwar Kameez</td>
                                            </tr>
                                            <tr>
                                                <td class="title width1">SKU</td>
                                                <td>0x48e2c</td>
                                            </tr>
                                            <tr>
                                                <td class="title width1">Models</td>
                                                <td>FX 829 v1</td>
                                            </tr>
                                            <tr>
                                                <td class="title width1">Categories</td>
                                                <td>Digital Print</td>
                                            </tr>
                                            <tr>
                                                <td class="title width1">Size</td>
                                                <td>60’’ x 40’’</td>
                                            </tr>
                                            <tr>
                                                <td class="title width1">Brand </td>
                                                <td>Individual Collections</td>
                                            </tr>
                                            <tr>
                                                <td class="title width1">Color</td>
                                                <td>Black, White</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div id="des-details3" class="tab-pane">
                                <div class="specification-wrap table-responsive">
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td class="title width1">Top</td>
                                                <td>Cotton Digital Print Chain Stitch Embroidery Work</td>
                                            </tr>
                                            <tr>
                                                <td class="title width1">Bottom</td>
                                                <td>Cotton Cambric</td>
                                            </tr>
                                            <tr>
                                                <td class="title width1">Dupatta</td>
                                                <td>Digital Printed Cotton Malmal With Chain Stitch</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div id="des-details4" class="tab-pane">
                                <div class="review-wrapper">
                                    <h2>1 review for Sleeve Button Cowl Neck</h2>
                                    <div class="single-review">
                                        <div class="review-img">
                                            <img src="assets/images/product-details/client-1.png" alt="">
                                        </div>
                                        <div class="review-content">
                                            <div class="review-top-wrap">
                                                <div class="review-name">
                                                    <h5><span>John Snow</span> - March 14, 2019</h5>
                                                </div>
                                                <div class="review-rating">
                                                    <i class="yellow icon_star"></i>
                                                    <i class="yellow icon_star"></i>
                                                    <i class="yellow icon_star"></i>
                                                    <i class="yellow icon_star"></i>
                                                    <i class="yellow icon_star"></i>
                                                </div>
                                            </div>
                                            <p>Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra, in vehicula lacus scelerisque</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="ratting-form-wrapper">
                                    <span>Add a Review</span>
                                    <p>Your email address will not be published. Required fields are marked <span>*</span></p>
                                    <div class="ratting-form">
                                        <form action="#">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="rating-form-style mb-20">
                                                        <label>Name <span>*</span></label>
                                                        <input type="text">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="rating-form-style mb-20">
                                                        <label>Email <span>*</span></label>
                                                        <input type="email">
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="star-box-wrap">
                                                        <div class="single-ratting-star">
                                                            <a href="#"><i class="icon_star"></i></a>
                                                        </div>
                                                        <div class="single-ratting-star">
                                                            <a href="#"><i class="icon_star"></i></a>
                                                            <a href="#"><i class="icon_star"></i></a>
                                                        </div>
                                                        <div class="single-ratting-star">
                                                            <a href="#"><i class="icon_star"></i></a>
                                                            <a href="#"><i class="icon_star"></i></a>
                                                            <a href="#"><i class="icon_star"></i></a>
                                                        </div>
                                                        <div class="single-ratting-star">
                                                            <a href="#"><i class="icon_star"></i></a>
                                                            <a href="#"><i class="icon_star"></i></a>
                                                            <a href="#"><i class="icon_star"></i></a>
                                                            <a href="#"><i class="icon_star"></i></a>
                                                        </div>
                                                        <div class="single-ratting-star">
                                                            <a href="#"><i class="icon_star"></i></a>
                                                            <a href="#"><i class="icon_star"></i></a>
                                                            <a href="#"><i class="icon_star"></i></a>
                                                            <a href="#"><i class="icon_star"></i></a>
                                                            <a href="#"><i class="icon_star"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="rating-form-style mb-20">
                                                        <label>Your review <span>*</span></label>
                                                        <textarea name="Your Review"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="form-submit">
                                                        <input type="submit" value="Submit">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
