/* MSDS 6390 - Homework 2 - 5/25/17                                            *
 * Alex Frye, Chris Boomhower                                                  *
 * Description: This is a cartoon rendition of a silly picture of Chris' son,  *
 *              the family clown, and is titled, "Boogers"                     *
 *                                                                             *
 * Resources from which tutorial and example code was gathered and modified:   *
 * //https://processing.org/examples/star.html                                 *
 * //https://processing.org/reference/bezierPoint_.html                        *
 * //https://processing.org/tutorials/pixels/                                  */


PImage pic;
int drawFlag = 0; // don't change this assignment
int debug = 0;  // 0 runs pointillized background; 1 runs debug/dev background toggles

void setup() {
  size(576, 1024);
  pic = loadImage("Original.jpg");
  pic.resize(576, 1024);
  background(0);
  smooth();
  frameRate(1000);
  
  
}

void draw() {

  if(drawFlag == 0){
    // Pick a random point
    int x = int(random(pic.width));
    int y = int(random(pic.height));
    int loc = x + y*pic.width;
    
    // Look up the RGB color in the source image
    loadPixels();
    float r = red(pic.pixels[loc]);
    float g = green(pic.pixels[loc]);
    float b = blue(pic.pixels[loc]);
    noStroke();
    
    // Draw an ellipse at that location with that color
    fill(r,g,b,100);
    ellipse(x,y,50,15);
  }
  else {
    noStroke();
    noFill();

    if (debug == 0) {
      pic = loadImage("Pointillized.jpg");
      background(pic);
    }
    else {
      background(pic);
      
      if (mouseButton == RIGHT) {
        background(0);
      }
      
      if (mouseButton == CENTER) {
        int locx = mouseX;
        int locy = mouseY;
        int locxy = locx + locy*pic.width;
        println(red(pic.pixels[locxy]) + ", " + green(pic.pixels[locxy]) + ", " + blue(pic.pixels[locxy]));
      }
      
      if (mouseButton == LEFT) {
        println("curveVertex(" + mouseX + ", " + mouseY + ");");
      }
    }
    
      // DRAWING CODE STARTS HERE!
      
      // Pants
    fill(79, 91, 107);
    triangle(107, 911, 99, 952, 120, 941);
  
    quad(99, 945, 107, 984, 128, 964, 116, 931);
    
    triangle(105, 974, 118, 1004, 129, 965);

    triangle(111, 1024, 195, 1024, 128, 966);
    
    triangle(314, 1024, 394, 1024, 398, 993);
    
    quad(393, 1024, 394, 992, 423, 968, 440, 1024);
    
    beginShape();
    curveVertex(394, 1024);
    curveVertex(420, 1024);
    curveVertex(457, 987);
    curveVertex(445, 942);
    curveVertex(401, 988);
    curveVertex(416, 975);
    endShape(CLOSE);
    
      // Pants Accent / Detailing
    fill(63, 76, 93);
    noStroke();
    beginShape();
    curveVertex(109, 949);
    curveVertex(109, 949);
    curveVertex(116, 977);
    curveVertex(126, 996);
    curveVertex(124, 1011);
    curveVertex(150, 1021);
    curveVertex(169, 1012);
    curveVertex(158, 1002);
    curveVertex(138, 984);
    curveVertex(123, 967);
    curveVertex(116, 953);
    curveVertex(122, 970);
    curveVertex(122, 970);
    endShape();
    
    fill(41, 42, 44);
    beginShape();
    curveVertex(124, 980);
    curveVertex(124, 980);
    curveVertex(130, 991);
    curveVertex(131, 999);
    curveVertex(139, 1008);
    curveVertex(148, 1012);
    curveVertex(155, 1009);
    curveVertex(141, 992);
    curveVertex(141, 992);
    endShape(CLOSE);

    fill(63, 76, 93);
    beginShape();
    curveVertex(351, 1017);
    curveVertex(351, 1017);
    curveVertex(382, 1017);
    curveVertex(413, 1016);
    curveVertex(421, 1006);
    curveVertex(426, 986);
    curveVertex(439, 974);
    curveVertex(436, 958);
    curveVertex(423, 964);
    curveVertex(412, 992);
    curveVertex(397, 1000);
    curveVertex(370, 1009);
    curveVertex(370, 1009);
    endShape(CLOSE);

    stroke(25, 35, 47);
    strokeWeight(1);
    noFill();
    beginShape();
    curveVertex(116, 936);
    curveVertex(116, 936);
    curveVertex(107, 945);
    curveVertex(104, 954);
    curveVertex(103, 964);
    curveVertex(103, 964);
    endShape();
    
    beginShape();
    curveVertex(117, 941);
    curveVertex(117, 941);
    curveVertex(112, 946);
    curveVertex(110, 951);
    curveVertex(105, 963);
    curveVertex(105, 963);
    endShape();
    
    beginShape();
    curveVertex(418, 965);
    curveVertex(418, 965);
    curveVertex(430, 970);
    curveVertex(437, 980);
    curveVertex(443, 1005);
    curveVertex(443, 1005);
    endShape();
    
    beginShape();
    curveVertex(423, 960);
    curveVertex(423, 960);
    curveVertex(433, 963);
    curveVertex(442, 974);
    curveVertex(445, 984);
    curveVertex(447, 1002);
    curveVertex(447, 1002);
    endShape();
    
    strokeWeight(2);
    beginShape();
    curveVertex(402, 993);
    curveVertex(402, 993);
    curveVertex(413, 1000);
    curveVertex(417, 1012);
    curveVertex(417, 1012);
    endShape();
    
    beginShape();
    curveVertex(404, 1005);
    curveVertex(404, 1005);
    curveVertex(408, 999);
    curveVertex(420, 993);
    curveVertex(420, 993);
    endShape();

    line(398, 996, 408, 989);
    
      //Shirt Bottom
    noStroke();
    fill(104, 46, 34);
    quad(108, 915, 115, 893, 192, 941, 126, 964);
    quad(123, 963, 186, 940, 260, 954, 195, 1024);
    quad(195, 1024, 316, 1024, 321, 951, 238, 952);
    
    beginShape();
    curveVertex(316, 1024);
    curveVertex(316, 1024);
    curveVertex(356, 1010);
    curveVertex(383, 1001);
    curveVertex(401, 987);
    curveVertex(414, 974);
    curveVertex(427, 957);
    curveVertex(439, 945);
    curveVertex(445, 934);
    curveVertex(441, 921);
    curveVertex(439, 919);
    curveVertex(426, 919);
    curveVertex(421, 914);
    curveVertex(411, 915);
    curveVertex(402, 913);
    curveVertex(398, 903);
    curveVertex(397, 893);
    curveVertex(388, 891);
    curveVertex(376, 889);
    curveVertex(372, 883);
    curveVertex(368, 877);
    curveVertex(362, 869);
    curveVertex(366, 859);
    curveVertex(372, 849);
    curveVertex(382, 839);
    curveVertex(372, 837);
    curveVertex(370, 829);
    curveVertex(374, 817);
    curveVertex(376, 806);
    curveVertex(365, 800);
    curveVertex(356, 806);
    curveVertex(347, 804);
    curveVertex(336, 807);
    curveVertex(327, 814);
    curveVertex(333, 820);
    curveVertex(322, 824);
    curveVertex(308, 824);
    curveVertex(298, 827);
    curveVertex(292, 830);
    curveVertex(285, 835);
    curveVertex(276, 840);
    curveVertex(274, 850);
    curveVertex(274, 856);
    curveVertex(277, 862);
    curveVertex(264, 862);
    curveVertex(254, 859);
    curveVertex(248, 850);
    curveVertex(242, 839);
    curveVertex(235, 832);
    curveVertex(231, 832);
    curveVertex(223, 836);
    curveVertex(216, 829);
    curveVertex(209, 823);
    curveVertex(200, 816);
    curveVertex(194, 812);
    curveVertex(183, 813);
    curveVertex(174, 813);
    curveVertex(155, 805);
    curveVertex(145, 793);
    curveVertex(132, 781);
    curveVertex(124, 774);
    curveVertex(114, 763);
    curveVertex(106, 749);
    curveVertex(110, 776);
    curveVertex(113, 801);
    curveVertex(109, 818);
    curveVertex(109, 837);
    curveVertex(109, 855);
    curveVertex(110, 872);
    curveVertex(110, 890);
    curveVertex(122, 906);
    curveVertex(170, 939);
    curveVertex(259, 964);
    curveVertex(277, 996);
    curveVertex(299, 1009);
    curveVertex(299, 1009);
    endShape();
    
    fill(90, 37, 23);
    beginShape();
    curveVertex(137, 865);
    curveVertex(137, 865);
    curveVertex(142, 894);
    curveVertex(154, 914);
    curveVertex(176, 941);
    curveVertex(216, 960);
    curveVertex(274, 944);
    curveVertex(265, 883);
    curveVertex(222, 856);
    curveVertex(181, 832);
    curveVertex(139, 814);
    curveVertex(133, 845);
    curveVertex(133, 845);
    endShape();
    
    fill(97, 38, 22);
    beginShape();
    curveVertex(149, 875);
    curveVertex(149, 875);
    curveVertex(175, 902);
    curveVertex(206, 919);
    curveVertex(234, 917);
    curveVertex(235, 900);
    curveVertex(201, 881);
    curveVertex(161, 849);
    curveVertex(148, 853);
    curveVertex(148, 853);
    endShape();
    
    strokeWeight(2);
    stroke(84, 31, 17);
    noFill();
    beginShape();
    curveVertex(137, 927);
    curveVertex(137, 927);
    curveVertex(170, 961);
    curveVertex(212, 985);
    curveVertex(271, 987);
    curveVertex(325, 983);
    curveVertex(368, 967);
    curveVertex(368, 967);
    endShape();
    
    beginShape();
    curveVertex(120, 865);
    curveVertex(120, 865);
    curveVertex(141, 883);
    curveVertex(161, 894);
    curveVertex(161, 894);
    endShape();
    
    
    beginShape();
    curveVertex(383, 946);
    curveVertex(383, 946);
    curveVertex(391, 925);
    curveVertex(381, 902);
    curveVertex(381, 902);
    endShape();
    
      // Right Arm
    strokeWeight(1.5);
    stroke(55.0, 52.0, 43.0);
    fill(192.0, 161.0, 115.0);
    beginShape();
    curveVertex(519, 657);
    curveVertex(519, 657);
    curveVertex(522, 661);
    curveVertex(528, 685);
    curveVertex(528, 699);
    curveVertex(524, 719);
    curveVertex(498, 790);
    curveVertex(487, 809);
    curveVertex(483, 819);
    curveVertex(477, 792);
    curveVertex(445, 770);
    curveVertex(423, 769);
    curveVertex(431, 754);
    curveVertex(437, 743);
    curveVertex(437, 717);
    curveVertex(436, 696);
    curveVertex(435, 687);
    curveVertex(435, 687);
    endShape();
    
    noStroke();
    fill(104, 46, 34);
    quad(422, 760, 293, 825, 416, 924, 441, 922);
    
    fill(55.0, 52.0, 43.0);
    ellipse(406, 796, 30, 50);
    
      //Shirt Top
    strokeWeight(2);
    noStroke();
    fill(104, 46, 34);
    beginShape();
    curveVertex(389, 793);
    curveVertex(389, 793);
    curveVertex(395, 784);
    curveVertex(400, 776);
    curveVertex(411, 771);
    curveVertex(423, 765);
    curveVertex(421, 744);
    curveVertex(423, 728);
    curveVertex(424, 712);
    curveVertex(426, 690);
    curveVertex(434, 698);
    curveVertex(447, 692);
    curveVertex(457, 692);
    curveVertex(465, 684);
    curveVertex(482, 672);
    curveVertex(502, 667);
    curveVertex(517, 665);
    curveVertex(526, 656);
    curveVertex(520, 634);
    curveVertex(515, 620);
    curveVertex(507, 603);
    curveVertex(493, 567);
    curveVertex(478, 532);
    curveVertex(465, 513);
    curveVertex(450, 492);
    curveVertex(425, 479);
    curveVertex(402, 468);
    curveVertex(379, 467);
    curveVertex(349, 454);
    curveVertex(353, 473);
    curveVertex(353, 500);
    curveVertex(344, 528);
    curveVertex(329, 543);
    curveVertex(312, 554);
    curveVertex(284, 570);
    curveVertex(257, 575);
    curveVertex(219, 580);
    curveVertex(191, 569);
    curveVertex(169, 558);
    curveVertex(151, 541);
    curveVertex(142, 523);
    curveVertex(135, 503);
    curveVertex(135, 488);
    curveVertex(143, 484);
    curveVertex(132, 473);
    curveVertex(127, 466);
    curveVertex(112, 478);
    curveVertex(92, 484);
    curveVertex(69, 496);
    curveVertex(53, 509);
    curveVertex(45, 526);
    curveVertex(39, 554);
    curveVertex(31, 573);
    curveVertex(24, 595);
    curveVertex(23, 615);
    curveVertex(14, 633);
    curveVertex(1, 644);
    curveVertex(0, 670);
    curveVertex(1, 698);
    curveVertex(13, 698);
    curveVertex(13, 680);
    curveVertex(16, 664);
    curveVertex(21, 651);
    curveVertex(30, 632);
    curveVertex(50, 615);
    curveVertex(79, 605);
    curveVertex(107, 597);
    curveVertex(113, 607);
    curveVertex(114, 621);
    curveVertex(101, 631);
    curveVertex(97, 638);
    curveVertex(107, 644);
    curveVertex(117, 635);
    curveVertex(138, 643);
    curveVertex(164, 651);
    curveVertex(191, 656);
    curveVertex(260, 659);
    curveVertex(261, 654);
    curveVertex(264, 656);
    curveVertex(264, 664);
    curveVertex(274, 664);
    curveVertex(286, 664);
    curveVertex(292, 664);
    curveVertex(285, 675);
    curveVertex(292, 679);
    curveVertex(305, 665);
    curveVertex(311, 672);
    curveVertex(323, 665);
    curveVertex(334, 669);
    curveVertex(321, 677);
    curveVertex(314, 683);
    curveVertex(315, 692);
    curveVertex(315, 701);
    curveVertex(314, 710);
    curveVertex(319, 711);
    curveVertex(325, 708);
    curveVertex(321, 697);
    curveVertex(319, 691);
    curveVertex(319, 686);
    curveVertex(322, 683);
    curveVertex(333, 673);
    curveVertex(344, 679);
    curveVertex(343, 689);
    curveVertex(351, 686);
    curveVertex(356, 697);
    curveVertex(350, 703);
    curveVertex(355, 705);
    curveVertex(363, 692);
    curveVertex(367, 682);
    curveVertex(380, 665);
    curveVertex(389, 651);
    curveVertex(398, 641);
    curveVertex(402, 632);
    curveVertex(406, 618);
    curveVertex(418, 612);
    curveVertex(423, 625);
    curveVertex(415, 634);
    curveVertex(415, 648);
    curveVertex(413, 663);
    curveVertex(405, 679);
    curveVertex(402, 689);
    curveVertex(402, 707);
    curveVertex(404, 715);
    curveVertex(404, 731);
    curveVertex(398, 740);
    curveVertex(389, 754);
    curveVertex(381, 765);
    curveVertex(381, 780);
    curveVertex(381, 780);
    endShape(CLOSE);
    
    quad(5, 647, 10, 695, 143, 591, 54, 593);
    
    fill(25, 150);
    beginShape();
    curveVertex(112, 615);
    curveVertex(112, 615);
    curveVertex(112, 606);
    curveVertex(104, 601);
    curveVertex(93, 604);
    curveVertex(89, 609);
    curveVertex(83, 607);
    curveVertex(69, 615);
    curveVertex(51, 621);
    curveVertex(37, 630);
    curveVertex(32, 642);
    curveVertex(32, 642);
    endShape(CLOSE);

      // Shirt Top Accents
    
    fill(97, 41, 40);
    stroke(97, 41, 40);
    
    beginShape();
    curveVertex(279, 623);
    curveVertex(279, 623);
    curveVertex(278, 627);
    curveVertex(279, 632);
    curveVertex(285, 635);
    curveVertex(292, 633);
    curveVertex(293, 629);
    curveVertex(294, 623);
    endShape(CLOSE);
    
    beginShape();
    curveVertex(312, 605);
    curveVertex(312, 605);
    curveVertex(312, 611);
    curveVertex(310, 613);
    curveVertex(311, 620);
    curveVertex(314, 623);
    curveVertex(314, 631);
    curveVertex(316, 635);
    curveVertex(318, 635);
    curveVertex(321, 629);
    curveVertex(321, 621);
    curveVertex(319, 616);
    curveVertex(317, 609);
    curveVertex(317, 602);
    curveVertex(314, 600);
    curveVertex(314, 600);
    endShape(CLOSE);
    
    
    strokeWeight(2);
    stroke(84, 31, 17);
    noFill();
    
    beginShape();
    curveVertex(358, 488);
    curveVertex(358, 488);
    curveVertex(376, 494);
    curveVertex(400, 498);
    curveVertex(431, 508);
    curveVertex(444, 517);
    curveVertex(444, 517);
    endShape();

    beginShape();
    curveVertex(359, 479);
    curveVertex(359, 479);
    curveVertex(377, 486);
    curveVertex(389, 488);
    curveVertex(401, 492);
    curveVertex(419, 496);
    curveVertex(441, 505);
    curveVertex(450, 513);
    curveVertex(450, 513);
    endShape();

    beginShape();
    curveVertex(422, 537);
    curveVertex(422, 537);
    curveVertex(417, 569);
    curveVertex(419, 597);
    curveVertex(419, 597);
    endShape();
    
    beginShape();
    curveVertex(416, 540);
    curveVertex(416, 540);
    curveVertex(411, 561);
    curveVertex(407, 579);
    curveVertex(408, 593);
    curveVertex(408, 593);
    endShape();

    beginShape();
    curveVertex(437, 666);
    curveVertex(437, 666);
    curveVertex(464, 659);
    curveVertex(485, 652);
    curveVertex(500, 640);
    curveVertex(500, 640);
    endShape();
    
    beginShape();
    curveVertex(57, 525);
    curveVertex(57, 525);
    curveVertex(76, 512);
    curveVertex(91, 500);
    curveVertex(115, 492);
    curveVertex(123, 488);
    curveVertex(123, 488);
    endShape();

    beginShape();
    curveVertex(53, 519);
    curveVertex(53, 519);
    curveVertex(65, 512);
    curveVertex(72, 505);
    curveVertex(78, 499);
    curveVertex(86, 494);
    curveVertex(105, 489);
    curveVertex(118, 484);
    curveVertex(118, 484);
    endShape();

    beginShape();
    curveVertex(94, 527);
    curveVertex(94, 527);
    curveVertex(90, 547);
    curveVertex(89, 564);
    curveVertex(90, 582);
    curveVertex(90, 582);

    endShape();
    
      // USA
    noStroke();
    fill(24, 27, 42);
    beginShape();
    curveVertex(106, 739);
    curveVertex(106, 739);
    curveVertex(110, 717);
    curveVertex(119, 715);
    curveVertex(117, 698);
    curveVertex(103, 688);
    curveVertex(112, 670);
    
    curveVertex(107, 644);
    curveVertex(117, 635);
    curveVertex(138, 643);
    curveVertex(164, 651);
    curveVertex(191, 656);
    curveVertex(260, 659);
    curveVertex(261, 654);
    curveVertex(264, 656);
    curveVertex(264, 664);
    curveVertex(274, 664);
    curveVertex(286, 664);
    curveVertex(292, 664);
    curveVertex(285, 675);
    curveVertex(292, 679);
    curveVertex(305, 665);
    curveVertex(311, 672);
    curveVertex(323, 665);
    curveVertex(334, 669);
    curveVertex(321, 677);
    curveVertex(314, 683);
    curveVertex(315, 692);
    curveVertex(315, 701);
    curveVertex(314, 710);
    curveVertex(319, 711);
    curveVertex(325, 708);
    curveVertex(321, 697);
    curveVertex(319, 691);
    curveVertex(319, 686);
    curveVertex(322, 683);
    curveVertex(333, 673);
    curveVertex(344, 679);
    curveVertex(343, 689);
    curveVertex(351, 686);
    curveVertex(356, 697);
    curveVertex(350, 703);
    curveVertex(355, 705);
    curveVertex(363, 692);
    curveVertex(367, 682);
    curveVertex(380, 665);
    curveVertex(389, 651);
    curveVertex(398, 641);
    curveVertex(402, 632);
    curveVertex(406, 618);
    curveVertex(418, 612);
    curveVertex(423, 625);
    curveVertex(415, 634);
    curveVertex(415, 648);
    curveVertex(413, 663);
    curveVertex(405, 679);
    curveVertex(402, 689);
    curveVertex(402, 707);
    curveVertex(404, 715);
    curveVertex(404, 731);
    curveVertex(398, 740);
    curveVertex(389, 754);
    curveVertex(381, 765);
    curveVertex(383, 784);
    curveVertex(383, 786);
    curveVertex(389, 793);
    
    curveVertex(376, 806);
    curveVertex(365, 800);
    curveVertex(356, 806);
    curveVertex(347, 804);
    curveVertex(336, 807);
    curveVertex(327, 814);
    curveVertex(333, 820);
    curveVertex(322, 824);
    curveVertex(308, 824);
    curveVertex(298, 827);
    curveVertex(292, 830);
    curveVertex(285, 835);
    curveVertex(276, 840);
    curveVertex(274, 850);
    curveVertex(274, 856);
    curveVertex(277, 862);
    curveVertex(264, 862);
    curveVertex(254, 859);
    curveVertex(248, 850);
    curveVertex(242, 839);
    curveVertex(235, 832);
    curveVertex(231, 832);
    curveVertex(223, 836);
    curveVertex(216, 829);
    curveVertex(209, 823);
    curveVertex(200, 816);
    curveVertex(194, 812);
    curveVertex(183, 813);
    curveVertex(174, 813);
    curveVertex(155, 805);
    curveVertex(145, 793);
    curveVertex(132, 781);
    curveVertex(124, 774);
    curveVertex(114, 763);
    curveVertex(106, 749);
    curveVertex(106, 749);

    endShape(CLOSE);
    
    rect(97, 657, 16, 80);


      // USA Dotted Line
    strokeWeight(3);
    fill(255);
    stroke(255);
    int steps = 10;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(371, 362, 370, 386, t);
      float y = bezierPoint(788, 763, 743, 724, t);
      point(x, y);
    }

    steps = 4;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(386, 384, 384, 382, t);
      float y = bezierPoint(724, 724, 697, 697, t);
      point(x, y);
    }

    steps = 10;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(382, 397, 404, 385, t);
      float y = bezierPoint(697, 665, 638, 659, t);
      point(x, y);
    }

    steps = 4;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(385, 385, 376, 376, t);
      float y = bezierPoint(659, 659, 685, 685, t);
      point(x, y);
    }

    steps = 8;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(376, 358, 347, 338, t);
      float y = bezierPoint(685, 715, 712, 692, t);
      point(x, y);
    }


    steps = 2;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(338, 338, 325, 325, t);
      float y = bezierPoint(692, 692, 689, 689, t);
      point(x, y);
    }
    
    steps = 8;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(325, 326, 326, 332, t);
      float y = bezierPoint(689, 703, 725, 740, t);
      point(x, y);
    }


    steps = 2;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(332, 332, 318, 318, t);
      float y = bezierPoint(740, 740, 753, 753, t);
      point(x, y);
    }

    steps = 8;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(318, 302, 276, 264, t);
      float y = bezierPoint(753, 747, 733, 722, t);
      point(x, y);
    }

    steps = 3;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(264, 264, 240, 240, t);
      float y = bezierPoint(722, 722, 712, 712, t);
      point(x, y);
    }

    steps = 12;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(240, 202, 166, 139, t);
      float y = bezierPoint(712, 702, 698, 698, t);
      point(x, y);
    }


    steps = 2;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(139, 139, 128, 128, t);
      float y = bezierPoint(698, 698, 705, 705, t);
      point(x, y);
    }

    steps = 8;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(128, 119, 108, 108, t);
      float y = bezierPoint(705, 722, 708, 693, t);
      point(x, y);
    }
        

    steps = 2;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(108, 108, 121, 121, t);
      float y = bezierPoint(693, 693, 685, 685, t);
      point(x, y);
    }

    steps = 4;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(121, 130, 122, 114, t);
      float y = bezierPoint(685, 677, 670, 670, t);
      point(x, y);
    }


    steps = 2;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(114, 114, 107, 107, t);
      float y = bezierPoint(670, 670, 677, 677, t);
      point(x, y);
    }

    steps = 6;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(107, 106, 110, 122, t);
      float y = bezierPoint(677, 666, 658, 652, t);
      point(x, y);
    }


    steps = 2;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(122, 122, 141, 141, t);
      float y = bezierPoint(652, 652, 657, 657, t);
      point(x, y);
    }

    steps = 8;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(141, 144, 176, 189, t);
      float y = bezierPoint(657, 667, 663, 672, t);
      point(x, y);
    }


    steps = 4;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(189, 189, 219, 219, t);
      float y = bezierPoint(672, 672, 669, 669, t);
      point(x, y);
    }

    steps = 10;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(219, 241, 270, 289, t);
      float y = bezierPoint(669, 684, 686, 698, t);
      point(x, y);
    }


    steps = 2;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(289, 289, 292, 292, t);
      float y = bezierPoint(698, 698, 712, 712, t);
      point(x, y);
    }

    steps = 10;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(292, 293, 290, 241, t);
      float y = bezierPoint(712, 735, 760, 746, t);
      point(x, y);
    }


    steps = 4;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(241, 241, 209, 209, t);
      float y = bezierPoint(746, 746, 744, 744, t);
      point(x, y);
    }

    steps = 10;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(209, 213, 196, 155, t);
      float y = bezierPoint(744, 780, 780, 748, t);
      point(x, y);
    }


    steps = 4;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(155, 155, 149, 149, t);
      float y = bezierPoint(748, 748, 727, 727, t);
      point(x, y);
    }

    steps = 10;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(149, 127, 134, 148, t);
      float y = bezierPoint(727, 733, 760, 778, t);
      point(x, y);
    }


    steps = 4;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(148, 148, 166, 166, t);
      float y = bezierPoint(778, 778, 787, 787, t);
      point(x, y);
    }

    steps = 10;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(166, 202, 211, 236, t);
      float y = bezierPoint(787, 795, 810, 812, t);
      point(x, y);
    }


    steps = 4;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(236, 236, 255, 255, t);
      float y = bezierPoint(812, 812, 839, 839, t);
      point(x, y);
    }

    steps = 10;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(255, 273, 304, 312, t);
      float y = bezierPoint(839, 814, 812, 799, t);
      point(x, y);
    }


    steps = 4;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(312, 312, 299, 299, t);
      float y = bezierPoint(799, 799, 785, 785, t);
      point(x, y);
    }

    steps = 10;
    for (int i = 0; i <= steps; i++) {
      float t = i / float(steps);
      float x = bezierPoint(299, 332, 350, 366, t);
      float y = bezierPoint(785, 773, 774, 787, t);
      point(x, y);
    }

      // USA Figures
        //Tree
        float x = 130;
        float y = 620;
        fill(133, 202, 94);
        noStroke();
        triangle(0 + x,0  + y, -10 + x,15 + y, 10 + x,15 + y);
        triangle(0 + x,8  + y, -15 + x,28 + y, 15 + x,28 + y);
        triangle(0 + x,20 + y, -22 + x,42 + y, 22 + x,42 + y);
        
        fill(20, 98, 21);
        beginShape();
        curveVertex(0 + x,  8  + y);
        curveVertex(0 + x,  8  + y);
        curveVertex(-15 + x,28 + y);
        curveVertex(0 + x,  15 + y);
        curveVertex(15 + x, 28 + y);
        curveVertex(15 + x, 28 + y);
        endShape(CLOSE);

        beginShape();
        curveVertex(0 + x,  20 + y);
        curveVertex(0 + x,  20 + y);
        curveVertex(-22 + x,42 + y);
        curveVertex(0 + x,  27 + y);
        curveVertex(22 + x, 42 + y);
        curveVertex(22 + x, 42 + y);
        endShape(CLOSE);


        strokeWeight(4);
        stroke(133, 202, 94);
        line(0 + x,42 + y, 0 + x, 60 + y);
        stroke(20, 98, 21);
        strokeWeight(2);
        line(-3 + x,42 + y, -3 + x, 60 + y);
        
        strokeWeight(2.5);
        stroke(20, 98, 21);
        line(-22 + x,42 + y, 22 + x, 42 + y);

        //Tent
        x = 175;
        y = 702;
        fill(123, 125, 19);
        noStroke();
        quad(-4 + x, 3 + y, 12 + x, 6 + y, 20 + x, -10 + y, 5 + x, -15 + y);
        triangle(22 + x, -9 + y, 13 + x, 6 + y, 19 + x, 5 + y);
        triangle(23 + x, -9 + y, 23 + x, 4 + y, 28 + x, 3 + y);
        
        //Plane
        x = 222;
        y = 650;
        fill(58, 50, 67);
        stroke(58, 50, 67);
        strokeWeight(3);
        line(5 + x, 5 + y, 5 + x, 15 + y);
        strokeWeight(2);
        line(0 + x, 10 + y, 5 + x, 10 + y);
        strokeWeight(1);
        triangle(5 + x, 10 + y, 15 + x, 6 + y, 15 + x, 14 + y);
        quad(15 + x, 6 + y, 15 + x, 14 + y, 20 + x, 13 + y, 20 + x, 7 + y);
        triangle(20 + x, 7 + y, 20 + x, 13 + y, 32 + x, 10 + y);
        
        strokeWeight(2);
        beginShape();
        curveVertex(15 + x, 6 + y);
        curveVertex(15 + x, 6 + y);
        curveVertex(11 + x, 2 + y);
        curveVertex(12.5 + x, 0 + y);
        curveVertex(14 + x, 2 + y);        
        curveVertex(20 + x, 7 + y);
        curveVertex(20 + x, 7 + y);
        endShape(CLOSE);
        
        beginShape();
        curveVertex(15 + x, 14 + y);
        curveVertex(15 + x, 14 + y);
        curveVertex(11 + x, 18 + y);
        curveVertex(12.5 + x, 20 + y);
        curveVertex(14 + x, 18 + y);      
        curveVertex(20 + x, 13 + y);
        curveVertex(20 + x, 13 + y);
        endShape(CLOSE);      
        
        beginShape();
        curveVertex(26 + x, 10 + y);
        curveVertex(26 + x, 10 + y);
        curveVertex(27 + x, 5 + y);
        curveVertex(23 + x, 3 + y);
        curveVertex(23 + x, 3 + y);
        endShape();      
        
        beginShape();
        curveVertex(26 + x, 10 + y);
        curveVertex(26 + x, 10 + y);
        curveVertex(27 + x, 15 + y);
        curveVertex(23 + x, 18 + y);
        curveVertex(23 + x, 18 + y);
        endShape();                     

        fill(117, 122, 128);
        stroke(117, 122, 128);
        strokeWeight(1);
        line(6 + x, 5 + y, 6 + x, 15 + y);
        line(0 + x, 9 + y, 3.5 + x, 9 + y);
        line(7 + x, 8 + y, 14 + x, 6 + y);

        noFill();
        beginShape();
        curveVertex(12 + x, 18 + y);
        curveVertex(12 + x, 18 + y);
        curveVertex(13.5 + x, 20 + y);
        curveVertex(15 + x, 18 + y);      
        curveVertex(20 + x, 14 + y);
        curveVertex(20 + x, 14 + y);
        endShape(); 

        beginShape();
        curveVertex(12 + x, 2 + y);
        curveVertex(12 + x, 2 + y);
        curveVertex(13.5 + x, 0 + y);
        curveVertex(15 + x, 2 + y);        
        curveVertex(20 + x, 6 + y);
        curveVertex(20 + x, 6 + y);
        endShape();

        line(21 + x, 6 + y, 31 + x, 9 + y);

        beginShape();
        curveVertex(27 + x, 9 + y);
        curveVertex(27 + x, 9 + y);
        curveVertex(28 + x, 6 + y);
        curveVertex(24 + x, 4 + y);
        curveVertex(24 + x, 4 + y);
        endShape();      
        
        beginShape();
        curveVertex(27 + x, 11 + y);
        curveVertex(27 + x, 11 + y);
        curveVertex(28 + x, 14 + y);
        curveVertex(24 + x, 17 + y);
        curveVertex(24 + x, 17 + y);
        endShape();  

        stroke(57, 8, 17);
        strokeWeight(2);
        line(15 + x, 14 + y, 20 + x, 13 + y);
        line(15 + x, 6 + y, 20 + x, 7 + y);

        //Wagon
        x = 270;
        y = 741;
        noFill();
        stroke(105, 36, 34);
        strokeWeight(3);
        ellipse(0 + x, 0 + y, 20, 20);

        fill(105, 36, 34);
        ellipse(0 + x, 0 + y, 5, 5);
        
        line(0 + x, 0 + y,  10 + x, 0 + y);
        line(0 + x, 0 + y, -25 + x, 0 + y);
        line(0 + x, 0 + y, 0 + x,  10 + y);
        line(0 + x, 0 + y, 0 + x, -10 + y);
        
        noFill();
        strokeWeight(2);
        ellipse(-27 + x, 2 + y, 8, 8);
        line(-27 + x, 2 + y,  -23 + x, 2 + y);
        line(-27 + x, 2 + y, -31 + x, 2 + y);
        line(-27 + x, 2 + y, -27 + x, 6 + y);
        line(-27 + x, 2 + y, -27 + x, -2 + y);
        
        fill(105, 36, 34);
        quad(-13 + x, -2 + y, -13 + x, -10 + y, -30 + x, -12 + y, -30 + x, -4 + y);
        
        line(-22 + x, -11 + y,  -22 + x, -17 + y);
        line(-26 + x, -11 + y,  -26 + x, -14 + y);
        
        //Cactus
        x = 176;
        y = 770;
        strokeWeight(3);
        noFill();
        stroke(75, 138, 64);
        
        strokeJoin(ROUND);
        strokeCap(ROUND);
        
        beginShape();
        curveVertex(0 + x, 0 + y);
        curveVertex(0 + x, 0 + y);
        curveVertex(0 + x, 10 + y);
        curveVertex(4 + x, 14 + y);
        curveVertex(16 + x, 14 + y);
        curveVertex(20 + x, 10 + y);
        curveVertex(20 + x, 0 + y);
        curveVertex(20 + x, 0 + y);
        endShape();
        
        line(10 + x, -12 + y, 10 + x, 36 + y);

        strokeJoin(MITER);
        strokeCap(MITER);
        
        //Star
        x = 253;
        y = 819;
        fill(73, 78, 83); 
        noStroke();
        beginShape();
        line(-3.5 + x, 0 + y, 0 + x, -3.5 + y);
        endShape(CLOSE);
        
        star(x, y, 7, 20, 5);

        //Horse
        x = 321;
        y = 776;
        fill(96, 85, 10);
        noStroke();
        beginShape();
        curveVertex(x + 23, y + 7);
        curveVertex(x + 23, y + 7);
        curveVertex(x + 21, y + 7);
        curveVertex(x + 20, y + 8);
        curveVertex(x + 20, y + 6);
        curveVertex(x + 20, y + 4);
        curveVertex(x + 21, y + 0);
        curveVertex(x + 22, y + -4);
        curveVertex(x + 21, y + -8);
        curveVertex(x + 18, y + -10);
        curveVertex(x + 14, y + -11);
        curveVertex(x + 8, y + -10);
        curveVertex(x + 0, y + -8);
        curveVertex(x + -2, y + -10);
        curveVertex(x + -3, y + -14);
        curveVertex(x + -9, y + -17);
        curveVertex(x + -13, y + -17);
        curveVertex(x + -15, y + -20);
        curveVertex(x + -16, y + -15);
        curveVertex(x + -21, y + -16);
        curveVertex(x + -21, y + -12);
        curveVertex(x + -21, y + -8);
        curveVertex(x + -22, y + -6);
        curveVertex(x + -22, y + -2);
        curveVertex(x + -23, y + 0);
        curveVertex(x + -20, y + 0);
        curveVertex(x + -16, y + 0);
        curveVertex(x + -15, y + -5);
        curveVertex(x + -13, y + -1);
        curveVertex(x + -14, y + 3);
        curveVertex(x + -17, y + 7);
        curveVertex(x + -21, y + 10);
        curveVertex(x + -20, y + 15);
        curveVertex(x + -15, y + 18);
        curveVertex(x + -12, y + 15);
        curveVertex(x + -14, y + 13);
        curveVertex(x + -16, y + 13);
        curveVertex(x + -16, y + 11);
        curveVertex(x + -13, y + 11);
        curveVertex(x + -11, y + 12);
        curveVertex(x + -9, y + 13);
        curveVertex(x + -8, y + 16);
        curveVertex(x + -7, y + 23);
        curveVertex(x + -7, y + 27);
        curveVertex(x + -4, y + 27);
        curveVertex(x + -2, y + 26);
        curveVertex(x + -2, y + 22);
        curveVertex(x + -1, y + 16);
        curveVertex(x + -2, y + 11);
        curveVertex(x + 0, y + 10);
        curveVertex(x + 3, y + 13);
        curveVertex(x + 3, y + 17);
        curveVertex(x + 4, y + 21);
        curveVertex(x + 7, y + 21);
        curveVertex(x + 8, y + 19);
        curveVertex(x + 8, y + 15);
        curveVertex(x + 8, y + 14);
        curveVertex(x + 9, y + 10);
        curveVertex(x + 10, y + 15);
        curveVertex(x + 10, y + 19);
        curveVertex(x + 11, y + 21);
        curveVertex(x + 12, y + 23);
        curveVertex(x + 15, y + 20);
        curveVertex(x + 15, y + 17);
        curveVertex(x + 16, y + 11);
        curveVertex(x + 16, y + 9);
        curveVertex(x + 15, y + 3);
        curveVertex(x + 17, y + -2);
        curveVertex(x + 17, y + 7);
        curveVertex(x + 21, y + 12);
        curveVertex(x + 21, y + 12);
        endShape(CLOSE);
        
        //Truck
        x = 341;
        y = 719;
        fill(56, 55, 63);
        
        beginShape();
        curveVertex(x + -22, y + 9);
        curveVertex(x + -22, y + 9);
        curveVertex(x + -27, y + 10);
        curveVertex(x + -29, y + 2);
        curveVertex(x + -5, y + -2);
        curveVertex(x + 16, y + -6);
        curveVertex(x + 29, y + -10);
        curveVertex(x + 30, y + -4);
        curveVertex(x + 25, y + -2);
        curveVertex(x + 23, y + -4);
        curveVertex(x + 20, y + -4);
        curveVertex(x + 16, y + -2);
        curveVertex(x + 12, y + 2);
        curveVertex(x + -7, y + 7);
        curveVertex(x + -8, y + 4);
        curveVertex(x + -12, y + 3);
        curveVertex(x + -17, y + 3);
        curveVertex(x + -20, y + 6);
        curveVertex(x + -22, y + 9);
        curveVertex(x + -22, y + 9);
        endShape(CLOSE);
        
        noFill();
        stroke(56, 55, 63);
        beginShape();
        curveVertex(x + -5, y + -2);
        curveVertex(x + -5, y + -2);
        curveVertex(x + -5, y + -10);
        curveVertex(x + 11, y + -14);
        curveVertex(x + 16, y + -6);
        curveVertex(x + 16, y + -6);
        endShape();

        stroke(76, 83, 89);
        strokeWeight(3);
        ellipse(-15 + x, 9 + y, 8, 8);
        ellipse(20  + x, 3 + y, 8, 8);
        
        strokeWeight(2);
        beginShape();
        curveVertex(x + -6, y + 8);
        curveVertex(x + -6, y + 8);
        curveVertex(x + 3, y + 6);
        curveVertex(x + 12, y + 5);
        curveVertex(x + 12, y + 5);
        endShape();
        
        //Anchor
        x = 398;
        y = 636;
        strokeWeight(2);
        noFill();
        stroke(169, 142, 55);
        
        ellipse(0 + x, 0 + y, 5, 5);
        line(-11 + x, 5 + y, 8 + x, 6 + y);
        
        strokeWeight(3);
        line(x + -2, y + 9, x + -3, y + 29);

        beginShape();
        curveVertex(x + -15, y + 15);
        curveVertex(x + -15, y + 15);
        curveVertex(x + -13, y + 25);
        curveVertex(x + -11, y + 28);
        curveVertex(x + -8, y + 30);
        curveVertex(x + -4, y + 30);
        curveVertex(x + 2, y + 27);
        curveVertex(x + 6, y + 22);
        curveVertex(x + 7, y + 15);
        curveVertex(x + 7, y + 15);
        endShape();
        
        //palm tree
        x = 393;
        y = 763;
        strokeWeight(2);
        fill(74.0, 21.0, 23.0);
        stroke(74.0, 21.0, 23.0);
        
        beginShape();
        curveVertex(x + 0, y + 0);
        curveVertex(x + 0, y + 0);
        curveVertex(x + -2, y + -5);
        curveVertex(x + -2, y + -9);
        curveVertex(x + -3, y + -13);
        curveVertex(x + -3, y + -13);
        endShape();

        beginShape();
        curveVertex(x + -3, y + -15);
        curveVertex(x + -3, y + -15);
        curveVertex(x + -6, y + -13);
        curveVertex(x + -6, y + -12);
        curveVertex(x + -7, y + -12);
        curveVertex(x + -10, y + -12);
        curveVertex(x + -11, y + -12);
        curveVertex(x + -10, y + -18);
        curveVertex(x + -9, y + -19);
        curveVertex(x + -9, y + -20);
        curveVertex(x + -9, y + -20);
        curveVertex(x + -9, y + -20);
        curveVertex(x + -12, y + -19);
        curveVertex(x + -13, y + -18);
        curveVertex(x + -14, y + -17);
        curveVertex(x + -16, y + -17);
        curveVertex(x + -17, y + -17);
        curveVertex(x + -18, y + -23);
        curveVertex(x + -18, y + -23);
        curveVertex(x + -15, y + -23);
        curveVertex(x + -10, y + -26);
        curveVertex(x + -9, y + -26);
        curveVertex(x + -8, y + -31);
        curveVertex(x + -4, y + -34);
        curveVertex(x + 0, y + -36);
        curveVertex(x + 1, y + -37);
        curveVertex(x + 1, y + -40);
        curveVertex(x + 1, y + -40);
        curveVertex(x + 7, y + -40);
        curveVertex(x + 9, y + -40);
        curveVertex(x + 9, y + -40);
        curveVertex(x + 9, y + -36);
        curveVertex(x + 10, y + -35);
        curveVertex(x + 10, y + -32);
        curveVertex(x + 10, y + -30);
        curveVertex(x + 10, y + -27);
        curveVertex(x + 7, y + -25);
        curveVertex(x + 7, y + -20);
        curveVertex(x + 7, y + -17);
        curveVertex(x + 4, y + -21);
        curveVertex(x + 3, y + -19);
        curveVertex(x + 2, y + -16);
        curveVertex(x + -1, y + -16);
        curveVertex(x + -1, y + -16);
        endShape();

        // florida
        x = 368;
        y = 794;
        fill(37.0, 84.0, 27.0);
        noStroke();
        beginShape();
        curveVertex(x + 0, y + 0);
        curveVertex(x + -1, y + 1);
        curveVertex(x + -5, y + -6);
        curveVertex(x + -5, y + -6);
        curveVertex(x + -5, y + -9);
        curveVertex(x + -2, y + -10);
        curveVertex(x + 2, y + -10);
        curveVertex(x + 9, y + -8);
        curveVertex(x + 17, y + -10);
        curveVertex(x + 21, y + -13);
        curveVertex(x + 24, y + -17);
        curveVertex(x + 28, y + -21);
        curveVertex(x + 32, y + -24);
        curveVertex(x + 34, y + -23);
        curveVertex(x + 36, y + -22);
        curveVertex(x + 38, y + -15);
        curveVertex(x + 38, y + -15);
        curveVertex(x + 34, y + -8);
        curveVertex(x + 32, y + -11);
        curveVertex(x + 29, y + -9);
        curveVertex(x + 29, y + -6);
        curveVertex(x + 25, y + -1);
        curveVertex(x + 19, y + 3);
        curveVertex(x + 13, y + 8);
        curveVertex(x + 8, y + 11);
        curveVertex(x + 6, y + 10);
        curveVertex(x + 4, y + 8);
        curveVertex(x + 7, y + 5);
        curveVertex(x + 9, y + 5);
        curveVertex(x + 11, y + 4);
        curveVertex(x + 13, y + 3);
        curveVertex(x + 12, y + 0);
        curveVertex(x + 16, y + 0);
        curveVertex(x + 18, y + -2);
        curveVertex(x + 18, y + -3);
        curveVertex(x + 20, y + -5);
        curveVertex(x + 22, y + -8);
        curveVertex(x + 17, y + -5);
        curveVertex(x + 14, y + -3);
        curveVertex(x + 13, y + -3);
        curveVertex(x + 12, y + -4);
        curveVertex(x + 9, y + -2);
        curveVertex(x + 7, y + -1);
        curveVertex(x + 2, y + -1);
        endShape(CLOSE);

        noFill();
        stroke(114, 186, 88);
        
        beginShape();
        curveVertex(x + -4, y + -10);
        curveVertex(x + -4, y + -10);
        curveVertex(x + -1, y + -10);
        curveVertex(x + 2, y + -10);
        curveVertex(x + 6, y + -8);
        curveVertex(x + 12, y + -9);
        curveVertex(x + 18, y + -11);
        curveVertex(x + 24, y + -16);
        curveVertex(x + 28, y + -20);
        curveVertex(x + 31, y + -23);
        curveVertex(x + 32, y + -22);
        curveVertex(x + 36, y + -19);
        curveVertex(x + 36, y + -19);
        endShape();

      // Neck
    fill(192.0, 161.0, 115.0);
    noStroke();
    beginShape();
    curveVertex(310, 433);
    curveVertex(310, 433);
    curveVertex(315, 436);
    curveVertex(315, 448);
    curveVertex(325, 454);
    curveVertex(341, 467);
    curveVertex(347, 484);
    curveVertex(346, 496);
    curveVertex(341, 509);
    curveVertex(323, 531);
    curveVertex(305, 546);
    curveVertex(275, 559);
    curveVertex(225, 566);
    curveVertex(187, 555);
    curveVertex(166, 531);
    curveVertex(156, 514);
    curveVertex(156, 509);
    curveVertex(158, 501);
    curveVertex(160, 495);
    curveVertex(165, 493);
    curveVertex(176, 500);
    curveVertex(205, 505);
    curveVertex(243, 498);
    curveVertex(275, 473);
    curveVertex(300, 442);
    curveVertex(303, 430);
    curveVertex(303, 430);
    endShape(CLOSE);
    
      // Neck Shading
    fill(50, 30);
    beginShape();
    curveVertex(310, 435);
    curveVertex(310, 435);
    curveVertex(313, 445);
    curveVertex(316, 466);
    curveVertex(310, 485);
    curveVertex(298, 494);
    curveVertex(281, 500);
    curveVertex(268, 504);
    curveVertex(266, 504);
    curveVertex(262, 500);
    curveVertex(263, 489);
    curveVertex(270, 474);
    curveVertex(285, 453);
    curveVertex(305, 444);
    curveVertex(305, 444);
    endShape(CLOSE);
    
    fill(50, 35);
    beginShape();
    curveVertex(250, 473);
    curveVertex(250, 473);
    curveVertex(303, 450);
    curveVertex(302, 476);
    curveVertex(292, 481);
    curveVertex(272, 481);
    curveVertex(273, 460);
    curveVertex(273, 460);
    endShape();

    
      // Collar
    strokeWeight(1);
    fill(31, 34, 51);
    noStroke();
    beginShape();
    curveVertex(138, 477);
    curveVertex(138, 477);
    curveVertex(134, 486);
    curveVertex(133, 499);
    curveVertex(135, 516);
    curveVertex(144, 531);
    curveVertex(154, 545);
    curveVertex(174, 563);
    curveVertex(194, 574);
    curveVertex(222, 582);
    curveVertex(259, 577);
    curveVertex(288, 570);
    curveVertex(312, 557);
    curveVertex(336, 538);
    curveVertex(347, 522);
    curveVertex(352, 498);
    curveVertex(356, 479);
    curveVertex(351, 461);
    curveVertex(345, 454);
    curveVertex(332, 443);
    curveVertex(317, 435);
    curveVertex(312, 446);
    curveVertex(327, 461);
    curveVertex(333, 478);
    curveVertex(336, 493);
    curveVertex(324, 512);
    curveVertex(305, 531);
    curveVertex(282, 543);
    curveVertex(258, 550);
    curveVertex(231, 554);
    curveVertex(200, 548);
    curveVertex(179, 531);
    curveVertex(166, 518);
    curveVertex(160, 510);
    curveVertex(158, 496);
    curveVertex(158, 496);
    endShape(CLOSE);
    
      // Left Arm
    fill(192.0, 161.0, 115.0);
    beginShape();
    curveVertex(11, 698);
    curveVertex(3, 715);
    curveVertex(3, 741);
    curveVertex(23, 773);
    curveVertex(58, 791);
    curveVertex(91, 778);
    curveVertex(104, 757);
    curveVertex(105, 736);
    curveVertex(97, 745);
    curveVertex(71, 756);
    curveVertex(51, 752);
    curveVertex(39, 746);
    curveVertex(38, 731);
    curveVertex(29, 722);
    curveVertex(27, 708);
    curveVertex(34, 702);
    curveVertex(23, 696);
    curveVertex(22, 678);
    curveVertex(21, 662);
    curveVertex(16, 680);
    curveVertex(13, 697);
    curveVertex(13, 697);
    endShape();
    
    stroke(55.0, 52.0, 43.0);
    curve(20, 661, 20, 661, 21, 690, 41, 747);
    curve(20, 661, 21, 690, 26, 715, 41, 747);
    curve(20, 661, 26, 715, 41, 747, 41, 747);
    
      // Left Arm Shadowing
    noStroke();
    fill(50, 40);
    beginShape();
    curveVertex(20, 688);
    curveVertex(20, 688);
    curveVertex(15, 707);
    curveVertex(2, 726);
    curveVertex(10, 754);
    curveVertex(38, 783);
    curveVertex(63, 791);
    curveVertex(92, 776);
    curveVertex(106, 757);
    curveVertex(103, 736);
    curveVertex(75, 712);
    curveVertex(35, 681);
    curveVertex(20, 676);
    curveVertex(20, 676);
    endShape(CLOSE);
    
      //Left Palm
    fill(192.0, 161.0, 115.0);
    rect(32, 658, 70, 52);
    line(67, 699, 68, 704);
    
      //Left pinky
    strokeWeight(1.5);
    stroke(55.0, 52.0, 43.0);
    fill(192.0, 161.0, 115.0);
    beginShape();
    curveVertex(95, 726);
    curveVertex(95, 726);
    curveVertex(102, 729);
    curveVertex(100, 741);
    curveVertex(88, 749);
    curveVertex(71, 756);
    curveVertex(41, 747);
    curveVertex(40, 729);
    curveVertex(63, 733);
    curveVertex(85, 728);
    curveVertex(93, 724);
    curveVertex(93, 724);
    endShape(CLOSE);
    
    curve(98, 726, 98, 726, 90, 736, 100, 741);
    curve(98, 726, 90, 736, 92, 741, 100, 741);
    curve(98, 726, 92, 741, 100, 741, 100, 741);
    
    curve(45, 734, 45, 734, 43, 738, 45, 743);
    curve(45, 734, 43, 738, 45, 743, 45, 743);
    
    curve(76, 739, 76, 739, 75, 744, 80, 748);
    curve(76, 739, 75, 744, 80, 748, 80, 748);
    
    
      // Left Ring
    beginShape();
    curveVertex(35, 701);
    curveVertex(35, 701);
    curveVertex(52, 703);
    curveVertex(61, 706);
    curveVertex(71, 703);
    curveVertex(85, 702);
    curveVertex(105, 695);
    curveVertex(116, 698);
    curveVertex(118, 711);
    curveVertex(110, 717);
    curveVertex(103, 721);
    curveVertex(76, 731);
    curveVertex(58, 733);
    curveVertex(38, 728);
    curveVertex(31, 723);
    curveVertex(27, 709);
    curveVertex(35, 701);
    curveVertex(35, 701);
    endShape(CLOSE);
    
    curve(112, 697, 112, 697, 106, 704, 111, 715);
    curve(112, 697, 106, 704, 106, 711, 111, 715);
    curve(112, 697, 106, 711, 111, 715, 111, 715);
    
    curve(47, 712, 47, 712, 45, 717, 46, 724);
    curve(47, 712, 45, 717, 46, 724, 46, 724);
    
    curve(86, 709, 86, 709, 84, 715, 88, 719);
    curve(86, 709, 84, 715, 88, 719, 88, 719);
    
      // Left Middle
    beginShape();
    curveVertex(35, 667);
    curveVertex(35, 667);
    curveVertex(52, 671);
    curveVertex(70, 669);
    curveVertex(91, 666);
    curveVertex(105, 664);
    curveVertex(113, 671);
    curveVertex(112, 684);
    curveVertex(102, 689);
    curveVertex(92, 691);
    curveVertex(81, 695);
    curveVertex(63, 699);
    curveVertex(43, 701);
    curveVertex(23, 695);
    curveVertex(21, 684);
    curveVertex(25, 673);
    curveVertex(32, 668);
    curveVertex(32, 668);
    endShape(CLOSE);
    
    curve(110, 668, 110, 668, 102, 672, 107, 687);
    curve(110, 668, 102, 672, 101, 679, 107, 687);
    curve(110, 668, 101, 679, 107, 687, 107, 687);
    
    curve(40, 676, 40, 676, 36, 683, 37, 695);
    curve(40, 676, 36, 683, 37, 695, 37, 695);
    
    curve(43, 677, 43, 677, 39, 684, 40, 696);
    curve(43, 677, 39, 684, 40, 696, 40, 696);
    
    curve(80, 674, 80, 674, 77, 684, 80, 690);
    curve(80, 674, 77, 684, 80, 690, 80, 690);
    
      // Left Index
    beginShape();
    curveVertex(98, 642);
    curveVertex(98, 642);
    curveVertex(103, 646);
    curveVertex(106, 653);
    curveVertex(101, 663);
    curveVertex(65, 666);
    curveVertex(46, 666);
    curveVertex(33, 663);
    curveVertex(30, 652);
    curveVertex(37, 637);
    curveVertex(58, 637);
    curveVertex(77, 639);
    curveVertex(95, 641);
    curveVertex(95, 641);
    endShape(CLOSE);
    
    curve(101, 644, 101, 644, 87, 647, 100, 662);
    curve(101, 644, 87, 647, 88, 657, 100, 662);
    curve(101, 644, 88, 657, 100, 662, 100, 662);
    
    curve(48, 644, 48, 644, 46, 650, 47, 659);
    curve(48, 644, 46, 650, 47, 659, 47, 659);
    
    curve(72, 647, 72, 647, 70, 651, 71, 657);
    curve(72, 647, 70, 651, 71, 657, 71, 657);
    
      //Left Thumb
    beginShape();
    curveVertex(21, 661);
    curveVertex(21, 661);
    curveVertex(28, 642);
    curveVertex(47, 626);
    curveVertex(73, 617);
    curveVertex(82, 611);
    curveVertex(91, 611);
    curveVertex(96, 607);
    curveVertex(107, 607);
    curveVertex(113, 612);
    curveVertex(114, 625);
    curveVertex(103, 633);
    curveVertex(97, 641);
    curveVertex(68, 638);
    curveVertex(52, 637);
    curveVertex(38, 637);
    curveVertex(31, 657);
    curveVertex(35, 666);
    curveVertex(35, 667);
    curveVertex(26, 672);
    curveVertex(22, 682);
    curveVertex(21, 661);
    curveVertex(21, 661);
    endShape(CLOSE);
    
    stroke(132.0, 101.0, 55.0);
    curve(87, 614, 87, 614, 82, 626, 100, 633);
    curve(87, 614, 88, 632, 100, 633, 100, 633);
    
    stroke(55.0, 52.0, 43.0);
    curve(57, 626, 57, 626, 63, 630, 67, 636);
    curve(57, 626, 63, 630, 67, 636, 67, 636);
    
    curve(52, 630, 52, 630, 57, 630, 65, 633);
    curve(52, 630, 57, 630, 65, 633, 65, 633);
    
    curve(70, 627, 70, 627, 73, 632, 77, 637);
    curve(70, 627, 73, 632, 77, 637, 77, 637);
    
      // Thumb Shading
    noStroke();
    fill(50, 100);
    beginShape();
    curveVertex(33, 645);
    curveVertex(33, 645);
    curveVertex(28, 654);
    curveVertex(31, 666);
    curveVertex(35, 663);
    curveVertex(32, 658);
    curveVertex(33, 647);
    curveVertex(33, 647);
    endShape(CLOSE);
    
    
      // Right thumb and back of palm
    stroke(55.0, 52.0, 43.0);
    fill(192.0, 161.0, 115.0);
    beginShape();
    curveVertex(423, 766);
    curveVertex(423, 766);
    curveVertex(420, 769);
    curveVertex(413, 774);
    curveVertex(400, 782);
    curveVertex(395, 791);
    curveVertex(392, 797);
    curveVertex(387, 801);
    curveVertex(382, 811);
    curveVertex(378, 819);
    curveVertex(376, 824);
    curveVertex(372, 836);
    curveVertex(373, 839);
    curveVertex(387, 843);
    curveVertex(401, 834);
    curveVertex(404, 825);
    curveVertex(409, 819);
    curveVertex(419, 793);
    curveVertex(419, 795);
    curveVertex(416, 804);
    curveVertex(415, 814);
    curveVertex(414, 816);
    curveVertex(420, 806);
    curveVertex(425, 802);
    curveVertex(436, 805);
    curveVertex(443, 819);
    curveVertex(447, 835);
    curveVertex(459, 839);
    curveVertex(463, 853);
    curveVertex(473, 861);
    curveVertex(477, 870);
    curveVertex(481, 870);
    curveVertex(484, 871);
    curveVertex(486, 853);
    curveVertex(484, 830);
    curveVertex(484, 820);
    curveVertex(484, 820);
    endShape();
    
    noStroke();
    quad(423, 770, 483.5, 820, 492, 792, 433, 757);
    
    stroke(55.0, 52.0, 43.0);
    beginShape();
    curveVertex(373, 834);
    curveVertex(373, 834);
    curveVertex(377, 826);
    curveVertex(383, 822);
    curveVertex(388, 829);
    curveVertex(386, 836);
    curveVertex(381, 837);
    curveVertex(377, 836);
    curveVertex(377, 836);
    endShape(CLOSE);
    
    curve(395, 796, 395, 796, 398, 794, 402, 794);
    curve(395, 796, 398, 794, 402, 794, 402, 794);
    
    curve(385, 807, 385, 807, 390, 809, 395, 812);
    curve(385, 807, 390, 809, 395, 812, 395, 812);
    
    curve(393, 806, 393, 806, 397, 811, 400, 816);
    curve(393, 806, 397, 811, 400, 816, 400, 816);
    
    curve(418, 795, 418, 795, 423, 794, 426, 794);
    curve(418, 795, 423, 794, 426, 794, 426, 794);
    
      // Right Pinky
    stroke(55.0, 52.0, 43.0);
    beginShape();
    curveVertex(484, 871);
    curveVertex(484, 871);
    curveVertex(481, 888);
    curveVertex(479, 895);
    curveVertex(476, 899);
    curveVertex(469, 908);
    curveVertex(459, 916);
    curveVertex(450, 918);
    curveVertex(441, 920);
    curveVertex(435, 919);
    curveVertex(426, 918);
    curveVertex(426, 911);
    curveVertex(449, 898);
    curveVertex(469, 875);
    curveVertex(477, 871);
    curveVertex(477, 871);
    endShape();

    curve(429, 912, 429, 912, 433, 914, 436, 918);
    curve(429, 912, 433, 914, 436, 918, 436, 918);
    
    curve(475, 900, 475, 900, 471, 897, 471, 895);
    curve(475, 900, 471, 897, 471, 895, 471, 895);
    
    curve(452, 916, 452, 916, 450, 914, 448, 911);
    curve(452, 916, 450, 914, 448, 911, 448, 911);
    
      // Right Ring Finger
    beginShape();
    curveVertex(477, 870);
    curveVertex(477, 870);
    curveVertex(470, 886);
    curveVertex(466, 892);
    curveVertex(462, 897);
    curveVertex(447, 907);
    curveVertex(436, 912);
    curveVertex(430, 914);
    curveVertex(417, 914);
    curveVertex(411, 915);
    curveVertex(404, 914);
    curveVertex(399, 908);
    curveVertex(401, 900);
    curveVertex(410, 895);
    curveVertex(420, 893);
    curveVertex(427, 890);
    curveVertex(438, 882);
    curveVertex(448, 873);
    curveVertex(458, 863);
    curveVertex(463, 853);
    curveVertex(472, 859);
    curveVertex(472, 860);
    endShape();
    
    curve(400, 909, 400, 909, 407, 907, 405, 914);
    curve(400, 909, 407, 907, 412, 914, 405, 914);
    curve(400, 909, 412, 914, 405, 914, 405, 914);
    
    curve(451, 884, 451, 884, 456, 886, 458, 892);
    curve(451, 884, 456, 886, 458, 892, 458, 892);
    
    curve(425, 902, 425, 902, 425, 905, 427, 908);
    curve(425, 902, 425, 905, 427, 908, 427, 908);
    
    curve(423, 903, 423, 903, 423, 906, 425, 909);
    curve(423, 903, 423, 906, 425, 909, 425, 909);
    
    noStroke();
    quad(467, 849, 467, 860, 473, 869, 482, 867);
    
      // Right Middle Finger
    stroke(55.0, 52.0, 43.0);
    beginShape();
    curveVertex(465, 854);
    curveVertex(465, 854);
    curveVertex(457, 864);
    curveVertex(445, 875);
    curveVertex(436, 884);
    curveVertex(421, 889);
    curveVertex(406, 889);
    curveVertex(395, 890);
    curveVertex(387, 889);
    curveVertex(380, 888);
    curveVertex(376, 881);
    curveVertex(378, 876);
    curveVertex(388, 872);
    curveVertex(400, 869);
    curveVertex(419, 860);
    curveVertex(424, 858);
    curveVertex(432, 849);
    curveVertex(442, 839);
    curveVertex(448, 834);
    curveVertex(460, 837);
    curveVertex(460, 837);
    endShape();
    
    curve(378, 877, 378, 877, 385, 879, 382, 889);
    curve(378, 877, 385, 879, 387, 885, 382, 889);
    curve(378, 877, 387, 885, 382, 889, 382, 889);
    
    curve(436, 857, 436, 857, 443, 860, 446, 865);
    curve(436, 857, 443, 860, 446, 865, 446, 865);
    
    curve(434, 860, 434, 860, 439, 865, 444, 868);
    curve(434, 860, 439, 865, 444, 868, 444, 868);
    
    curve(417, 871, 417, 871, 418, 876, 422, 880);
    curve(417, 871, 418, 876, 422, 880, 422, 880);
    
    curve(396, 877, 396, 877, 397, 879, 399, 884);
    curve(396, 877, 397, 879, 399, 884, 399, 884);
    
    noStroke();
    rect(452, 825, 13, 15);
    
      // Right Index Finger
    stroke(55.0, 52.0, 43.0);
    beginShape();
    curveVertex(447, 834);
    curveVertex(447, 834);
    curveVertex(438, 842);
    curveVertex(432, 849);
    curveVertex(426, 854);
    curveVertex(417, 859);
    curveVertex(407, 865);
    curveVertex(398, 867);
    curveVertex(391, 872);
    curveVertex(382, 879);
    curveVertex(376, 881);
    curveVertex(371, 876);
    curveVertex(369, 869);
    curveVertex(370, 861);
    curveVertex(381, 853);
    curveVertex(386, 847);
    curveVertex(396, 839);
    curveVertex(401, 835);
    curveVertex(403, 833);
    curveVertex(404, 829);
    curveVertex(405, 828);
    curveVertex(407, 822);
    curveVertex(411, 819);
    curveVertex(416, 812);
    curveVertex(418, 811);
    curveVertex(422, 806);
    curveVertex(431, 804);
    curveVertex(441, 809);
    curveVertex(445, 819);
    curveVertex(445, 819);
    endShape();
    
    curve(368, 867, 368, 867, 376, 867, 375, 880);
    curve(368, 867, 376, 867, 381, 873, 375, 880);
    curve(368, 867, 381, 873, 375, 880, 375, 880);
    
    noStroke();
    quad(421, 801, 422, 814, 450, 824, 451, 785);
    
    stroke(55.0, 52.0, 43.0);
    curve(415, 833, 415, 833, 420, 835, 425, 841);
    curve(415, 833, 420, 835, 425, 841, 425, 841);
    
    curve(411, 835, 411, 835, 417, 842, 421, 845);
    curve(411, 835, 417, 842, 421, 845, 421, 845);
    
    curve(387, 856, 387, 856, 390, 857, 393, 863);
    curve(387, 856, 390, 857, 393, 863, 393, 863);
    
      // Right arm and hand shading
    noStroke();
    fill(50, 50);
    beginShape();
    curveVertex(437, 696);
    curveVertex(437, 696);
    curveVertex(447, 691);
    curveVertex(456, 691);
    curveVertex(462, 695);
    curveVertex(461, 710);
    curveVertex(451, 727);
    curveVertex(438, 740);
    curveVertex(440, 726);
    curveVertex(438, 714);
    curveVertex(438, 699);
    curveVertex(438, 699);
    endShape(CLOSE);

    fill(50, 30);
    beginShape();
    curveVertex(511, 665);
    curveVertex(511, 665);
    curveVertex(513, 676);
    curveVertex(488, 700);
    curveVertex(457, 740);
    curveVertex(445, 760);
    curveVertex(433, 764);
    curveVertex(426, 765);
    curveVertex(433, 751);
    curveVertex(438, 740);
    curveVertex(448, 729);
    curveVertex(461, 710);
    curveVertex(462, 698);
    curveVertex(460, 689);
    curveVertex(472, 678);
    curveVertex(491, 669);
    curveVertex(486, 672);
    curveVertex(486, 672);
    endShape(CLOSE);
    
    fill(50, 60);
    beginShape();
    curveVertex(442, 692);
    curveVertex(442, 692);
    curveVertex(446, 705);
    curveVertex(438, 726);
    curveVertex(438, 726);
    endShape(CLOSE);

    fill(50, 20);
    beginShape();
    curveVertex(438, 815);
    curveVertex(438, 815);
    curveVertex(428, 820);
    curveVertex(431, 827);
    curveVertex(446, 831);
    curveVertex(446, 836);
    curveVertex(447, 836);
    curveVertex(456, 837);
    curveVertex(461, 844);
    curveVertex(460, 855);
    curveVertex(466, 855);
    curveVertex(470, 855);
    curveVertex(476, 867);
    curveVertex(476, 874);
    curveVertex(485, 875);
    curveVertex(480, 853);
    curveVertex(467, 835);
    curveVertex(442, 817);
    curveVertex(442, 817);
    endShape(CLOSE);



      // Face
    stroke(55.0, 52.0, 43.0);
    strokeJoin(ROUND);
    fill(192.0, 161.0, 115.0);
    beginShape();
    curveVertex(330, 391);
    curveVertex(326, 401);
    curveVertex(322, 412);
    curveVertex(317, 428);
    curveVertex(314, 443);
    curveVertex(307, 455);
    curveVertex(297, 469);
    curveVertex(282, 483);
    curveVertex(254, 505);
    curveVertex(231, 520);
    curveVertex(211, 523);
    curveVertex(189, 520);
    curveVertex(176, 509);
    curveVertex(159, 498);
    curveVertex(137, 476);
    curveVertex(119, 456);
    curveVertex(106, 438);
    curveVertex(99, 421);
    curveVertex(96, 411);
    curveVertex(90, 408);
    curveVertex(86, 403);
    curveVertex(90, 396);
    curveVertex(86, 383);
    curveVertex(84, 376);
    curveVertex(82, 370);
    curveVertex(80, 354);
    curveVertex(79, 317);
    curveVertex(75, 300);
    curveVertex(75, 282);
    curveVertex(75, 259);
    curveVertex(95, 229);
    curveVertex(104, 215);
    curveVertex(115, 204);
    curveVertex(135, 195);
    curveVertex(150, 190);
    curveVertex(170, 180);
    curveVertex(207, 191);
    curveVertex(229, 199);
    curveVertex(255, 188);
    curveVertex(280, 223);
    curveVertex(289, 243);
    curveVertex(301, 263);
    curveVertex(313, 279);
    curveVertex(324, 280);
    curveVertex(336, 305);
    curveVertex(345, 311);
    curveVertex(346, 319);
    curveVertex(355, 313);
    curveVertex(365, 311);
    curveVertex(373, 319);
    curveVertex(373, 333);
    curveVertex(371, 341);
    curveVertex(367, 350);
    curveVertex(361, 367);
    curveVertex(362, 379);
    curveVertex(361, 394);
    curveVertex(352, 402);
    curveVertex(341, 401);
    curveVertex(332, 396);
    curveVertex(330, 391);
    endShape(CLOSE);
    
    noStroke();
    quad(90, 183, 69, 253, 338, 291, 320, 224);
    
    beginShape();
    curveVertex(72, 305);
    curveVertex(72, 305);
    curveVertex(77, 339);
    curveVertex(83, 358);
    curveVertex(91, 351);
    curveVertex(88, 325);
    curveVertex(83, 320);
    curveVertex(83, 306);
    curveVertex(83, 306);
    endShape(CLOSE);
    
    stroke(55.0, 52.0, 43.0);
    curve(96, 410, 96, 410, 93, 401, 90, 395);
    curve(96, 410, 93, 401, 90, 395, 90, 395);
    
      // Left eye
    fill(220);
    stroke(55.0, 52.0, 43.0);
    beginShape();
    curveVertex(160, 330);
    curveVertex(154, 328);
    curveVertex(134, 330);
    curveVertex(124, 329);
    curveVertex(112, 329);
    curveVertex(106, 331);
    curveVertex(120, 321);
    curveVertex(134, 318);
    curveVertex(150, 318);
    curveVertex(159, 322);
    curveVertex(164, 333);
    curveVertex(162, 335);
    endShape(CLOSE);

    fill(63.0, 68.0, 80.0);
    ellipse(141, 325, 26, 13);
    fill(125, 125, 125);
    ellipse(141, 325, 3, 3);
    noFill();
    
    strokeWeight(0.5);
    stroke(55.0, 52.0, 43.0);
    curve(160, 339, 160, 339, 148, 348, 119, 354);
    curve(160, 339, 148, 348, 119, 354, 119, 354);
    
      // Left eyebrow
    strokeWeight(1);
    fill(185, 174, 96, 100);
    beginShape();
    vertex(160, 312);
    vertex(135, 307);
    vertex(119, 307);
    vertex(90, 321);
    vertex(85, 312);
    vertex(106, 302);
    vertex(128, 294);
    vertex(156, 304);
    endShape(CLOSE);
    
      // Right eye
    fill(220);
    
    beginShape();
    curveVertex(227, 328);
    curveVertex(227, 328);
    curveVertex(231, 322);
    curveVertex(238, 318);
    curveVertex(247, 315);
    curveVertex(258, 316);
    curveVertex(261, 321);
    curveVertex(261, 326);
    curveVertex(251, 328);
    curveVertex(242, 328);
    curveVertex(238, 325);
    curveVertex(237, 326);
    curveVertex(234, 327);
    curveVertex(234, 327);
    endShape(CLOSE);
    
    //noFill();
    fill(55.0, 52.0, 43.0);
    beginShape();
    curveVertex(254, 316);
    curveVertex(255, 316);
    curveVertex(269, 320);
    curveVertex(279, 325);
    curveVertex(283, 329);
    curveVertex(276, 328);
    curveVertex(271, 325);
    curveVertex(264, 324);
    curveVertex(261, 325);
    curveVertex(260, 326);
    endShape();
    
    fill(63.0, 68.0, 80.0);
    ellipse(249, 322, 26, 13);
    fill(0);
    ellipse(249, 322, 5, 5);
    fill(125, 125, 125);
    ellipse(250, 322, 3, 3);
    noFill();
    
    strokeWeight(0.5);
    stroke(55.0, 52.0, 43.0);
    curve(226, 337, 226, 337, 235, 344, 257, 348);
    curve(226, 337, 235, 344, 257, 348, 257, 348);
    strokeWeight(2);
    
      // Right eyebrow
    strokeWeight(1);
    fill(185, 174, 96, 100);
    beginShape();
    vertex(300, 320);
    vertex(277, 306);
    vertex(253, 304);
    vertex(222, 314);
    vertex(222, 304);
    vertex(250, 293);
    vertex(272, 290);
    vertex(303, 312);
    endShape(CLOSE);
    
      // Nose
    noFill();
    stroke(120.0, 84.0, 50.0);
    beginShape();
    curveVertex(166, 345);
    curveVertex(157, 366);
    curveVertex(156, 375);
    curveVertex(156, 383);
    curveVertex(165, 386);
    curveVertex(172, 384);
    curveVertex(179, 388);
    curveVertex(187, 391);
    curveVertex(195, 391);
    curveVertex(202, 385);
    curveVertex(207, 384);
    curveVertex(215, 388);
    curveVertex(225, 385);
    curveVertex(231, 378);
    curveVertex(226, 370);
    curveVertex(224, 366);
    curveVertex(220, 359);
    endShape();
    
    noStroke();
    fill(255, 40);
    beginShape();
    curveVertex(193, 373);
    curveVertex(193, 373);
    curveVertex(197, 371);
    curveVertex(201, 373);
    curveVertex(202, 374);
    curveVertex(198, 375);
    curveVertex(195, 375);
    curveVertex(191, 374);
    curveVertex(191, 374);
    endShape(CLOSE);
    
    fill(220, 100, 0, 120);
    beginShape();
    curveVertex(177, 356);
    curveVertex(177, 356);
    curveVertex(173, 359);
    curveVertex(180, 360);
    curveVertex(180, 354);
    curveVertex(180, 354);
    endShape(CLOSE);
    
      // Mouth
    fill(114.0, 79.0, 66.0);
    noStroke();
    beginShape();
    vertex(175, 422);
    vertex(186, 422);
    vertex(192, 423);
    vertex(204, 421);
    vertex(230, 424);
    vertex(252, 430);
    vertex(239, 452);
    vertex(221, 470);
    vertex(202, 476);
    vertex(182, 472);
    vertex(166, 460);
    vertex(169, 449);
    vertex(184, 459);
    vertex(203, 463);
    vertex(224, 455);
    vertex(236, 446);
    vertex(242, 429);
    vertex(225, 425);
    vertex(203, 424);
    vertex(192, 425);
    vertex(187, 425);
    vertex(175, 424);
    endShape();
    
    triangle(153, 439, 148, 433, 155, 429);
    
    fill(255, 100, 100, 30);
    beginShape();
    curveVertex(242, 429);
    curveVertex(242, 429);
    curveVertex(240, 435);
    curveVertex(235, 438);
    curveVertex(233, 446);
    curveVertex(230, 450);
    curveVertex(217, 458);
    curveVertex(208, 460);
    curveVertex(205, 461);
    curveVertex(195, 460);
    curveVertex(183, 456);
    curveVertex(180, 454);
    curveVertex(182, 446);
    curveVertex(182, 440);
    curveVertex(180, 435);
    curveVertex(177, 431);
    curveVertex(176, 430);
    curveVertex(176, 424);
    curveVertex(182, 425);
    curveVertex(185, 426);
    curveVertex(188, 426);
    curveVertex(192, 426);
    curveVertex(193, 425);
    curveVertex(198, 424);
    curveVertex(201, 425);
    curveVertex(203, 428);
    curveVertex(206, 426);
    curveVertex(207, 424);
    curveVertex(211, 424);
    curveVertex(212, 428);
    curveVertex(215, 426);
    curveVertex(220, 426);
    curveVertex(221, 425);
    curveVertex(223, 425);
    curveVertex(226, 429);
    curveVertex(231, 429);
    curveVertex(232, 426);
    curveVertex(236, 428);
    curveVertex(236, 428);
    endShape(CLOSE);
    
    stroke(55.0, 52.0, 43.0, 100);
    curve(176, 431, 176, 431, 178, 426, 181, 424);
    curve(176, 431, 178, 426, 181, 424, 181, 424);
    
    curve(197, 430, 197, 430, 193, 435, 193, 440);
    curve(197, 430, 193, 435, 193, 440, 193, 440);
    
    noStroke();
    fill(55.0, 52.0, 43.0, 100);
    beginShape();
    curveVertex(235, 439);
    curveVertex(235, 439);
    curveVertex(233, 444);
    curveVertex(231, 436);
    curveVertex(226, 439);
    curveVertex(226, 439);
    endShape(CLOSE);
    
      // Teeth
    fill(255);
    noStroke();
    triangle(224, 425, 228, 429, 230, 426);
    quad(211, 424, 218, 425, 217, 426, 211, 426);
    triangle(207, 424, 204, 427, 200, 424);
    rect(183, 425, 7, 1);
    triangle(177, 424, 178, 424, 176, 425);
    beginShape();
    vertex(239, 438);
    vertex(236, 446);
    vertex(233, 448);
    vertex(234, 441);
    vertex(238, 437);
    endShape();
    beginShape();
    vertex(174, 429);
    vertex(179, 439);
    vertex(181, 447);
    vertex(179, 454);
    vertex(170, 448);
    endShape(CLOSE);
    noFill();
    
      // Chin
    strokeWeight(1);
    stroke(55.0, 52.0, 43.0);
    beginShape();
    vertex(177, 481);
    vertex(185, 486);
    vertex(217, 485);
    vertex(225, 480);
    endShape();
    strokeWeight(2);

    
      // Cheeks
    stroke(55.0, 52.0, 43.0);
    curve(239, 386, 239, 386, 260, 420, 261, 436);
    curve(239, 386, 260, 420, 261, 436, 261, 436);
    curve(147, 390, 147, 390, 140, 400, 135, 416);
    curve(147, 390, 140, 400, 135, 416, 135, 416);
    noStroke();
    
      // Spaghetti sauce
    fill(220, 100, 0, 120);
    beginShape();
    vertex(265, 443);
    vertex(270, 446);
    vertex(261, 446);
    vertex(270, 445);
    vertex(267, 453);
    vertex(256, 446);
    vertex(256, 456);
    vertex(260, 446);
    vertex(251, 448);
    vertex(250, 456);
    vertex(257, 455);
    vertex(263, 448);
    vertex(265, 456);
    vertex(253, 453);
    endShape(CLOSE);
    
    beginShape();
    vertex(250, 461);
    vertex(242, 461);
    vertex(242, 468);
    vertex(248, 461);
    vertex(243, 456);
    vertex(245, 461);
    vertex(236, 466);
    vertex(235, 476);
    vertex(246, 474);
    vertex(232, 478);
    vertex(241, 467);
    vertex(251, 464);
    vertex(248, 459);
    endShape(CLOSE);
    
    beginShape();
    vertex(305, 373);
    vertex(303, 383);
    vertex(310, 381);
    vertex(298, 377);
    vertex(294, 385);
    vertex(297, 376);
    vertex(302, 376);
    vertex(303, 388);
    endShape();
    
    beginShape();
    vertex(230, 485);
    vertex(228, 491);
    vertex(236, 489);
    vertex(236, 476);
    vertex(232, 486);
    vertex(236, 499);
    vertex(228, 500);
    vertex(227, 506);
    vertex(233, 498);
    vertex(232, 488);
    vertex(225, 490);
    endShape(CLOSE);
    
    beginShape();
    vertex(248, 481);
    vertex(247, 486);
    vertex(245, 476);
    vertex(244, 488);
    vertex(241, 489);
    vertex(250, 494);
    vertex(242, 485);
    endShape();
    
      // Right Ear
    noFill();
    stroke(55.0, 52.0, 43.0);
    beginShape();
    curveVertex(338, 374);
    curveVertex(338, 374);
    curveVertex(345, 373);
    curveVertex(351, 377);
    curveVertex(356, 368);
    curveVertex(360, 349);
    curveVertex(358, 329);
    curveVertex(353, 334);
    curveVertex(353, 334);
    endShape();
    
    curve(344, 331, 344, 331, 339, 355, 329, 388);
    curve(344, 331, 339, 355, 329, 388, 329, 388);
    noStroke();
    
      // Hair
    fill(255, 244, 166);
    beginShape();
    curveVertex(81, 297);
    curveVertex(78, 327);
    curveVertex(80, 368);
    curveVertex(80, 370);
    curveVertex(76, 350);
    curveVertex(69, 332);
    curveVertex(50, 291);
    curveVertex(47, 258);
    curveVertex(50, 233);
    curveVertex(65, 200);
    curveVertex(70, 195);
    curveVertex(58, 203);
    curveVertex(56, 201);
    curveVertex(75, 174);
    curveVertex(89, 152);
    curveVertex(115, 125);
    curveVertex(150, 105);
    curveVertex(183, 96);
    curveVertex(195, 90);
    curveVertex(210, 91);
    curveVertex(226, 90);
    curveVertex(238, 92);
    curveVertex(252, 92);
    curveVertex(276, 100);
    curveVertex(295, 110);
    curveVertex(314, 125);
    curveVertex(335, 143);
    curveVertex(354, 164);
    curveVertex(368, 190);
    curveVertex(374, 207);
    curveVertex(375, 227);
    curveVertex(368, 252);
    curveVertex(366, 272);
    curveVertex(368, 289);
    curveVertex(377, 306);
    curveVertex(387, 313);
    curveVertex(401, 298);
    curveVertex(405, 282);
    curveVertex(398, 274);
    curveVertex(380, 273);
    curveVertex(387, 269);
    curveVertex(398, 269);
    curveVertex(408, 280);
    curveVertex(409, 291);
    curveVertex(407, 302);
    curveVertex(400, 316);
    curveVertex(387, 322);
    curveVertex(376, 314);
    curveVertex(372, 330);
    curveVertex(371, 343);
    curveVertex(371, 357);
    curveVertex(368, 367);
    curveVertex(366, 359);
    curveVertex(367, 348);
    curveVertex(364, 333);
    curveVertex(362, 328);
    curveVertex(358, 328);
    curveVertex(357, 340);
    curveVertex(356, 352);
    curveVertex(356, 364);
    curveVertex(352, 371);
    curveVertex(350, 361);
    curveVertex(348, 358);
    curveVertex(345, 364);
    curveVertex(343, 366);
    curveVertex(343, 352);
    curveVertex(344, 333);
    curveVertex(339, 318);
    curveVertex(333, 301);
    curveVertex(324, 290);
    curveVertex(304, 269);
    curveVertex(295, 255);
    curveVertex(287, 239);
    curveVertex(268, 219);
    curveVertex(265, 200);
    curveVertex(258, 192);
    curveVertex(251, 192);
    curveVertex(247, 203);
    curveVertex(240, 202);
    curveVertex(237, 218);
    curveVertex(232, 223);
    curveVertex(228, 219);
    curveVertex(228, 206);
    curveVertex(219, 223);
    curveVertex(212, 207);
    curveVertex(208, 205);
    curveVertex(202, 223);
    curveVertex(198, 206);
    curveVertex(192, 201);
    curveVertex(182, 215);
    curveVertex(165, 237);
    curveVertex(146, 250);
    curveVertex(162, 231);
    curveVertex(173, 216);
    curveVertex(181, 200);
    curveVertex(182, 193);
    curveVertex(180, 183);
    curveVertex(166, 192);
    curveVertex(158, 188);
    curveVertex(153, 202);
    curveVertex(147, 217);
    curveVertex(140, 224);
    curveVertex(145, 209);
    curveVertex(145, 203);
    curveVertex(134, 210);
    curveVertex(116, 215);
    curveVertex(102, 223);
    curveVertex(92, 233);
    curveVertex(82, 250);
    curveVertex(81, 272);
    curveVertex(79, 286);
    endShape(CLOSE);
    
    fill(255, 255, 204);
    beginShape();
    curveVertex(76, 183);
    curveVertex(76, 183);
    curveVertex(86, 157);
    curveVertex(104, 134);
    curveVertex(137, 110);
    curveVertex(162, 100);
    curveVertex(197, 92);
    curveVertex(209, 94);
    curveVertex(224, 89);
    curveVertex(256, 95);
    curveVertex(295, 109);
    curveVertex(323, 133);
    curveVertex(350, 158);
    curveVertex(368, 188);
    curveVertex(375, 226);
    curveVertex(363, 245);
    curveVertex(346, 247);
    curveVertex(360, 224);
    curveVertex(344, 225);
    curveVertex(352, 209);
    curveVertex(335, 211);
    curveVertex(332, 190);
    curveVertex(312, 193);
    curveVertex(308, 165);
    curveVertex(294, 178);
    curveVertex(276, 152);
    curveVertex(266, 161);
    curveVertex(258, 147);
    curveVertex(252, 162);
    curveVertex(245, 142);
    curveVertex(238, 151);
    curveVertex(232, 146);
    curveVertex(229, 159);
    curveVertex(221, 144);
    curveVertex(218, 149);
    curveVertex(215, 136);
    curveVertex(211, 155);
    curveVertex(198, 145);
    curveVertex(201, 152);
    curveVertex(192, 143);
    curveVertex(214, 162);
    curveVertex(207, 162);
    curveVertex(190, 149);
    curveVertex(180, 145);
    curveVertex(179, 153);
    curveVertex(166, 141);
    curveVertex(161, 150);
    curveVertex(150, 143);
    curveVertex(139, 155);
    curveVertex(135, 146);
    curveVertex(128, 151);
    curveVertex(124, 143);
    curveVertex(117, 155);
    curveVertex(104, 155);
    curveVertex(93, 167);
    curveVertex(90, 166);
    curveVertex(81, 182);
    curveVertex(81, 182);
    endShape(CLOSE);

      // Crayon
    fill(41.0, 108.0, 117.0);
    stroke(0);
    strokeJoin(MITER);
    beginShape();
    vertex(165, 385);
    vertex(125, 552);
    vertex(126, 552);
    vertex(124, 558);
    vertex(127, 560);
    vertex(141, 563);
    vertex(143, 554);
    vertex(182, 392);
    vertex(177, 386);
    vertex(171, 384);
    vertex(166, 385);
    endShape(CLOSE);
    
    fill(33, 43, 48);
    stroke(33, 43, 48);
    quad(162, 396, 160, 404, 178, 408, 179, 400);
    
    noStroke();
    fill(41.0, 108.0, 117.0);
    ellipse(165, 401, 4, 4);
    ellipse(170.5, 402.5, 4, 4);
    ellipse(176, 404, 4, 4);  

    fill(33, 43, 48);
    quad(131, 534, 128, 542, 145, 546, 146.5, 538);
    
    fill(41.0, 108.0, 117.0);
    ellipse(133, 538.5, 4, 4);
    ellipse(138.5, 540, 4, 4);
    ellipse(143.5, 541, 4, 4);  

    fill(25, 22, 27);
    noStroke();
    beginShape();
    curveVertex(125, 550);
    curveVertex(125, 550);
    curveVertex(125, 554);
    curveVertex(126, 556);
    curveVertex(124, 558);
    curveVertex(128, 560);
    curveVertex(135, 562);
    curveVertex(139, 562);
    curveVertex(143, 560);
    curveVertex(143, 559);
    curveVertex(145, 555);
    curveVertex(138, 553);
    curveVertex(134, 552);
    curveVertex(130, 552);
    curveVertex(130, 552);

    endShape(CLOSE);

    noFill();
    stroke(0);
    strokeWeight(2);
    beginShape();
    curveVertex(173, 432);
    curveVertex(173, 432);
    curveVertex(168, 430);
    curveVertex(164, 433);
    curveVertex(163, 435);
    curveVertex(163, 439);
    curveVertex(162, 442);
    curveVertex(160, 444);
    curveVertex(160, 446);
    curveVertex(162, 448);
    curveVertex(164, 449);
    curveVertex(160, 449);
    curveVertex(158, 450);
    curveVertex(158, 453);
    curveVertex(158, 456);
    curveVertex(157, 457);
    curveVertex(157, 460);
    curveVertex(158, 462);
    curveVertex(156, 461);
    curveVertex(154, 459);
    curveVertex(151, 458);
    curveVertex(151, 458);
    curveVertex(151, 462);
    curveVertex(151, 467);
    curveVertex(151, 471);
    curveVertex(151, 475);
    curveVertex(151, 479);
    curveVertex(152, 481);
    curveVertex(151, 482);
    curveVertex(151, 484);
    curveVertex(153, 485);
    curveVertex(153, 487);
    curveVertex(151, 487);
    curveVertex(147, 489);
    curveVertex(148, 493);
    curveVertex(147, 496);
    curveVertex(147, 498);
    curveVertex(147, 500);
    curveVertex(149, 501);
    curveVertex(152, 502);
    curveVertex(149, 503);
    curveVertex(147, 502);
    curveVertex(145, 505);
    curveVertex(144, 508);
    curveVertex(145, 510);
    curveVertex(147, 511);
    curveVertex(150, 511);
    curveVertex(151, 513);
    curveVertex(151, 513);
    endShape();
    
    stroke(255);
    strokeWeight(3);
    beginShape();
    curveVertex(171, 434);
    curveVertex(171, 434);
    curveVertex(168, 434);
    curveVertex(166, 435);
  
    curveVertex(165, 441);
    curveVertex(165, 441);
    endShape();

    stroke(255);
    strokeWeight(3);
    beginShape();
    curveVertex(163, 445);
    curveVertex(163, 445);
    curveVertex(165, 445);
    curveVertex(166, 445);
    curveVertex(167, 447);
    curveVertex(167, 447);
    endShape();
    
    strokeWeight(2);
    beginShape();
    curveVertex(167, 446);
    curveVertex(167, 446);
    curveVertex(167, 452);
    curveVertex(167, 452);
    endShape();

    strokeWeight(3);
    line(159, 458, 166, 460);

    strokeWeight(2);
    ellipse(163, 456, 5, 8);

    fill(0);
    noStroke();
    ellipse(163, 456, 2, 3);

    
    fill(34, 102, 109);
    beginShape();
    curveVertex(154, 478);
    curveVertex(154, 478);
    curveVertex(153, 462);
    curveVertex(162, 467);
    curveVertex(162, 463);
    curveVertex(165, 464);
    curveVertex(162, 476);
    curveVertex(158, 473);
    curveVertex(158, 480);
    curveVertex(154, 478);
    curveVertex(154, 478);
    endShape();

    noFill();
    stroke(255);
    strokeWeight(1.5);
    beginShape();
    curveVertex(154, 478);
    curveVertex(154, 478);
    curveVertex(153, 462);
    curveVertex(162, 467);
    curveVertex(162, 463);
    curveVertex(165, 464);
    curveVertex(162, 476);
    curveVertex(158, 473);
    curveVertex(158, 480);
    curveVertex(154, 478);
    curveVertex(154, 478);
    endShape();

    stroke(255);
    strokeWeight(2);
    beginShape();
    curveVertex(154, 482);
    curveVertex(154, 482);
    curveVertex(156, 484);
    curveVertex(159, 487);
    curveVertex(158, 493);
    curveVertex(156, 492);
    curveVertex(152, 491);
    curveVertex(151, 497);
    curveVertex(155, 499);
    curveVertex(155, 499);

    endShape();
    
    strokeWeight(1.5);
    line(156, 485, 154, 492);
    line(155, 499, 155, 504);

    stroke(255);
    strokeWeight(3);
    beginShape();
    curveVertex(146, 506);
    curveVertex(146, 506);
    curveVertex(154, 508);
    curveVertex(154, 508);
    endShape();

    strokeWeight(1.5);
    line(154, 508, 153, 513);

    noStroke();
    fill(0);
    ellipse(157, 489, 1,2);
    
    strokeWeight(2);
    noFill();
    stroke(0);
    beginShape();
    vertex(143, 554);
    vertex(143, 554);
    vertex(182, 392);
    vertex(182, 392);
    endShape();
    
    saveFrame("Boogers.jpg");  
    
    if (debug == 0){
      stop();
    }
  }
}

void mousePressed(){
  if (drawFlag == 0) {
    noLoop();  
    saveFrame("Pointillized.jpg");
    drawFlag = 1;
  }
  else {
    redraw();
  }  
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  int i = 0;
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    noStroke();
    vertex(sx, sy);
    float sx2 = x + cos(a+halfAngle) * radius1;
    float sy2 = y + sin(a+halfAngle) * radius1;
    vertex(sx2, sy2);
    if (i % 2 == 0) {
      stroke(100, 106, 112);
      strokeWeight(4);
      line(sx, sy, sx2, sy2);
      noStroke();
    }
    i = i + 1;
  }
  endShape(CLOSE);
}