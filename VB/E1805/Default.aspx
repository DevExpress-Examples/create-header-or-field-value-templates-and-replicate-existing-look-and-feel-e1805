﻿<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="E1805._Default" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v9.2, Version=9.2.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dxwpg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>

		<dxwpg:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" 
			DataSourceID="AccessDataSource1">
			<Fields>
				<dxwpg:PivotGridField ID="fieldSalesPerson" Area="RowArea" AreaIndex="0" 
					FieldName="Sales_Person">
				</dxwpg:PivotGridField>
				<dxwpg:PivotGridField ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0" 
					FieldName="Extended_Price">
				</dxwpg:PivotGridField>
				<dxwpg:PivotGridField ID="fieldCategoryName" Area="ColumnArea" AreaIndex="0" 
					FieldName="CategoryName">
				</dxwpg:PivotGridField>
			</Fields>
		</dxwpg:ASPxPivotGrid>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
			DataFile="~/App_Data/nwind.mdb" 
			SelectCommand="SELECT [Sales Person] AS Sales_Person, [Extended Price] AS Extended_Price, [CategoryName] FROM [SalesPerson]">
		</asp:AccessDataSource>

	</div>
	</form>
</body>
</html>