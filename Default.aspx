﻿<%@ Page Title="Chào mừng bạn đã đến với trang web bán bài online" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Baitayonline._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


        <section>
 <div>
     <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./Images/c1.jpg" alt="Los Angeles" width="100%" height="400">
    </div>
    <div class="carousel-item">
      <img src="./Images/c2.jpg" alt="Los Angeles" width="100%" height="400">
    </div>
    <div class="carousel-item">
      <img src="./Images/c3.jpg" alt="Los Angeles" width="100%" height="400">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

 <hgroup>
     <h1><%: Title %>.</h1>
 <h2>Các sản phẩm bán chạy:</h2>
 </hgroup>
 <asp:ListView ID="bookList"  runat="server" DataKeyNames="BookID"
GroupItemCount="4"
 ItemType="Baitayonline.Models.Book" SelectMethod="GetBooks">
 <EmptyDataTemplate>
 <table >
 <tr>
 <td>No data was returned.</td>
 </tr>
 </table>
 </EmptyDataTemplate>
 <EmptyItemTemplate>
 <td/>
 </EmptyItemTemplate>
 <GroupTemplate>
 <tr id="itemPlaceholderContainer" runat="server">
 <td id="itemPlaceholder" runat="server"></td>
 </tr>
 </GroupTemplate>
 <ItemTemplate>
 <td runat="server">
 <table>
 <tr>
 <td>
 <a href="BookDetails.aspx?bookID=<%#:Item.BookID%>">
 <img src ="/Images/<%#:Item.ImagePath%>" width="316" height="272"
style="border:solid" /></a>
 </td>
 </tr>
 <tr>
 <td>
 <a href="BookDetails.aspx?bookID=<%#:Item.BookID%>">
 <span>
 <%#:Item.BookName%>
 </span>
 </a>
<br />
 <span>
 <b>Giá |
</b><%#:String.Format("{0:n}",Item.UnitPrice)%>
 </span><span>đ</span>
<br />
     <a href="AddToCart.aspx?bookID=<%#:Item.BookID%>">
 <span class="dathang">
 <b>Đặt hàng<b>
 </span>
 </a>

 </td>
 </tr>
<tr>
 <td>&nbsp;</td>
 </tr>
 </table>
</p>
 </td>
 </ItemTemplate>
 <LayoutTemplate>
 <table style="width:100%;>
 <tbody>
 <tr>
 <td>
 <table id="groupPlaceholderContainer" runat="server"
style="width:100%">
 <tr id="groupPlaceholder"></tr>
 </table>
 </td>
 </tr>
<tr>
 <td></td>
 </tr>
<tr></tr>
 </tbody>
 </table>
 </LayoutTemplate>
 </asp:ListView>
 </div>
 </section>
</asp:Content>