<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="about_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <!-- Breadcrumbs -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumbs_area">
                    <div class="breadcrumb_content" style="margin: 0 8px;">
                        <ul>
                            <li><a runat="server" href="~/Default.aspx">Trang chủ</a></li>
                            <li>Về chúng tôi</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumbs End -->

    <!-- Main Container -->

    <!--about section area -->
    <section class="about_section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <figure>
                        <figcaption class="about_content">
                            <h1>Chất lượng vượt trội - Công nghệ đáng tin cậy</h1>
                            <p>
                                BanLinhKien là hệ thống cung cấp linh kiện điện tử chính hãng, chất lượng cao, được nhập trực tiếp từ các nhà sản xuất uy tín toàn cầu. 
                                Chúng tôi chuyên cung cấp vi mạch, cảm biến, module điện tử, linh kiện công nghiệp và phụ kiện công nghệ cho các dự án cá nhân, doanh nghiệp, trường học và viện nghiên cứu.
                            </p>
                            <div class="about_signature">
                                <img src="assets/img/about/about-us-signature.png" alt="">
                            </div>
                            <div>
                                <img src="assets/anh3.jpg" />
                            </div>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
    </section>
    <!--about section end-->
    <!--chose us area start-->
    <div class="choseus_area" data-bgimg="assets/img/about/about-us-policy-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <div class="single_chose">
                        <div class="chose_icone">
                            <img src="assets/img/about/About_icon1.png" alt="">
                        </div>
                        <div class="chose_content">
                            <h3>Chất lượng đảm bảo</h3>
                            <p>Tất cả linh kiện đều chính hãng, được kiểm tra kỹ lưỡng!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="single_chose">
                        <div class="chose_icone">
                            <img src="assets/img/about/About_icon2.png" alt="">
                        </div>
                        <div class="chose_content">
                            <h3>Hỗ trợ kỹ thuật 24/7</h3>
                            <p>Đội ngũ chuyên gia sẵn sàng tư vấn mọi lúc!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="single_chose">
                        <div class="chose_icone">
                            <img src="assets/img/about/About_icon3.png" alt="">
                        </div>
                        <div class="chose_content">
                            <h3>Nguồn gốc rõ ràng</h3>
                            <p>Linh kiện nhập trực tiếp từ nhà sản xuất uy tín!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--testimonial area start-->
    <div class="faq-client-say-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="faq-client_title">
                        <h2>Chúng tôi có thể giúp gì cho bạn?</h2>
                    </div>
                    <div class="faq-style-wrap" id="faq-five">
                        <!-- Panel-default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a id="octagon" class="collapsed" role="button" data-bs-toggle="collapse" href="#faq-collapse1" aria-expanded="true" aria-controls="faq-collapse1"><span class="button-faq"></span>
                                        Giao hàng miễn phí nhanh chóng</a>
                                </h5>
                            </div>
                            <div id="faq-collapse1" class="collapse show" aria-expanded="true" role="tabpanel" data-parent="#faq-five">
                                <div class="panel-body">
                                    <p>
                                        MIỄN PHÍ GIAO cho 5 đơn hàng đầu tiên từ 100.000đ
                                    </p>
                                    <p>
                                        (Với các khách hàng lần đầu mua hàng tại BanLinhKien kể từ ngày 7/5/2025 sẽ áp dụng chính sách mới: Miễn phí giao hàng cho 5 đơn hàng đầu tiên từ 100.000đ, tối đa 15.000đ)
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--// Panel-default -->

                        <!-- Panel-default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="collapsed" role="button" data-bs-toggle="collapse" href="#faq-collapse2" aria-expanded="false" aria-controls="faq-collapse2"><span class="button-faq"></span>Chất lượng linh kiện đảm bảo</a>
                                </h5>
                            </div>
                            <div id="faq-collapse2" class="collapse" aria-expanded="false" role="tabpanel" data-parent="#faq-five">
                                <div class="panel-body">
                                    <p>Tất cả linh kiện điện tử đều được kiểm tra kỹ lưỡng trước khi giao.</p>
                                    <p>
                                        Chúng tôi cam kết cung cấp sản phẩm chính hãng, đạt tiêu chuẩn chất lượng cao từ các nhà sản xuất uy tín. Nếu có lỗi kỹ thuật, đổi trả miễn phí trong 30 ngày.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--// Panel-default -->

                        <!-- Panel-default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="collapsed" role="button" data-bs-toggle="collapse" href="#faq-collapse3" aria-expanded="false" aria-controls="faq-collapse3"><span class="button-faq"></span>Hỗ trợ kỹ thuật 24/7</a>
                                </h5>
                            </div>
                            <div id="faq-collapse3" class="collapse" role="tabpanel" data-parent="#faq-five">
                                <div class="panel-body">
                                    <p>Đội ngũ kỹ thuật viên sẵn sàng hỗ trợ bạn bất cứ lúc nào.</p>
                                    <p>
                                        Từ hướng dẫn lắp ráp, tư vấn chọn linh kiện đến giải đáp các vấn đề kỹ thuật, chúng tôi luôn đồng hành cùng bạn để đảm bảo dự án của bạn thành công.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--// Panel-default -->

                        <!-- Panel-default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="collapsed" role="button" data-bs-toggle="collapse" href="#faq-collapse4" aria-expanded="false" aria-controls="faq-collapse4"><span class="button-faq"></span>Chính sách bảo hành linh hoạt</a>
                                </h5>
                            </div>
                            <div id="faq-collapse4" class="collapse" role="tabpanel" data-parent="#faq-five">
                                <div class="panel-body">
                                    <p>Bảo hành lên đến 12 tháng cho mọi sản phẩm.</p>
                                    <p>
                                        Chúng tôi cung cấp chính sách bảo hành rõ ràng, hỗ trợ đổi trả nhanh chóng nếu sản phẩm gặp lỗi từ nhà sản xuất, mang lại sự an tâm tuyệt đối cho bạn.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--// Panel-default -->
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <!--testimonial area start-->
                    <div class="testimonial_area testimonial_about">
                        <div class="section_title">
                            <h2>Khách hàng của chúng tôi nói gì?</h2>
                        </div>
                        <div class="testimonial_container">
                            <div class="testimonial_carousel testimonial-two owl-carousel">
                                <div class="single_testimonial">
                                    <div class="testimonial_thumb">
                                        <a href="#">
                                            <img src="assets/img/about/testimonial1.png" alt=""></a>
                                    </div>
                                    <div class="testimonial_content">
                                        <div class="testimonial_icon_img">
                                            <img src="assets/img/about/testimonials-icon.png" alt="">
                                        </div>
                                        <p>Tôi rất hài lòng với chất lượng linh kiện và dịch vụ hỗ trợ kỹ thuật từ BanLinhKien. Sản phẩm chính hãng, giao hàng nhanh!</p>
                                        <a href="#">Nguyễn Văn A</a>
                                    </div>
                                </div>
                                <div class="single_testimonial">
                                    <div class="testimonial_thumb">
                                        <a href="#">
                                            <img src="assets/img/about/testimonial2.png" alt=""></a>
                                    </div>
                                    <div class="testimonial_content">
                                        <div class="testimonial_icon_img">
                                            <img src="assets/img/about/testimonials-icon.png" alt="">
                                        </div>
                                        <p>Đội ngũ hỗ trợ rất nhiệt tình, giúp tôi chọn đúng linh kiện cho dự án. Chắc chắn sẽ tiếp tục ủng hộ BanLinhKien!</p>
                                        <a href="#">Trần Thị B</a>
                                    </div>
                                </div>
                                <div class="single_testimonial">
                                    <div class="testimonial_thumb">
                                        <a href="#">
                                            <img src="assets/img/about/testimonial3.png" alt=""></a>
                                    </div>
                                    <div class="testimonial_content">
                                        <div class="testimonial_icon_img">
                                            <img src="assets/img/about/testimonials-icon.png" alt="">
                                        </div>
                                        <p>Chính sách bảo hành rõ ràng, linh kiện chất lượng cao, giá cả hợp lý. Rất đáng tin cậy!</p>
                                        <a href="#">Lê Minh C</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--testimonial area end-->
                </div>
            </div>
        </div>
    </div>
    <!--testimonial area end-->
</asp:Content>