--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: order_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_info (
    id character varying(2083) NOT NULL,
    product_id character varying(2083),
    userdata_address character varying(2083),
    payment_card integer,
    payment_id character varying(2083),
    order_date character varying(2083)
);


ALTER TABLE public.order_info OWNER TO postgres;

--
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    card integer NOT NULL,
    id character varying(2083) NOT NULL,
    userdata_id integer
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- Name: price; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.price (
    actualprice double precision NOT NULL,
    product_id character varying(2083) NOT NULL,
    discount_percent integer
);


ALTER TABLE public.price OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id character varying(2083) NOT NULL,
    name character varying(2083),
    price integer,
    category character varying(2083),
    imagelink character varying(2083),
    productlink character varying(2083),
    description character varying(2083),
    origin character varying(2083),
    rating double precision,
    ratingnum integer
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    id character varying(2083) NOT NULL,
    title character varying(2083),
    content character varying(2083),
    userdata_id integer NOT NULL,
    product_id character varying(2083)
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplier (
    id character varying(2083) NOT NULL,
    product_id character varying(2083),
    product_name character varying(2083),
    origin character varying(2083),
    product_origin character varying(2083)
);


ALTER TABLE public.supplier OWNER TO postgres;

--
-- Name: user_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_data (
    id integer NOT NULL,
    name character varying(2083),
    location character varying(2083),
    address character varying(2083),
    age integer,
    gender character varying(2083)
);


ALTER TABLE public.user_data OWNER TO postgres;

--
-- Data for Name: order_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_info (id, product_id, userdata_address, payment_card, payment_id, order_date) FROM stdin;
1	B002PD61Y4	123 Main St	1234567	John Doe	2023-10-19
2	B002SZEOLG	456 Elm St	9876543	Jane Smith	2023-10-20
3	B003B00484	789 Oak St	2345678	Michael Johnson	2023-10-21
4	B003L62T7W	101 Pine St	5432109	Emily Davis	2023-10-22
5	B004IO5BMQ	202 Cedar St	6789012	Robert Wilson	2023-10-23
6	B005FYNT3G	303 Maple St	3456789	Sarah Brown	2023-10-24
7	B005LJQMCK	404 Birch St	4321098	William Lee	2023-10-25
8	B005LJQMZC	505 Redwood St	8901234	Linda Hall	2023-10-26
9	B006LW0WDQ	606 Spruce St	1234567	Daniel Adams	2023-10-27
10	B0073QGKAS	707 Willow St	7654321	Jessica White	2023-10-28
\.


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (card, id, userdata_id) FROM stdin;
9876543	Jane Smith	1
2345678	Michael Johnson	2
5432109	Emily Davis	3
6789012	Robert Wilson	4
3456789	Sarah Brown	5
4321098	William Lee	6
8901234	Linda Hall	7
1234567	Daniel Adams	8
7654321	Jessica White	9
1234567	John Doe	10
\.


--
-- Data for Name: price; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.price (actualprice, product_id, discount_percent) FROM stdin;
1208	B002PD61Y4	58
1339	B002SZEOLG	44
499	B003B00484	20
375	B003L62T7W	26
995	B004IO5BMQ	30
650	B005FYNT3G	56
599	B005LJQMCK	31
1999	B005LJQMZC	76
795	B006LW0WDQ	50
1499	B0073QGKAS	0
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, price, category, imagelink, productlink, description, origin, rating, ratingnum) FROM stdin;
B002PD61Y4	D-Link DWA-131 300 Mbps Wireless Nano USB Adapter (Black)	1208	Computers&Accessories	https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/31+NwZ8gb1L._SX300_SY300_.jpg	https://www.amazon.in/D-Link-DWA-131-Wireless-Adapter-Black/dp/B002PD61Y4/ref=sr_1_327?qid=1672903011&s=computers&sr=1-327	Connects your computer to a high-speed wireless network	India	4.099999904632568	8131
B002SZEOLG	TP-Link Nano USB WiFi Dongle 150Mbps High Gain Wireless Network Wi-Fi Adapter for PC Desktop and Laptops Supports Windows 10/8.1/8/7/XP Linux Mac OS X (TL-WN722N)	1339	Computers&Accessories	https://m.media-amazon.com/images/I/31Wb+A3VVdL._SY300_SX300_.jpg	https://www.amazon.in/TP-Link-TL-WN722N-150Mbps-Wireless-Adapter/dp/B002SZEOLG/ref=sr_1_162?qid=1672909131&s=electronics&sr=1-162	150 Mbps Wi-Fi —— Exceptional wireless speed up to 150Mbps brings best experience for video streaming or internet calls	America	4.199999809265137	179692
B003B00484	Duracell Plus AAA Rechargeable Batteries (750 mAh) Pack of 4	499	Electronics	https://m.media-amazon.com/images/I/418YrbHVLCL._SX300_SY300_QL70_FMwebp_.jpg	https://www.amazon.in/Duracell-AAA-750mAh-Rechargeable-Batteries/dp/B003B00484/ref=sr_1_148?qid=1672903002&s=computers&sr=1-148	Duracell Rechargeable AAA 750mAh batteries stay charged for up to 12 months when not in use	Brazil	4.300000190734863	27201
B003L62T7W	Logitech B100 Wired USB Mouse 3 yr Warranty 800 DPI Optical Tracking Ambidextrous PC/Mac/Laptop - Black	375	Computers&Accessories	https://m.media-amazon.com/images/I/31iFF1KbkpL._SX300_SY300_QL70_FMwebp_.jpg	https://www.amazon.in/Logitech-B100-Optical-Mouse-Black/dp/B003L62T7W/ref=sr_1_151?qid=1672903002&s=computers&sr=1-151	A comfortable ambidextrous shape feels good in either hand so you feel more comfortable as you work-even at the end of the day.	India	4.300000190734863	31534
B004IO5BMQ	Logitech M235 Wireless Mouse 1000 DPI Optical Tracking 12 Month Life Battery Compatible with Windows Mac Chromebook/PC/Laptop	995	Computers&Accessories	https://m.media-amazon.com/images/I/31CtVvtFt+L._SY300_SX300_.jpg	https://www.amazon.in/Logitech-M235-Wireless-Mouse-Grey/dp/B004IO5BMQ/ref=sr_1_163?qid=1672903002&s=computers&sr=1-163	You can surf the Web with more comfort and ease—thanks to the contoured design with soft rubber grips. And your mouse is easy to slip into a bag when you want to take it with you.	America	4.5	54405
B005FYNT3G	SanDisk Cruzer Blade 32GB USB Flash Drive	650	Computers&Accessories	https://m.media-amazon.com/images/I/310mw9KTJvL._SY300_SX300_QL70_FMwebp_.jpg	https://www.amazon.in/SanDisk-Cruzer-Blade-Flash-Drive/dp/B005FYNT3G/ref=sr_1_5?qid=1672902995&s=computers&sr=1-5	Ultra-compact and portable USB flash driveCapless design	India	4.300000190734863	253105
B005LJQMCK	BlueRigger Digital Optical Audio Toslink Cable (3.3 Feet / 1 Meter) With 8 Channel (7.1) Audio Support (for Home Theatre Xbox Playstation etc.)	599	Electronics	https://m.media-amazon.com/images/I/41CF6GtnpKL._SX300_SY300_QL70_FMwebp_.jpg	https://www.amazon.in/BlueRigger-Digital-Optical-Audio-Toslink/dp/B005LJQMCK/ref=sr_1_167?qid=1672909131&s=electronics&sr=1-167	Enables easy installation of audio components to your audio or home theater system	America	4.199999809265137	30023
B005LJQMZC	BlueRigger Digital Optical Audio Toslink Cable (6 Feet / 1.8 Meter) With 8 Channel (7.1) Audio Support (for Home Theatre Xbox Playstation etc.)	1999	Electronics	https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/41CF6GtnpKL._SX300_SY300_QL70_FMwebp_.jpg	https://www.amazon.in/BlueRigger-Digital-Optical-Toslink-Meters/dp/B005LJQMZC/ref=sr_1_209?qid=1672909134&s=electronics&sr=1-209	Enables easy installation of audio components to your audio or home theater system	India	4.199999809265137	30023
B006LW0WDQ	Amazon Basics 16-Gauge Speaker Wire - 50 Feet	795	Electronics	https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/41vJcrdr5mL._SY300_SX300_QL70_FMwebp_.jpg	https://www.amazon.in/AmazonBasics-16-Gauge-Speaker-Wire-Feet/dp/B006LW0WDQ/ref=sr_1_263?qid=1672909136&s=electronics&sr=1-263	50 Feet of 16-gauge speaker wire	America	4.400000095367432	12091
B0073QGKAS	Bajaj ATX 4 750-Watt Pop-up Toaster (White)	1499	Home&Kitchen	https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/313jBpnrJVL._SX300_SY300_QL70_FMwebp_.jpg	https://www.amazon.in/Bajaj-ATX-750-Watt-Pop-up-Toaster/dp/B0073QGKAS/ref=sr_1_194?qid=1672923600&s=kitchen&sr=1-194	2 slice pop-up toaster	Canada	4.300000190734863	9331
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (id, title, content, userdata_id, product_id) FROM stdin;
R25CCWBNTJMZVER1NKFA299UAXBRR3FYCFR2T0C040R21EIT3GVFN61AR17JA5KOPU083URCMJ655HJBITTRBZWY4WBYKKI1R29ETP784D2XVE	Value for MoneyA good upgrade from stock cable.GOOD CABLEValue for the moneyGreat buyOverall goodAwesome experienceWorked as expected	Using with my Xbox and its working perfectlyA good upgrade from stock cable which i got from samsung. The sound quality has definitely improved in the soundbar. It is loud enough between 10-15 volume. However the subwoofer output has not improved significantly.I GOT NORMAL INSTEAD OF PREMIUM CABLE WITH SMALL SIZE. BUT LUCKILY I GET USE TO IT.Works really well.Absolutely top class for the money spent. No loss of signal as good as if there is no splitter involved. Fantastic buy as most TVs have only one optical output.Getting proper 5.1 channel surround sound.Channel seperation is great.Im using it in jio setbox with zebronics zuke 9400 pro 5.1 sound barWorked as expected with my LG tv	8	B005LJQMZC
R10L0LUK0SEJPLR2EGC3B1JJ6BTSR35W8V6ZATZ2SRPN411MPADDQDRE3HSY12L9YBGR2UXIGD46L4151R1LJNC0Q9BR7UWR2Z93X38SWW7IL	GoodGood QualityAmazingWire costQuality and performance is excellent.Really ImpressiveGood and cheap!GOOD ONE	Good Packaging.. Wire Quality is Good.Very good quality but the wire is 15 meters only at least should be 20 meters for the price......😓I am using this with an F&D A140x as my satellite speakers wires were getting very flimsy. Out of the box these cables are very thick compared to the ones my speakers had before.After replacing the cables with these ones I noticed two things right away1. My speakers are louder2. The sound quality is much betterOne thing you wanna be careful is that these cables stick out like a sore thumb in front of white walls so if you are like me who cares about the looks you might wanna cover these with cable raceways or even paint them like I am planning to do.Wire is very best quality but cost not worth for itDurability n quality is absolutely good.The product is 16 gauge pure copper multi thread wires. Sound quality is impressive.Bears a Black band for +ve/-ve distinctionIve seen many reviews where people complain that this cable is not Copper its Aluminium and even some saying its fake. So I thought Ill clear some doubts about this product.ITS TRUE! This is not a pure Copper cable its Copper clad Aluminium. Infact most of the speaker cables are Copper clad Aluminium. Majority of the audio signal travel through the outer edge of the conductor (skin effect) hence the Copper cladding. Thicker the cladding better the audio quality this cable only got a thin cladding of Copper The Steel/Aluminium reinforced center is for a more durable conductor. Now no where in the description Amazon has mentioned that this is a pure Copper cladding cable so just need to get your expectations right. You simply cannot expect Oxygen free pure Copper cable at this price (Rs 400). You will not find a decent 16 gauge Copper speaker cable for less than Rs 2000.This is a cheap 16 gauge speaker and it does the job very well. This cable is more than enough to deliver good sound to your speakers. Cable quality is average but you get what you pay for. Now if got some high end speakers then I wont recommend this cable.Good	9	B006LW0WDQ
R1HBS1IAS9P3EKR3B3INPXIQLFGOR3U26KEWXGCBX2R2MHLMK5VBQRDR35MGIOUQQHXWKRO3LTHQ4OZR1FR35ZZ86LVZLBDCR3KVONT5CWWQ1V	title	Value to buyBest quality	10	B0073QGKAS
R2EJIN3N3L3XKIR2JMJ8QNG66LV4R3B46JNPC2T4E7R3HHJCTEJ7J9CSR2LOAPI3SK4RCXR1MLGZDQDKIVIFR10KVN4LSVD459R3BO9D050WHWVX	good tool to use forBrand is always goodOverall good and a better experienceIt is useful to me.Works well with cpplus dvrGoodIts not plug an play u need to install the driver and will support till 2.4 Ghz not above thatSurveillance Camera In My House	good quality tool from d linkWiFi signal is goodNice productOverall good and a better experienceIt funcions properly and useful to me.I you want to buy it for CP Plus Orange DVR it works.NiceIts not plug an play u need to install the driver and will support till 2.4 Ghz not above that. Im using in Jio wifi so its not supporting 5G connectivity as its 3.0The first reason I bought this item was to have a surveillance camera in my house. To view it on my mobile Usedetc....	1	B002PD61Y4
R1LW6NWSVTVZ2HR3VR5WFKUS15C5R2F6GC79OYWUKQR3QZ19MECGWG9AR2MPU42MYK7GPOR33DVXFB4VYPZZR1SQ7OGFR4JRURR1S5F9QI0M1VBZ	Works on linux for me. Get the model with antenna.Does what it say but other brands available at lesser priceEasy HandleGreat productPerfect workingSpeed is perfectGreat Design Build Connectivity Range Packaging and other features but no linux support since v2Very good	I use this to connect an old PC to internet. I tried lubuntu 20 and ubuntu 22 it worked out of the box in both didnt have to do any setup.	2	B002SZEOLG
R5L3FAFS6JXJFR1VTQ25LXQX5UDR6RJYAZUM5240R1S8HH7X7WWELDR3VAP7JD6S5Q9BR2RJV9PK2QMAQJR2JSE9NKI4XHKFR1LUV2WJODYVJ2	Works GoodPerfect replacement cell for trimmerWowAs they said in ad worth itA good productFit for phillips trimmer.GoodGood Product	Works goodBought it to replace my Phillips QT4005 trimmers 7yr old  battery cell.Old trimmer battery lost it torque... would not start without smacking it on the hand.Soldering the connections was bit tricky but i got it done by sanding both side surfaces of the new battery cell.New Duracell one does its job..trimmer works now like its supposed to.Its lasts more than 30+ minutes easily.Charges like its supposed to.I am satisfied with it. Saved an electronic device from being obsolete.If you want more performance..maybe get 900mah cell....but for me thats expensive...750mah is enough.Long term performance is to be seen.Used for my philips trimmer. Gives a backup of more than 4-5 daysReally amezimg performance. I did not expected this much good and long performance. I am using diff company charger still these batteries fit well. And works for months. Good performance in good priceCharging is godd and battery is lasting longer after one chargehttps://m.media-amazon.com/images/I/714qCj-ogHL._SY88.jpgGoodIt shows good battery life as of now.	3	B003B00484
R3U9FRV2Q625DOR3EJZ83W9OHW3DRSH53O0JL66NLR3BMZS3M7NRJ6HR1KGMYE82EPYDORG1M1ENVZBFAPR1WFXJNNGSCEPVR1NAE9JMVSXVA1	Handy MouseGood quality mouseGood one.GoodGood cheap reliableGud quality mouseVery comfortableQuality + Less Price Makes it Best to buy.	Liked this Producthttps://m.media-amazon.com/images/I/710C5jPDcrL._SY88.jpgPurchased for a laptop. Perfectly workingGoodVery good mouse for a budget setup.usefull . ... gud qualityThe good thing about this mouse is that u can remove the scrolling clip attached inside the scrolling wheel and the wheel becomes very smooth to scrollThe Best of this mouse is its quality as per description its totally worth it best for professional usage if searching for gaming also suitable but dont have dpi options so for advance gaming you can search something else may be logitech g102 best mouse (with dpi options) else  go with this.	4	B003L62T7W
R28ZB0YUM6FKKBRNB44LXBJIPTLRVSWATRY0CJIVR3IJ7R6T1XNRDWRDC2ZTQAO2XXCR1RFN16MM6BMUMR2O8DIRX6ME9HQR50QNWM2SDL2V	Good silent mouseToo small to hold!Reviewing after 8 months of with battery backup reviewIts very small  do take note of that** Nice productGood productGood Buy for normal use in officeStylish mouse	Its little small for big hands. But best available in the market.Good product but too smaller than the regular one!Hello everyoneI bought this Mouse in April 2022 so after 8 months of use Im writing this review.Battery (the most important one): 10/10 - It came with a single AA-sized battery (Clock battery) that worked from 1st April -  10th December which is more than 8 months.  Even though my usage was heavy (6 hours average per day) in a corporate job day of 9 hours.Look 7/10-  Amazing with beautiful curves. Though battery closing pane could have been better.USB transmitter: 9/10 - Its normal and can be carried inside the battery cavity.Switch: 5/10 - On/OFF switch is not handy you need a long nail to switch it ON/off but is strong enough to resist a hard stroke when you force it to off with your nailless fingers.Precision and laser: 10/10: Precision is just what most mouses have which is accurate and the Laser is invisible (No annoying light in the bottom).Buttons: 7/10 - Buttons produce a slight noise on click and after a long usage the Left button is shaking slightly.Overall ratings: 9/10The main reason for you to buy this: Its battery efficiency it will cost you only 12 INR  for 8 months.Its very small and it trouble for my hand which is considerably smaller than other people it do fit nicely in 10 year old nephew but now mine but no complains works great from far distance  so its good there its should be sold for 400/ only its slighly over pricedNice mouse.Easy to holdWorking very smooth and fast response time is very good.Good durable productIts a great mouse under this price for normal office use it would have been much better if it had silent clicks!!!!!Working well so far.	5	B004IO5BMQ
R2XCI5KR2H8QEIR3BNQCB05PYZMVRVXXO15AGASNXR1VU19BJMXT73JR2LYRK8OS10K2ZR1NOP9O1UWSJJCRE6XTKYH9FSAR1J5H4FDTO6GBX	Good productAffordableGoodReding speed is only under 22mb/sGood product 👍goodGood product and value for moneyAll about it is very good product in suitable price.	Very chip very goodReally happy to buy this pen drive comparatively with low costVery goodStorage capacity is goodLikegoodGood product and value for moneyIts all good  you can vo for it.	6	B005FYNT3G
tempKey	Value for MoneyA good upgrade from stock cable.GOOD CABLEValue for the moneyGreat buyOverall goodAwesome experienceWorked as expected	Using with my Xbox and its working perfectlyA good upgrade from stock cable which i got from samsung. The sound quality has definitely improved in the soundbar. It is loud enough between 10-15 volume. However the subwoofer output has not improved significantly.I GOT NORMAL INSTEAD OF PREMIUM CABLE WITH SMALL SIZE. BUT LUCKILY I GET USE TO IT.Works really well.Absolutely top class for the money spent. No loss of signal as good as if there is no splitter involved. Fantastic buy as most TVs have only one optical output.Getting proper 5.1 channel surround sound.Channel seperation is great.Im using it in jio setbox with zebronics zuke 9400 pro 5.1 sound barWorked as expected with my LG tv	7	B005LJQMCK
\.


--
-- Data for Name: supplier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supplier (id, product_id, product_name, origin, product_origin) FROM stdin;
B002PD61Y4	B002PD61Y4	D-Link DWA-131 300 Mbps Wireless Nano USB Adapter (Black)	India	India
B002SZEOLG	B002SZEOLG	TP-Link Nano USB WiFi Dongle 150Mbps High Gain Wireless Network Wi-Fi Adapter for PC Desktop and Laptops Supports Windows 10/8.1/8/7/XP Linux Mac OS X (TL-WN722N)	America	America
B003B00484	B003B00484	Duracell Plus AAA Rechargeable Batteries (750 mAh) Pack of 4	Brazil	Brazil
B003L62T7W	B003L62T7W	Logitech B100 Wired USB Mouse 3 yr Warranty 800 DPI Optical Tracking Ambidextrous PC/Mac/Laptop - Black	India	India
B004IO5BMQ	B004IO5BMQ	Logitech M235 Wireless Mouse 1000 DPI Optical Tracking 12 Month Life Battery Compatible with Windows Mac Chromebook/PC/Laptop	America	America
B005FYNT3G	B005FYNT3G	SanDisk Cruzer Blade 32GB USB Flash Drive	India	India
B005LJQMCK	B005LJQMCK	BlueRigger Digital Optical Audio Toslink Cable (3.3 Feet / 1 Meter) With 8 Channel (7.1) Audio Support (for Home Theatre Xbox Playstation etc.)	America	America
B005LJQMZC	B005LJQMZC	BlueRigger Digital Optical Audio Toslink Cable (6 Feet / 1.8 Meter) With 8 Channel (7.1) Audio Support (for Home Theatre Xbox Playstation etc.)	India	India
B006LW0WDQ	B006LW0WDQ	Amazon Basics 16-Gauge Speaker Wire - 50 Feet	America	America
B0073QGKAS	B0073QGKAS	Bajaj ATX 4 750-Watt Pop-up Toaster (White)	Canada	Canada
\.


--
-- Data for Name: user_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_data (id, name, location, address, age, gender) FROM stdin;
1	Bob	Los Angeles	456 Elm St	35	Male
2	Charlie	Chicago	789 Oak St	42	Male
3	David	San Francisco	101 Pine St	31	Male
4	Eve	Miami	202 Cedar St	26	Female
5	Frank	Boston	303 Maple St	39	Male
6	Grace	Seattle	404 Birch St	45	Female
7	Henry	Denver	505 Redwood St	34	Male
8	Isabel	Austin	606 Spruce St	29	Female
9	James	Phoenix	707 Willow St	33	Male
10	test	test	test	23	test
\.


--
-- Name: order_info order_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_info
    ADD CONSTRAINT order_info_pkey PRIMARY KEY (id);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (card, id);


--
-- Name: price price_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pkey PRIMARY KEY (product_id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: supplier supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id);


--
-- Name: user_data user_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_data
    ADD CONSTRAINT user_data_pkey PRIMARY KEY (id);


--
-- Name: order_info order_info_payment_card_payment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_info
    ADD CONSTRAINT order_info_payment_card_payment_id_fkey FOREIGN KEY (payment_card, payment_id) REFERENCES public.payment(card, id) ON DELETE CASCADE;


--
-- Name: order_info order_info_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_info
    ADD CONSTRAINT order_info_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- Name: payment payment_userdata_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_userdata_id_fkey FOREIGN KEY (userdata_id) REFERENCES public.user_data(id) ON DELETE CASCADE;


--
-- Name: price price_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- Name: reviews reviews_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- Name: reviews reviews_userdata_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_userdata_id_fkey FOREIGN KEY (userdata_id) REFERENCES public.user_data(id) ON DELETE CASCADE;


--
-- Name: supplier supplier_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

