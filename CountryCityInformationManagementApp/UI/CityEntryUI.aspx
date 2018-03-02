﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityEntryUI.aspx.cs" Inherits="CountryCityInformationManagementApp.UI.CityEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 468px;
        }
        #Text1 {
            height: 163px;
            width: 364px;
        }
    </style>

    <meta charset="utf-8"/>

  <!-- Include Font Awesome. -->
  <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

  <!-- Include Editor style. -->
  <link href="../css/froala_editor.min.css" rel="stylesheet" type="text/css" />
  <link href="../css/froala_style.min.css" rel="stylesheet" type="text/css" />

  <!-- Include Editor Plugins style. -->
    <link rel="stylesheet" href="../css/plugins/char_counter.css"/>
    <link rel="stylesheet" href="../css/plugins/code_view.css"/>
    <link rel="stylesheet" href="../css/plugins/colors.css"/>
    <link rel="stylesheet" href="../css/plugins/emoticons.css"/>
    <link rel="stylesheet" href="../css/plugins/file.css"/>
    <link rel="stylesheet" href="../css/plugins/fullscreen.css"/>
    <link rel="stylesheet" href="../css/plugins/image.css"/>
    <link rel="stylesheet" href="../css/plugins/image_manager.css"/>
    <link rel="stylesheet" href="../css/plugins/line_breaker.css"/>
    <link rel="stylesheet" href="../css/plugins/table.css"/>
    <link rel="stylesheet" href="../css/plugins/video.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <fieldset>
             <legend> City Entry</legend>
         <table>
             <tr>
                 <td>Name</td>
                 <td class="auto-style1">
                     <asp:TextBox ID="nameTextBox" runat="server" Height="22px"></asp:TextBox></td>
             </tr>
               <tr>
                 <td>About</td>
                 
                 <td class="auto-style1">
                     <textarea id="aboutTextArea" cols="20" name="S1" rows="2" dir="ltr" draggable="true" ></textarea></td>
             </tr>
             <tr>
                 <td>No. of dwellers</td>
                 
                 <td class="auto-style1"><asp:TextBox ID="noOfDwellersTextBox" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
                 <td>Location</td>
                 
                 <td class="auto-style1"><asp:TextBox ID="locationTextBox" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
                 <td>Weather</td>
                 
                 <td class="auto-style1"><asp:TextBox ID="weatherTextBox" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
                 <td>Country</td>
                 
                 <td class="auto-style1">
                     <asp:DropDownList ID="countryDropDownList" runat="server">
                     </asp:DropDownList>
                 </td>
             </tr>

               
             <tr>
                 <td >
                     <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
                     <br />
       
                 </td>
                 <td class="auto-style1" >
                     <asp:Button ID="cancelButton" runat="server" Text="Cancel" OnClick="SaveButton_Click" />
                     <br />
       
                 </td>
             </tr>
              <tr>
                  <td colspan="2">
                      <asp:GridView ID="cityGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="562px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
                <asp:TemplateField HeaderText="SL#" >
        <ItemTemplate >
             <%#Container.DataItemIndex+1 %>
        </ItemTemplate>
     </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Name") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No. of dwellers">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("NoOfDwellers") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Country") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
                  </td>
                  </tr>
                 
             
              <asp:Label ID="messegeLabel" runat="server" Text=""></asp:Label>
         </table>
         </fieldset>
   <a href="Index.aspx">Back</a>
    </div>
    </form>
    
        
    <!-- Include jQuery. -->
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

  <!-- Include JS files. -->
  <script src="../js/froala_editor.min.js"></script>

  <!-- Include Plugins. -->
  <script type="text/javascript" src="../js/plugins/align.min.js"></script>
  <script type="text/javascript" src="../js/plugins/char_counter.min.js"></script>
  <script type="text/javascript" src="../js/plugins/code_view.min.js"></script>
  <script type="text/javascript" src="../js/plugins/colors.min.js"></script>
  <script type="text/javascript" src="../js/plugins/emoticons.min.js"></script>
  <script type="text/javascript" src="../js/plugins/entities.min.js"></script>
  <script type="text/javascript" src="../js/plugins/file.min.js"></script>
  <script type="text/javascript" src="../js/plugins/font_family.min.js"></script>
  <script type="text/javascript" src="../js/plugins/font_size.min.js"></script>
  <script type="text/javascript" src="../js/plugins/fullscreen.min.js"></script>
  <script type="text/javascript" src="../js/plugins/image.min.js"></script>
  <script type="text/javascript" src="../js/plugins/image_manager.min.js"></script>
  <script type="text/javascript" src="../js/plugins/inline_style.min.js"></script>
  <script type="text/javascript" src="../js/plugins/line_breaker.min.js"></script>
  <script type="text/javascript" src="../js/plugins/link.min.js"></script>
  <script type="text/javascript" src="../js/plugins/lists.min.js"></script>
  <script type="text/javascript" src="../js/plugins/paragraph_format.min.js"></script>
  <script type="text/javascript" src="../js/plugins/paragraph_style.min.js"></script>
  <script type="text/javascript" src="../js/plugins/quote.min.js"></script>
  <script type="text/javascript" src="../js/plugins/table.min.js"></script>
  <script type="text/javascript" src="../js/plugins/save.min.js"></script>
  <script type="text/javascript" src="../js/plugins/url.min.js"></script>
  <script type="text/javascript" src="../js/plugins/video.min.js"></script>

  <!-- Include Language file if we'll use it. -->
  <script type="text/javascript" src="../js/languages/ro.js"></script>

  <!-- Initialize the editor. -->
  <script>
      $(function() {
          $('#aboutTextArea').froalaEditor();
      });
  </script>
</body>
</html>
