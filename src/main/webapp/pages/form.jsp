<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.83.1">
    <title>Checkout example · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">


    <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet" type="text/css">
</head>
<body class="bg-light">

<div class="container">
    <main>
        <form name="Form" method="POST" action="${pageContext.request.contextPath}/controller">
            <input type="hidden" name="command" value="form"/>
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4"
                     src="../bootstrap-5.0.1-dist/bootstrap-seeklogo.com.svg"
                     alt="" width="72" height="57">
                <h2>Checkout form</h2>
                <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required
                    form
                    group has a validation state that can be triggered by attempting to submit the form without
                    completing
                    it.</p>
            </div>

            <div class="row g-5">

                <div class="col-md-7 col-lg-8">
                    <h4 class="mb-3">Billing address</h4>
                    <form class="needs-validation" novalidate>
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <label for="firstName" class="form-label">First name</label>
                                <input type="text" class="form-control" id="firstName" placeholder=""
                                       value="<%if (session.getAttribute("firstname")!=null){%>
<%=session.getAttribute("firstname")%>
<%}%>" required name="firstname">
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <label for="lastName" class="form-label">Last name</label>
                                <input type="text" class="form-control" id="lastName" placeholder=""
                                       value="<%if (session.getAttribute("lastname")!=null){%>
<%=session.getAttribute("lastname")%>
<%}%>" required
                                       name="lastname">
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="username" class="form-label">Username</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text">@</span>
                                    <input type="text" class="form-control" id="username" placeholder="Username"
                                           value="<%if (session.getAttribute("username")!=null){%>
<%=session.getAttribute("username")%>
<%}%>"
                                           required name="username">
                                    <div class="invalid-feedback">
                                        Your username is required.
                                    </div>
                                </div>
                            </div>


                            <div class="col-12">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" placeholder="1234 Main St" required
                                       name="address" value="<%if (session.getAttribute("address")!=null){%>
<%=session.getAttribute("address")%>
<%}%>">
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>


                            <div class="col-md-5">
                                <label for="country" class="form-label">Country</label>
                                <select class="form-select" id="country" required name="country"
                                        value="<%if (session.getAttribute("country")!=null){%>
<%=session.getAttribute("country")%>
<%}%>">
                                    <option value="">Choose...</option>
                                    <option>United States</option>
                                    <option>Belarus</option>
                                    <option>Germany</option>
                                    <option>Ukraine</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>


                        </div>


                        <h4 class="mb-3">Payment</h4>

                        <div class="my-3">
                            <div class="form-check">
                                <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked
                                       required>
                                <label class="form-check-label" for="credit">Credit card</label>
                            </div>
                            <div class="form-check">
                                <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
                                <label class="form-check-label" for="debit">Debit card</label>
                            </div>
                            <div class="form-check">
                                <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
                                <label class="form-check-label" for="paypal">PayPal</label>
                            </div>
                        </div>

                        <div class="row gy-3">
                            <div class="col-md-6">
                                <label for="cc-name" class="form-label">Name on card</label>
                                <input type="text" class="form-control" id="cc-name" placeholder="" required
                                       name="cardname" value="<%if (session.getAttribute("cardname")!=null){%>
<%=session.getAttribute("cardname")%>
<%}%>">
                                <small class="text-muted">Full name as displayed on card</small>
                                <div class="invalid-feedback">
                                    Name on card is required
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label for="cc-number" class="form-label">Credit card number</label>
                                <input type="text" class="form-control" id="cc-number" placeholder="" required
                                       name="cardnumber" value="<%if (session.getAttribute("cardnumber")!=null){%>
<%=session.getAttribute("cardnumber")%>
<%}%>">
                                <div class="invalid-feedback">
                                    Credit card number is required
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="cc-expiration" class="form-label">Expiration</label>
                                <input type="text" class="form-control" id="cc-expiration" placeholder="" required
                                       name="cardexpr" value="<%if (session.getAttribute("cardexpr")!=null){%>
<%=session.getAttribute("cardexpr")%>
<%}%>">
                                <div class="invalid-feedback">
                                    Expiration date required
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="cc-cvv" class="form-label">CVV</label>
                                <input type="text" class="form-control" id="cc-cvv" placeholder="" required
                                       name="cardcvv" value="<%if (session.getAttribute("cardcvv")!=null){%>
<%=session.getAttribute("cardcvv")%>
<%}%>">
                                <div class="invalid-feedback">
                                    Security code required
                                </div>
                            </div>
                        </div>

                        <hr class="my-4">

                        <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to checkout</button>
                    </form>
                </div>
            </div>
        </form>
    </main>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017–2021 Bakhar</p>
    </footer>
</div>


<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

<script src="form-validation.js"></script>
</body>
</html>
