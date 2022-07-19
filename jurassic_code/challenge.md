
**NOTE: TRANSLATE TO ENGLISH WITH GOOGLE TRANSLATE**

**Jurassic Code**

Mayroong N puntos (numero mula 0 hanggang N−1) sa isang eroplano. Ang bawat punto ay may kulay alinman sa pula ('R') o berde ('G'). Ang K-th point ay matatagpuan sa mga coordinate (X[K], Y[K]) at ang kulay nito ay mga kulay[K]. Walang punto ang nakasalalay sa mga coordinate (0, 0).

Gusto naming gumuhit ng isang bilog na nakasentro sa mga coordinate (0, 0), upang ang bilang ng mga pulang punto at berdeng mga punto sa loob ng bilog ay pantay. Ano ang maximum na bilang ng mga puntos na maaaring nasa loob ng naturang bilog? Tandaan na laging posible na gumuhit ng isang bilog na walang mga puntos sa loob.

Sumulat ng isang function:

class Solution { public int solution(int[] X, int[] Y, String colors); }

na, na binigyan ng dalawang array ng mga integer X, Y at isang string na kulay, ay nagbabalik ng isang integer na tumutukoy sa maximum na bilang ng mga puntos sa loob ng isang bilog na naglalaman ng pantay na bilang ng mga pulang puntos at berdeng mga punto.

Mga halimbawa:

1. Dahil sa X = [4, 0, 2, −2], Y = [4, 1, 2, −3] at mga kulay = "RGRR", ang iyong function ay dapat bumalik ng 2. Ang bilog ay naglalaman ng mga puntos (0, 1) at (2, 2), ngunit hindi mga puntos (−2, −3) at (4, 4).

Ang larawan ay naglalarawan ng unang halimbawa ng pagsubok.

2. Dahil sa X = [1, 1, −1, −1], Y = [1, −1, 1, −1] at mga kulay = "RGRG", ang iyong function ay dapat bumalik ng 4. Ang lahat ng mga punto ay nasa loob ng bilog.

Ang larawan ay naglalarawan ng pangalawang halimbawa ng pagsubok.

3. Dahil sa X = [1, 0, 0], Y = [0, 1, −1] at mga kulay = "GGR", ang iyong function ay dapat magbalik ng 0. Anumang bilog na naglalaman ng higit sa zero na puntos ay may hindi pantay na bilang ng berde at mga pulang puntos.

Ang larawan ay naglalarawan ng ikatlong halimbawa ng pagsubok.

4. Dahil sa X = [5, −5, 5], Y = [1, −1, −3] at mga kulay = "GRG", ang iyong function ay dapat magbalik ng 2.

Inilalarawan ng larawan ang ikaapat na halimbawang pagsubok.

5. Dahil sa X = [3000, −3000, 4100, −4100, −3000], Y = [5000, −5000, 4100, −4100, 5000] at mga kulay = "RRGRG2", ang iyong function ay dapat magbalik ng 2.

Sumulat ng isang mahusay na algorithm para sa mga sumusunod na pagpapalagay:

Ang N ay isang integer sa loob ng hanay [1..100,000];
bawat elemento ng arrays X at Y ay isang integer sa loob ng range [−20,000..20,000];
ang mga kulay ng string ay binubuo lamang ng mga character na "R" at/o "G";
walang punto ang nakasalalay sa mga coordinate (0, 0).