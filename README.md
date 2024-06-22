# SuperStoreSale-Analysis
PHÂN TÍCH TÌNH HÌNH KINH DOANH SIÊU THỊ
Trong dự án này, dữ liệu được dùng là dữ liệu bán hàng của một siêu thị trong khoảng thời gian 2011 -2014, phân tích các trường thông tin dữ liệu để tối ưu hoá hoạt động và nâng cao lợi nhuận. Các khía cạnh phân tích bao gồm:
1.	Tổng quan về bộ dự liệu
-	Đưa ra số liệu tổng quan về:
	Số lượng đơn hàng
	Số lượng khách hàng
	Số lượng sản phẩm
	Đêm phân loại sản phẩm
	Đếm phân loại tiểu mục sản phẩm
	Tổng lợi nhuận
	Trung bình lợi nhuận
	Trung bình chiết khấu
	Đếm số năm bán hàng
2.	Phân tích hiệu suất bán hàng
-	Xác định 10 sản phẩm có doanh thu, lợi nhuận, số lượng theo từng năm cao nhất 
-	Đưa ra các xác phẩm và khu vực có doanh thu cao nhất 
3.	Phân tích phân khúc bán hàng
- Phân khúc bán hàng dựa trên hành vi mua hàng 
- Hiểu được phân khúc khách hàng có số lượng khách hàng đóng góp nhiều vào doanh thu 
4.	Đánh giá giữa chi phí giao hàng và lợi nhuận
-	Phân tích được đối với từng loại phương thức vận chuyển thì chi phí giao hàng ảnh hưởng như thế nào đến lợi nhuận tổng thể.
-	Đánh giá hiệu quả của từng phương thúc vận chuyển.
5.	Đánh giá giữa lợi nhuận tổng thể và chi phí chiết khấu.
-	Phân tích lợi nhuận theo các mặt hàng và danh mục phụ
-	Đánh giá tác động của chiết khấu đến lợi nhuận.
-	Xác định được khu vực cần tối ưu hoá chi phí chiết khấu.
6.	Tổng quan doanh thu và khu vực bán hàng – mức độ quốc gia
-	Phân tích sự phân bổ doanh thu ở các quốc gia khác nhau.
7.	Tổng quan doanh thu , mặt hàng và khu vực bán hàng cấp tiểu bang
-	Đưa ra các mặt hàng có doanh thu bán cao nhất ở các tiểu bang 
8.	Tổng quan doanh thu, mặt hàng và khu vực bán hàng cấp khu vực
-	Đưa ra các mặt hàng có doanh thu bán hàng cao nhất ở các khu vực

Các thông tin của cột của bộ dữ liệu:
Cột	Mô tả
order_id	ID của các đơn hàng
order_date	Ngày cho các đơn hàng
ship_date	Ngày vận chuyển cho các đơn hàng
ship_mode	Phương thức vận chuyển cho các đơn hàng
customer_name	Tên khách hàng
segment	Phân khúc khách hàng
state	Bang của các ID đơn hàng
country	Quốc gia của các đơn hàng
market	Thị trường của các đơn hàng
region	Khu vực của các đơn hàng
product_id	ID sản phẩm của các đơn hàng
category	Danh mục sản phẩm của các đơn hàng
sub_category	Tiểu mục sản phầm của các đơn hàng
product_name	Tên các sản phẩm
sales	Doanh thu của các đơn hàng
quantity	Số lượng của các đơn hàng
discount	Chiết khấu của các đơn hàng
profit	Lợi nhuận của các đơn hàng
shipping_cost	Chi phí vận chuyển của các đơn hàng
order_priority	Mức độ ưu tiên của các đơn hàng
year	Năm đặt hàng

