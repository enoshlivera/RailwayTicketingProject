<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="stationmanagementpage.aspx.cs" Inherits="RailwayTicketingProject.stationmanagementpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                   <div class="card-body">
                       <div classs="row">
                           <div class="col">
                                <br />
                                <center>
                                  <img width="100px" src="imgs/station.png" />
                                </center>
                           </div>
                       </div>
                       <div class="row">
                        <div class="col">
                            <br />
                            <center>
                                <h4>Station Registration</h4>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                       <br />
                       <div class="row">
                           <div class="col-md-5">
                                &nbsp;
                                <asp:Label ID="Label2" runat="server" Text="Station ID"></asp:Label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Station ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-7">
                                &nbsp;
                                <asp:Label ID="Label1" runat="server" Text="Station Name"></asp:Label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Station Name"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                       </div>
                       <br />
                       <div class="row">
                           <div class="col-md-4">
                               <div class="d-grid gap-2">
                               <asp:Button class="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Add" />
                               </div>
                           </div>
                           <div class="col-md-4">
                               <div class="d-grid gap-2">
                               <asp:Button class="btn btn-lg btn-block btn-info" ID="Button3" runat="server" Text="Update" />
                               </div>
                           </div>
                           <div class="col-md-4">
                               <div class="d-grid gap-2">
                               <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" />
                               </div>
                           </div>
                       </div>
                   </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                        <div class="col">
                            <br />
                            <center>
                                <h4>Station List</h4>
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
                            <asp:GridView AlternatingRowStyle-CssClass="table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
         </div>
        <a href="homepage.aspx"><<< Back to Home</a>
    </div>
</asp:Content>
