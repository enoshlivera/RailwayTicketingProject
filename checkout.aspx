<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="RailwayTicketingProject.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                   <div class="card-body">
                       <div classs="row">
                           <div class="col">
                                <br />
                                <center>
                                  <img width="100px" src="imgs/secure.png" />
                                </center>
                           </div>
                       </div>
                       <div class="row">
                        <div class="col">
                            <br />
                            <center>
                                <h4>Checkout</h4>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                       <div class="row">
                           <div class="col-md-2">
                                &nbsp;
                                <asp:Label ID="Label8" runat="server" Text="User ID"></asp:Label>
                               <br />
                           </div>
                           <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-2">
                                &nbsp;
                                <asp:Label ID="Label9" runat="server" Text="Username"></asp:Label>
                               <br />
                           </div>
                           <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Username" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-2">
                                &nbsp;
                                <asp:Label ID="Label2" runat="server" Text="From"></asp:Label>
                               <br />
                           </div>
                           <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="From" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-2">
                                &nbsp;
                                <asp:Label ID="Label1" runat="server" Text="To"></asp:Label>
                               <br />
                           </div>
                           <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="To" ReadOnly="True"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-6">
                                &nbsp;
                                <asp:Label ID="Label4" runat="server" Text="Date and Time"></asp:Label>
                              <br />
                           </div>
                           <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Date and Time" ReadOnly="True"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-6">
                                &nbsp;
                                <asp:Label ID="Label5" runat="server" Text="Seat Number"></asp:Label>
                               <br />
                           </div>
                           <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Seat Number" ReadOnly="True"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-6">
                                &nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Total Fair"></asp:Label>
                               <br />
                           </div>
                           <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Total Fair" ReadOnly="True"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-6">
                                &nbsp;
                                <asp:Label ID="Label6" runat="server" Text="Promo Code"></asp:Label>
                               <br />
                           </div>
                           <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Promo Code" ReadOnly="False"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-6">
                                &nbsp;
                                <asp:Label ID="Label7" runat="server" Text="Balance Payment"></asp:Label>
                               <br />
                           </div>
                           <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Balance Payment" ReadOnly="True"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-md-12">
                               <div class="d-grid gap-2">
                               <asp:Button class="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Cheakout" OnClick="Button2_Click"  />
                               </div>
                           </div>
                       </div>
                   </div>
                </div>
                </div>
            </div>
        <a href="homepage.aspx"><<< Back to Home</a>
    </div>
</asp:Content>
