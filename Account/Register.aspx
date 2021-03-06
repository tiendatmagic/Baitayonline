﻿<%@ Page Title="Đăng ký" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Baitayonline.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container-fluid">
        <div class="mgg">
            <div class="row" style="width: 100%; justify-content: center;">
                <div class="col-lg-4 col-md-6 col-sm-8 col-12">
                    <p class="text-danger">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <div class="form-horizontal">
                        <div class="formregister">
                            <h4 class="text-center">Tạo tài khoản mới</h4>
                            <hr />
                            <asp:ValidationSummary runat="server" CssClass="text-danger" />
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Email" CssClass="control-label">Email</asp:Label>
                                <div>
                                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                        CssClass="text-danger" ErrorMessage="Email không được bỏ trống" />
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Password" CssClass="control-label">Mật khẩu</asp:Label>
                                <div>
                                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                        CssClass="text-danger" ErrorMessage="Mật khẩu không được bỏ trống" />
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="control-label">Xác nhận mật khẩu</asp:Label>
                                <div>
                                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Yêu cầu mật khẩu không được bỏ trống" />
                                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Mật khẩu không trùng khớp" />
                                </div>
                            </div>
                            <div class="form-group text-center">
                                <div>
                                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Đăng ký" CssClass="btn btn-danger" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
