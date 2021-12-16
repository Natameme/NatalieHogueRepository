
float bourEight, bourFour, clarFour, fifTwo, melEight, mixOne, octFour, prinEight, truEight, truSixt, tweTwo, vioEight;
////////////////////
// SYNTHESIS SECTION
////////////////////
  // per sine structure (sin(sineWave->phase * Pi * 2(tau) * harmonic * octave(16=1 8=2 4=4 2=8 1=16) ))
  //Bourdon Eight
  bourEight = (sin(sineWave->phase[k] *  M_PI * 2.0f * 1.0f * 2.0f) * 0.0316f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 3.0f * 2.0f) * 0.00944f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 5.0f * 2.0f) * 0.00177f);
  //Bourdon Four
  bourFour =  (sin(sineWave->phase[k] *  M_PI * 2.0f * 1.0f * 4.0f) * 0.0316f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 3.0f * 4.0f) * 0.00944f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 5.0f * 4.0f) * 0.00177f);
  //Clarion Four
  clarFour = (0.5 *
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 1.0f  * 4.0f ) * 0.0901f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 2.0f  * 4.0f ) * 0.108f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 3.0f  * 4.0f ) * 0.0609f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 4.0f  * 4.0f ) * 0.0319f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 5.0f  * 4.0f ) * 0.0184f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 6.0f  * 4.0f ) * 0.0393f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 7.0f  * 4.0f ) * 0.0350f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 8.0f  * 4.0f ) * 0.0555f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 9.0f  * 4.0f ) * 0.0331f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 10.0f * 4.0f ) * 0.0412f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 11.0f * 4.0f ) * 0.0263f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 12.0f * 4.0f ) * 0.0151f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 13.0f * 4.0f ) * 0.0123f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 15.0f * 4.0f ) * 0.00237f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 16.0f * 4.0f ) * 0.00139f));
    //Fifteenth two
    fifTwo = (0.5 *
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 1.0f   * 8.0f ) * 0.116f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 2.0f   * 8.0f ) * 0.0223f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 3.0f   * 8.0f ) * 0.329f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 4.0f   * 8.0f ) * 0.00371f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 5.0f   * 8.0f ) * 0.000803f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 6.0f   * 8.0f ) * 0.000393f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 7.0f   * 8.0f ) * 0.00127f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 8.0f   * 8.0f ) * 0.00105f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 9.0f   * 8.0f ) * 0.000350f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 10.0f  * 8.0f ) * 0.000881f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 11.227 * 8.0f ) * 0.000489f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 12.0f  * 8.0f ) * 0.000323f));
    //melodia Eight
    melEight = (0.5 *
               (sin(sineWave->phase[k] *  M_PI * 2.0f * 1.0f * 2.0f ) * 0.331f)+
               (sin(sineWave->phase[k] *  M_PI * 2.0f * 2.0f * 2.0f ) * 0.0346f)+
               (sin(sineWave->phase[k] *  M_PI * 2.0f * 3.0f * 2.0f ) * 0.0518f)+
               (sin(sineWave->phase[k] *  M_PI * 2.0f * 4.0f * 2.0f ) * 0.00803f)+
               (sin(sineWave->phase[k] *  M_PI * 2.0f * 5.0f * 2.0f ) * 0.0141f)+
               (sin(sineWave->phase[k] *  M_PI * 2.0f * 6.0f * 2.0f ) * 0.00254f)+
               (sin(sineWave->phase[k] *  M_PI * 2.0f * 7.0f * 2.0f ) * 0.00156f)+
               (sin(sineWave->phase[k] *  M_PI * 2.0f * 8.0f * 2.0f ) * 0.00149f)+
               (sin(sineWave->phase[k] *  M_PI * 2.0f * 10.0f * 2.0f) * 0.00102f));
    //Mixture 1 1/3
    mixOne = (0.5 *
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 1.0f    * 16.0f ) * 0.0421f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 1.331f  * 16.0f ) * 0.0588f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 2.0f    * 16.0f ) * 0.0623f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 2.662f  * 16.0f ) * 0.0117f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 3.0f    * 16.0f ) * 0.00291f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 4.0f    * 16.0f ) * 0.00436f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 5.0f    * 16.0f ) * 0.000588f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 5.325f  * 16.0f ) * 0.00467f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 6.0f    * 16.0f ) * 0.00184f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 6.657f  * 16.0f ) * 0.000582f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 7.0f    * 16.0f ) * 0.000158f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 8.0f    * 16.0f ) * 0.00358f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 9.0f    * 16.0f ) * 0.000239f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 10.0f   * 16.0f ) * 0.000616f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 10.651f * 16.0f ) * 0.00142f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 12.0f   * 16.0f ) * 0.000543f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 13.314  * 16.0f ) * 0.000518f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 14.0f   * 16.0f ) * 0.000327f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 14.645f * 16.0f ) * 0.000211f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 16.256f * 16.0f ) * 0.000803f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 18.0f   * 16.0f ) * 0.000254f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 18.641f * 16.0f ) * 0.000147f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 21.304f * 16.0f ) * 0.000285f)+
             (sin(sineWave->phase[k] *  M_PI * 2.0f * 23.967f * 16.0f ) * 0.000114f));
    //Octave Four
    octFour = (0.5 *
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 1.0f    * 4.0f )  * 0.221f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 2.0f    * 4.0f )  * 0.0749f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 3.0f    * 4.0f )  * 0.0165f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 4.0f    * 4.0f )  * 0.0113f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 5.0f    * 4.0f )  * 0.00254f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 6.0f    * 4.0f )  * 0.00316f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 7.0f    * 4.0f )  * 0.000653f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 8.0f    * 4.0f )  * 0.000350f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 9.0f    * 4.0f )  * 0.000478f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 10.0f   * 4.0f )  * 0.000668f)+
              (sin(sineWave->phase[k] *  M_PI * 2.0f * 11.0f   * 4.0f )  * 0.000741f)+
              (sin(sineWave->phase[0] *  M_PI * 2.0f * 12.0f   * 4.0f )  * 0.000575f)+
              (sin(sineWave->phase[0] *  M_PI * 2.0f * 13.0f   * 4.0f )  * 0.000412f)+
              (sin(sineWave->phase[0] *  M_PI * 2.0f * 14.0f   * 4.0f )  * 0.000371f)+
              (sin(sineWave->phase[0] *  M_PI * 2.0f * 15.0f   * 4.0f )  * 0.000295f)+
              (sin(sineWave->phase[0] *  M_PI * 2.0f * 16.281f * 4.0f )  * 0.000237f));
    //Principle Eight
    prinEight = (0.5 *
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 1.0f  * 2.0f ) * 0.167f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 2.0f  * 2.0f ) * 0.0785f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 3.0f  * 2.0f ) * 0.0251f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 4.0f  * 2.0f ) * 0.0384f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 5.0f  * 2.0f ) * 0.00543f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 6.0f  * 2.0f ) * 0.00912f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 7.0f  * 2.0f ) * 0.00301f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 8.0f  * 2.0f ) * 0.00171f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 9.0f  * 2.0f ) * 0.00146f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 10.0f * 2.0f ) * 0.00136f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 11.0f * 2.0f ) * 0.00109f)+
                (sin(sineWave->phase[0] *  M_PI * 2.0f * 18.0f * 2.0f ) * 0.00108f));
    //trumpet 8
    truEight = (0.5 *
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 1.0f  * 2.0f ) * 0.0346f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 2.0f  * 2.0f ) * 0.0371f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 3.0f  * 2.0f ) * 0.00794f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 4.0f  * 2.0f ) * 0.0582f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 5.0f  * 2.0f ) * 0.01f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 6.0f  * 2.0f ) * 0.0291f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 7.0f  * 2.0f ) * 0.0254f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 8.0f  * 2.0f ) * 0.0199f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 9.0f  * 2.0f ) * 0.0144f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 10.0f * 2.0f ) * 0.0142f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 11.0f * 2.0f ) * 0.0103f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 12.0f * 2.0f ) * 0.00623f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 13.0f * 2.0f ) * 0.0234f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 14.0f * 2.0f ) * 0.0127f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 15.0f * 2.0f ) * 0.0113f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 16.0f * 2.0f ) * 0.00312f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 17.0f * 2.0f ) * 0.00136f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 18.0f * 2.0f ) * 0.00269f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 19.0f * 2.0f ) * 0.00231f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 20.0f * 2.0f ) * 0.00121f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 21.0f * 2.0f ) * 0.000363f)
               );
               //trumpet 16
    truSixt =  (0.5 *
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (1.0f)  ) * 0.0346f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (2.0f)  ) * 0.0371f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (3.0f)  ) * 0.00794f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (4.0f)  ) * 0.0582f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (5.0f)  ) * 0.01f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (6.0f)  ) * 0.0291f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (7.0f)  ) * 0.0254f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (8.0f)  ) * 0.0199f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (9.0f)  ) * 0.0144f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (10.0f) ) * 0.0142f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (11.0f) ) * 0.0103f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (12.0f) ) * 0.00623f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (13.0f) ) * 0.0234f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (14.0f) ) * 0.0127f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (15.0f) ) * 0.0113f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (16.0f) ) * 0.00312f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (17.0f) ) * 0.00136f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (18.0f) ) * 0.00269f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (19.0f) ) * 0.00231f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (20.0f) ) * 0.00121f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * (21.0f) ) * 0.000363f)
               );

    //Twelfth 2 2/3
    tweTwo = (0.5 *
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 1.0f   ) * 0.0822f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 2.0f   ) * 0.0749f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 3.0f   ) * 0.00841f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 4.0f   ) * 0.00234f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 5.0f   ) * 0.00139f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 6.0f   ) * 0.000831f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 7.0f   ) * 0.00147f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 8.0f   ) * 0.00190f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 9.0f   ) * 0.00116f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 10.0f  ) * 0.000530f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 11.0f  ) * 0.00146f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 12.0f  ) * 0.000363f)+
             (sin(sineWave->phase[0] *  M_PI * 2.0f * 13.0f  ) * 0.000305f)
             );
    //Violone Eight
    vioEight = (0.5 *
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 1.0f     ) * 0.197f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 2.0f     ) * 0.141f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 3.0f     ) * 0.113f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 4.385f   ) * 0.131f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 5.370f   ) * 0.105f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 6.347f   ) * 0.162f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 7.327f   ) * 0.118f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 8.308f   ) * 0.0524f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 9.288f   ) * 0.0389f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 10.736f  ) * 0.0426f)+
               (sin(sineWave->phase[0] *  M_PI * 2.0f * 12.0f    ) * 0.0199f)
              );
