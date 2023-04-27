<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="page-accounts-settings.aspx.cs" Inherits="page_accounts_settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="main-container">
            <section class="bg--secondary space--sm">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="boxed boxed--lg boxed--border">
                                <div class="text-block text-center">
                                    <img alt="avatar" src="img/avatar-round-3.png" class="image--sm">
                                    <span class="h5">Lucas Banks</span>
                                    <span>Pro Account</span>
                                    <span class="label">Pro</span>
                                </div>
                                <hr>
                                <div class="text-block">
                                    <ul class="menu-vertical">
                                        <li>
                                            <a href="#" data-toggle-class=".account-tab:not(.hidden);hidden|#account-profile;hidden">Profile</a>
                                        </li>
                                        <li>
                                            <a href="#" data-toggle-class=".account-tab:not(.hidden);hidden|#account-notifications;hidden">Email Notifications</a>
                                        </li>
                                        <li>
                                            <a href="#" data-toggle-class=".account-tab:not(.hidden);hidden|#account-billing;hidden">Billing Details</a>
                                        </li>
                                        <li>
                                            <a href="#" data-toggle-class=".account-tab:not(.hidden);hidden|#account-password;hidden">Password</a>
                                        </li>
                                        <li>
                                            <a href="#" data-toggle-class=".account-tab:not(.hidden);hidden|#account-delete;hidden">Delete Account</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="boxed boxed--lg boxed--border">
                                <div id="account-profile" class="account-tab">
                                    <h4>Profile</h4>
                                    <form>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <label>Real Name:</label>
                                                <input type="text" name="name" value="Lucas Banks">
                                            </div>
                                            <div class="col-sm-6">
                                                <label>Display Name:</label>
                                                <input type="text" name="display-name" value="l_banks">
                                            </div>
                                            <div class="col-sm-12">
                                                <label>Email Address:</label>
                                                <input type="email" name="email" value="l_banks@stack.net">
                                            </div>
                                            <div class="col-sm-12">
                                                <label>Location:</label>
                                                <input type="text" name="location" value="Melbourne">
                                            </div>
                                            <div class="col-sm-12">
                                                <label>Website:</label>
                                                <input type="text" name="website" value="http://mrare.co">
                                            </div>
                                            <div class="col-sm-12">
                                                <label>Bio:</label>
                                                <textarea rows="4" name="bio"></textarea>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="input-checkbox input-checkbox--switch">
                                                    <input type="checkbox" name="public-profile" id="input-assigned-0">
                                                    <label for="input-assigned-0"></label>
                                                </div>
                                                <span>Allow my profile to be viewable by guests</span>
                                            </div>
                                            <div class="col-md-3 col-sm-4">
                                                <button type="submit" class="btn btn--primary type--uppercase">Save Profile</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div id="account-notifications" class="hidden account-tab">
                                    <h4>Email Notifications</h4>
                                    <p>Select the frequency with which you'd like to recieve product summary emails:</p>
                                    <form>
                                        <div class="row">
                                            <div class="boxed bg--secondary boxed--border">
                                                <div class="col-xs-4 text-center">
                                                    <div class="input-radio">
                                                        <span>Never</span>
                                                        <input type="radio" name="frequency" value="never" class="validate-required" id="input-assigned-1">
                                                        <label for="input-assigned-1"></label>
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 text-center">
                                                    <div class="input-radio checked">
                                                        <span>Weekly</span>
                                                        <input type="radio" name="frequency" value="weekly" class="validate-required" id="input-assigned-2">
                                                        <label for="input-assigned-2"></label>
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 text-center">
                                                    <div class="input-radio">
                                                        <span>Monthly</span>
                                                        <input type="radio" name="frequency" value="monthly" class="validate-required" id="input-assigned-3">
                                                        <label for="input-assigned-3"></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-5">
                                                <button type="submit" class="btn btn--primary type--uppercase">Save Preferences</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div id="account-billing" class="hidden account-tab">
                                    <h4>Billing Details</h4>
                                    <div class="boxed boxed--border bg--secondary">
                                        <h5>Payment Methods</h5>
                                        <hr>
                                        <form>
                                            <div class="row">
                                                <ul>
                                                    <li>
                                                        <div class="col-sm-6">
                                                            <p>
                                                                <i class="material-icons">credit_card</i>
                                                                <span> Mastercard ending in
                                                                    <strong>4722</strong>
                                                                </span>
                                                            </p>
                                                        </div>
                                                        <div class="col-sm-3 text-right text-left-xs">
                                                            <button type="submit" class="btn bg--error">Remove</button>
                                                        </div>
                                                        <div class="col-sm-3 text-right text-left-xs">
                                                            <button type="submit" class="btn">Edit</button>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <hr>
                                            <button type="submit" class="btn">Add New Method</button>
                                        </form>
                                    </div>
                                </div>
                                <div id="account-password" class="hidden account-tab">
                                    <h4>Password</h4>
                                    <p>Passwords must be at least 6 characters in length.</p>
                                    <form>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <label>Old Password:</label>
                                                <input type="password" name="old-password">
                                            </div>
                                            <div class="col-sm-6">
                                                <label>New Password:</label>
                                                <input type="password" name="new-password">
                                            </div>
                                            <div class="col-sm-6">
                                                <label>Retype New Password:</label>
                                                <input type="password" name="new-password-confirm">
                                            </div>
                                            <div class="col-md-3 col-sm-4">
                                                <button type="submit" class="btn btn--primary type--uppercase">Save Password</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div id="account-delete" class="hidden account-tab">
                                    <h4>Delete Account</h4>
                                    <p>Permanently remove your account using the button below. Warning, this action is permanent.</p>
                                    <form>
                                        <button type="submit" class="btn bg--error type--uppercase">Delete Account</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end of row-->
                </div>
                <!--end of container-->
            </section>
            <footer class="footer-3 text-center-xs space--xs ">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <img alt="Image" class="logo" src="img/logo-dark.png">
                            <ul class="list-inline list--hover">
                                <li>
                                    <a href="#">
                                        <span class="type--fine-print">Get Started</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="type--fine-print">help@stack.io</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-sm-6 text-right text-center-xs">
                            <ul class="social-list list-inline list--hover">
                                <li>
                                    <a href="#">
                                        <i class="socicon socicon-google icon icon--xs"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="socicon socicon-twitter icon icon--xs"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="socicon socicon-facebook icon icon--xs"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="socicon socicon-instagram icon icon--xs"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--end of row-->
                    <div class="row">
                        <div class="col-sm-6">
                            <p class="type--fine-print">
                                Supercharge your web workflow
                            </p>
                        </div>
                        <div class="col-sm-6 text-right text-center-xs">
                            <span class="type--fine-print">©
                                <span class="update-year">2017</span> Stack Inc.</span>
                            <a class="type--fine-print" href="#">Privacy Policy</a>
                            <a class="type--fine-print" href="#">Legal</a>
                        </div>
                    </div>
                    <!--end of row-->
                </div>
                <!--end of container-->
            </footer>
        </div>
</asp:Content>

