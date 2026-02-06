<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="trainmanagementpage.aspx.cs" Inherits="RailwayTicketingProject.trainmanagementpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>   
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
                                  <img width="100px" src="imgs/railway.png" />
                                </center>
                           </div>
                       </div>
                       <div class="row">
                        <div class="col">
                            <br />
                            <center>
                                <h4>Train Registration</h4>
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
                                <asp:Label ID="Label2" runat="server" Text="Train ID"></asp:Label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Train ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-6">
                                &nbsp;
                                <asp:Label ID="Label1" runat="server" Text="Train Name"></asp:Label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Train Name"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-4">
                                &nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Class"></asp:Label>
                                <div class="form-group">
                                    &nbsp;
                                    <asp:Label ID="Label7" runat="server" Text="First Class"></asp:Label>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-4">
                                &nbsp;
                                <asp:Label ID="Label4" runat="server" Text="Partitions"></asp:Label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Partitions"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-4">
                                &nbsp;
                                <asp:Label ID="Label5" runat="server" Text="Seats per Partition"></asp:Label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Seats Per Partition"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-4">
                                <div class="form-group">
                                    &nbsp;
                                    <asp:Label ID="Label8" runat="server" Text="Second Class"></asp:Label>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Partitions"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Seats Per Partition"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-4">
                                <div class="form-group">
                                    &nbsp;
                                    <asp:Label ID="Label9" runat="server" Text="Third Class"></asp:Label>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Partitions"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                           <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Seats Per Partition"></asp:TextBox>
                                </div>
                               <br />
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-md-4">
                               <div class="d-grid gap-2">
                               <asp:Button class="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                               </div>
                           </div>
                           <div class="col-md-4">
                               <div class="d-grid gap-2">
                               <asp:Button class="btn btn-lg btn-block btn-info" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                               </div>
                           </div>
                           <div class="col-md-4">
                               <div class="d-grid gap-2">
                               <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                <h4>Train List</h4>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:railway_systemConnectionString %>" SelectCommand="SELECT [trainID], [trainname] FROM [train_management]"></asp:SqlDataSource>
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="trainID" DataSourceID="SqlDataSource1">
                            <AlternatingRowStyle CssClass="table-striped table-bordered"></AlternatingRowStyle>
                                <Columns>
                                    <asp:BoundField DataField="trainID" HeaderText="Train ID" ReadOnly="True" SortExpression="trainID" />
                                    <asp:BoundField DataField="trainname" HeaderText="Train Name" SortExpression="trainname" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
         </div>
        <a href="homepage.aspx"><<< Back to Home</a>
    </div>
</asp:Content>
