#create table for user/owner inventory

CREATE TABLE IF NOT EXISTS owner_table(
    owner_id int NOT NULL AUTO_INCREMENT,
    owner_first_name varchar(255),
    owner_last_name varchar(255),
    owner_company_name varchar(255),
    owner_email varchar(255),
    PRIMARY KEY(owner_id)
);

#insert parameters for owner_table

insert into owner_table(owner_first_name, owner_last_name, owner_company_name, owner_email)values
('Andy', 'Ngo', 'The Drop', 'AD@gmail.com')
;



#create table for authentication for each shoe reseller
create table if not exists owner_authentication(
    owner_id int not null,
    owner_auth_username varchar (255) not null,
    owner_auth_password varchar (255) not null,
    primary key (owner_auth_username, owner_auth_password),
    foreign key (owner_id) REFERENCES owner_table (owner_id)
);

#insert parameters for owner_authentication

insert into owner_authentication(owner_id, owner_auth_username, owner_auth_password)values
(01, 'ANgo', 'Shoes123')
;


#create table for shoe table

CREATE TABLE IF NOT EXISTS shoe_table(
    shoe_id int not NULL auto_increment,
    shoe_brand varchar(255),
    shoe_name varchar(255),
    shoe_colorway varchar(255),
    shoe_retail_value int,
    shoe_description varchar(4000),
    shoe_image_url varchar(4000), 
    primary key(shoe_id)
);

#
#insert shoe parameters into shoe table
insert into shoe_table (shoe_brand, shoe_name, shoe_colorway, shoe_retail_value, shoe_description, shoe_image_url) values 
('adidas', 'adidas Yeezy Slide Bone (2022 Restock)', 'Bone/Bone/Bone', 60, 'First released in 2019, the 2022 release of the Yeezy Slide Bone brings back a neutral colorway of the minimalist sandal. A light ivory color permeates the one-piece slide, manufactured from injection-molded EVA for lightweight durability. The outsole features a set of grooves for traction, while a small adidas logo can be found on the footbed.', 'https://images.stockx.com/images/adidas-Yeezy-Slide-Bone-2022-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1660143189'),
('adidas', 'adidas Yeezy Slide Onyx', 'Onyx/Onyx/Onyx', 60, '', 'https://images.stockx.com/images/adidas-Yeezy-Slide-Black-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1646687426'),
('adidas', 'adidas Yeezy Slide Resin (2022)', 'Resin/Resin/Resin', 70, '', 'https://images.stockx.com/images/adidas-Yeezy-Slide-Resin-2022-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1664347538'),
('adidas', 'adidas Yeezy Slide Flax', 'Flax/Flax/Flax', 70, 'The Flax colorway of the Yeezy Slide sees the one-piece sandal arrive in a monochromatic dark beige hue. The entire shoe is made with injected EVA, making it lightweight, durable and comfortable. The outsole features a series of horizontal grooves, placed for optimal impact protection and traction.', 'https://images.stockx.com/images/adidas-Yeezy-Slide-Flax-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1661866249'),
('adidas', 'adidas Yeezy Foam RNR Onyx', 'Onyx/Onyx/Onyx', 80, 'Utilizing a sleek monochrome finish, the adidas Yeezy Foam Runner Onyx is an understated colorway for a futuristic slip-on. A molded one-piece upper showcases open vents for breathability, while the injected EVA foam is lightweight and is secured by a unique traction pattern for grip.', 'https://images.stockx.com/images/adidas-Yeezy-Foam-RNNR-Onyx-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1654264132'),
('adidas', 'adidas Yeezy Boost 350 V2 Slate', 'Slate/Core Black/Slate', 230, 'The adidas Yeezy Boost 350 V2 Slate features a two-tone color block, featuring a light tan hue across the Primeknit upper, intersected by a black stripe across the middle with SPLY-350 branding. Full-length Boost cushioning is embedded in the beige TPU translucent midsole, while a gum rubber outsole features a unique traction pattern for grip.', 'https://images.stockx.com/images/adidas-Yeezy-Boost-350-V2-Slate-Core-Black-Slate-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1663699524'),
('adidas', 'adidas Yeezy Boost 350 V2 Bone', 'Bone/Bone/Bone', 230, 'The adidas Yeezy Boost 350 V2 is treated to a monochromatic makeover. Bone features an ivory Primeknit upper and a matching traditional lace closure. An off-white webbing pull tab at the heel and a see-through monofilament side stripe continue the tonal theme. Branding arrives in the form of a Three-Stripes logo on the interior heel and a Yeezy word mark stamped on the sockliner. A full-length TPU-wrapped Boost midsole provides responsive cushioning.', 'https://images.stockx.com/images/adidas-Yeezy-Boost-350-V2-Pure-Oat-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1648503664'),
('adidas', 'adidas Yeezy Boost 350 V2 Beluga Reflective', 'Reflective/Steeple Grey/Solar Red', 240, 'The adidas Yeezy Boost 350 V2 Beluga Reflective revisits a 2016 colorway, pairing a predominantly grey Primeknit upper with an orange side stripe that features SPLY-350 branding. The knit build is interwoven with reflective fibers that provide enhanced visibility in low-light conditions. A full-length Boost midsole housed in a semi-translucent rubber cage provides support, durability and traction.', 'https://images.stockx.com/images/adidas-Yeezy-Boost-350-V2-Beluga-Reflective-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1638996919'),
('adidas', 'adidas Yeezy Boost 350 V2 Salt', 'Salt/Core Black/Salt', 230, 'The adidas Yeezy Boost 350 V2 Salt, also referred to as Jade Ash, features a light green palette on the woven Primeknit upper, intersected with a black contrasting streak on the lateral side with SPLY-350 branding. Full-length Boost cushioning sits inside a TPU cage, with a rubber outsole tinted in a similar Jade color as the rest of the shoe. ', 'https://images.stockx.com/images/adidas-Yeezy-Boost-350-V2-Jade-Ash-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1666764732'),
('adidas', 'adidas Yeezy Boost 350 V2 Zebra (2017/2022)', 'White/Core Black/Red', 220, 'The Yeezy Boost 350 V2 Zebra released on February 25, 2017, combining an upper white / core black Primeknit with a red SPLY 350 branding and a full-length translucent midsole boost. On November 16, 2018 and April 9th, 2022, restocks of the Zebra arrived, with more pairs hitting the marketplace and building on Kanyes commitment to make Yeezy more available to anyone who wished to acquire them.', 'https://images.stockx.com/images/Adidas-Yeezy-Boost-350-V2-Zebra-Product-1.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1606321670'),
('adidas', 'adidas Yeezy Slide Pure (Restock Pair)', 'Pure/Pure/Pure', 60, 'DISCLAIMER: US and UK sizing is the same and does not require any conversion.The adidas Yeezy Slide Pure (Restock Pair) features a slightly different composition than the original adidas Yeezy Slide Pure that debuted in the spring of 2021. Instead of a smooth EVA foam construction, it has a pebbled, more textural touch. At the base, a grooved sole and cushioned footbed completes the design.The adidas Yeezy Slide Pure (Restock Pair) released in December of 2021 and retailed for $60.To shop the original adidas Yeezy Slide Pure, <a href="https://stockx.com/adidas-yeezy-slide-pure">click here.</a>  ', 'https://images.stockx.com/images/adidas-Yeezy-Slide-Pure-Restock-Pair-1.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1639593302'),
('adidas', 'adidas Yeezy Boost 350 V2 Onyx', 'Onyx/Onyx/Onyx', 230, 'A monochromatic Onyx hue envelops the latest Yeezy Boost 350 V2, the lifestyle runner from adidas and Kanye West. The upper features a dark black Primeknit weave along with rope laces, while a post-dyed monofilament side stripe can be found in a lighter black shade. A full-length Boost unit is encapsulated in a semi-translucent ribbed TPU midsole, while a black rubber outsole rounds out the look.', 'https://images.stockx.com/images/adidas-Yeezy-Boost-350-V2-Onyx-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1656420652'),
('adidas', 'adidas Yeezy Foam RNNR Sand', 'Sand/Sand/Sand', 80, 'The Sand colorway of the Yeezy Foam Runner applies a light tan hue across the molded one-piece upper. Crafted with EVA foam, a series of sculpted lines and ventilation holes pair with a textured footbed for all-day comfort. A unique contoured outsole utilizes a traction pattern for grip, with a small adidas logo stamped under the heel.', 'https://images.stockx.com/images/adidas-Yeezy-Foam-RNNR-Sand-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1617991585'),
('adidas', 'adidas Yeezy Boost 700 Wave Runner', 'Solid Grey/Chalk White/Core Black', 300, 'This first colorway of Yeezy Wave Runner 700 from Kanye West was introduced in November 2017, following an initial public opening in the Yeezy Season 5 fashion show previously that year. The retro-inspired lines of the sneaker worked together with a chunky silhouette reminiscent of a previous age. A mesh base on the quarter panel is completed in gray and a yellow with a teal forefoot.', 'https://images.stockx.com/images/adidas-Yeezy-Wave-Runner-700-Solid-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1628533740'),
('adidas', 'adidas Yeezy 500 Utility Black', 'Utility Black/Utility Black/Utility Black', 200, 'In July 2018, Kanye West and adidas released the Yeezy 500 Utility Black. The retro-inspired silhouette counterbalances a sleek, all-black design with its bulky form. What distinguishes this colorway from the standard triple-black finish is a unique use of tone its a semi-faded black that coats the combination of mesh and upper suede, as opposed to the pitch-black variety more common in the firmament of the sneaker.', 'https://images.stockx.com/images/Adidas-Yeezy-500-Utility-Black-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1606319127'),
('adidas', 'adidas Yeezy Slide Glow Green (2022) (Restock)', 'Glow Green/Glow Green/Glow Green', 60, 'A bright and vivid Green Glow makes up the newest adidas Yeezy Slide, as an all-over neon green treatment is applied to a single piece of injected EVA foam. Showing no branding on the entire sandal save for a small adidas Three-Stripes logo on the footbed, the contoured shape of the slide is simple and clean with deep horizontal grooves for traction.', 'https://images.stockx.com/images/adidas-Yeezy-Slide-Glow-Green-2022-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1653034864'),
('adidas', 'adidas Yeezy Boost 350 V2 Black Red (2017/2020)', 'Core Black/Core Black/Red', 220, 'The Yeezy Boost 350 V2 Bred brings a classic colorway to its minimalist construction. The shoes upper is built with Primeknit, finished in black and highlighted by the SPLY-350 branding on the side wall. More red marks the heel pull-loop, while rope laces secure the fit. Underfoot, a full-length Boost midsole wrapped in a black rubber cage provides cushioning. A rubber outsole with cutouts provides traction.', 'https://images.stockx.com/images/Adidas-Yeezy-Boost-350-V2-Core-Black-Red-2017-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1606320792'),
('adidas', 'adidas Yeezy 700 V3 Azael (2019/2022)', 'Azael/Azael/Azael', 200, 'In a bold departure from his previous old-school design, Kanye West expands into future-forward style with the adidas Yeezy Boost 700 V3. Debuted in December 2019, this Azael rendition features a black neoprene bootie with a notched collar and striped textile layer houses in a molded, open-work cage. Dynamic lacing offers secure lockdown. All of this is supported by Boost cushioning and a robust rubber outsole.', 'https://images.stockx.com/images/adidas-Yeezy-700-V3-Azael-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1606319725'),
('adidas', 'adidas Yeezy Boost 350 V2 Dazzling Blue', 'Core Black/Dazzling Blue/Core Black', 220, 'Delivering a two-tone colorway of Kanye Wests popular lifestyle runner is the adidas Yeeezy Boost 350 V2 Dazzling Blue. The minimalist upper is constructed with flexible Primeknit, pitched to a solid black hue with contrasting threads woven throughout. A royal blue streak cuts through the lateral side, complete with signature SPLY-350 branding. Responsive cushioning arrives via a full-length Boost midsole wrapped in a semi-translucent TPU cage.', 'https://images.stockx.com/images/adidas-Yeezy-Boost-350-V2-Dazzling-Blue-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1647268107'),
('Jordan', 'Jordan 11 Retro Cherry (2022)', 'White/Varsity Red/Black', 225, 'A new entry in the lineage of the Air Jordan 11, the Cherry also known as Varsity Red features a clean colorway that utilizes a Chicago Bulls inspired palette. The upper features white mesh with tonal webbing eyelets, while a shiny patent leather mudguard wraps around the entire shoe in a deep red hue. A red Jumpman logo appears on the back heel area, while a translucent rubber outsole finishes the look. A lightweight Phylon midsole provides cushioning while a carbon fiber spring plate offers structural support underfoot.', 'https://images.stockx.com/images/Air-Jordan-11-Retro-Cherry-2022-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1669100668'),
('Jordan', 'Jordan 1 Retro High OG Chicago Lost and Found', 'Varsity Red/Black-Sail-Muslin', 180, 'The Air Jordan 1 Retro High OG Chicago Lost & Found brings back the famous Chicago colorway with new storytelling elements. Featuring the OG high-cut shape, the leather upper features a white base with Varsity Red overlays and a black Swoosh and Wings logo. Cracked black leather on the padded collar gives it a vintage look, along with a pre-yellowed midsole. The packaging also tells the Lost & Found story, with a damaged-looking box plastered with sale stickers showcasing a different colored lid. A receipt is also included, alluding to finding this vintage gem tucked away in an attic or storage space.', 'https://images.stockx.com/images/Air-Jordan-1-Retro-High-OG-Chicago-Reimagined-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1665691099'),
('Jordan', 'Jordan 4 Retro Midnight Navy', 'White/Midnight Navy/Light Smoke Grey-Fire Red', 210, 'The AIr Jordan 4 Retro Midnight Navy heavily borrows from the White/Cement OG colorway, including the grey paint splatter midsole and TPU wings. Midnight Navy hits on the lace loops, Jumpman logos and the midsole add a sharp contrast against the white leather upper. Other defining AJ4 details remain, including a visible Nike Air unit in the heel for cushioning and a modified herringbone traction pattern on the rubber outsole.', 'https://images.stockx.com/images/Air-Jordan-4-Retro-White-Midnight-Navy-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1667401281'),
('Jordan', 'Jordan 4 Retro A Ma Maniére Violet Ore', 'Violet Ore/Medium Ash-Black-Muslin-Burgundy Crush', 225, 'Following the AJ 1, 2 and 3 collaborations, Atlanta-based retailer A Ma Maniére returns with their take on the AJ4. The A Ma Maniére x Air Jordan 4 Retro Violet Ore showcases premium materials and understated colors on the classic silhouette. A nubuck upper in a purple hue is accented with tonal quarter panel netting and a chrome rivet on the lateral collar area. Flight tags on the tongue show mismatched Jumpman and A Ma Maniére branding, while the classic Nike Air can be found on the back heel. The back heel tab features the phrase Its not about the shoes...its about where youre going hidden on the inside, while a quilted textile lines the inside of the shoe and the insole.', 'https://images.stockx.com/images/Air-Jordan-4-Retro-A-Ma-Maniere-Violet-Ore-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1668668640'),
('Jordan', 'Jordan 7 Retro  Trophy Room New Sheriff in Town', 'Obsidian/Dark Obsidian-True Red-Metallic Gold', 225, 'Jordan Brand and Trophy Room collaborate on the AJ7, celebrating the 30th anniversary of the Dream Team. The Air Jordan 7 Retro New Sheriff in Town takes a Team USA inspired color palette, featuring a deep red suede base with off white overlays and a navy neoprene tongue. A multi-color heel tab references the Olympic Rings, while a Trophy Room logo and #9 on the back heel symbolize the gold medals from the Dream Team championship run. The midsole and outsole feature red, white and blue with gold accents, similar to the regular AJ7 Olympic colorway. Additional details on this Trophy Room edition are MJs signature etched across the lateral heel area, along with New Sheriff in Town on the inside tongue tags - a nod to a quote that MJ said to Magic Johnson and Larry Bird at a team scrimmage. ', 'https://images.stockx.com/images/Air-Jordan-7-Retro-Trophy-Room-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1668497216'),
('Jordan', 'Jordan 11 Retro Cherry (2022) (GS)', 'White/Varsity Red-Black', 185, '', 'https://images.stockx.com/images/Air-Jordan-11-Retro-Cherry-2022-GS-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1670397683'),
('Jordan', 'Jordan 1 Mid Light Smoke Grey', 'Light Smoke Grey/Black-White', 115, 'The Air Jordan 1 Mid Smoke Grey brings a subdued look to Michael Jordans first signature shoe. Built with leather, the upper sports a white base overlaid by Light Smoke Grey, with black on the Swoosh, laces and Wings branding. Underfoot, the midsole houses the usual Air for cushioning. The concentric outsole provides traction.', 'https://images.stockx.com/images/Air-Jordan-1-Mid-Light-Smoke-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1606319491'),
('Jordan', 'Jordan 6 Retro Chrome Metallic Silver', 'Black/Metallic Silver-Chrome', 200, 'Taking the lowtop design of the AJ6 Low Chrome from 2015, the Air Jordan 6 Retro Chrome showcases what a high-top version would look like. Featuring a full black nubuck upper, contrasting metallic silver hits appear on the midsole, lace locks, heel tab and Jumpman logo. The classic AJ6 details remain, including a visible Nike Air unit in the heel and a translucent rubber outsole.', 'https://images.stockx.com/images/Air-Jordan-6-Retro-Metallic-Silver-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1669145816'),
('Jordan', 'Jordan 5 Retro DJ Khaled We The Best Crimson Bliss', 'Crimson Bliss/Leche Blue-Sail', 225, 'The DJ Khaled x Air Jordan 5 Retro Crimson Bliss sees a classic silhouette through a new lens, in his we the Best collection. The upper in a vibrant coral leather is contrasted with a silky quilted lining in Leche Blue, with the heel overlays adorned with a blue embroidered Nike Air logo on the right and We the Best on the left. The silver reflective tongue features the classic Jumpman branding, and the translucent rubber outsoles complete the playful logo treatment with additional Jumpman and We the Best branding. Underfoot, an off-white polyurethane midsole with blue speckled shark-tooth detailing is complemented by a visible Air-sole unit in the heel.', 'https://images.stockx.com/images/Air-Jordan-5-Retro-DJ-Khaled-We-The-Best-Crimson-Bliss-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1668526022'),
('Jordan', 'Jordan 4 Retro Military Black', 'White/Black-Neutral Grey', 210, 'Featuring the same color blocking and materials used on the OG Military Blue colorway from 1989 is the Air Jordan 4 Retro Military Black. The upper is made with smooth white leather with a forefoot overlay in grey suede. Black accents are on the TPU eyelets, molded heel tab, and the Jumpman logo on the woven tongue tag. Its built on a two-tone polyurethane midsole with a visible Air-sole unit under the heel.', 'https://images.stockx.com/images/Air-Jordan-4-Retro-Military-Black-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1652711257'),
('Jordan', 'Jordan 1 Retro Low OG Zion Williamson Voodoo', 'Flax/Muslin-Fauna Brown-Oil Green-Sesame-Moon Fossil', 170, 'Continuing the hoops stars partnership with Jordan Brand, the Zion Williamson x Air Jordan 1 Retro Low OG Voodoo features a quixotic mix of patchwork, exposed stitching, reverse Swooshes and upside-down Wings branding. Beige suede quarter paneling and a toe box in brown suede contrast with rough overlays in Fossil, Oil Green, and pale brown. Voodoo-doll stitching appears on the the lateral heel, and concealed beneath both unstitched heel tabs are Voodoo and Zion images. The upper rides on an off-white midsole with stitching that is different on the right and left and is paired with outsoles in gum rubber.', 'https://images.stockx.com/images/Air-Jordan-1-Retro-Low-OG-Zion-Williamson-Voodoo-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1668526002'),
('Jordan', 'Jordan 1 Mid White Black Red (2022)', 'White/Black-Red', 120, '', 'https://images.stockx.com/images/Air-Jordan-1-Mid-White-Black-Red-2022-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1658500383'),
('Jordan', 'Jordan 1 High OG Denim (W)', 'White/Worn Blue-Metallic Gold', 170, 'The Womens Air Jordan 1 Retro High OG Denim drapes the classic silhoutte in frayed denim, offering a unique look. A white leather upper base features denim overlays, including the tongue and Swoosh. The Wings logo appears as a sewn on patch on the lateral side, while an oversized lace jewel in metallic gold sits at the base of the laces featuring a Jumpman logo and Jordan wordmark. The traditional cupsole with encapsulated Air rests on top of a rubber outsole.', 'https://images.stockx.com/images/Air-Jordan-1-High-OG-Denim-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1657605968'),
('Jordan', 'Jordan 4 Retro Canyon Purple (W)', 'Canyon Purple/Anthracite/Alligator/Safety Orange', 200, 'The Womens Air Jordan 4 Retro Canyon Purple features both unique colors and materials on the classic silhouette. Eschewing traditional leather or nubuck seen on most AJ4s, the upper utilizes a shaggy suede in a vibrant purple hue. Lime green accents the eyelets and midsole, while the Jumpman logo on the tongue appears in Safety Orange. Black molded wings and back heel tab are contrasted in black, while the midsole appears in the classic white/black combination with an exposed Nike Air unit in the heel.', 'https://images.stockx.com/images/Air-Jordan-4-Retro-Canyon-Purple-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1660285854'),
('Jordan', 'Jordan 3 Retro Fire Red (2022)', 'White/Fire Red/Cement Grey/Black', 210, 'The Air Jordan 3 Retro Fire Red sees one of the original colors of the silhouette return, true to form. A white leather upper is paired with grey elephant print overlays on the toe and heel, while Fire Red accents on the midsole and collor offers a pop of contrast. Designed by Tinker Hatfield, the Air Jordan 3 was the first to feature a visible Nike Air unit, along with the Jumpman logo. This 2022 edition sees the return of the Nike Air logo on the back heel, along with the Nike wordmark on the outsole.', 'https://images.stockx.com/images/Air-Jordan-3-Retro-Fire-Red-2022-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1663687791'),
('Jordan', 'Jordan 1 Low Aluminum (W)', 'White/Aluminum', 100, '', 'https://images.stockx.com/images/Air-Jordan-1-Low-Aluminum-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1666162214'),
('Jordan', 'Jordan 4 Retro SE Black Canvas', 'Black/Light Steel Grey/White/Fire Red', 210, 'The Air Jordan 4 Retro Black Canvas blends a neutral color scheme with unique materials. The upper is crafted predominately black canvas, with a subtle suede hit on the toe piece. Traditional AJ4 details return, with black TPU molded wings and a visible Nike Air unit in the heel. A subtle red Flight script on the tongue patch adds a burst of constrast, set against grey on the Jumpman logo, eyelets and midsole.', 'https://images.stockx.com/images/Air-Jordan-4-Retro-SE-Black-Canvas-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1664433335'),
('Jordan', 'Jordan 12 Retro Black Taxi', 'Black/Taxi', 200, 'Taking cues from the first release of the Taxi AJ12, the Air Jordan 12 Retro Black Taxi blacks out the championship silhouette in a stealthy makeover. Smooth black leather panels make up the upper, paired with a black pebbled mudguard. A blacked out midsole and outsole continue the look, contrasted only by Taxi hits on the Jumpman and Two3 graphics on the tongue, eyelets and a molded panel on the side with Jumpman branding. A small Taxi Jumpman logo peeks out from the outsole, where a carbon fiber plate is there for stability and Zoom Air units for cushioning.', 'https://images.stockx.com/images/Air-Jordan-12-Retro-Black-Taxi-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1670484546'),
('Jordan', 'Jordan 1 Retro High OG Chicago Lost and Found (GS)', 'Varsity Red/Black-Sail-Muslin', 140, 'The signature Chicago colorway is revisited in this high-top made for big kids. The Air Jordan 1 Retro High OG GS Lost & Found receives a distressed look on the white leather in the upper and the padded collar. Pops of color are delivered with the Nike Air tongue tag, bright red overlays and laces and Swoosh in black. The shoe is supported on a cupsole in white rubber with a bright red outsole and white sidewalls. The ankle flap features branding with the classic Jordan Wings logo.', 'https://images.stockx.com/images/Air-Jordan-1-Retro-High-OG-Chicago-Reimagined-GS-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1669232518'),
('Jordan', 'Jordan 1 Mid Stealth (W)', 'Sail/Stealth-White', 125, '', 'https://images.stockx.com/images/Air-Jordan-1-Mid-Stealth-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1668582906'),
('New Balance', 'New Balance 550 White Green', 'White/Green', 120, 'The 550 White Green brings a classic two-tone look to its retro construction. The shoes upper is built with a white leather base, overlaid by tonal suede at the toe and supported by microperforations for breathability. The branding, including the N logo, adds green to the design, with both colors coming together on the rubber cupsole underfoot, which includes EVA for cushioning.', 'https://images.stockx.com/images/New-Balance-550-White-Green-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1628002321'),
('New Balance', 'New Balance 550 White Grey', 'White/Grey', 100, 'The New Balance 550 White Grey features a white leather upper with monochromatic perforated leather overlays and puffed New Balance logos. From there, a woven New Balance Basketball tongue label and matching sole completes the design.The New Balance 550 White Grey released in June of 2021 and retailed for $100.', 'https://images.stockx.com/images/New-Balance-550-White-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1613670436'),
('New Balance', 'New Balance 530 White Silver Navy', 'White/Silver/Navy', 95, '', 'https://images.stockx.com/images/New-Balance-530-White-Silver-Navy-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1657865292'),
('New Balance', 'New Balance 550 Cream Black', 'Sea Salt/Cream/Black', 100, '', 'https://images.stockx.com/images/New-Balance-550-Cream-Black-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1651781130'),
('New Balance', 'New Balance 2002R Protection Pack Rain Cloud', 'Rain Cloud/Grey', 150, 'The 2002R Protection Pack - Rain Cloud released as part of the Protection Pack, a three-shoe collection. The shoes lifestyle running construction emerges with a greyscale design, built with a mesh base and overlaid by raw-edged suede, designed to look like its been worn away. The tongue sports exposed foam to further play to the look, while underfoot, a distressed Abzorb midsole offers cushioning, giving way to an N-ergy outsole for traction.', 'https://images.stockx.com/images/New-Balance-M2002-Protection-Pack-Rain-Cloud-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1638287519'),
('New Balance', 'New Balance 550 White Black', 'White/Black', 110, 'Updating the vintage 80s hoops shoe with an essential two-tone design is the New Balance 550 Oreo. It features layered white leather with black textile construction on the padded collar with a nylon tongue and a TPU heel clip. A raised N is on the quarter panel and a flying NB logo on the heel overlay. The low-top is built on a rubber cupsole with an exposed EVA wedge on the medial sidewall.', 'https://images.stockx.com/images/New-Balance-550-White-Black-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1638903675'),
('New Balance', 'New Balance 2002R Protection Pack Light Arctic Grey Purple', 'Light Arctic Grey/Purple', 150, '', 'https://images.stockx.com/images/New-Balance-2002R-Protection-Pack-Light-Arctic-Grey-Purple-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1660746366'),
('New Balance', 'New Balance 550 Silver Birch (W)', 'White/Silver Birch/Beige', 110, '', 'https://images.stockx.com/images/New-Balance-550-Silver-Birch-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1663957390'),
('New Balance', 'New Balance 2002R Protection Pack Mirage Grey', 'Mirage Grey/Trooper', 150, '', 'https://images.stockx.com/images/New-Balance-2002R-Protection-Pack-Mirage-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1650653906'),
('New Balance', 'New Balance 550 Salt and Pepper', 'Whit/Marblehead/Dark Grey', 110, '', 'https://images.stockx.com/images/New-Balance-550-Salt-and-Papper-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1668082532'),
('New Balance', 'New Balance 550 White Red', 'White/Red', 110, 'The 550 White Re brings a classic mix of hues to its vintage basketball construction. Built with leather, the shoes upper appears in white, black and red, with microperforations for breathability. The woven tongue includes a basketball graphic, with an N logo standing out on the side wall. Underfoot, the rubber outsole, which continues the tritone look, incorporates flex grooves for traction.', 'https://images.stockx.com/images/New-Balance-550-White-Red-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1630617711'),
('New Balance', 'New Balance 550 UNC White University Blue', 'White/Pastel Blue', 110, 'Staying true to the color scheme of the shoes late 80s roots is the New Balance 550 Team Carolina Blue. The low-top has a white leather upper with powder blue throughout, a raised N on the quarter panel, and a flying NB logo on the back heel. Its built on a rubber cupsole with an exposed EVA wedge on the medial sidewall.', 'https://images.stockx.com/images/New-Balance-550-UNC-White-University-Blue-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1638903675'),
('New Balance', 'New Balance 550 Aime Leon Dore White Leather', 'White/White', 130, 'Designer Teddy Santis employs a toned-down colorway with the Aimé Leon Dore x New Balance 550 White. One of NBs classic hoop silhouettes gets a refined delivery in cream suede paneled upper contrasting with a smooth white leather toe box and shattered-look leather N logo. The padded collar and dark-cream rubber cupsole and EVA wedge boost comfort underfoot. ALD and NB share branding on the tongue tag.', 'https://images.stockx.com/images/New-Balance-550-Aime-Leon-Dore-White-Leather-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1668668762'),
('New Balance', 'New Balance 550 White Nightwatch Green', 'White/Nightwatch Green/Grey', 110, '', 'https://images.stockx.com/images/New-Balance-550-White-Nightwatch-Green-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1664518858'),
('New Balance', 'New Balance 990v5 Grey', 'Grey', 175, 'The 990v5 Made In USA Castlerock brings a neutral look to its performance running construction. The shoes upper features a grey mesh base with lightweight suede overlays, accented by reflective detailing throughout. An OrthoLite insert is included for comfort, working in conjuction with an Encap midsole, which contrasts the look in white. A black outsole provides traction.', 'https://images.stockx.com/images/New-Balance-990v5-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1607650731'),
('New Balance', 'New Balance 550 Aime Leon Dore Grey Suede', 'Grey/White/Blue', 130, 'The Aimé Leon Dore x New Balance 550 Grey renews a memorable basketball favorite with an elegant reinterpretation. The classic 550 low-top is delivered in shaggy grey suede on an off-white rubber cupsole, outfitted with an EVA wedge for sturdy comfort. Designer Teddy Santis added texture to the suede with a canvas collar, tongue and heel, while the toe box is in smooth leather. The solitary shot of color is sea-blue branding on the tongue tag.', 'https://images.stockx.com/images/New-Balance-550-Aime-Leon-Dore-Grey-Suede-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1669232627'),
('New Balance', 'New Balance 550 White Pink (W)', 'White/Pink', 110, 'Steven Smiths signature basketball shoe from the 80s gets a pastel interpretation with the New Balance womens 550 White Pink. Underfoot, the signature rubber cupsole with stitched sidewalls has a foam wedge that ensures support and cushion. The upper in white leather features leather-and-suede overlays in soft peach hues on the heel and forefoot. The N appears in a petal pink on the quarter panel paired with matching pink collar and heel clip.', 'https://images.stockx.com/images/New-Balance-550-White-Pink-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1649427804'),
('New Balance', 'New Balance 2002R Protection Pack Pink', 'Pink/Violet', 150, '', 'https://images.stockx.com/images/New-Balance-2002R-Protection-Pack-Pink-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1659420943'),
('New Balance', 'New Balance 550 White Grey (GS)', 'White/Grey', 80, '', 'https://images.stockx.com/images/New-Balance-550-White-Grey-GS-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1661522583'),
('New Balance', 'New Balance 550 White Rain Cloud (W)', 'White/Rain Cloud/Light Aluminum', 110, '', 'https://images.stockx.com/images/New-Balance-550-White-Rain-Cloud-W.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1666068341'),
('Nike', 'Nike Air Force 1 Low Drake NOCTA Certified Lover Boy', 'White/White-Cobalt Tint-White', 160, 'Drake-inspired details imbue the NOCTA x Nike Air Force 1 Low Certified Lover Boy, an understated version of the unmistakable white-on-white AF1 colorway. Asymetric NOCTA and Nike Air branding on each heel tab ornament the white tumbled leather upper, with a nod to heritage details with a perforated toe box, variable width lacing and a low-cut padded collar. Drakes final wink is Love You Forever inscribed in embossed lettering across the lateral sidewall of its white midsole, giving this classic a 2022 twist', 'https://images.stockx.com/images/Nike-Air-Force-1-Low-Drake-Certified-Lover-Boy-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1667486313'),
('Nike', 'Nike Dunk Low Retro White Black Panda (2021)', 'White/Black', 110, 'The Dunk Low Black White also known as Panda brings a classic two-tone look to its classic basketball construction. The shoes low-top build emerges in leather, with a white base contrasted by black overlays, with further black on the Swoosh branding. Perforations on the toe box provide breathability, while underfoot, the two-tone look is matched by the tooling, which incorporates a concentric rubber outsole for traction.', 'https://images.stockx.com/images/Nike-Dunk-Low-Retro-White-Black-2021-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1633027409'),
('Nike', 'Nike Dunk Low Retro White Black Panda (2021) (W)', 'White/Black', 100, 'A womens shoe, the Wmns Dunk Low Black White also known as Panda emerges with a classic two-tone look. Built entirely with leather, the shoes upper sports a white base overlaid by black, with black also marking the Swoosh branding. Perforations on the toe box provide breathability, while white branding appears on the tongue and heel patch. Underfoot, the two-tone rubber cupsole includes a concentric outsole to provide traction.', 'https://images.stockx.com/images/Nike-Dunk-Low-White-Black-2021-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1611766850'),
('Nike', 'Nike Dunk Low Retro White Black Panda (2021) (GS)', 'White/Black-White', 85, 'The Dunk Low GS Black White brings a classic two-tone colorway to the basketball classic. A grade-school iteration of the shoe, the upper appears in a mix of black and white on its leather construction, with a lightly padded tongue for support. Underfoot, a white low-profile midsole gives way to a concentric black rubber outsole, which takes its traction pattern from the Air Jordan 1.', 'https://images.stockx.com/images/Nike-Dunk-Low-Retro-White-Black-GS-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1613360456'),
('Nike', 'Nike Air Force 1 Low 07 White', 'White/White', 110, 'The Nike Air Force 1 Low White 07 features an all-white leather upper with a perforated toe box and Swoosh overlays. A Nike heel embroidery and white sole completes the design.The Nike Air Force 1 Low White 07 originally released in 2007, but since it is an essential colorway to the brand, it consistently restocks.To shop all Nike Air Force 1 shoes, <a href="https://stockx.com/nike/air-force/1">click here.</a> ', 'https://images.stockx.com/images/Nike-Air-Force-1-Low-White-07_V2-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1631122839'),
('Nike', 'Nike Dunk High Panda (2021) (W)', 'Black/White-University Red', 110, 'The Wmns Dunk High Black White brings a classic two-tone look to a classic high-top silhouette. Built with leather, the shoes upper appears in a mix of black and white, contrasted only by the red on the woven tongue tag. The toe box is perforated to offer breathability, while the rubber cupsole anchors the build and maintains the black and white look. A concentric rubber outsole is included for traction.', 'https://images.stockx.com/images/Nike-Dunk-High-Panda-2021-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1638807175'),
('Nike', 'Nike Dunk Low QS LeBron James Fruity Pebbles', 'Habanero Red/Laser Blue/White', 120, 'King James favorite cereal gets a cameo in the LeBron James x Fruity Pebbles x Nike Dunk Low. The laces and insole are decorated with multicolor flakes and the tongue is adorned with a Fruity Pebbles tag, which James himself has proclaimed as his favorite breakfast cereal. The bright yellow heel tab reveals a stitched LJ logo. Underfoot, comfort and traction are ensured by the clear white rubber outsole.', 'https://images.stockx.com/images/Nike-Dunk-Low-QS-LeBron-James-Fruity-Pebbles-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1668096741'),
('Nike', 'Nike Dunk Low Retro QS Argon (2022)', 'Flash/White-Argon Blue-Flash', 130, 'The Dunk Low Retro QS Argon returns true to form, first released exclusively in Japan back in 2001 as part of the CO.JP program. The upper is crafted entirely of leather, mixing two different shades of blue with a white Swoosh. Additional white details can be seen on the laces, back heel tab and the midsole, which features the traditional Dunk cupsole and traction pattern.', 'https://images.stockx.com/images/Nike-Dunk-Low-Retro-QS-Flash-White-Argon-Blue-Flash-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1658842672'),
('Nike', 'Nike SB Dunk Low Pro Why So Sad?', 'Coastal Blue/Coastal Blue-Light Current Blue', 120, 'Scottish skateboarder John Rattray brings his commitment to mental health research and suicide prevention into shoe form with the Why So Sad? x Nike Dunk Low SB The Predatory Bird. The bird graphic that inspired this low-tops name embellishes the lateral heel, while a lone question mark in yellow adorns the red suede heel tab. The leather upper in cheerful pastel blue and contrasting navy suede overlays has a Swoosh in Coastal Blue fading to Speed Yellow. The interior tongue tag features Why So Sad? reflecting Rattrays crusade to bring issues of depression to light. The outsole in clear rubber provides grippiness whether in the bowl or on the street.', 'https://images.stockx.com/images/Nike-SB-Dunk-Low-Pro-Why-So-Sad-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1667893192'),
('Nike', 'Nike Dunk Low Retro White Grey', 'White/Neutral Grey', 110, 'Maintaining its iconic look with a neutral approach, the Nike Dunk Low White Neutral Grey is constructed on the tried-and-true rubber cupsole with sidewall stitching and foam wedge for easy wear. The upper in grey tumbled leather joins white overlays accompanied by the signature Swoosh, also in stark white. The tongue tag, sockliner and back tab all deliver Nike branding.', 'https://images.stockx.com/images/Nike-Dunk-Low-Retro-White-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1666679170'),
('Nike', 'Nike Dunk High Black White (2021)', 'White/Black-Total Orange', 110, 'The Nike Dunk High Black White also known as Panda dresses the classic high-top in a monochromatic two-tone color palette. The iconic silhouette features a smooth white leather upper, set against black leather overlays. The toe box is perforated for breathability. The shoe rests on a rubber cupsole, with a concentric rubber outsole included for traction.', 'https://images.stockx.com/images/Nike-Dunk-Low-Black-White-2021-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1645037142'),
('Nike', 'Nike Dunk Low SP Kentucky (2020/2022)', 'White/Varsity Royal', 100, 'The Dunk Low Retro SP Kentucky released to celebrate 35 years of the silhouette. Drawing from Nikes Be True to Your School series from 1985, the shoe gives the nod to the University of Kentucky with a white and Varsity Royal colorway. Built with the leather, the upper is supported by a mesh tongue, while Zoom Air in the sockliner provides cushioning. A two-tone sole unit completes the look underfoot.', 'https://images.stockx.com/images/Nike-Dunk-Low-SP-Kentucky_Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1606322330'),
('Nike', 'Nike Dunk Low Triple Pink (GS)', 'Pink/Pink', 85, 'The Dunk Low GS Triple Pink also known as Barbie updates the traditional design of the vintage Nike basketball shoe. The sneaker goes against the traditional two-tone color blocking with an all-leather upper in light pink for both the base and overlays. Hot pink highlights Nike branding along the Swoosh, tongue tag, and heel. While the rubber outsole secures the build, a breathable nylon tongue gives comfort.', 'https://images.stockx.com/images/Nike-Dunk-Low-Triple-Pink-GS-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1661523004'),
('Nike', 'Nike Dunk Low USC', 'White/Gym Red-Yellow', 100, 'With a color palette that recalls the original Be True to your School series, the Nike Dunk Low Gym Red showcases a simple two-tone color block. The all leather upper features a white base, with vivid red overlays. Contrasting gold hits appear on the woven tongue label, the Nike branding on the back heel and the sockliner. A crisp white midsole gives way to a red rubber outsole, with the same traction pattern as the 1985 original.', 'https://images.stockx.com/images/Nike-Dunk-Low-USC-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1660311144'),
('Nike', 'Nike Dunk Low Retro White Black Panda (2021) (PS)', 'White/Black-White', 65, 'The Dunk Low PS Black White is a grade-school shoe with a classic two-tone look. The vintage basketball shoe emerges with a leather construction on the upper, finished in a white base thats contrasted by black overlays, including on the Swoosh. A padded collar and nylon mesh tongue support the fit, while underfoot, the tooling maintains the black-and-white aesthetic to complete the look.', 'https://images.stockx.com/images/Nike-Dunk-Low-Retro-White-Black-PS-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1624468188'),
('Nike', 'Nike Dunk Low Peach Cream (W)', 'Peach Cream/White/Peach Cream', 100, 'The Nike Womens Dunk Low Peach Cream arrives in a citrus colorway with heritage styling. The smooth leather upper in a pale grey pairs with vibrant orange overlays on the forefoot and heel. The perforated toe box ensures ventilation while support and traction are delivered via a traditional cupsole and a circle-patterned outsole. Subtle branding appears on the breathable nylon tongue in peach.', 'https://images.stockx.com/images/Nike-Dunk-Low-Peach-Cream-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1665556609'),
('Nike', 'Nike SB Dunk Low Concepts Orange Lobster', 'Orange Frost/Electro Orange/White', 130, 'The Concepts x Nike Dunk Low SB Orange Lobster updates this low-top classic as part of a longstanding collaboration with Harvard Squares oldest sneaker storefront. With lobsters as its inspiration, the sneaker is built on a nubuck upper in orange; the overlays have speckle patterning reminiscent of a lobster shell. The white tongue in breathable mesh and white-outlined orange Swoosh pair with the interior lining patterning resembling a lobster shacks requisite bib. Black sidewalls and rubber banding atop the toe box are nods to lobster claw bands. Traction is delivered via a rubber outsole in orange.', 'https://images.stockx.com/images/Nike-SB-Dunk-Low-Concepts-Orange-Lobster-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1669707108'),
('Nike', 'Nike Dunk Low Retro Miami Hurricanes', 'Team Dark Green/Team Orange-White', 110, '', 'https://images.stockx.com/images/Nike-Dunk-Low-Retro-Miami-Hurricanes-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1668583499'),
('Nike', 'Nike Dunk Low Medium Olive (W)', 'White/Medium Olive-White', 110, 'The Nike Womens Dunk Low Medium Olive features a two tone color blocking reminscent of the Be True to Your School iterations that were first seen in 1985. A white leather base blends with Medium Olive overlays, including the Swoosh and the back heel tab. A white midsole leads to an olive rubber outsole, with the traditional Dunk traction pattern crafted for the hardwood.', 'https://images.stockx.com/images/Nike-Dunk-Low-Medium-Olive-W-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1664348197')
;

select * from shoe_table;








# create table for available inventory

CREATE TABLE IF NOT EXISTS inventory_table(
    inventory_id int not NULL auto_increment,
    shoe_id int not NULL,
    shoe_size int not null,
    Foreign Key (shoe_id) REFERENCES shoe_table(shoe_id),
    PRIMARY KEY(inventory_id)
);
select * from shoe_table;
#insert into inventory

insert into inventory_table(shoe_id, shoe_size) values
(1, 10),
(2, 11),
(4, 11),
(5, 11),
(6, 10),
(7, 9),
(8, 11),
(9, 8),
(10, 9),
(11, 10),
(12, 10),
(13, 10),
(14, 8),
(15, 8),
(16, 9),
(17, 7),
(18, 9),
(19, 11),
(20, 11),
(21, 10),
(22, 9),
(23, 11),
(24, 7),
(25, 11),
(26, 8),
(28, 7),
(29, 11),
(30, 10),
(31, 7),
(32, 7),
(33, 7),
(34, 11),
(35, 11),
(36, 8),
(37, 11),
(38, 8),
(39, 9),
(40, 10),
(41, 7),
(42, 11),
(43, 8),
(44, 9),
(45, 7),
(46, 10),
(47, 7),
(48, 10),
(49, 7),
(50, 9),
(52, 11),
(53, 7),
(54, 9),
(55, 8),
(56, 11),
(57, 11),
(58, 10),
(59, 10),
(60, 9),
(61, 10),
(62, 9),
(63, 8),
(64, 10),
(65, 11),
(66, 10),
(67, 8),
(68, 11),
(69, 8),
(70, 7),
(71, 10),
(72, 8),
(73, 7),
(74, 11),
(76, 10),
(77, 10),
(78, 9)
;
select * from inventory_table
join shoe_table
on shoe_table.shoe_id = inventory_table.shoe_id
join market_values_table
on inventory_table.shoe_id = market_values_table.shoe_id
where shoe_brand = 'jordan' and shoe_colorway like "%purple%";



# create table for customer buying the shoe
CREATE TABLE IF NOT EXISTS customer_table(
    customer_id int not null auto_increment,
    customer_first_name varchar(255),
    customer_last_name varchar(255),
    customer_phone_number varchar(255),
    customer_email varchar(255),
    customer_gender varchar(255),
    customer_shoe_size varchar(255),
    primary key(customer_id)
);
# insert parameters into customer table 
insert into customer_table(customer_first_name, customer_last_name, customer_phone_number, customer_email, customer_gender, customer_shoe_size) VALUES
('Jaafar', 'Maksoud', '8043002806', 'Maksoudj@vcu.edu', 'male', 10),
('Yeabsera', 'Yimer Wolle', '7039751831', 'yimerwolley@vcu.edu', 'female', 6),
('Isam', 'Makkie', '7033075980', 'makkieie@vcu.edu','male',11),
('Ali', 'Kradi', '8048375849', 'Kradiah@vcu.edu','male',10)
;


# create a table for transactions
CREATE TABLE IF NOT EXISTS transaction_table(
    transaction_id int not null auto_increment,
    shoe_id int not null,
    transaction_type varchar(255),
    transaction_cost int,
    transaction_date_month int,
    transaction_date_day int,
    transaction_date_year int,
    primary key (transaction_id),
    FOREIGN key (shoe_id) REFERENCES shoe_table(shoe_id)
);
select * from transaction_table;

# insert parameters into transaction table
insert into transaction_table(shoe_id, transaction_type, transaction_cost, transaction_date_month, transaction_date_day, transaction_date_year) values
(03, 'sell', 70, 12,3,2022),
(27, 'sell', 200, 12,4,2022),
(51, 'sell', 110, 12,5,2022),
(75, 'sell', 100, 12,6,2022)
;

select * from transaction_table
join customer_transaction
on transaction_table.transaction_id = customer_transaction.transaction_id
join shoe_table
on shoe_table.shoe_id = transaction_table.shoe_id
join customer_table
on customer_table.customer_id = customer_transaction.customer_id
where shoe_brand = 'nike'
;


# create a table for customer transaction
CREATE TABLE IF NOT EXISTS customer_transaction(
    customer_transaction_id int not null auto_increment,
    customer_id int not null,
    transaction_id int not null,
    primary key (customer_transaction_id),
    FOREIGN key (customer_id) REFERENCES customer_table(customer_id),
    FOREIGN key (transaction_id) REFERENCES transaction_table(transaction_id)
);
select * from transaction_table;
# insert parameters into customer transaction table
insert into customer_transaction(customer_id, transaction_id) values
(01, 03),
(02, 01),
(03, 02),
(04, 04)
;



#create view for a full transaction TABLE
create view full_customer_transaction AS
select customer_transaction.customer_id,transaction_table.shoe_id, transaction_table.transaction_cost, transaction_table.transaction_date_month, transaction_table.transaction_date_day, transaction_table.transaction_date_year from customer_transaction
left join transaction_table
on customer_transaction.transaction_id = transaction_table.transaction_id
;

#create table for the market values
create table if not exists market_values_table (
    market_value_id int not null auto_increment,
    shoe_id int not null,
    market_values varchar(4000),
    primary key (market_value_id),
    foreign key (shoe_id) REFERENCES shoe_table(shoe_id)
);


# insert parameters into market values table transaction table
insert into market_values_table(shoe_id, market_values) values
(01,'stockX: 153, flightClub: 143, goat: 143'),
(02,'stockX: 121, flightClub: 108, goat: 108'),
(03,'stockX: 80, flightClub: 60, goat: 60'),
(04,'stockX: 81, flightClub: 62, goat: 62'),
(05,'stockX: 224, flightClub: 197, goat: 197'),
(06,'stockX: 240, flightClub: 200, goat: 200'),
(07,'stockX: 261, flightClub: 230, goat: 230'),
(08,'stockX: 236, flightClub: 225, goat: 234'),
(09,'stockX: 212, flightClub: 196, goat: 196'),
(10,'stockX: 250, flightClub: 251, goat: 285'),
(11,'stockX: 156, goat: 136'),
(12,'stockX: 358, flightClub: 298, goat: 309'),
(13,'stockX: 188, flightClub: 165, goat: 165'),
(14,'stockX: 362, flightClub: 330, goat: 349'),
(15,'stockX: 319, flightClub: 270, goat: 305'),
(16,'stockX: 82, flightClub: 71, goat: 71'),
(17,'stockX: 292, flightClub: 271, goat: 274'),
(18,'stockX: 223, flightClub: 222, goat: 235'),
(19,'stockX: 267, flightClub: 232, goat: 232'),
(20,'stockX: 283, flightClub: 250, goat: 257'),
(21,'stockX: 299, flightClub: 250, goat: 261'),
(22,'stockX: 268, flightClub: 260, goat: 260'),
(23,'stockX: 295, flightClub: 300, goat: 300'),
(24,'stockX: 175, goat: 195, flightClub: 195'),
(25,'stockX: 194, flightClub: 192, goat: 192'),
(26,'stockX: 166, flightClub: 125, goat: 139'),
(27,'stockX: 203, goat: 177, flightClub: 177'),
(28,'stockX: 198, flightClub: 200, goat: 200'),
(29,'stockX: 270, goat: 309, flightClub: 309'),
(30,'stockX: 234, goat: 213, flightClub: 213'),
(31,'stockX: 96, flightClub: 85, goat: 85'),
(32,'stockX: 138, flightClub: 116, goat: 116'),
(33,'stockX: 151, flightClub: 150, goat: 150'),
(34,'stockX: 155, flightClub: 142, goat: 192'),
(35,'stockX: 133, flightClub: 109, goat: 117'),
(36,'stockX: 297, flightClub: 264, goat: 270'),
(37,'stockX: 196, flightClub: 197, goat: 197'),
(38,'stockX: 176, flightClub: 169, goat: 169'),
(39,'stockX: 115, flightClub: 105, goat: 105'),
(40,'stockX: 167, goat: 143, flightClub: 138'),
(41,'stockX: 97'),
(42,'stockX: 81, goat: 67, flightClub: 67'),
(43,'stockX: 134, goat: 110, flightClub: 110'),
(44,'stockX: 210, goat: 183, flightClub: 183'),
(45,'stockX: 113, goat: 101, flightClub: 101'),
(46,'stockX: 168, goat: 155, flightClub: 155'),
(47,'stockX: 120, flightClub: 99, goat: 99'),
(48,'stockX: 112, flightClub: 115, goat: 115'),
(49,'stockX: 107, goat: 85, flightClub: 85'),
(50,'stockX: 95, goat: 95, flightClub: 65'),
(51,'stockX: 161, flightClub: 137, goat: 140'),
(52,'stockX: 142, goat: 135, flightClub: 135'),
(53,'stockX: 109, flightClub: 81, goat: 81'),
(54,'stockX: 143, goat: 148, flightClub: 148'),
(55,'stockX: 154, flightClub: 145, goat: 145'),
(56,'stockX: 117, flightClub: 80, goat: 98'),
(57,'stockX: 189, flightClub: 196, goat: 196'),
(58,'stockX: 83, goat: 81, flightClub: 81'),
(59,'stockX: 122, flightClub: 125, goat: 125'),
(60,'stockX: 200, goat: 193, flightClub: 193'),
(61,'stockX: 167, goat: 152, flightClub: 144'),
(62,'stockX: 169, goat: 151, flightClub: 145'),
(63,'stockX: 142, goat: 121, flightClub: 121'),
(64,'stockX: 94'),
(65,'stockX: 129, flightClub: 97, goat: 112'),
(66,'stockX: 137, flightClub: 99, goat: 112'),
(67,'stockX: 139, goat: 126, flightClub: 120'),
(68,'stockX: 182, goat: 166, flightClub: 160'),
(69,'stockX: 133, goat: 115, flightClub: 111'),
(70,'stockX: 120, goat: 115, flightClub: 105'),
(71,'stockX: 177, goat: 183, flightClub: 183'),
(72,'stockX: 145, goat: 127, flightClub: 127'),
(73,'stockX: 149, flightClub: 127, goat: 146'),
(74,'stockX: 81, goat: 73, flightClub: 70'),
(75,'stockX: 122, flightClub: 99, goat: 110'),
(76,'stockX: 390, flightClub: 445, goat: 445'),
(77,'stockX: 98, flightClub: 80, goat: 80'),
(78,'stockX: 171, flightClub: 154, goat: 154')
;


DROP PROCEDURE all_credentials;

CREATE PROCEDURE all_credentials()
BEGIN
    SELECT DISTINCT owner_table.*
    FROM owner_table
    JOIN owner_authentication
    ON owner_table.owner_id = owner_authentication.owner_id;
END;
call all_credentials();



