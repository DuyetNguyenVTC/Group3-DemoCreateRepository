drop database if exists Houseware;
create database if not exists Houseware;
use EBooksStore;
create table if not exists Users(
	userId int primary key auto_increment,
    userAccount varchar(50) not null,
    userPassword varchar(50) not null,
    userName nvarchar(50) not null,
    userEmail varchar(50) not null,
    userIdCardNo varchar(12) not null,
    userBalance decimal(10.2) not null,
    UserShoppingCart bool default false
);

insert into Users(userAccount,userPassword,userName,userEmail,userIdCardNo,userBalance)
values 
('duyet','nguyen','Nguyễn Văn Duyệt','duyetnv@gmail.com','122372772','1000000000'),
('quan','nguyen','Nguyễn Văn Quân','quan7t10@gmail.com','465785762','100000000'),
('1','1','nga','nga@gmail.com','439540524','100000000'),
('new','123','dfg','deft@gmail.com','843755762','100000000'),
('neko','kaitou','Neko Kaitou','kaitou@gmail.com','49372898','100000000');
create table if not exists Orders(
	orderId int(10) primary key auto_increment,
    orderUser int not null,
    orderDate datetime,
    orderStatus int,
    constraint fk_Orders_Users foreign key(orderUser) references Users(userId)
);

create table if not exists Items(
	itemId int primary key auto_increment,
    itemName nvarchar(100) not null,
    itemPrice decimal (10,3) not null,
    itemDescription text,
    itemISBN int(13)
);

insert into Items(itemName,itemPrice,itemDescription,itemISBN)
values

('Túi Dệt 4 Ngăn Dùng Cho Đồ Dùng Gia Đình
','92.000' ,'Là một chiếc tủ di động cực kì tiện lợi dành cho gia đình bạn giúp tiết kiệm không gian nội thất và dễ dàng di chuyển ','4228324055063'),

('Bộ 3 Tranh Canvas Tặng Kèm Sơ Đồ Treo Tranh Và Đinh Treo Tranh Chuyên Dụng
','634.000' ,'Tranh Canvas Trang trí phòng khách, phòng ngủ, phòng làm việc với phong cách hiện đại mang đến một vẻ đẹp tinh tế và đơn giản.','7805798258090'),

('Hộp Đựng Đồ Gia Dụng Không Gấp Lại - Vàng
','168.000' ,'

Thùng lưu trữ thực tế và thú vị, với sequin có thể đảo ngược ở một bên, để bạn tự làm mẫu mà bạn muốn. Khả năng lớn để tổ chức đồ chơi, sách, quần áo, đồ lặt vặt và nhiều hơn nữa.
Tính năng, đặc điểm:
Thùng lưu trữ đa năng, hoàn hảo để tổ chức đồ chơi, sách, quần áo, đồ lặt vặt, v.v.
','3894223617179'),

('Hộp Đựng Đồ Gia Dụng Sáng Tạo Mori Live Soyo
','187.000' ,'
Công cụ tuyệt vời cho gia đình sử dụng. Làm cho ngôi nhà của bạn thuận tiện và ấm cúng hơn nhiều. Đặc tính: Dễ sử dụng, tiện lợi. Được làm bằng vật liệu cao cấp với độ bền cao. Hoàn hảo để sử dụng hàng ngày, để làm cho cuộc sống của bạn dễ dàng hơn.','4952012820182'),

('Giỏ Đựng Đồ Gia Dụng Camellia S 2898 
','379.000' ,'
Đồng thời như trên- Danh mục: Giỏ lưu trữ Thương hiệu Camellia Danh mục Giỏ lưu trữ Chất liệu PP Sản phẩm Trọng lượng tịnh (kg) 0,45 Kích thước sản phẩm (cm) 30,3 * 14 * 12,4 Màu Màu ngẫu nhiên','8651720561085'),

('Giá Đỡ Đồ Gia Dụng Bằng Gỗ Trang Trí Cho Tiệc Sinh Nhật Đám Cưới','108.000' ,'Giá đỡ bánh donut bằng gỗ được đánh bóng bằng tay với gỗ dán, mịn mà không làm đau tay, gỗ đàn hương bảo vệ mắt. Phong cách phương Tây, thích hợp cho đám cưới, tiệc tùng và các dịp khác.
Tính năng, đặc điểm:
Hoàn toàn được đánh bóng bằng tay với ván ép.
Gỗ đàn hương bảo vệ mắt.
Tay nghề tỉ mỉ đảm bảo sản xuất đủ mịn và không làm đau tay.
Lấy gỗ làm nguyên liệu, không chỉ an toàn mà còn bảo vệ môi trường.
Giữ lại đặc tính của gỗ, có độ bền vượt trội.
Hương thơm của gỗ và kết cấu tự nhiên làm cho môi trường thoải mái hơn.
Phong cách phương Tây thích hợp cho đám cưới, tiệc tùng và các dịp khác.
Nó có thể tháo rời và cần tự lắp ráp.','4735741123348'),

('Hộc Đựng Đồ Cho Gia Đình','148.000' ,'This storage box can organize snacks, beverage, fruits, vegetables and so on, making your refrigerator, desktop or other place neat and organized.
Features:
Simple and fashion style.
Made from PP material, has high durability.
Fine workmanship provides comfortable hand feeling.
Can be used to store snacks, beverage, fruits, vegetables and so on.
Easily for you to place and take out your thing for its no lid design.
Anti-skidding on bottom is more practical for use.','6896804954960'),

('Bộ 2 Hộp Lưu Trữ Gia Dụng Gogh ','325.000' ,'Bộ sản phẩm được làm từ chất liệu nhựa PP cao cấp không mùi, thân thiện với môi trường
Bộ hộp có dung lượng lớn vừa đủ để bạn có thể đựng được nhiều loại đồ khác nhau
Sản phẩm có độ bền cao, không dễ bị biến dạng, chịu được nhiệt độ thấp, chống ẩm, chống va đập
Sản phẩm có viền góc tròn, các cạnh trơn chu và không có gờ, an toàn cho trẻ nhỏ
Thiết kế tấm đậy che được bụi bẩn, giúp lưu trữ được nhiều đồ ăn nhẹ, phù hợp với nhu cầu của bạn','5097864155033'),

('Đồ Chơi Gia Dụng Kingwood','giá tiền' ,'giới thiệu','mã mặt hàng'),

('Tên sản phẩm','199.000' ,'
Đồ Chơi Gia Dụng Kingwood KW24035 được làm từ nhựa ABS cao cấp đạt chuẩn an toàn, không ảnh hưởng tới sức khỏe của bé khi chơi. Cấu tạo của bộ sản phẩm không góc cạnh, bền chắc chịu lực tốt hạn chế hư tổn khi bị va chạm.
Là loại đồ chơi trẻ em nấu ăn với thiết kế đẹp mắt, màu sắc tươi sáng, mô phỏng chân thật các dụng cụ nhà bếp thu nhỏ giúp bé nhập vai trở thành một đầu bếp nhí đang lăn xả vào bếp để chế biến những món ăn ngon.
Đây chắc chắn sẽ là món quà tặng đồ chơi cho bé gái sẽ làm cho bé rất thích thú say mê trong công việc nấu ăn, khám phá các dụng cụ trong nhà bếp để trở thành bà nội trợ đảm đang.
Sản phẩm giúp bé tăng cường khả năng quan sát đồng thời phát huy trí tưởng tượng phong phú, tạo nền tảng cho bé phát triển cùng tương lai.','9470516578569'),

('Đồ Chơi Giả Lập Và Bộ Đồ Gia Dụng Sylvanian Families','331.000' ,'Đồ Chơi Giả Lập Và Bộ Đồ Gia Dụng Sylvanian Families giúp bé cảm giác thích thú và đắm chìm trong thế giới câu chuyện cổ tích Senber.
Có  thiết kế xinh xắn, kiểu dáng ngộ nghĩnh, xứng đáng là người bạn thân thiết của các bé cả lúc vui chơi và khi ngủ.
Bé có thể mang theo chú thú bông này đến trường, khi đi du lịch hoặc trang trí trong phòng ngủ.','2199532143540'),

('Tập Tô Màu - Đồ Gia Dụng','7.500' ,'Tô màu là một trong những hoạt động ưa thích của các bé đang trong độ tuổi mầm non thích khám phá thế giới. Tô màu không những giúp các bé rèn luyện đôi tay khéo léo, đức tính kiên trì mà còn có thể bồi dưỡng cho bé khả năng nhận biết màu sắc, phát triển óc sáng tạo.

Mỗi khi hoàn thành một bức tranh tô màu, bé sẽ dễ dàng khắc sâu hình ảnh thế giới xung quanh hình thành nên quan niệm thẩm mỹ về thế giới quan.

Cuốn sách Tập Tô Màu - Đồ Gia Dụng giới thiệu những mẫu tô màu sinh động, đáng yêu về các món đồ gia dụng quen thuộc trong gia đình như: điện thoại, tivi, bình nước, chén dĩa, bình hoa...

Phần hình tô trong sách với kích thước lớn, đường nét rõ ràng và có hình mẫu giúp các bé thỏa sức sáng tạo của mình với các màu vẽ.

Cuốn sách là một ấn phẩm tuyệt vời vừa thỏa mãn sở thích tô màu của các bé, vừa mang lại cho bé cơ hội bồi dưỡng kiến thức về thế giới xung quanh đầy hữu ích.','2525167894821'),

('Bộ Đồ Chơi Vietoys Dụng Cụ Sửa Chữa Đồ Dùng Gia Đình VT3P-0009','219.000' ,'Bộ Đồ Chơi Vietoys Dụng Cụ Sửa Chữa Đồ Dùng Gia Đình VT3P-0009

Bộ Đồ Chơi Vietoys Dụng Cụ Sửa Chữa Đồ Dùng Gia Đình VT3P-0009 gồm 6 dụng cụ: cưa, búa, kìm, tua vít, cờ lê, thước góc, xếp gọn trong một thùng đồ nghề. Bé hãy trở thành một thợ sữa chữa thật chuyên nghiệp, tập tành sửa các món đồ bị hư giúp bố mẹ nhé. Đồ chơi sẽ giúp bé rèn luyện trí nhớ và nhận biết các đồ vật xung quanh, trở nên năng động và cứng cáp hơn. Sản phẩm được làm từ chất liệu gỗ cao cấp, cực kỳ an toàn cho trẻ.

Thông tin sản phẩm

Thiết kế xinh xắn

Bộ dụng cụ mô phỏng y hệt các vật dụng thật ngoài đời, với 6 dụng cụ đủ màu sắc tạo được sự thích thú cho bé, gợi cho bé ham mê tìm tòi, khám phá, hiểu biết thêm được nhiều điều về đồ vật xung quanh mình.

Rèn luyện sự khéo léo, kích thích phát triển toàn diện

Đồ chơi không chỉ mang lại cho bé những giờ phút giải trí vui vẻ mà còn rèn luyện trí nhớ và sự sáng tạo khi bé biết dùng đúng công dụng của từng loại đồ nghề. Bé sẽ được làm quen với các đồ nghề sữa chữa thông dụng, kích thích thị giác phát triển nhờ màu sắc tương phản của các hình khối.

Chất liệu an toàn

Đồ chơi được làm từ chất liệu gỗ cao cấp, sơn an toàn cho sức khoẻ của bé (không phai màu, không dính màu, không hại đến da bé), các chi tiết được bo tròn tránh bé bị trầy xước.','7808423280480'),

('Bộ Dụng Cụ Gia Công Đồ Gõ','1.491.000' ,'This tool kit has a simple structure, strong clamping force, high precision and wide application range, is easy to operate.
Features:
This pocket jig kit is an amazing and convenient repair jig, easy to adjust, specially designed for oblique hole.
Easy to use and install, has a long service life.
Pocket hole jig system is for do-it-yourself.
Accurate drilling, smooth, does not destroy raw materials.
The puncher can also be used with the base to punch the wood in more directions.
Specifications:
Material: aluminium alloy','2386316571723'),

('Miếng Lót Chân Đồ Gia Dụng','63.000' ,'Description:
Brand new and high quality.
Can reduce the shock of washing machines, furniture, electrical appliances
Has a good buffer, thermal isolate,
Prevent moisture, excellent resistance to chemical corrosion, etc','1863931562240'),

('Dụng Cụ Tách Lòng Đỏ Trứng Gà Thông Minh Tiện Dụng ','15.949' ,'Dụng Cụ Tách Lòng Đỏ Trứng Tiện Dụng

 

Chất Liệu : Nhựa PP

 

Kích Thước : 13cm x 6cm

 

Dễ dàng tách lòng đỏ trứng ra khỏi lòng trắng

 

Thao tác đơn giản dễ dàng

 

An toàn hợp vệ sinh

 

Gồm 1 muỗng tách lòng đỏ trứng','3167685526588'),

('Đồ Chơi Gỗ Mô Hình Vietoys Nội Thất Gia Đình','239.000' ,'Đồ Chơi Gỗ Mô Hình Vietoys Nội Thất Gia Đình VTU3-0022 trang bị cho bé đầy đủ giường đôi, tủ áo quần hai cửa, bàn salon, một ghế dài và hai ghế đơn để bé tập sắp xếp và trang trí nội thất theo ý thích của mình. Sản phẩm được làm bằng ván MDF bền và không chứa chất độc hại nên an toàn với sức khỏe của bé.','7801369788904'),

('Bộ đồ chơi dụng cụ kỹ thuật 74 chi tiết','369.000' ,'Bộ đồ chơi dụng cụ kỹ thuật 74 chi tiết – Polesie Toys là bộ đồ chơi trẻ em mô phỏng các công cụ, dụng cụ kỹ thuật, sửa chữa trong gia đình. Bộ đồ chơi dụng cụ, sữa chữa giúp bé làm quen với các công cụ sửa chữa tháo lắp cơ bản, đôi tay khéo léo linh hoạt hơn, đồng thời tăng cường khả năng suy nghĩ sáng tạo.','1485092128945'),

('Khay, kệ đựng gia vị 6 ngăn có lỗ nhỏ trên nắp để rắc gia vị, tiện dụng, an toàn, đồ dùng nhà bếp','145.000' ,'·         Khay đựng gia vị 6 ngăn trong suốt loại mới với kiểu dáng hiện đại, đẹp mắt giúp tô điểm thêm cho không gian bếp nhà bạn.

·         Nắp đậy kín, an toàn, giữ gia vị không bụi bẩn.

·         Dùng đựng gia vị giúp căn bếp nhà bạn trở nên gọn gàng, ngăn nắp, sạch sẽ hơn.

·         Có thể sử dụng trên bàn ăn và bếp nấu.

·         Sản phẩm có nắp đậy, trên nắp có lỗ nhỏ li ti hoặc lỗ to tròn để rắc gia vị (3 hộp lỗ nhỏ li ti, 3 hộp lỗ tròn)

·         Kích thước sản phẩm: 10.2 * 6.1 * 15.8 CM

','3714923145317'),

('Dây nguồn máy tính, dây nguồn PC ','19.997' ,' Tính năng nổi bật của sản phẩm: Dây cắm nguồn điện cho PC, Máy in, Máy Chiếu, Chất lượng: Chắc chắn, bền, mẫu mã đẹp, chịu được nhiệt, Có thể dùng được cả nồi cơm điện','2246906377244'),

('Giỏ lưới đựng bút, treo đồ kim loại có móc tiện dụng cho gia đình văn phòng','55.000' ,'Bàn làm việc, bàn học của bạn thường xuyên bị bừa bộn bởi nhiều đồ vật nhỏ, và nhiều loại bú bạn không biết nên sắp xếp như nào cho khoa học và dễ tìm.
Bạn đang tìm kiếm một giỏ treo đồ nhỏ gọn có thể móc ở nhiều vị trí khác nhau không cần khoan tường nhưng vẫn chắc khỏe.
Giỏ lưới treo đồ kim loại có móc treo sẽ là giải pháp hoàn hảo cho không gian của bạn thêm phần gọn gàng, ngăn nắp mà vẫn đảm bảo tính thẩm mỹ cao.
Được thiết kế thông minh với phần móc treo sử dụng vô cùng đơn giản, chỉ cần móc vào vị trí nào cần dùng mà không cần phải đóng đinh hay khoan tường gây mất thẩm mỹ.','3998860159860'),

('Keo dán E7000 gốc silicone phục vụ sửa chữa đồ gia dụng, điện thoại, đính hạt đá trang sức','99.000' ,'Keo không để lại mùi sau khi sử dụng, đặc biệt thích hợp dùng cho các vật cần chịu nhiệt như gốm, sứ hoặc đính đá, đồ trang sức, sửa chữa điện thoại (trang bị sẵn đầu kim dễ sử dụng), dán được các loại vật liệu khác nhau như gỗ, vải, sắt, đá, nhự','3508292926130'),

(' Đồ Chơi Klein - Bộ Dụng Cụ Cơ Khí ','259.000','Chất liệu nhựa cao cấp, không độc hại, an toàn cho sức khỏe của bé.
Sản phẩm trơn nhẵn, không góc cạnh, không làm tổn thương đến làn da nhạy cảm của bé.
Bộ sản phẩm gồm các dụng cụ cơ khí với kích thước vừa tầm tay bé.
Mang tới cho bé cảm giác mình đã lớn, được làm các công việc giống cha và thử nghiệm, khám phá các công việc với cha.
Giúp bé khám phá các công việc của người lớn.
Kích thích sự phát triển thị giác.
Kích thích sự vận động, khéo léo.
Phát triển tư duy và trí tưởng tượng của bé.','7801852917644'),

('Đồ chơi ảo thuật: Nón Ảo thuật gia','60.000' ,'Một chiếc nón bằng vải nỉ theo phong cách cao bồi, khi đội vào sẽ rất ngầu. Nón này không thể giúp bạn xuất hiện bồ câu hay thỏ nhưng sẽ là một phụ kiện vô cùng cần thiết trong bộ trang phục biểu diễn sân khấu của bạn.

Hoặc nếu bạn không phải là ảo thuật gia, bạn vẫn có thể đội nón này như một sự lựa chọn cho một phụ kiện thời trang trong bộ sưu tập của bạn.','9337282344371'),

('Bộ Dụng Cụ Thợ Sửa Chữa Đồ Chơi Bằng Nhựa','117.000','Description:
Color: multicolor
Material: plastic
Role: entertainment','9567468203691'),

('Đồ Chơi Bé Trai, Đồ Chơi Dụng Cụ Sửa Chữa Cơ Khí Toyshouse','195.000' ,'Mang đến cho bé các trải nghiệm thật thú vị, dễ dàng nhận biết công dụng và cách sử dụng của các dụng cụ này.
Tăng cường khả năng phối hợp giữa tay và mắt, sử dụng linh hoạt các giác quan.
Hộp đồ dụng cụ sửa chữa cơ khí 008-916 cho bé được thiết kế nhỏ gọn, dễ dàng di chuyển trong nhà và thuận tiện trong việc cất giữ.
Công cụ tuyệt vời để bé nhận biết được kiểu dáng, đặc điểm, tính năng cũng như công dụng của các món dụng cụ cơ khí trong thực tế, và từ đó học quan sát, tiếp thu cách thức sử dụng.
Khi chơi đóng vai thợ cơ khí, bé sẽ phát huy trí tưởng tượng, óc sáng tạo của mình, phát triển khả năng tư duy nhiều hơn.
Ngoài ra, trẻ còn có thể tìm hiểu và khám phá cảm giác, niềm vui khi được tập luyện để tham gia vào công việc sửa chữa đồ đạc trong nhà, hình thành cảm xúc vui vẻ và tự tin, biết tự hào về bản thân khi trở nên có ích cho người khác.
Món đồ chơi sẽ thỏa mãn ước mơ được làm người lớn của trẻ, tạo dựng cho các trẻ niềm say mê trong công việc để từ đó tích lũy những kinh nghiệm cho bản thân, rất có lợi cho cuộc sống sau này.
Hộp đồ dụng cụ sửa chữa cơ khí 008-916 cho bé được làm từ chất liệu nhựa cao cấp, không chứa BPA và các thành phần độc hại nên tuyệt đối an toàn với sức khỏe của bé.
Bề mặt Hộp đồ dụng cụ sửa chữa cơ khí 008-916 cho bé trơn tru láng mịn không có các cạnh vi ba sắc nhọn không làm trầy xước làn da nhạy cảm của bé.
Chất liệu nhựa bền đẹp theo thời gian sử dụng, giúp bố mẹ tiết kiệm tối đa chi phí.','9643155366792'),

('Đồ chơi dụng cụ ảo thuật với bút bi độc đáo: Bẻ cong cây bút','70.000' ,'Một chiếc bút bi trông không mấy cứng cáp, và rồi ảo thuật gia thách bạn bẻ cong được cây bút đó. Bạn dùng rất nhiều lực, cố gắng để bẻ, nhưng cây bút thì không hề hấn gì. Tuy nhiên chỉ với sự thôi miên của ảo thuật gia. Bạn có thể bẻ cây bút một cách nhẹ nhàng không mấy khó khăn.

 

Tiết mục đơn giản nhưng lại đầy ấn tượng bạn , bạn có thể diễn ở bất kỳ nơi đâu mà không cần mất công set up. Cây bút luôn sẵn sàng trong  túi bạn để bạn tạo bất ngờ bất bất kỳ lúc nào','3356832357063'),

('Đồ chơi dụng cụ ảo thuật thú vị: Gậy thành khăn thép màu','200.000' ,'Màn ảo thuật cực hay với khăn và gậy mang lại hiệu ứng hấp dẫn trên sân khấu. Nếu bạn yêu thích những trò ảo thuật với gậy thì đây chính là gợi ý số 1 dành cho bạn. Gậy thành khăn là một sản phẩm được biết đến và sử dụng rộng rãi trong giới ảo thuật bởi sự đơn giản, dễ sử dụng, hiệu ứng cao và có thể kết hợp được với rất nhiều màn diễn , đạo cụ khác','3524859768869'),

('Bộ Dụng Cụ Sửa Chữa Gia Dụng Carverville C9003A','1.655.000' ,'Bộ Dụng Cụ Sửa Chữa Gia Dụng Carverville C9003A được làm từ chất liệu thép chắc chắn, gồm những món phụ kiện phổ biến nhất cho công việc tháo, lắp, cắt, ...hằng ngày.
Bộ sản phẩm được sắp xếp khéo léo vào hộp dụng cụ, giúp bạn dễ mang theo đến nhiều nơi, đồng thời hạn chế tình trạng thất lạc phụ kiện trong quá trình sử dụng, tiết kiệm diện tích cất giữ trong nhà bạn.
Tay cầm bằng nhựa dẻo cao cấp với độ nhám cao có tác dụng chống trượt tạo cảm giác chắc chắn đảm bảo an toàn cho bạn.
Giúp cho mọi công việc sửa chữa và tân trang nhà cửa trở nên nhanh chóng và hiệu quả hơn bao giờ hết.','7515853167877'),

('Combo đồ chơi dụng cụ ảo thuật cho bé hấp dẫn: Combo xanh lá 8 in 1','300.000' ,'Toàn bộ 8 trò ảo thuật đường phố tổng hợp trong bộ combo đều là những trò ảo thuật có sức hút mạnh mẽ với người xem, tạo hiệu ứng tuyệt vời cho khán giả mà lại rất dễ thực hiện, không cần các bạn phải khó khăn vất vả luyện tập như một số trò ảo thuật khác. Bộ Combo 8 In 1 này rất phù hợp với tất cả những người mới chơi ảo thuật và đang tìm kiếm cho mình một gia tài xứng đáng để tác nghiệp.','7890602056900'),

('Máy May Gia Dụng Mini','102.000' ,'Features:
Great for silks, denim, wool, leather and crafts
Small, handy, lightweight, easy to carry.
Excellent for on-the-spot repairs and is lightweight and powerful.
If clothes, underwear, skirts and other suddenly off-line, you can use of the machine without take off the clothes, it is very easy to sew.
When you travel or work, it is your emergency tool.
Able to sew and hang curtains, wall hangings and so on.','9891437948772'),

('Dụng Cụ Nghiền Gia Vị Bằng Nhựa','83.000' ,'Specifications:
Color: Granitic pattern,\n\nGrain\n\n,Wood color
Material: Resin','7170291928338'),

('Máy Hàn Điện Gia Dụng Cầm Tay KKmoon','297.000' ,'Natural mica heating center, fast heating, long life, can be replaced, easily assembled and disassembled.
Fine-quality ABS plastic case, comfort holding, long-term operation will not be effortless.
Tin wire scaffolding can be disass','5224047659563'),

('Hộp đựng thuốc chuyên dụng gia đình','136.000' ,'Công dụng : Giúp việc sắp xếp thuốc , vật dụng y tế trở lên rất gọn gàng và ngăn nắp , lại cực kỳ thuộn lợi khi muốn cầm đi
Ửu điểm : Hộp thuốc gia đình di động được làm từ chất liệu nhựa an toàn cho sức khoẻ của người sử dụng.Có tay cầm chắc chắn và nắp chốt an toàn giữ thuốc không bị ướt và lộn xộn khi di chuyển .Giúp bạn sắp xếp, phân biệt khi lấy thuốc một cách nhanh chóng, dễ dàng .
Chất liệu: Nhựa trong suốt giúp nhìn rõ các loại thuốc bên trong','7942753973749'),

('Găng Tay Gia Dụng Cao Su Miaojie','79.000' ,'Găng Tay Gia Dụng Cao Su Miaojie được làm từ cao su thiên nhiên chất lượng, có độ dẻo và độ bền cao giúp bảo vệ tay khỏi các loại hóa chất, tránh bị trầy xước. 
Bảo vệ tay khỏi các loại hóa chất
Không để lại mùi hôi sau khi sử dụng
Găng tay có ma sát cao','9766454613586'),

('Máy Hút Ẩm Mini Điện Gia Dụng','542.000' ,'Specification: European, American regulation
Power cord length: 1.58m
Product size: 16*14*23cm
Rated frequency: 50Hz
Color: black and red
Rated power: 25W
Rated voltage: 110-220V
Maximum dehumidification: 0.06l /h
Water tank capacity: 800ml
Capacity: 200-300 ml
Material: ABS material','6238202354650'),

('Dụng Cụ Làm Đồ Gỗ Tactix 270003','167.000' ,'Với thiết kế nhỏ gọn hiện đại tiện nghi sẽ giúp bạn rất nhiều trong việc gọt làm đồ gỗ một cách chuyên nghiệp và an toàn nhất','3613480024892'),

('Dụng cụ vặn, đồ khui nắp chai 5 công dụng','79.000' ,'Tay cầm chắc chắn, an toàn khi sử dụng

·         Thiết kế thông minh dùng được nhiều chức năng

·         Sử dụng dễ dàng, tiện lợi

·         Mở được tất cả kích cỡ lon, hộp, chai: bia, thức uống, đồ ăn nhanh,...','3760693717285'),

('Bộ Lưu Điện Gia Dụng Thông Minh Hiển Thị LED','437.000' ,'Sản phẩm này giúp tiết kiệm điện đến tối đa và hỗ trợ công suất điện.Bằng cách duy trì ổn định điện áp và cân bằng dòng điện, nó bảo vệ các thiết bị điện và kéo dài thời gian sử dụng của chúng đặc biệt là các thiết bị gia dụng như điều hòa không khí,máy giặt, tv,tủ lạnh.
Thiết kế thông minh với hệ thống hiển bằng đèn LED.
Tiết kiệm điện hiệu quả, tiết kiệm năng lượng đến 10%~35%.
Kéo dài đến 40% tuổi thọ của vật dụng.
Duy trì ổn định điện áp và cân bằng dòng điện.
Hạn chế chập mạch và bảo vệ thiết bị điện 
Có thể sử dụng lâu dài từ 5~10 năm.
Hạn chế tăng nhiệt độ của thiết bị điện và chống mất điện. 
Sản phẩm được sản xuất theo các tiêu chuẩn an toàn điện nghiêm ngặt.
Bảo vệ môi trường.','1781298343596'),

('Dụng Cụ Kẹp Đồ Trong Chế Biến Gỗ','109.000' ,'More-nimble version of the always-handy ratcheting bar clamp, great for gluing projects.
Pistol grip with squeeze trigger tightens clamp, quick-release button.
Easy to reverse jaws turns clamp into spreading clamp or stretching tool.
Hardened steel bar, rust resistant black oxide finish.','2562544930185'),

('Máy Mát Xa Toàn Thân Điện Gia Dụng','210.000' ,'Total 6 massage modes: massage, acupuncture, scraping, hammering, kneading, pating, you can adjust it by yourself according to your demands.
6 modes transferable and 16 kinds of intensity adjustable, you can choose any mode or intensity according to your need.
The built-in magnetic can massage human acupoint, which can balance the nervous system, improve the oxygen supply, microcycle and the nutrition status of the tissue cell','2245070527226'),

('Máy Biến Áp Điện Gia Dụng Thông Minh','502.000' ,'Step-up and down transformer is an AC voltage converting device. Using it to convert the multi-kind net voltage into general output under which all the electronic equipment are in safe operation.
This STEP UP and DOWN Transformer can convert 100V to 220V and vice versa.
It has precise input voltage selector which you can select(100Volts or 220Volts depending on the voltage source available)via selector switch located at the back of the unit.
Output voltage is 100volts and 220Volts that can be used at the same time.
Suitable for television, water dispenser, computer, rice cooker, mini home theater, electric fan, fax machine, printer','9958452388157'),

('Bộ Dụng Cụ Chạm Khắc Đồ Da','661.000' ,'Description
We will provide 25 sets of leather printing tool, you can make your favorite works by DIY in leather.
Model:473300
Specifications:
Material:wood/stainless steel','6407798981063'),

('Hộp dụng cụ đựng đồ nghề Nhật size lớn','285.000' ,'
Hàng sản xuất theo công nghệ nhật bản siêu bền vô cùng chắc chắn
Thiết kế nhỏ gọn
Kích thước 450x240x200mm
Chất liệu nhựa cao cấp tiêu chuẩn nhật bản
Có nhiều ngăn nhỏ
Có khóa và lỗ khóa để khóa lại khi cần mang đi xa tránh thất lạc
Tay cầm thoải mái, chắc chắn','3751244742665'),

('Máy Biến Áp Điện Gia Dụng Thông Minh ','502.000' ,'Step-up and down transformer is an AC voltage converting device. Using it to convert the multi-kind net voltage into general output under which all the electronic equipment are in safe operation.
Features:
Step-up and down transformer is an AC voltage converting device. Using it to convert the multi-kind net voltage into general output under which all the electronic equipment are in safe operation.
This STEP UP and DOWN Transformer can convert 100V to 220V and vice versa.
It has precise input voltage selector which you can select(100Volts or 220Volts depending on the voltage source available)via selector switch located at the back of the unit.
Output voltage is 100volts and 220Volts that can be used at the same time.
Suitable for television, water dispenser, computer, rice cooker, mini home theater, electric fan, fax machine, printer','9958452388157'),

('Kệ gia vị, dụng cụ bếp treo tường','313.999' ,'Chúng tôi xin giới thiệu một chiếc kệ đựng gia vị thông minh, giải pháp tối ưu cho nhà bếp hiện đại.

Sản phẩm có thiết kế thông minh, nhỏ gọn, đa năng, tiết kiệm diện tích giúp giải quyết và thay thế toàn bộ các giá đựng gia vị, khe cắm dao, khay để thớt, móc treo kéo, thìa, dụng cụ nhà bếp, ống đựng đũa thìa nĩa, chỗ treo khăn lau và cả khay để điện thoại hay ipad tiện lợi giúp các bà nội trợ vừa xem hướng dẫn, công thức nấu ăn vừa thao tác mà không lo vướng tay hoặc rơi vỡ.

chiếc kệ nhà bếp thông minh và nhiều tính năng nhất mình từng thấy.

Căn hộ của bạn có một căn bếp không được rộng rãi và bạn muốn mọi thứ đồ dùng trong bếp phải để thật ngăn nắp, gọn gàng? Vậy thì Giá để đồ trong nhà bếp chính là thứ bạn cần. Giá treo đồ trong nhà bếp thương hiệu đồ gia dụng rất thích hợp để các đồ lặt vặt trong khu vực bếp giúp phòng bếp nhà bạn luôn gọn gàng, ngăn nắp. Kệ nhà bếp nhỏ gọn đa năng này giúp bạn đựng được hầu hết các món đồ dùng nhà bếp thường hay sử dụng nhé','6486831283241'),

('Đèn Pin LED Gia Dụng Chống Nước Ruisheng','118.000' ,'Light source type: LED
Battery type: AAA battery
Category: Flashlight','7668451698486'),

('Dụng cụ xay tiêu, gia vị nhà bếp','125.000' ,'CHẤT LIỆU: THỦY TINH, INOX

MÀU SẮC: BẠC

TRỌNG LƯƠNG: 285GR

KÍCH THƯỚC: 5,3 X 19 CM (ĐƯỜNG KÍNH X CAO)','1686276886600'),

('Kệ gia vị dụng cụ Diamond giảm chấn Higold','2.460.000 ' ,'Kệ gia vị dụng cụ diamond giảm chấn: được sản xuất từ chất liệu inox 304 bền đẹp với thời gian, thiết kế với những thanh inox dày, tạo cảm giác chắc chắn phù hợp cho tất cả các loại tủ bếp phủ bì 450mm. Hệ thống ray trượt tích hợp giảm chấn, cam kết chất lượng tuyệt hảo cho việc đóng mở không tạo ra tiếng ồn, tự động đi vào tủ bếp theo lực hít mà không cần đóng hết cửa tủ.','7259779673905'),

('Kệ Gia Vị 5 Tầng Tiện Dụng Hàng VNCLC','79.000' ,'Thông tin sản phẩm:
– Tên sản phẩm: Kệ Gia Vị 5 Tầng Tiện Dụng Hàng VNCLC

– Xuất xứ: Việt Nam

– Chất liệu: nhựa ABS trong suốt, an toàn cho sức khỏe.

– Kích thước: Cao 28cm; đường kính 7,3cm.

– Màu sắc: Trong suốt

– Công dụng: Với kiểu dáng mới lạ, thiết kế tiện dụng, gian bếp gia đình bạn sẽ gọn gàng và xinh xắn hơn với kệ đựng gia vị 5 tầng trong suốt chính hãng Tashuan

Kệ đựng gia vị 5 tầng trong suốt được sản xuất theo tiêu chuẩn quốc tế.
– Thiết kế thông minh, tiện dụng giúp bạn đựng được nhiều gia vị và giữ cho căn bếp luôn ngăn nắp, gọn gàng.

– Nắp đậy kín, chắc chắn giúp bảo quản gia vị nhà bạn thật tốt và giữ nguyên mùi vị.','5185746326845'),

('Bộ combo túi đựng dụng cụ đồ nghề cao cấp','185.000' ,'Sản phẩm được may chất liệu vải bố 600D hai lốp có lót muoss 5li
Bộ sản phẩm gồm một túi đựng dụng cụ và một túi vắt khoan pin
Trọng lượng : 600gram','2711079665882'),

('Chai Nước Chuyên Dụng Tham Gia Hoạt Động Ngoài Trời','175.000' ,'The innovation of drinking water means that almost all bottles become professional drinking water hydration reservoir system under simple steps.
Features:
Compatible with plumbing conversion device, you can drink water without having to take the bottle out of your backpack.
The drinking water pipe adopts food grade TPU polyether,and the inner tube adopts food grade PE material.
In line with the tap ergonomic, pulling 90 degrees to nibble it to suck in water.
Suitable for trekking, fishing, climbing, hiking, hunting, rafting, canoeing, boating, kayaking, etc','9945887758082'),

('Máy xay hành tỏi - Dụng cụ xay gia vị','249.000' ,'Gúp bạn dễ dàng xay nhỏ các loại thực phẩm trong lúc chế biến','2827396248896'),

('Máy Xay Thịt Gia Dụng Bằng Thép Không Gỉ','231.000' ,'Color: pink
Material: plastic, stainless steel
Capacity: 10 liters or less
Speed: 20000
Rated frequency: 50 (HZ)
Rated voltage: 220 (V)
Product size: 11.8 x 23.8 x 11.8 cm','8274923540208'),

('Dụng cụ xay đá bào quay tay tiện dụng cho gia đình','149.000 ' ,'Với sự hỗ trợ đắc lực của chiếc máy bào đá quay tay mini cho gia đình bạn có thể hoàn toàn làm một ly kem đá bào hay một ly nước ép trái cây với đầy đá bào mát lạnh một cách nhanh chóng trong tiết trời oi bức và nóng nực của mùa hè này giúp bạn giải quyết ngay cơn khát, tạo cảm giác sảng khoái giữa trưa hè nóng nực và cải thiện tình trạng bị mất nước do quá oi bức.','5959693690089'),

('Máy Sấy Tóc Nóng Lạnh Gia Dụng Màu Hồng','89.000' ,'Description:
Color: Pink
Material: ABS
Size: 20.5 x 16cm
Voltage: 220V
Frequency: 50Hz
Conductor length: 82cm
Stalls: Level 2','4090611996065'),

('Máy May Điện Gia Dụng Mini JYSM-306A','710.000' ,'Máy May Điện Gia Dụng Mini JYSM-306A với thiết kế rãnh hình chữ U, chức năng may đơn giản.
Linh hoạt cho các đường may phức tạp.
Đi kèm với bàn may giúp bạn may dễ dàng hơn với các mảnh quần áo lớn.
Tích hợp đèn và dao cắt tiện lợi giúp bạn có thể cắt chỉ và làm việc trong điều kiện thiếu ánh sáng dễ dàng hơn.
Có thể điều chỉnh tốc độ, chuyển đổi kép.
Bạn có thể sử dụng công tắc trên máy hoặc sử dụng công tắc chân.','1838736572091'),

('Máy Sấy Thực Phẩm Gia Dụng Keshun TO-094B','1.157.000' ,'Máy Sấy Thực Phẩm Gia Dụng Keshun TO-094B sấy khô tất cả các thực phẩm giúp bảo quản lâu hơn, hoặc rút nước tất cả các sản phẩm ví dụ như: làm mứt, sấy trái cây.
Làm khô như khô gà, khô cá, khô bò, sấy lạp xưởng mà không phải canh kiến, gián côn trùng khác vô cùng đảm bảo vệ sinh.
Ủ sữa chua, ủ bột để làm bánh | Làm bánh xoài, bánh chuối ….
Sấy khô và làm nóng bánh mỳ giữ bánh mỳ giòn lâu …. còn rất nhiều công dụng nữa mà chiếc máy sấy thực phẩm đa năng này mang lại.
Thời gian sấy phụ thuộc vào sản phẩm sấy có nhiều nước nhiều đường hay không. Thái dầy hay mỏng, nhiệt độ bên ngoài cao hay thấp cũng ảnh hưởng 1 phần.','2664601788439'),

('T Gói chống ẩm gia dụng - Hàng chính hãng','30.000' ,'100 túi chống ẩm dùng cho thực phẩm khô, quần áo, giày dép

Trọng lượng mỗi túi là 1 gram

Sản phẩm thương hiệu SECCO, sản xuất tại Việt Nam.

Thành phần chính của sản phẩm là Silica gel màu trắng, độ hút ẩm 34%

Mỗi túi được đựng trong bao bì giấy ME khả năng thấm hút tốt','6317781703575'),

('Bộ Đựng Gia Vị 4 Hộp Bằng Thép Không Gỉ đồ gia vị','1.233.000' ,'Made of premium quality stainless steel, which features sturdy, solid, durable and anti-rust for home and kitchen.
These seasoning pot set comes with four pots, lids, spoons, and a spinning rack with lifting bail. Four in one design is perfect as a gift.
Easy to clean; stable base ensures the pots to fit properly without tipping over; circle shape designed for easy and fast access.
360 degree rotatable stand for easy access, and with a slot on the edge for properly placing the serving spoon.
Widely applied to catering, hosting, parties, home, kitchen, outdoors, barbecue, etc','9636191621277'),

('Bộ Dụng Cụ Sửa Chữa Gia Đình Fuxing FX347 21 Chi Tiết','1.088.000' ,'với nhiều dụng cụ khác nhau giúp bạn rất nhiều trong những công việc sửa chữa những đồ vật khác trong gia đình','8804963207870'),

('MÁY MÀI DAO, KÉO BẰNG ĐIỆN DỄ SỬ DỤNG HÀNG LOẠI 1 CHO GIA ĐÌNH','155.000' ,'Một con dao sắc bén sẽ quyết định hoàn toàn cho bữa ăn nhanh chóng đẹp mắt, bạn không thể dùng một con dao cùn đầy gỉ sét để cắt tỉa hoa quả, càng không thể dùng những con dao cùn chưa được mài để cắt những lát thịt tươi ngon hay những miếng thịt cá ngừ đắt tiền. Và một phần quan trọng là đôi khi bạn không có thời gian để làm những việc được xem là nhỏ nhặt như mài dao kéo. Gặp phải một con dao cùn dùng thật là ức chế, đặc biệt là những bộ dao inox hiện đại. Chính vì vậy hôm nay Chúng tôi sẽ giới thiệu đến bạn một chiếc Máy Mài Dao Kéo Bằng Điện vô cùng tiện dụng.','2779287021593'),

('Dụng cụ để giấy và gia vị nhà bếp - Kệ để gia vị','270.000' ,'Dụng cụ để giấy và gia vị nhà bếp

Bốn chức năng trong một sản phẩm

Nhà bếp sang trọng và gọn gàng

Phát minh nổi bật nhất trong sản phẩm gia dụng 2018','2009671525650'),

('Cân điện tử, cân sức khỏe gia dụng mặt kính trong suốt - tặng kèm móc treo khăn 3 móc','118.000' ,'Phạm vi cân nặng : 3KG-180KG; Độ chia : 0.1KG
Công nghệ Fillet : Cân tròn 360 độ
Chế độ cung cấp điện: Nút pin
Chất liệu nhựa : Nhựa ABS bảo vệ  môi trường
Bề mặt : Kính cường lực
Chất liệu kính : kính cường lực

Kích thước kính : 26cm

Cảm biến : Cảm biến thông minh','8837640078678'),

('Dụng Cụ Treo Đồ Xe Máy Dạng Kẹp','374.000' ,'Unique and elegant appearance

Fashionable, make your motorbike more charming

Wear resistant to moisture rust prevention, more durable

NO fade, NOT spot, Durable

High quality aluminum, higher strength','6121031500223'),

('Kệ để nồi cơm điện, Lò Vi Sóng, Lò Nướng, Gia Vị, Đồ Vật Gia Đình Đa Chức Năng','388.999' ,'Chất liệu inox 304 cao cấp không gỉ an toàn khi sử dụng.
Sản phẩm có thể xếp gọn ngăn nắp khi không sử dụng.
Sản phẩm được thiết kế với kích thước vừa đủ để vừa các loại lò vi sóng

Kích thước : 70x55x35 cm','8420845981838'),

('Bộ đồ chơi dụng cụ sửa chữa cho bé trai','195.000' ,'Bộ đồ chơi dụng cụ sửa chữa cho bé trai mô phỏng đầy đủ các dụng cụ sửa chữa thường thấy trong nhà nhưng với kích thước nhỏ nhắn, vừa vặn tay bé cùng các chi tiết có màu sắc bắt mắt giúp bé dễ dàng nhận biết và ghi nhớ tên các vật dụng. Sản phẩm giúp bé rèn luyện các giác quan, khả năng tư duy, óc sáng tạo.','5755876631432'),

('Túi Đựng Đồ Cá Nhân Dạng Móc Treo Tiện Dụng','99.000' ,'Color: gray, beige
Double-sided style: ordinary models, upgrade models
Material: Oxford cloth
Scope of application: underwear, sundries, socks, bra
Product size: 80 x 40cm','2815255978923'),

('Tủ đựng đồ văn phòng mini mẫu mới tiện dụng','139.000' ,'Khách vui lòng đọc kĩ trước  khi mua hàng:

Hàng shop giao đi là những miếng gỗ rời, khách hàng tự ghép thành kệ. 

Sản phẩm được ốp vỉ đóng thùng từ nhà sản xuất. 

Kích thước: 30cm x 23cm x 30cm nhỏ xinh thôi nhé!

Màu sắc: tủ có 2 màu đen và nâu.

Chất liệu: mùn gỗ ép công nghiệp','6610890507721'),

('Hộp đựng thuốc chuyên dụng gia đình','136.000' ,'Công dụng : Giúp việc sắp xếp thuốc , vật dụng y tế trở lên rất gọn gàng và ngăn nắp , lại cực kỳ thuộn lợi khi muốn cầm đi
Ửu điểm : Hộp thuốc gia đình di động được làm từ chất liệu nhựa an toàn cho sức khoẻ của người sử dụng.Có tay cầm chắc chắn và nắp chốt an toàn giữ thuốc không bị ướt và lộn xộn khi di chuyển .Giúp bạn sắp xếp, phân biệt khi lấy thuốc một cách nhanh chóng, dễ dàng .
Chất liệu: Nhựa trong suốt giúp nhìn rõ các loại thuốc bên trong','06846416184'),

('Bộ Đựng Gia Vị 4 Hộp Bằng Thép Không Gỉ đồ gia vị','1.233.000' ,'Made of premium quality stainless steel, which features sturdy, solid, durable and anti-rust for home and kitchen.
These seasoning pot set comes with four pots, lids, spoons, and a spinning rack with lifting bail. Four in one design is perfect as a gift.
Easy to clean; stable base ensures the pots to fit properly without tipping over; circle shape designed for easy and fast access.
360 degree rotatable stand for easy access, and with a slot on the edge for properly placing the serving spoon.
Widely applied to catering, hosting, parties, home, kitchen, outdoors, barbecue, etc','5874614851'),

('Máy May Gia Dụng Mini','102.000' ,'Features:
Great for silks, denim, wool, leather and crafts
Small, handy, lightweight, easy to carry.
Excellent for on-the-spot repairs and is lightweight and powerful.
If clothes, underwear, skirts and other suddenly off-line, you can use of the machine without take off the clothes, it is very easy to sew.
When you travel or work, it is your emergency tool.
Able to sew and hang curtains, wall hangings and so on.','86415416464'),

('Găng Tay Gia Dụng Cao Su Miaojie','79.000' ,'Găng Tay Gia Dụng Cao Su Miaojie được làm từ cao su thiên nhiên chất lượng, có độ dẻo và độ bền cao giúp bảo vệ tay khỏi các loại hóa chất, tránh bị trầy xước. 
Bảo vệ tay khỏi các loại hóa chất
Không để lại mùi hôi sau khi sử dụng
Găng tay có ma sát cao','1846184649'),

('Bộ Đồ Chơi Vietoys Dụng Cụ Sửa Chữa Đồ Dùng Gia Đình VT3P-0009','219.000' ,'Bộ Đồ Chơi Vietoys Dụng Cụ Sửa Chữa Đồ Dùng Gia Đình VT3P-0009

Bộ Đồ Chơi Vietoys Dụng Cụ Sửa Chữa Đồ Dùng Gia Đình VT3P-0009 gồm 6 dụng cụ: cưa, búa, kìm, tua vít, cờ lê, thước góc, xếp gọn trong một thùng đồ nghề. Bé hãy trở thành một thợ sữa chữa thật chuyên nghiệp, tập tành sửa các món đồ bị hư giúp bố mẹ nhé. Đồ chơi sẽ giúp bé rèn luyện trí nhớ và nhận biết các đồ vật xung quanh, trở nên năng động và cứng cáp hơn. Sản phẩm được làm từ chất liệu gỗ cao cấp, cực kỳ an toàn cho trẻ.

Thông tin sản phẩm

Thiết kế xinh xắn

Bộ dụng cụ mô phỏng y hệt các vật dụng thật ngoài đời, với 6 dụng cụ đủ màu sắc tạo được sự thích thú cho bé, gợi cho bé ham mê tìm tòi, khám phá, hiểu biết thêm được nhiều điều về đồ vật xung quanh mình.

Rèn luyện sự khéo léo, kích thích phát triển toàn diện

Đồ chơi không chỉ mang lại cho bé những giờ phút giải trí vui vẻ mà còn rèn luyện trí nhớ và sự sáng tạo khi bé biết dùng đúng công dụng của từng loại đồ nghề. Bé sẽ được làm quen với các đồ nghề sữa chữa thông dụng, kích thích thị giác phát triển nhờ màu sắc tương phản của các hình khối.

Chất liệu an toàn

Đồ chơi được làm từ chất liệu gỗ cao cấp, sơn an toàn cho sức khoẻ của bé (không phai màu, không dính màu, không hại đến da bé), các chi tiết được bo tròn tránh bé bị trầy xước.','68461684649'),

('Tập Tô Màu - Đồ Gia Dụng','7.500' ,'Tô màu là một trong những hoạt động ưa thích của các bé đang trong độ tuổi mầm non thích khám phá thế giới. Tô màu không những giúp các bé rèn luyện đôi tay khéo léo, đức tính kiên trì mà còn có thể bồi dưỡng cho bé khả năng nhận biết màu sắc, phát triển óc sáng tạo.

Mỗi khi hoàn thành một bức tranh tô màu, bé sẽ dễ dàng khắc sâu hình ảnh thế giới xung quanh hình thành nên quan niệm thẩm mỹ về thế giới quan.

Cuốn sách Tập Tô Màu - Đồ Gia Dụng giới thiệu những mẫu tô màu sinh động, đáng yêu về các món đồ gia dụng quen thuộc trong gia đình như: điện thoại, tivi, bình nước, chén dĩa, bình hoa...

Phần hình tô trong sách với kích thước lớn, đường nét rõ ràng và có hình mẫu giúp các bé thỏa sức sáng tạo của mình với các màu vẽ.

Cuốn sách là một ấn phẩm tuyệt vời vừa thỏa mãn sở thích tô màu của các bé, vừa mang lại cho bé cơ hội bồi dưỡng kiến thức về thế giới xung quanh đầy hữu ích.','98464961864'),


('Đồ Chơi Bé Trai, Đồ Chơi Dụng Cụ Sửa Chữa Cơ Khí Toyshouse','195.000' ,'Mang đến cho bé các trải nghiệm thật thú vị, dễ dàng nhận biết công dụng và cách sử dụng của các dụng cụ này.
Tăng cường khả năng phối hợp giữa tay và mắt, sử dụng linh hoạt các giác quan.
Hộp đồ dụng cụ sửa chữa cơ khí 008-916 cho bé được thiết kế nhỏ gọn, dễ dàng di chuyển trong nhà và thuận tiện trong việc cất giữ.
Công cụ tuyệt vời để bé nhận biết được kiểu dáng, đặc điểm, tính năng cũng như công dụng của các món dụng cụ cơ khí trong thực tế, và từ đó học quan sát, tiếp thu cách thức sử dụng.
Khi chơi đóng vai thợ cơ khí, bé sẽ phát huy trí tưởng tượng, óc sáng tạo của mình, phát triển khả năng tư duy nhiều hơn.
Ngoài ra, trẻ còn có thể tìm hiểu và khám phá cảm giác, niềm vui khi được tập luyện để tham gia vào công việc sửa chữa đồ đạc trong nhà, hình thành cảm xúc vui vẻ và tự tin, biết tự hào về bản thân khi trở nên có ích cho người khác.
Món đồ chơi sẽ thỏa mãn ước mơ được làm người lớn của trẻ, tạo dựng cho các trẻ niềm say mê trong công việc để từ đó tích lũy những kinh nghiệm cho bản thân, rất có lợi cho cuộc sống sau này.
Hộp đồ dụng cụ sửa chữa cơ khí 008-916 cho bé được làm từ chất liệu nhựa cao cấp, không chứa BPA và các thành phần độc hại nên tuyệt đối an toàn với sức khỏe của bé.
Bề mặt Hộp đồ dụng cụ sửa chữa cơ khí 008-916 cho bé trơn tru láng mịn không có các cạnh vi ba sắc nhọn không làm trầy xước làn da nhạy cảm của bé.
Chất liệu nhựa bền đẹp theo thời gian sử dụng, giúp bố mẹ tiết kiệm tối đa chi phí.','19846187948'),

('Giá Đỡ Đồ Gia Dụng Bằng Gỗ Trang Trí Cho Tiệc Sinh Nhật Đám Cưới','108.000' ,'Giá đỡ bánh donut bằng gỗ được đánh bóng bằng tay với gỗ dán, mịn mà không làm đau tay, gỗ đàn hương bảo vệ mắt. Phong cách phương Tây, thích hợp cho đám cưới, tiệc tùng và các dịp khác.
Tính năng, đặc điểm:
Hoàn toàn được đánh bóng bằng tay với ván ép.
Gỗ đàn hương bảo vệ mắt.
Tay nghề tỉ mỉ đảm bảo sản xuất đủ mịn và không làm đau tay.
Lấy gỗ làm nguyên liệu, không chỉ an toàn mà còn bảo vệ môi trường.
Giữ lại đặc tính của gỗ, có độ bền vượt trội.
Hương thơm của gỗ và kết cấu tự nhiên làm cho môi trường thoải mái hơn.
Phong cách phương Tây thích hợp cho đám cưới, tiệc tùng và các dịp khác.
Nó có thể tháo rời và cần tự lắp ráp.','16879479448'),

(' Đồ Chơi Klein - Bộ Dụng Cụ Cơ Khí ','259.000','Chất liệu nhựa cao cấp, không độc hại, an toàn cho sức khỏe của bé.
Sản phẩm trơn nhẵn, không góc cạnh, không làm tổn thương đến làn da nhạy cảm của bé.
Bộ sản phẩm gồm các dụng cụ cơ khí với kích thước vừa tầm tay bé.
Mang tới cho bé cảm giác mình đã lớn, được làm các công việc giống cha và thử nghiệm, khám phá các công việc với cha.
Giúp bé khám phá các công việc của người lớn.
Kích thích sự phát triển thị giác.
Kích thích sự vận động, khéo léo.
Phát triển tư duy và trí tưởng tượng của bé.','16846174987'),


('Hộp Đựng Đồ Gia Dụng Không Gấp Lại - Vàng
','168.000' ,'

Thùng lưu trữ thực tế và thú vị, với sequin có thể đảo ngược ở một bên, để bạn tự làm mẫu mà bạn muốn. Khả năng lớn để tổ chức đồ chơi, sách, quần áo, đồ lặt vặt và nhiều hơn nữa.
Tính năng, đặc điểm:
Thùng lưu trữ đa năng, hoàn hảo để tổ chức đồ chơi, sách, quần áo, đồ lặt vặt, v.v.
','16849794684964791'),

('Giỏ lưới đựng bút, treo đồ kim loại có móc tiện dụng cho gia đình văn phòng','55.000' ,'Bàn làm việc, bàn học của bạn thường xuyên bị bừa bộn bởi nhiều đồ vật nhỏ, và nhiều loại bú bạn không biết nên sắp xếp như nào cho khoa học và dễ tìm.
Bạn đang tìm kiếm một giỏ treo đồ nhỏ gọn có thể móc ở nhiều vị trí khác nhau không cần khoan tường nhưng vẫn chắc khỏe.
Giỏ lưới treo đồ kim loại có móc treo sẽ là giải pháp hoàn hảo cho không gian của bạn thêm phần gọn gàng, ngăn nắp mà vẫn đảm bảo tính thẩm mỹ cao.
Được thiết kế thông minh với phần móc treo sử dụng vô cùng đơn giản, chỉ cần móc vào vị trí nào cần dùng mà không cần phải đóng đinh hay khoan tường gây mất thẩm mỹ.','16584868946'),


('Khay, kệ đựng gia vị 6 ngăn có lỗ nhỏ trên nắp để rắc gia vị, tiện dụng, an toàn, đồ dùng nhà bếp','145.000' ,'·         Khay đựng gia vị 6 ngăn trong suốt loại mới với kiểu dáng hiện đại, đẹp mắt giúp tô điểm thêm cho không gian bếp nhà bạn.

·         Nắp đậy kín, an toàn, giữ gia vị không bụi bẩn.

·         Dùng đựng gia vị giúp căn bếp nhà bạn trở nên gọn gàng, ngăn nắp, sạch sẽ hơn.

·         Có thể sử dụng trên bàn ăn và bếp nấu.

·         Sản phẩm có nắp đậy, trên nắp có lỗ nhỏ li ti hoặc lỗ to tròn để rắc gia vị (3 hộp lỗ nhỏ li ti, 3 hộp lỗ tròn)

·         Kích thước sản phẩm: 10.2 * 6.1 * 15.8 CM

','1698461764189'),


('Bộ Dụng Cụ Gia Công Đồ Gõ','1.491.000' ,'This tool kit has a simple structure, strong clamping force, high precision and wide application range, is easy to operate.
Features:
This pocket jig kit is an amazing and convenient repair jig, easy to adjust, specially designed for oblique hole.
Easy to use and install, has a long service life.
Pocket hole jig system is for do-it-yourself.
Accurate drilling, smooth, does not destroy raw materials.
The puncher can also be used with the base to punch the wood in more directions.
Specifications:
Material: aluminium alloy','98417491684'),

('Hộc Đựng Đồ Cho Gia Đình','148.000' ,'This storage box can organize snacks, beverage, fruits, vegetables and so on, making your refrigerator, desktop or other place neat and organized.
Features:
Simple and fashion style.
Made from PP material, has high durability.
Fine workmanship provides comfortable hand feeling.
Can be used to store snacks, beverage, fruits, vegetables and so on.
Easily for you to place and take out your thing for its no lid design.
Anti-skidding on bottom is more practical for use.','9879154669841'),

('Dụng Cụ Kẹp Đồ Trong Chế Biến Gỗ','109.000' ,'More-nimble version of the always-handy ratcheting bar clamp, great for gluing projects.
Pistol grip with squeeze trigger tightens clamp, quick-release button.
Easy to reverse jaws turns clamp into spreading clamp or stretching tool.
Hardened steel bar, rust resistant black oxide finish.','864997491849'),

('Túi Đựng Đồ Cá Nhân Dạng Móc Treo Tiện Dụng','99.000' ,'Color: gray, beige
Double-sided style: ordinary models, upgrade models
Material: Oxford cloth
Scope of application: underwear, sundries, socks, bra
Product size: 80 x 40cm','97894681684'),

('Bộ Lưu Điện Gia Dụng Thông Minh Hiển Thị LED','437.000' ,'Sản phẩm này giúp tiết kiệm điện đến tối đa và hỗ trợ công suất điện.Bằng cách duy trì ổn định điện áp và cân bằng dòng điện, nó bảo vệ các thiết bị điện và kéo dài thời gian sử dụng của chúng đặc biệt là các thiết bị gia dụng như điều hòa không khí,máy giặt, tv,tủ lạnh.
Thiết kế thông minh với hệ thống hiển bằng đèn LED.
Tiết kiệm điện hiệu quả, tiết kiệm năng lượng đến 10%~35%.
Kéo dài đến 40% tuổi thọ của vật dụng.
Duy trì ổn định điện áp và cân bằng dòng điện.
Hạn chế chập mạch và bảo vệ thiết bị điện 
Có thể sử dụng lâu dài từ 5~10 năm.
Hạn chế tăng nhiệt độ của thiết bị điện và chống mất điện. 
Sản phẩm được sản xuất theo các tiêu chuẩn an toàn điện nghiêm ngặt.
Bảo vệ môi trường.','98791646418676'),

('Hộp dụng cụ đựng đồ nghề Nhật size lớn','285.000' ,'
Hàng sản xuất theo công nghệ nhật bản siêu bền vô cùng chắc chắn
Thiết kế nhỏ gọn
Kích thước 450x240x200mm
Chất liệu nhựa cao cấp tiêu chuẩn nhật bản
Có nhiều ngăn nhỏ
Có khóa và lỗ khóa để khóa lại khi cần mang đi xa tránh thất lạc
Tay cầm thoải mái, chắc chắn','8498679887'),

('Kệ gia vị, dụng cụ bếp treo tường','313.999' ,'Chúng tôi xin giới thiệu một chiếc kệ đựng gia vị thông minh, giải pháp tối ưu cho nhà bếp hiện đại.

Sản phẩm có thiết kế thông minh, nhỏ gọn, đa năng, tiết kiệm diện tích giúp giải quyết và thay thế toàn bộ các giá đựng gia vị, khe cắm dao, khay để thớt, móc treo kéo, thìa, dụng cụ nhà bếp, ống đựng đũa thìa nĩa, chỗ treo khăn lau và cả khay để điện thoại hay ipad tiện lợi giúp các bà nội trợ vừa xem hướng dẫn, công thức nấu ăn vừa thao tác mà không lo vướng tay hoặc rơi vỡ.

chiếc kệ nhà bếp thông minh và nhiều tính năng nhất mình từng thấy.

Căn hộ của bạn có một căn bếp không được rộng rãi và bạn muốn mọi thứ đồ dùng trong bếp phải để thật ngăn nắp, gọn gàng? Vậy thì Giá để đồ trong nhà bếp chính là thứ bạn cần. Giá treo đồ trong nhà bếp thương hiệu đồ gia dụng rất thích hợp để các đồ lặt vặt trong khu vực bếp giúp phòng bếp nhà bạn luôn gọn gàng, ngăn nắp. Kệ nhà bếp nhỏ gọn đa năng này giúp bạn đựng được hầu hết các món đồ dùng nhà bếp thường hay sử dụng nhé','798174948794'),


('Giá Đỡ Đồ Gia Dụng Bằng Gỗ Trang Trí Cho Tiệc Sinh Nhật Đám Cưới','108.000' ,'Giá đỡ bánh donut bằng gỗ được đánh bóng bằng tay với gỗ dán, mịn mà không làm đau tay, gỗ đàn hương bảo vệ mắt. Phong cách phương Tây, thích hợp cho đám cưới, tiệc tùng và các dịp khác.
Tính năng, đặc điểm:
Hoàn toàn được đánh bóng bằng tay với ván ép.
Gỗ đàn hương bảo vệ mắt.
Tay nghề tỉ mỉ đảm bảo sản xuất đủ mịn và không làm đau tay.
Lấy gỗ làm nguyên liệu, không chỉ an toàn mà còn bảo vệ môi trường.
Giữ lại đặc tính của gỗ, có độ bền vượt trội.
Hương thơm của gỗ và kết cấu tự nhiên làm cho môi trường thoải mái hơn.
Phong cách phương Tây thích hợp cho đám cưới, tiệc tùng và các dịp khác.
Nó có thể tháo rời và cần tự lắp ráp.','49816749179'),

('Hộp Đựng Đồ Gia Dụng Không Gấp Lại - Vàng
','168.000' ,'

Thùng lưu trữ thực tế và thú vị, với sequin có thể đảo ngược ở một bên, để bạn tự làm mẫu mà bạn muốn. Khả năng lớn để tổ chức đồ chơi, sách, quần áo, đồ lặt vặt và nhiều hơn nữa.
Tính năng, đặc điểm:
Thùng lưu trữ đa năng, hoàn hảo để tổ chức đồ chơi, sách, quần áo, đồ lặt vặt, v.v.
','7918749879'),

('Chai Nước Chuyên Dụng Tham Gia Hoạt Động Ngoài Trời','175.000' ,'The innovation of drinking water means that almost all bottles become professional drinking water hydration reservoir system under simple steps.
Features:
Compatible with plumbing conversion device, you can drink water without having to take the bottle out of your backpack.
The drinking water pipe adopts food grade TPU polyether,and the inner tube adopts food grade PE material.
In line with the tap ergonomic, pulling 90 degrees to nibble it to suck in water.
Suitable for trekking, fishing, climbing, hiking, hunting, rafting, canoeing, boating, kayaking, etc','546849761984'),

('Kệ để nồi cơm điện, Lò Vi Sóng, Lò Nướng, Gia Vị, Đồ Vật Gia Đình Đa Chức Năng','388.999' ,'Chất liệu inox 304 cao cấp không gỉ an toàn khi sử dụng.
Sản phẩm có thể xếp gọn ngăn nắp khi không sử dụng.
Sản phẩm được thiết kế với kích thước vừa đủ để vừa các loại lò vi sóng

Kích thước : 70x55x35 cm','6498194987'),

('Dụng cụ xay tiêu, gia vị nhà bếp','125.000' ,'CHẤT LIỆU: THỦY TINH, INOX

MÀU SẮC: BẠC

TRỌNG LƯƠNG: 285GR

KÍCH THƯỚC: 5,3 X 19 CM (ĐƯỜNG KÍNH X CAO)','9879467465'),

('Dụng cụ vặn, đồ khui nắp chai 5 công dụng','79.000' ,'Tay cầm chắc chắn, an toàn khi sử dụng

·         Thiết kế thông minh dùng được nhiều chức năng

·         Sử dụng dễ dàng, tiện lợi

·         Mở được tất cả kích cỡ lon, hộp, chai: bia, thức uống, đồ ăn nhanh,...','4168794474989'),

('Đồ Chơi Giả Lập Và Bộ Đồ Gia Dụng Sylvanian Families','331.000' ,'Đồ Chơi Giả Lập Và Bộ Đồ Gia Dụng Sylvanian Families giúp bé cảm giác thích thú và đắm chìm trong thế giới câu chuyện cổ tích Senber.
Có  thiết kế xinh xắn, kiểu dáng ngộ nghĩnh, xứng đáng là người bạn thân thiết của các bé cả lúc vui chơi và khi ngủ.
Bé có thể mang theo chú thú bông này đến trường, khi đi du lịch hoặc trang trí trong phòng ngủ.','98791646844'),


('Hộp Đựng Đồ Gia Dụng Không Gấp Lại - Vàng
','168.000' ,'

Thùng lưu trữ thực tế và thú vị, với sequin có thể đảo ngược ở một bên, để bạn tự làm mẫu mà bạn muốn. Khả năng lớn để tổ chức đồ chơi, sách, quần áo, đồ lặt vặt và nhiều hơn nữa.
Tính năng, đặc điểm:
Thùng lưu trữ đa năng, hoàn hảo để tổ chức đồ chơi, sách, quần áo, đồ lặt vặt, v.v.
','6486497494'),


('Bộ 2 Hộp Lưu Trữ Gia Dụng Gogh ','325.000' ,'Bộ sản phẩm được làm từ chất liệu nhựa PP cao cấp không mùi, thân thiện với môi trường
Bộ hộp có dung lượng lớn vừa đủ để bạn có thể đựng được nhiều loại đồ khác nhau
Sản phẩm có độ bền cao, không dễ bị biến dạng, chịu được nhiệt độ thấp, chống ẩm, chống va đập
Sản phẩm có viền góc tròn, các cạnh trơn chu và không có gờ, an toàn cho trẻ nhỏ
Thiết kế tấm đậy che được bụi bẩn, giúp lưu trữ được nhiều đồ ăn nhẹ, phù hợp với nhu cầu của bạn','498494794418'),

('Hộp Đựng Đồ Gia Dụng Không Gấp Lại - Vàng
','168.000' ,'

Thùng lưu trữ thực tế và thú vị, với sequin có thể đảo ngược ở một bên, để bạn tự làm mẫu mà bạn muốn. Khả năng lớn để tổ chức đồ chơi, sách, quần áo, đồ lặt vặt và nhiều hơn nữa.
Tính năng, đặc điểm:
Thùng lưu trữ đa năng, hoàn hảo để tổ chức đồ chơi, sách, quần áo, đồ lặt vặt, v.v.
','3894223617179'),

('Hộc Đựng Đồ Cho Gia Đình','148.000' ,'This storage box can organize snacks, beverage, fruits, vegetables and so on, making your refrigerator, desktop or other place neat and organized.
Features:
Simple and fashion style.
Made from PP material, has high durability.
Fine workmanship provides comfortable hand feeling.
Can be used to store snacks, beverage, fruits, vegetables and so on.
Easily for you to place and take out your thing for its no lid design.
Anti-skidding on bottom is more practical for use.','16879817949'),

('Máy May Gia Dụng Mini','102.000' ,'Features:
Great for silks, denim, wool, leather and crafts
Small, handy, lightweight, easy to carry.
Excellent for on-the-spot repairs and is lightweight and powerful.
If clothes, underwear, skirts and other suddenly off-line, you can use of the machine without take off the clothes, it is very easy to sew.
When you travel or work, it is your emergency tool.
Able to sew and hang curtains, wall hangings and so on.','981791494794');





select orderId from orders where orderUser = 2 order by orderid  desc limit 1 ;

create table if not exists OrderDetails(
	orderId int(10) not null,
    itemId int not null,
    constraint primary key(orderId,itemId),
    constraint fk_OrderDetails_Orders foreign key(orderId) references Orders(orderId),
    constraint fk_OrderDetails_Items foreign key (itemId) references Items(itemId)
);
select orderId from orders where orderUser = 1 order by orderid desc limit 1;
select * from orders;
select * from users;
select * from orderdetails;-- 
select * from orders where orderUser = 1 order by orderid desc limit 1;
select * from Orderdetails where itemId = 1;

select orderStatus from Orders ord inner join OrderDetails ordl on ord.orderId = ordl.orderId where orderUser = 1;
select ord.orderId, ord.orderDate, it.itemName from orders ord inner join orderDetails ordt on ord.orderId = ordt.orderId inner join Items it on ordt.itemId = it.itemId where ord.orderUser = 1 and ord.orderStatus = 1;
-- insert into orders (orderUser,orderStatus) values(1,0);
-- insert into orderdetails(orderId,itemId) values (1,4);
select orderId from orders order by orderid desc limit 1;
create table if not exists Ratings(
	itemId int ,
    userId int,
    ratingStars tinyint,
    ratingTitle nvarchar(255),
    ratingContent text,
    ratingDate datetime,
    constraint primary key(itemId,userId),
    constraint fk_Ratings_Items foreign key(itemId) references Items(itemId),
    constraint fk_Ratings_Users foreign key(userId) references Users(userId)
    );
-- insert into Ratings values();
select * from Ratings;
ALTER TABLE ratings CHARACTER SET=UTF8 COLLATE=utf8_general_ci;
select * from ratings where itemId = 3;
use EBooksStore;
create user if not exists 'customer'@'localhost' identified by 'cus12345';
grant all on users to 'customer'@'localhost';
grant all on items to 'customer'@'localhost';
grant all on orders to 'customer'@'localhost';
grant all on orderdetails to 'customer'@'localhost';
grant all on ratings to 'customer'@'localhost';
grant lock tables on EBooksStore.* to 'customer'@'localhost';
