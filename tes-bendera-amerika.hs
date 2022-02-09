-- ini bintangnya belum lengkap

import Graphics.Gloss

main :: IO ()
--main = putStrLn "Hello, Haskell!"
main = display window background drawing
       where 
           -- nice window ukuran 200,200 px di posisi layar 0,0
        window = InWindow "Nice Window" (600, 600) (0, 0)
        background = white
        drawing = picture

picture = pictures [
    -- translate 100,100 posisi circle solid
                    --translate 100 100 (color blue (circleSolid 60)),
                    --translate 0 100 (color red (circleSolid 25)),
                --    color green (segitiga)
                    --star
                    translate 10 100 (color red (segiempatBesar)),
                    translate 10 170 (color white (panjang1)),
                    translate 10 140 (color white (panjang1)),
                    translate 10 110 (color white (panjang1)),
                    translate 10 80 (color white (panjang1)),
                    translate 10 50 (color white (panjang1)),
                    translate 10 20 (color white (panjang1)),
                    translate 10 100 (color blue (segiempatKecil)),
                    translate (-100) 160 (color white (bintang))
                   ]

--picture = translate 50 0 triangle
--triangle = line [(0,0),(10,-70),(-10,-70),(0,0)]
--segitiga = polygon [(-75,-100),(0,87),(75,-100)]
--star = polygon [(20,1),(10,20),(40,20),(20,0),(30,-30),(0,-10),(-30,-30),(-20,0),(-20,1),(-40,20),(-10,20),(0,40)]

-- bikin bendera amerika
segiempatBesar = polygon [(-200,100),(200,100),(200,-100),(-200,-100)]
panjang1 = polygon [(-200,14),(200,14),(200,0),(-200,0)]
segiempatKecil = polygon [(-200,100),(0,100),(0,10),(-200,10)]
bintang = polygon [
                   (0,4),
                   (2,2),
                   (4,2),
                   (2,0),
                   (4,-2),
                   (0,-1),
                   (-4,-2),
                   (-2,0),
                   (-4,2),
                   (-2,2)
                   ]
