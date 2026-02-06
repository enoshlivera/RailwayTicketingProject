<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="systemuser.aspx.cs" Inherits="RailwayTicketingProject.systemuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                    <div classs="row">
                        <div class="col">
                            <br />
                            <center>
                                <img width="150px" src="imgs/software-engineer.png" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <br />
                            <center>
                                <h3>System User Login</h3>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <br />
                            &nbsp;
                            <!--<asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>-->
                            <img width="30" src="imgs/profile.png" />
                            <div class="form-group">
                                <br />
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="System User ID"></asp:TextBox>
                            </div>
                            <br />
                            &nbsp;
                            <!--<asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>-->
                            <img width="30" src="imgs/reset-password.png" />
                            <div class="form-group">
                                <br />
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                <br />
                                &nbsp;<a href="userpasswordreset.aspx">Foget Password?</a>
                            </div>
                            <div class="d-grid">
                                <br />
                                <asp:Button CssClass="btn btn-success .btn-block btn-lg" ID="Button1" runat="server" Text="Login"  />
                                <br />
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                &nbsp;
                <a href="homepage.aspx"><<< Back to Home</a>
            </div>
        </div>
    </div>
</asp:Content>
