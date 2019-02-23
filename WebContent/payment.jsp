<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table#t01 {
  border: 0.1px solid black;  
  align: "CENTER";
}
table#t01 tr:nth-child(even) {
  border: 0.1px solid black; 
  align: "CENTER";
  background-color: #AED6F1;
}
table#t01 tr:nth-child(odd) {
  border: 0.1px solid black; 
  align: "CENTER";
  background-color: #EBF5FB;
}
table#t01 th {
  color: black;
  align: "CENTER";
  border: 0.1px solid black;
  background-color: #EBF5FB;
}
.test input {
    border: 0;
}
.tabcontent {
  padding: 6px 12px;
}

input#ip01 {
	border: none;
	border-color: transparent;
 }
 
table td {
    overflow: hidden;
    white-space: nowrap;
}

</style>
</head>
<body>

<table>
<tr>
<td class="tabcontent"><a href='${home}'>Home</a></td> 
<td class="tabcontent"><a href=searchparkingspot.jsp>Back</a></td> 
<td><a href="LogoutController">Logout</a></td>
</tr></table>

<form action='paymentController' method='post'>
<input id="parkingareaid" name="parkingareaid" style="display:none" value="${parkingareaid}"/>
<input id="parkingareaname" name="parkingareaname" style="display:none" value="${parkingareaname}"/>
<input id="selectedoptions" name="selectedoptions" style="display:none" value="${selectedoptions}"/>
<input id="parkingtype" name="parkingtype" style="display:none" value="${parkingtype}"/>
<input id="floor" name="parkingareafloor" style="display:none" value="${parkingareafloor}"/>
<input id="reservationfromtime" name="reservationfromtime" style="display:none" value="${reservationfromtime}"/>
<input id="reservationtotime" name="reservationtotime" style="display:none" value="${reservationtotime}"/>
<input id="reservation" name="reservation" style="display:none" value="${reservation}"/>
<input id="totalcost" name="totalcost" style="display:none" value="${totalcost}"/>
<h3>Payment : </h3>
<input name="errMsg" value="<c:out value='${parkingErrorMsgs.errorMsg}'/>" type="text" style ="background-color: white; color: red; border: none; width:800px" disabled="disabled">
	<table border="0" cellpadding="2" >	     
	     <tr>
          <td align="right" width="130px">First Name*&nbsp;</td>
          <td><input type="text" name ="firstname" value="<c:out value='${paymentdetails.payerFirstname}'/>" />
         <td> <input name="firstNameError" value="<c:out value='${parkingErrorMsgs.payerFirstnameError}'/>" type="text" style ="background-color: white; color: red; border: none; width: 300px" disabled="disabled" maxlength="60"> </td>
        </tr>
		<tr>
          <td align="right" width="80px">Last Name*&nbsp;</td>
          <td><input type="text" name ="lastname" value="<c:out value='${paymentdetails.payerLastname}'/>" />
         <td> <input name="lastNameError" value="<c:out value='${parkingErrorMsgs.payerLastnameError}'/>" type="text" style ="background-color: white; color: red; border: none; width: 300px" disabled="disabled" maxlength="60"> </td>
        </tr>
		<tr>
          <td align="right" valign="top" width="80px">Billing Address*&nbsp;</td>
          <td><textarea name="address" rows="4" id="address"><c:out value='${paymentdetails.billingAddress}'/></textarea>
         <td> <input name="address" value="<c:out value='${parkingErrorMsgs.billingAddressError}'/>" type="text" style ="background-color: white; color: red; border: none; width: 300px" disabled="disabled" maxlength="60"> </td>
        </tr>
		<tr>
          <td align="right" width="80px">Credit Card No.*&nbsp;</td>
          <td><input name="cardnum" type="text" id="cardnum" value="<c:out value='${paymentdetails.cardNumber}'/>" />
         <td> <input name="cardnum" value="<c:out value='${parkingErrorMsgs.cardNumberError}'/>" type="text" style ="background-color: white; color: red; border: none; width: 300px" disabled="disabled" maxlength="60"> </td>
        </tr>
		<tr>
          <td align="right" width="80px">Credit Card Type*&nbsp;</td>
          <td><select name="type" id="type">
            <option value="select" ${paymentdetails.cardType == 'select' ? 'selected' : ''}>Select</option>
            <option value="amex" ${paymentdetails.cardType == 'amex' ? 'selected' : ''}>American Express</option>
            <option value="visa" ${paymentdetails.cardType == 'visa' ? 'selected' : ''}>VISA</option>
            <option value="master" ${paymentdetails.cardType == 'master' ? 'selected' : ''}>Master Card</option>
          </select>
          </td>
			<td> <input name="cardtypeError" value="<c:out value='${parkingErrorMsgs.cardTypeError}'/>" type="text" style ="background-color: white; color: red; border: none; width: 300px" disabled="disabled" maxlength="60"> </td>
        </tr>
		<tr>
          <td align="right" width="80px">Expiry Date*&nbsp;</td>
          <td><select name="exp_month" id="exp_month">
         
            <option value="select" ${paymentdetails.expiryMonth == 'select' ? 'selected' : ''}>Select</option>
            <option value="1" ${paymentdetails.expiryMonth == '1' ? 'selected' : ''}>January</option>
            <option value="2" ${paymentdetails.expiryMonth == '2' ? 'selected' : ''}>February</option>
            <option value="3" ${paymentdetails.expiryMonth == '3' ? 'selected' : ''}>March</option>
			<option value="4" ${paymentdetails.expiryMonth == '4' ? 'selected' : ''}>April</option>
			<option value="5" ${paymentdetails.expiryMonth == '5' ? 'selected' : ''}>May</option>
			<option value="6" ${paymentdetails.expiryMonth == '6' ? 'selected' : ''}>June</option>
			<option value="7" ${paymentdetails.expiryMonth == '7' ? 'selected' : ''}>July</option>
			<option value="8" ${paymentdetails.expiryMonth == '8' ? 'selected' : ''}>August</option>
			<option value="9" ${paymentdetails.expiryMonth == '9' ? 'selected' : ''}>September</option>
			<option value="10" ${paymentdetails.expiryMonth == '10' ? 'selected' : ''}>October</option>
			<option value="11" ${paymentdetails.expiryMonth == '11' ? 'selected' : ''}>November</option>
            <option value="12" ${paymentdetails.expiryMonth == '12' ? 'selected' : ''}>December</option>
          </select>
		  <select name="exp_year" id="exp_year">
            <option value="select" ${paymentdetails.expiryYear == 'select' ? 'selected' : ''}>Select</option>
			<option value="2019" ${paymentdetails.expiryYear == '2019' ? 'selected' : ''}>2019</option>
			<option value="2020" ${paymentdetails.expiryYear == '2020' ? 'selected' : ''}>2020</option>
			<option value="2021" ${paymentdetails.expiryYear == '2021' ? 'selected' : ''}>2021</option>
			<option value="2022" ${paymentdetails.expiryYear == '2022' ? 'selected' : ''}>2022</option>
          </select>
          </td>
			<td> <input name="expiryMonthError" value="<c:out value='${parkingErrorMsgs.expiryMonthError}'/>" type="text" style ="background-color: white; color: red; border: none; width: 300px" disabled="disabled" maxlength="60"> </td>
        </tr>
		<tr>
          <td align="right" width="80px">CVV Number*&nbsp;</td>
          <td><input name="cvv" type="text"  id="cvv" value="<c:out value='${paymentdetails.cvv}'/>" />
         <td> <input name="cvvError" value="<c:out value='${parkingErrorMsgs.cvvError}'/>" type="text" style ="background-color: white; color: red; border: none; width: 300px" disabled="disabled" maxlength="60"> </td>
        </tr>
        <tr>
          <td align="right" width="80px">Total price in $: &nbsp;</td>
          <td><span class="test"><input border="0" readonly="readonly" type="text" id="totalcost" name="totalcost" value="<c:out value='${totalcost}'/>" ></span></td>
        </tr>
	     <tr>
	     
		<td><input name="action" value="reserveparkingspot" type="hidden" style="width: 100px; margin-left: 30px; margin-top: 10px; ">
		<input name="reserveparkingspot" type="submit" value="Pay" style="width: 100px; margin-left: 30px; margin-top: 10px; " ></td>
		<td align=left><input name="paymentreset" type="reset" value="Reset" style="width: 100px; margin-left: 30px; margin-top: 10px; "></td>
		</tr>
	</table>
	
</form>

<script>
		function gotopayment(){
							
				document.getElementById("makepayment").style.display = "none";
			    document.getElementById("element2").style.display = "inline-block";
			    document.getElementByName("confirm").style.display = "none";
		}
		
		function reserve(){
				document.reserveparkingspot.submit();
		}

		function myFunction() {
		  var cartCheckBox = document.getElementById("selectedcart");
		  var cameraCheckBox = document.getElementById("selectedcamera");
		  var historyCheckBox = document.getElementById("selectedhistory");
		  var cart = document.getElementById("cart");
		  var camera = document.getElementById("camera");
		  var history = document.getElementById("history");
		  var tax = document.getElementById("tax");
		  var totalprice = document.getElementById("totalPrice");
		  
		  
		  var taxValueCart = 0;
		  var taxValueCamera = 0;
		  var taxValueHistory = 0;
		  var taxValue = 0;
		  
		  var cartValue = 0;
		  var cameraValue = 0;
		  var historyValue = 0;
		  var totalTaxValue = 0;
		  
		  if (cartCheckBox.checked == true){
		      cart.style.display = "block";
		      cartValue=15.95;
		      taxValueCart = 1.32;
		  } else {
			  cart.style.display = "none";
		  }
		  
		  if (cameraCheckBox.checked == true){
			  camera.style.display = "block";
			  cameraValue = 2.95;
			  taxValueCamera = 0.24;
		  } else {
			  camera.style.display = "none";
		  }
		  
		  if (historyCheckBox.checked == true){
			  history.style.display = "block";
			  historyValue = 1.95;
			  taxValueHistory = 0.16;
		  } else {
			  history.style.display = "none";
		  }
		  if(cartCheckBox.checked == true || cameraCheckBox.checked == true || historyCheckBox.checked == true) {
			  tax.style.display = "block";
			  var k = taxValueCart+taxValueCamera+taxValueHistory;
			  if(cartCheckBox.checked == true)
			  	  k = k.toPrecision(3);
			  else
				  k = k.toPrecision(2);
			  tax.innerHTML = "Tax(8.25%): &nbsp;&nbsp; $" +k;
			  document.getElementById("makepayment").style.display = "block";
			  document.getElementById("confirmreservation").style.display = "none";
			}
		  else
			  tax.style.display="none";
		  var p = taxValueCart+taxValueCamera+taxValueHistory+historyValue+cameraValue+cartValue;
		  if(cartCheckBox.checked == true)
		  	  p = p.toPrecision(4);
		  else
			  p = p.toPrecision(3);
		  totalprice.innerHTML = "Total Price: &nbsp;&nbsp;&nbsp; $"+p;
		}
		</script>
<br/>
</body>
</html>