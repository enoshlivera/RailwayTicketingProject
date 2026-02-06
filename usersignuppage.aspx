<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignuppage.aspx.cs" Inherits="RailwayTicketingProject.usersignuppage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                    <div classs="row">
                        <div class="col">
                            <center>
                                <img width="100px" src="imgs/add-friend.png" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Member Registration</h4>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            &nbsp;
                            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="First Name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            &nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Last Name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label4" runat="server" Text="NIC Number"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="NIC Number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Contact Number"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Contact Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Email Address"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email Address"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <br />
                                <center>
                                    <span class="badge text-bg-info">Login Credentials</span>
                                </center>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Username"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label7" runat="server" Text="User ID"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="User ID"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label9" runat="server" Text="Re-type Password"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Re-type Password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                        <br />
                        <div class="d-grid">
                            <asp:Button class="btn btn-info btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                        <br />
                        </div>
                    </div>
                    </div>
                &nbsp;
                <a href="homepage.aspx"><<< Back to Home</a>
                </div>
            </div>
    </div>
</asp:Content>
