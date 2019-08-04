﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AkademisyenSa.Master" AutoEventWireup="true" CodeBehind="SinifListesi.aspx.cs" Inherits="Akili_Imza_Si.Forms.SinifListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><i class="far fa-file-alt"> Sınıf Listesi</i></h2>
    <hr />
    <asp:DropDownList ID="dropDers" Class="custom-select" runat="server"></asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="btnQrUret" class="btn btn-outline-primary" runat="server" Text="Listele" OnClick="btnQrUret_Click" />
    <br />
    <br />
    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">Oğrenci No</th>
                <th scope="col">Ad</th>
                <th scope="col">Soyad</th>
                <th scope="col">Der Durumu</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="repOgr" runat="server">
                <ItemTemplate>
                    <tr>
                        <th scope="row"><%# Eval("Ogr_No") %></th>
                        <td><%# Eval("Ogr_Ad") %></td>
                        <td><%# Eval("Ogr_Soyad") %></td>
                        <td><%# Eval("Drs_S_Z") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
