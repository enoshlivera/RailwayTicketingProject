<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewtrain.aspx.cs" Inherits="RailwayTicketingProject.viewtrain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="background-container">
        <br />
    <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="card">
                    <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Train Scheduling and Recerving Tickets</h3>
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
                            <asp:Label ID="Label3" runat="server" Text="User ID"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="User ID"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-2">
                            &nbsp;
                            <asp:Label ID="Label5" runat="server" Text="User Name"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="User Name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Email Address"></asp:Label>
                        </div>
                        <div class="col-md-10">
                            <br />
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Email Address"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label2" runat="server" Text="From"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <br />
                                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="From"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label4" runat="server" Text="To"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <br />
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="To"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label10" runat="server" Text="Date"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <br />
                            <div class="form-group">
                                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label11" runat="server" Text="Train View"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <br />
                            <div class="form-group">
                                <asp:Table ID="Table1" runat="server"></asp:Table>
                            </div>
                        </div>
                         <div class="col-md-2">
                             <center>
                            <br />
                            &nbsp;
                            <asp:Label ID="Label8" runat="server" Text="1st Class"></asp:Label>
                            <div class="form-group">
                                <asp:RadioButton ID="RadioButton1" runat="server" placeHolder="1st Class"/>
                            </div>
                        </center>
                        </div>
                        <div class="col-md-2">
                             <center>
                            <br />
                            &nbsp;
                            <asp:Label ID="Label7" runat="server" Text="2nd Class"></asp:Label>
                            <div class="form-group">
                                <asp:RadioButton ID="RadioButton2" runat="server" placeHolder="2nd Class"/>
                            </div>
                        </center>
                        </div>
                        <div class="col-md-2">
                             <center>
                            <br />
                            &nbsp;
                            <asp:Label ID="Label12" runat="server" Text="3rd Class"></asp:Label>
                            <div class="form-group">
                                <asp:RadioButton ID="RadioButton3" runat="server" placeHolder="3rd Class"/>
                            </div>
                        </center>
                        </div>
                        <div class="col-md-2">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label6" runat="server" Text="Seat Number"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <br />
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Seat Number"></asp:TextBox>
                            </div>
                        </div>
                       <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                        <div class="col-md-2">
                            <br />
                            &nbsp;
                            <asp:Label ID="Label9" runat="server" Text="TOTAL" Font-Size="XX-Large" Font-Bold></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <br />
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Total Fair" ></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                        <div class="d-grid">
                        <br />
                        <asp:Button CssClass="btn btn-success .btn-block btn-lg" ID="Button1" runat="server" Text="Proceed to Pay" OnClick="Button1_Click"  />
                        </div>
                        </div>
                    </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
    </div>
</asp:Content>
