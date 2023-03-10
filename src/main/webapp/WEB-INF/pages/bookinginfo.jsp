<%-- 
    Document   : bookinginfo
    Created on : Nov 19, 2022, 1:13:08 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib  uri="http://www.springframework.org/security/tags" 
           prefix="sec" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.6.2/css/bootstrap.min.css"/>"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
        <title>JSP Page</title>
        <!-- Css Styles -->
        <jsp:include page="include/user/css-page.jsp" />
    </head>
    <style>
        label {
            font-size: 15px;
        }

        hr{
            background-color: #e5e5e5;
        }
    </style>
    <body>
        <!-- Header Section Begin -->
        <jsp:include page="include/user/header.jsp"/>
        <!-- Header End -->
        <hr>
        <form action="${pageContext.request.contextPath}/bookinged" 
                method="POST">
            <div class="container" style=" margin: auto">
                <h2 style="color:red;text-align: center;">${tinnhan}</h2><br>
                <h2 style="color:red;text-align: center;">${tinnhan1}</h2><br>
                <h2 style="color:red;text-align: center;">${tinnhan2}</h2><br>
                <h2 style="color:red;text-align: center;">${tinnhan3}</h2><br>
                <sec:authorize access="!isAuthenticated()">
                    <div class="row">
                        <div class="col-sm-7">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group" style="text-align: center;">
                                        <label style="font-size: 35px;">Th??ng tin li??n h???</label>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2">
                                    <div class="form-group">
                                        <i class="fa-solid fa-venus-mars"></i>
                                        <label>Ti??u ?????</label><br>
                                        <select  name="gender" class="" > 
                                            <option value="false" selected>
                                                Anh
                                            </option>
                                            <option value="true">
                                                Ch???
                                            </option>
                                        </select>       
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <i class="fa-solid fa-user"></i>
                                        <label>T??n</label>
                                        <input class="form-control" name="name"style="height: calc(1.5em + 0.75rem + 9px);font-size: 17px;" required
                                               />    
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <i class="fa-solid fa-phone"></i>
                                        <label>S??? ??i???n tho???i</label>
                                        <input class="form-control" name="phoneNumber"style="height: calc(1.5em + 0.75rem + 9px);font-size: 17px;"
                                               required  />  
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <i class="fa-solid fa-envelope"></i>
                                        <label>Email</label>
                                        <input type="email" class="form-control" name="email"style="height: calc(1.5em + 0.75rem + 9px);font-size: 17px;"required
                                               />  
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <i class="fa-solid fa-cake-candles"></i>
                                        <label>Ng??y sinh</label><br>
                                        <input type="date"  name="birthDate" required="" 
                                               style="height: calc(1.5em + 0.75rem + 9px);font-size: 17px;border: 1px solid #ced4da;border-radius: 4px;width: 312px;">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <i class="fa-solid fa-pen-nib"></i>
                                        <label>Y??u c???u th??m</label>
                                        <textarea class="form-control"
                                                  name="note" style="font-size: 17px;"required >V?? d???: S??? th??ch v??? gi?????ng ?????a ??i???m ????n ho???c tr??? kh??ch </textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-1">

                        </div>
                        <div class="col-sm-4">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group"style="text-align: center;font-size: 25px;">
                                        <label style="color: #000;font-size: 27px;">Y??u c???u ?????t ph??ng c???a b???n</label>

                                    </div>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <i class="fa-solid fa-check"></i>
                                        <label>Nh???n ph??ng<span> : <fmt:formatDate pattern="dd-MM-yyyy" value="${bookingSession.checkin}" /></span></label>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <i class="fa-solid fa-check"></i>
                                        <label>Tr??? ph??ng<span> :<fmt:formatDate pattern="dd-MM-yyyy" value="${bookingSession.checkout}" /></span></label>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <i class="fa-solid fa-check"></i>
                                        <label>S??? ????m: <span> ${day}</span></label>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Nh???p m?? khuy???n m???i/ m?? voucher(n???u kh??ng c?? m?? kh??ng c???n nh???p)</label><br><!-- comment -->
                                         <input class="form-control" placeholder="M?? khuy???n m??i" maxlength="5"minlength="5" name="code" type="text" style="height: calc(1.5em + 0.75rem + 9px);
                                               font-size: 17px;border: 1px solid #ced4da;border-radius: 4px;width: 312px;">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <i class="fa-solid fa-money-bill"></i>
                                        <label style="color:red">T???ng gi?? : </label>
                                        <fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "3" value = "${total}" /> VN??
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <div class="row">
                        <div class="col-sm-7">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group" style="text-align: center;">
                                        <label style="font-size: 35px;">Th??ng tin li??n h???</label>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2">
                                    <div class="form-group">
                                        <i class="fa-solid fa-venus-mars"></i>
                                        <label>Ti??u ?????</label><br>
                                        <select  name="gender"> 
                                            <c:if test="${acc.gender}">
                                                <option value="false">
                                                    Nam
                                                </option>
                                            </c:if>
                                            <c:if test="${!acc.gender}">
                                                <option value="true">
                                                    N???
                                                </option>
                                            </c:if>
                                        </select>       
                                    </div>
                                </div>
                                <!----------------id------------------------------------------->
                                <input hidden class="form-control" id="id" name="id"style="height: calc(1.5em + 0.75rem + 9px);font-size: 17px;" 
                                       value="${acc.id}"/>
                                <!----------------id------------------------------------------->
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <i class="fa-solid fa-user"></i>
                                        <label for="">T??n</label>
                                        <input class="form-control" name="name"style="height: calc(1.5em + 0.75rem + 9px);font-size: 17px;" readonly
                                               value="${acc.name}"/>    
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <i class="fa-solid fa-phone"></i>
                                        <label>S??? ??i???n tho???i</label>
                                        <input class="form-control" name="phoneNumber"style="height: calc(1.5em + 0.75rem + 9px);font-size: 17px;"readonly
                                               value="${acc.phoneNumber}"/>  
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <i class="fa-solid fa-envelope"></i>
                                        <label>Email</label>
                                        <input class="form-control"name="email"style="height: calc(1.5em + 0.75rem + 9px);font-size: 17px;"readonly
                                               value="${acc.email}"/>  
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <i class="fa-solid fa-cake-candles"></i>
                                        <label>Ng??y sinh</label><br>
                                        <input type="date" name="birthDate"  style="height: calc(1.5em + 0.75rem + 9px);
                                               font-size: 17px;border: 1px solid #ced4da;border-radius: 4px;width: 312px;" readonly
                                               value="${acc.birthDate}">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <i class="fa-solid fa-pen-nib"></i>
                                        <label>Y??u c???u th??m</label>
                                        <textarea class="form-control"
                                                  name="note" style="font-size: 17px;"required >V?? d???: S??? th??ch v??? gi?????ng ?????a ??i???m ????n ho???c tr??? kh??ch </textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-1">

                        </div>
                        <div class="col-sm-4">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group"style="text-align: center;font-size: 25px;">
                                        <label style="color: #000;font-size: 27px;">Y??u c???u ?????t ph??ng c???a b???n</label>

                                    </div>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <i class="fa-solid fa-check"></i>
                                        <label>Nh???n ph??ng<span> : <fmt:formatDate pattern="dd-MM-yyyy" value="${bookingSession.checkin}" /></span></label>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <i class="fa-solid fa-check"></i>
                                        <label>Tr??? ph??ng<span> : <fmt:formatDate pattern="dd-MM-yyyy" value="${bookingSession.checkout}" /></span></label>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <i class="fa-solid fa-check"></i>
                                        <label>S??? ????m : <span> ${day}</span></label>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Nh???p m?? khuy???n m???i/ m?? voucher(n???u kh??ng c?? m?? kh??ng c???n nh???p)</label><br><!-- comment -->
                                        <input class="form-control" placeholder="M?? khuy???n m??i" maxlength="5"minlength="5" name="code" type="text" style="height: calc(1.5em + 0.75rem + 9px);
                                               font-size: 17px;border: 1px solid #ced4da;border-radius: 4px;width: 312px;">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <i class="fa-solid fa-money-bill"></i>
                                        <label style="color:red">T???ng gi?? : </label>
                                        <fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "3" value = "${total}" /> VN??
                                    </div>
                                </div>
                            </div>

                        </div>            

                    </div>
                </sec:authorize>
                <hr><br>
                <div class="row">
                    <div class="col-sm-7">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group"style="text-align: center;font-size: 25px;">
                                    <label style="color: #000;font-size: 25px;">Ch??nh s??ch ?????t ph??ng</label>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <i class="fa-solid fa-check"></i>
                                    <label>Kh??ch s???n Sona</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <i class="fa-solid fa-check"></i>
                                    <label>Nh???n ph??ng: 14:00</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <i class="fa-solid fa-check"></i>
                                    <label>Tr??? ph??ng: 12:00</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <i class="fa-solid fa-check"></i>
                                    <label>Ph??? thu ng?????i l???n: 320,000 VN??/ ????m </label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <i class="fa-solid fa-check"></i>
                                    <label>Ph??? thu tr??? em: 180,000 VN??/ ????m (tr??? em d?????i 5 tu???i s??? ???????c mi???n ph??)</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <i class="fa-solid fa-check"></i>
                                    <label>Hu??? :<span style="font-weight: 100"> N???u h???y, thay ?????i ho???c kh??ng ?????n, kh??ch s??? tr??? to??n b??? gi?? tr??? ti???n ?????t ph??ng.</span></label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <i class="fa-solid fa-check"></i>
                                    <label>Thanh to??n :<span style="font-weight: 100"> Thanh to??n to??n b??? gi?? tr??? ti???n ?????t ph??ng.</span></label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <i class="fa-solid fa-check"></i>
                                    <label>???? bao g???m ??n s??ng </label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-1">

                    </div>
                    <div class="col-sm-4">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group"style="text-align: center;font-size: 25px;">
                                    <label  style="color: #000;font-size: 25px;">Ph????ng th???c thanh to??n</label>

                                </div>
                            </div>
                        </div>
                        <hr><br>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <select> 
                                        <option value="#" selected>
                                            Internet Banking
                                        </option>
                                    </select>      
                                </div>
                            </div>
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <input required="" type="checkbox"  value="Boat">
                                    <label for="vehicle3"> Vui l??ng ?????c k??? v?? ?????ng ?? v???i ??i???u kho???n ?????t ph??ng b???ng c??ch ????nh d???u v??o ?? b??n c???nh.</label><br><br>
                                </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">

                                    <button type="submit"style="font-size: 25px;
                                            background-color: orange;
                                            color: white;
                                            border: none;">
                                        <i class="fa-solid fa-key" style="color:black;"></i>
                                        TH???C HI???N ?????T PH??NG
                                    </button>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </form>

        <jsp:include page="include/user/footer-page.jsp"/>

        <jsp:include page="include/user/js-page.jsp"/>
<!--        <script>
            $("#btnSubmitFormBooking").click(function () {
                $('#formBooking').submit();
            });
        </script>-->
    </body>
</html>
