--1.	Tong quan ve bo du lieu 

select count(order_id) So_luong_don_hang_ban_ra, 
count(distinct (customer_name)) as SL_khach_hang,
count(distinct(product_name)) as SL_dong_san_pham, 
count(distinct category) as SL_danh_muc ,
count(distinct(sub_category)) as SL_tieu_muc, 
sum(quantity) as Tong_SL_san_Pham, 
sum(profit) as Tong_LN, 
avg(profit) as TB_LN, 
avg(discount)as TB_Chiet_khau, 
count(distinct(year)) as Nam
from [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset];
 -- Trong 4 nam ban hang sieu thi co: 
    -- Tong so don hang ban ra 51290 don hang 
	-- Tep khach hang 795 vi khach 
	-- Ban 3788 san pham rieng biet trong so 3 danh muc va thuoc 17 tieu muc
	--Tong so luong san pham ban ra 178,318 
	--Tong loi nhuan dat duoc 1469034.8, trung binh moi san pham dat duoc loi nhuan 28.64 voi trung binh chiet khau 0.14 


--2.	Phan tich hieu suat ban hang

select  top 10 year, 
category,
product_name,
country,
sum(quantity) Tong_SL,
sum(sales) Tong_DT,
sum(profit) as Tong_LN
from [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset]
group by year, country, category, product_name
order by Tong_LN desc;
 -- Dua ra 10 cac san pham co loi nhuan cao nhat cung cac thong so nam, danh muc, nuoc phan phoi, so luong ban cung doanh thu
   -- San pham duoc ban chay nhat la  'Canon imageCLASS 2200 Advanced Copier' thuoc danh muc san pham 'technology' vao cac nam lan luot 2014, 2013 
   -- Cac san pham khac cung dat duoc doanh so va loi nhuan dang ke trong cac nam cu the ma khong bi chong cheo voi "nam dinh" cua  san pham moi
 
 
 --3.	Phan tich phan khuc khach hang

Select segment,
count(distinct(customer_name)) SL_KH, 
count(order_id) SL_don_hang,
sum(sales) Tong_LN
from [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset]
group  by segment 
union all 
select 'Total' AS segment, 
(select count(distinct(customer_name)) as SL_KH from [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset]), 
(select count(order_id) as SL_don_hang from [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset]) ,
(select sum(sales) as  Tong_LN from [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset]); 

-- Phan khuc khach hang  'Consumer' chiem ty trong cao nhat dong gop cho loi nhuan sieu thi, tiep den la "corporate' va cuoi cung la "Home office"


--4.	Danh gia giua chi phi giao hang va loi nhuan

select ship_mode, avg(shipping_cost) as Chi_Phi_VC, avg(profit) as TB_Loi_Nhuan, round((avg(shipping_cost)*100/avg(profit)),2) as Ty_le
from [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset]
group by ship_mode
order by avg(shipping_cost), avg(profit); 
-- Cac ship_mode co chi phi trung binh tuong ung voi loi nhuan trung binh khac nhau, tuy nhien du lieu cho thay chi phi van chuyen va loi nhuan khong dong bien voi nhau, 
-- tu do nguoi dung du lieu danh gia va dieu chinh chi phi van chuyen de toi uu hoa loi nhuan.


--5.	Danh gia giua loi nhuan va chi phi chiet khau tren cac mat hang
select product_name, category, sub_category, avg(discount) as TB_Chiet_Khau, avg(profit) as TB_Loi_Nhuan, round((avg(discount)*100/NULLIF(avg(profit), 0)),2) as Ty_le
from [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset]
group by product_name, category, sub_category
order by avg(discount), avg(profit); 


--6.	Tong quan doanh thu va khu vuc ban hang - muc do quoc gia 

select top 10 country,product_name, sum(sales) as Tong_Doanh_Thu 
from  [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset]
group by country, product_name
order by sum(sales) desc;



--7.	Tổng quan doanh thu , mặt hàng và khu vực bán hàng cấp tiểu bang
select top 10 state, product_name, sum(sales) as Tong_Doanh_Thu 
from  [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset]
group by state, product_name
order by sum(sales) desc;



--8.	Tổng quan doanh thu, mặt hàng và khu vực bán hàng cấp khu vực
select top 10 region,product_name, sum(sales) as Tong_Doanh_Thu 
from  [SuperStoreOrders Project ].dbo.[SuperStoreOrders Dataset]
group by region, product_name
order by sum(sales) desc;

   


