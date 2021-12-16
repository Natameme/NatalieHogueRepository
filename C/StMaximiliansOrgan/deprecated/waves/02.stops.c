//CONTAINER FOR STOP GENERATION
/*
  Copy/Paste each sum of sines into line 56 of stopgen.c
  setting the sum of sines equal to sample
  DO NOT COPY VARIABLE NAME


  Code in stopgen.c should look like:

  sample = (sin(t *  (M_PI * 2.0f) * (1.0f * 2.0f/kSampleRate)) * 0.0316f )+
           (sin(t *  (M_PI * 2.0f) * (3.0f * 2.0f/kSampleRate)) * 0.00944f)+
           (sin(t *  (M_PI * 2.0f) * (5.0f * 2.0f/kSampleRate)) * 0.00177f);

additionally, set kFileName to be whatever you want the sample to be called
*/

bourEight = (sin(t *  (M_PI * 2.0f) * (1.0f * 2.0f/kSampleRate)) * 0.0316f)+
            (sin(t *  (M_PI * 2.0f) * (3.0f * 2.0f/kSampleRate)) * 0.00944f)+
            (sin(t *  (M_PI * 2.0f) * (5.0f * 2.0f/kSampleRate)) * 0.00177f);
//Bourdon Four
bourFour =  (sin(t *  (M_PI * 2.0f) * (1.0f * 4.0f/kSampleRate)) * 0.0316f)+
            (sin(t *  (M_PI * 2.0f) * (3.0f * 4.0f/kSampleRate)) * 0.00944f)+
            (sin(t *  (M_PI * 2.0f) * (5.0f * 4.0f/kSampleRate)) * 0.00177f);
//Clarion Four
clarFour = (0.5 *
            (sin(t *  (M_PI * 2.0f) * (1.0f  * 4.0f /kSampleRate)) * 0.0901f)+
            (sin(t *  (M_PI * 2.0f) * (2.0f  * 4.0f /kSampleRate)) * 0.108f)+
            (sin(t *  (M_PI * 2.0f) * (3.0f  * 4.0f /kSampleRate)) * 0.0609f)+
            (sin(t *  (M_PI * 2.0f) * (4.0f  * 4.0f /kSampleRate)) * 0.0319f)+
            (sin(t *  (M_PI * 2.0f) * (5.0f  * 4.0f /kSampleRate)) * 0.0184f)+
            (sin(t *  (M_PI * 2.0f) * (6.0f  * 4.0f /kSampleRate)) * 0.0393f)+
            (sin(t *  (M_PI * 2.0f) * (7.0f  * 4.0f /kSampleRate)) * 0.0350f)+
            (sin(t *  (M_PI * 2.0f) * (8.0f  * 4.0f /kSampleRate)) * 0.0555f)+
            (sin(t *  (M_PI * 2.0f) * (9.0f  * 4.0f /kSampleRate)) * 0.0331f)+
            (sin(t *  (M_PI * 2.0f) * (10.0f * 4.0f /kSampleRate)) * 0.0412f)+
            (sin(t *  (M_PI * 2.0f) * (11.0f * 4.0f /kSampleRate)) * 0.0263f)+
            (sin(t *  (M_PI * 2.0f) * (12.0f * 4.0f /kSampleRate)) * 0.0151f)+
            (sin(t *  (M_PI * 2.0f) * (13.0f * 4.0f /kSampleRate)) * 0.0123f)+
            (sin(t *  (M_PI * 2.0f) * (15.0f * 4.0f /kSampleRate)) * 0.00237f)+
            (sin(t *  (M_PI * 2.0f) * (16.0f * 4.0f /kSampleRate)) * 0.00139f));
  //Fifteenth two
  fifTwo = (0.5 *
           (sin(t *  (M_PI * 2.0f) * (1.0f   * 8.0f /kSampleRate)) * 0.116f)+
           (sin(t *  (M_PI * 2.0f) * (2.0f   * 8.0f /kSampleRate)) * 0.0223f)+
           (sin(t *  (M_PI * 2.0f) * (3.0f   * 8.0f /kSampleRate)) * 0.329f)+
           (sin(t *  (M_PI * 2.0f) * (4.0f   * 8.0f /kSampleRate)) * 0.00371f)+
           (sin(t *  (M_PI * 2.0f) * (5.0f   * 8.0f /kSampleRate)) * 0.000803f)+
           (sin(t *  (M_PI * 2.0f) * (6.0f   * 8.0f /kSampleRate)) * 0.000393f)+
           (sin(t *  (M_PI * 2.0f) * (7.0f   * 8.0f /kSampleRate)) * 0.00127f)+
           (sin(t *  (M_PI * 2.0f) * (8.0f   * 8.0f /kSampleRate)) * 0.00105f)+
           (sin(t *  (M_PI * 2.0f) * (9.0f   * 8.0f /kSampleRate)) * 0.000350f)+
           (sin(t *  (M_PI * 2.0f) * (10.0f  * 8.0f /kSampleRate)) * 0.000881f)+
           (sin(t *  (M_PI * 2.0f) * (11.227 * 8.0f /kSampleRate)) * 0.000489f)+
           (sin(t *  (M_PI * 2.0f) * (12.0f  * 8.0f /kSampleRate)) * 0.000323f));
  //melodia Eight
  melEight = (0.5 *
             (sin(t *  (M_PI * 2.0f) * (1.0f * 2.0f /kSampleRate)) * 0.331f)+
             (sin(t *  (M_PI * 2.0f) * (2.0f * 2.0f /kSampleRate)) * 0.0346f)+
             (sin(t *  (M_PI * 2.0f) * (3.0f * 2.0f /kSampleRate)) * 0.0518f)+
             (sin(t *  (M_PI * 2.0f) * (4.0f * 2.0f /kSampleRate)) * 0.00803f)+
             (sin(t *  (M_PI * 2.0f) * (5.0f * 2.0f /kSampleRate)) * 0.0141f)+
             (sin(t *  (M_PI * 2.0f) * (6.0f * 2.0f /kSampleRate)) * 0.00254f)+
             (sin(t *  (M_PI * 2.0f) * (7.0f * 2.0f /kSampleRate)) * 0.00156f)+
             (sin(t *  (M_PI * 2.0f) * (8.0f * 2.0f /kSampleRate)) * 0.00149f)+
             (sin(t *  (M_PI * 2.0f) * (10.0f * 2.0f/kSampleRate)) * 0.00102f));
  //Mixture 1 1/3
  mixOne = (0.5 *
           (sin(t *  (M_PI * 2.0f) * (1.0f    * 16.0f /kSampleRate)) * 0.0421f)+
           (sin(t *  (M_PI * 2.0f) * (1.331f  * 16.0f /kSampleRate)) * 0.0588f)+
           (sin(t *  (M_PI * 2.0f) * (2.0f    * 16.0f /kSampleRate)) * 0.0623f)+
           (sin(t *  (M_PI * 2.0f) * (2.662f  * 16.0f /kSampleRate)) * 0.0117f)+
           (sin(t *  (M_PI * 2.0f) * (3.0f    * 16.0f /kSampleRate)) * 0.00291f)+
           (sin(t *  (M_PI * 2.0f) * (4.0f    * 16.0f /kSampleRate)) * 0.00436f)+
           (sin(t *  (M_PI * 2.0f) * (5.0f    * 16.0f /kSampleRate)) * 0.000588f)+
           (sin(t *  (M_PI * 2.0f) * (5.325f  * 16.0f /kSampleRate)) * 0.00467f)+
           (sin(t *  (M_PI * 2.0f) * (6.0f    * 16.0f /kSampleRate)) * 0.00184f)+
           (sin(t *  (M_PI * 2.0f) * (6.657f  * 16.0f /kSampleRate)) * 0.000582f)+
           (sin(t *  (M_PI * 2.0f) * (7.0f    * 16.0f /kSampleRate)) * 0.000158f)+
           (sin(t *  (M_PI * 2.0f) * (8.0f    * 16.0f /kSampleRate)) * 0.00358f)+
           (sin(t *  (M_PI * 2.0f) * (9.0f    * 16.0f /kSampleRate)) * 0.000239f)+
           (sin(t *  (M_PI * 2.0f) * (10.0f   * 16.0f /kSampleRate)) * 0.000616f)+
           (sin(t *  (M_PI * 2.0f) * (10.651f * 16.0f /kSampleRate)) * 0.00142f)+
           (sin(t *  (M_PI * 2.0f) * (12.0f   * 16.0f /kSampleRate)) * 0.000543f)+
           (sin(t *  (M_PI * 2.0f) * (13.314  * 16.0f /kSampleRate)) * 0.000518f)+
           (sin(t *  (M_PI * 2.0f) * (14.0f   * 16.0f /kSampleRate)) * 0.000327f)+
           (sin(t *  (M_PI * 2.0f) * (14.645f * 16.0f /kSampleRate)) * 0.000211f)+
           (sin(t *  (M_PI * 2.0f) * (16.256f * 16.0f /kSampleRate)) * 0.000803f)+
           (sin(t *  (M_PI * 2.0f) * (18.0f   * 16.0f /kSampleRate)) * 0.000254f)+
           (sin(t *  (M_PI * 2.0f) * (18.641f * 16.0f /kSampleRate)) * 0.000147f)+
           (sin(t *  (M_PI * 2.0f) * (21.304f * 16.0f /kSampleRate)) * 0.000285f)+
           (sin(t *  (M_PI * 2.0f) * (23.967f * 16.0f /kSampleRate)) * 0.000114f));
  //Octave Four
  octFour = (0.5 *
            (sin(t *  (M_PI * 2.0f) * (1.0f    * 4.0f /kSampleRate))  * 0.221f)+
            (sin(t *  (M_PI * 2.0f) * (2.0f    * 4.0f /kSampleRate))  * 0.0749f)+
            (sin(t *  (M_PI * 2.0f) * (3.0f    * 4.0f /kSampleRate))  * 0.0165f)+
            (sin(t *  (M_PI * 2.0f) * (4.0f    * 4.0f /kSampleRate))  * 0.0113f)+
            (sin(t *  (M_PI * 2.0f) * (5.0f    * 4.0f /kSampleRate))  * 0.00254f)+
            (sin(t *  (M_PI * 2.0f) * (6.0f    * 4.0f /kSampleRate))  * 0.00316f)+
            (sin(t *  (M_PI * 2.0f) * (7.0f    * 4.0f /kSampleRate))  * 0.000653f)+
            (sin(t *  (M_PI * 2.0f) * (8.0f    * 4.0f /kSampleRate))  * 0.000350f)+
            (sin(t *  (M_PI * 2.0f) * (9.0f    * 4.0f /kSampleRate))  * 0.000478f)+
            (sin(t *  (M_PI * 2.0f) * (10.0f   * 4.0f /kSampleRate))  * 0.000668f)+
            (sin(t *  (M_PI * 2.0f) * (11.0f   * 4.0f /kSampleRate))  * 0.000741f)+
            (sin(t *  (M_PI * 2.0f) * (12.0f   * 4.0f /kSampleRate))  * 0.000575f)+
            (sin(t *  (M_PI * 2.0f) * (13.0f   * 4.0f /kSampleRate))  * 0.000412f)+
            (sin(t *  (M_PI * 2.0f) * (14.0f   * 4.0f /kSampleRate))  * 0.000371f)+
            (sin(t *  (M_PI * 2.0f) * (15.0f   * 4.0f /kSampleRate))  * 0.000295f)+
            (sin(t *  (M_PI * 2.0f) * (16.281f * 4.0f /kSampleRate))  * 0.000237f));
  //Principle Eight
  prinEight = (0.5 *
              (sin(t *  (M_PI * 2.0f) * (1.0f  * 2.0f /kSampleRate)) * 0.167f)+
              (sin(t *  (M_PI * 2.0f) * (2.0f  * 2.0f /kSampleRate)) * 0.0785f)+
              (sin(t *  (M_PI * 2.0f) * (3.0f  * 2.0f /kSampleRate)) * 0.0251f)+
              (sin(t *  (M_PI * 2.0f) * (4.0f  * 2.0f /kSampleRate)) * 0.0384f)+
              (sin(t *  (M_PI * 2.0f) * (5.0f  * 2.0f /kSampleRate)) * 0.00543f)+
              (sin(t *  (M_PI * 2.0f) * (6.0f  * 2.0f /kSampleRate)) * 0.00912f)+
              (sin(t *  (M_PI * 2.0f) * (7.0f  * 2.0f /kSampleRate)) * 0.00301f)+
              (sin(t *  (M_PI * 2.0f) * (8.0f  * 2.0f /kSampleRate)) * 0.00171f)+
              (sin(t *  (M_PI * 2.0f) * (9.0f  * 2.0f /kSampleRate)) * 0.00146f)+
              (sin(t *  (M_PI * 2.0f) * (10.0f * 2.0f /kSampleRate)) * 0.00136f)+
              (sin(t *  (M_PI * 2.0f) * (11.0f * 2.0f /kSampleRate)) * 0.00109f)+
              (sin(t *  (M_PI * 2.0f) * (18.0f * 2.0f /kSampleRate)) * 0.00108f));
  //trumpet 8
  truEight = (0.5 *
             (sin(t *  (M_PI * 2.0f) * (1.0f  * 2.0f /kSampleRate)) * 0.0346f)+
             (sin(t *  (M_PI * 2.0f) * (2.0f  * 2.0f /kSampleRate)) * 0.0371f)+
             (sin(t *  (M_PI * 2.0f) * (3.0f  * 2.0f /kSampleRate)) * 0.00794f)+
             (sin(t *  (M_PI * 2.0f) * (4.0f  * 2.0f /kSampleRate)) * 0.0582f)+
             (sin(t *  (M_PI * 2.0f) * (5.0f  * 2.0f /kSampleRate)) * 0.01f)+
             (sin(t *  (M_PI * 2.0f) * (6.0f  * 2.0f /kSampleRate)) * 0.0291f)+
             (sin(t *  (M_PI * 2.0f) * (7.0f  * 2.0f /kSampleRate)) * 0.0254f)+
             (sin(t *  (M_PI * 2.0f) * (8.0f  * 2.0f /kSampleRate)) * 0.0199f)+
             (sin(t *  (M_PI * 2.0f) * (9.0f  * 2.0f /kSampleRate)) * 0.0144f)+
             (sin(t *  (M_PI * 2.0f) * (10.0f * 2.0f /kSampleRate)) * 0.0142f)+
             (sin(t *  (M_PI * 2.0f) * (11.0f * 2.0f /kSampleRate)) * 0.0103f)+
             (sin(t *  (M_PI * 2.0f) * (12.0f * 2.0f /kSampleRate)) * 0.00623f)+
             (sin(t *  (M_PI * 2.0f) * (13.0f * 2.0f /kSampleRate)) * 0.0234f)+
             (sin(t *  (M_PI * 2.0f) * (14.0f * 2.0f /kSampleRate)) * 0.0127f)+
             (sin(t *  (M_PI * 2.0f) * (15.0f * 2.0f /kSampleRate)) * 0.0113f)+
             (sin(t *  (M_PI * 2.0f) * (16.0f * 2.0f /kSampleRate)) * 0.00312f)+
             (sin(t *  (M_PI * 2.0f) * (17.0f * 2.0f /kSampleRate)) * 0.00136f)+
             (sin(t *  (M_PI * 2.0f) * (18.0f * 2.0f /kSampleRate)) * 0.00269f)+
             (sin(t *  (M_PI * 2.0f) * (19.0f * 2.0f /kSampleRate)) * 0.00231f)+
             (sin(t *  (M_PI * 2.0f) * (20.0f * 2.0f /kSampleRate)) * 0.00121f)+
             (sin(t *  (M_PI * 2.0f) * (21.0f * 2.0f /kSampleRate)) * 0.000363f));
             //trumpet 16
  truSixt =  (0.5 *
             (sin(t *  (M_PI * 2.0f) * (1.0f/kSampleRate)  ) * 0.0346f)+
             (sin(t *  (M_PI * 2.0f) * (2.0f/kSampleRate)  ) * 0.0371f)+
             (sin(t *  (M_PI * 2.0f) * (3.0f/kSampleRate)  ) * 0.00794f)+
             (sin(t *  (M_PI * 2.0f) * (4.0f/kSampleRate)  ) * 0.0582f)+
             (sin(t *  (M_PI * 2.0f) * (5.0f/kSampleRate)  ) * 0.01f)+
             (sin(t *  (M_PI * 2.0f) * (6.0f/kSampleRate)  ) * 0.0291f)+
             (sin(t *  (M_PI * 2.0f) * (7.0f/kSampleRate)  ) * 0.0254f)+
             (sin(t *  (M_PI * 2.0f) * (8.0f/kSampleRate)  ) * 0.0199f)+
             (sin(t *  (M_PI * 2.0f) * (9.0f/kSampleRate)  ) * 0.0144f)+
             (sin(t *  (M_PI * 2.0f) * (10.0f/kSampleRate) ) * 0.0142f)+
             (sin(t *  (M_PI * 2.0f) * (11.0f/kSampleRate) ) * 0.0103f)+
             (sin(t *  (M_PI * 2.0f) * (12.0f/kSampleRate) ) * 0.00623f)+
             (sin(t *  (M_PI * 2.0f) * (13.0f/kSampleRate) ) * 0.0234f)+
             (sin(t *  (M_PI * 2.0f) * (14.0f/kSampleRate) ) * 0.0127f)+
             (sin(t *  (M_PI * 2.0f) * (15.0f/kSampleRate) ) * 0.0113f)+
             (sin(t *  (M_PI * 2.0f) * (16.0f/kSampleRate) ) * 0.00312f)+
             (sin(t *  (M_PI * 2.0f) * (17.0f/kSampleRate) ) * 0.00136f)+
             (sin(t *  (M_PI * 2.0f) * (18.0f/kSampleRate) ) * 0.00269f)+
             (sin(t *  (M_PI * 2.0f) * (19.0f/kSampleRate) ) * 0.00231f)+
             (sin(t *  (M_PI * 2.0f) * (20.0f/kSampleRate) ) * 0.00121f)+
             (sin(t *  (M_PI * 2.0f) * (21.0f/kSampleRate) ) * 0.000363f)
             );

  //Twelfth 2 2/3
  tweTwo = (0.5 *
           (sin(t *  (M_PI * 2.0f) * (1.0f  /kSampleRate) ) * 0.0822f)+
           (sin(t *  (M_PI * 2.0f) * (2.0f  /kSampleRate) ) * 0.0749f)+
           (sin(t *  (M_PI * 2.0f) * (3.0f  /kSampleRate) ) * 0.00841f)+
           (sin(t *  (M_PI * 2.0f) * (4.0f  /kSampleRate) ) * 0.00234f)+
           (sin(t *  (M_PI * 2.0f) * (5.0f  /kSampleRate) ) * 0.00139f)+
           (sin(t *  (M_PI * 2.0f) * (6.0f  /kSampleRate) ) * 0.000831f)+
           (sin(t *  (M_PI * 2.0f) * (7.0f  /kSampleRate) ) * 0.00147f)+
           (sin(t *  (M_PI * 2.0f) * (8.0f  /kSampleRate) ) * 0.00190f)+
           (sin(t *  (M_PI * 2.0f) * (9.0f  /kSampleRate) ) * 0.00116f)+
           (sin(t *  (M_PI * 2.0f) * (10.0f /kSampleRate) ) * 0.000530f)+
           (sin(t *  (M_PI * 2.0f) * (11.0f /kSampleRate) ) * 0.00146f)+
           (sin(t *  (M_PI * 2.0f) * (12.0f /kSampleRate) ) * 0.000363f)+
           (sin(t *  (M_PI * 2.0f) * (13.0f /kSampleRate) ) * 0.000305f)
           );
  //Violone Eight
  vioEight = (0.5 *
             (sin(t *  (M_PI * 2.0f) * (1.0f   /kSampleRate)  ) * 0.197f)+
             (sin(t *  (M_PI * 2.0f) * (2.0f   /kSampleRate)  ) * 0.141f)+
             (sin(t *  (M_PI * 2.0f) * (3.0f   /kSampleRate)  ) * 0.113f)+
             (sin(t *  (M_PI * 2.0f) * (4.385f /kSampleRate)  ) * 0.131f)+
             (sin(t *  (M_PI * 2.0f) * (5.370f /kSampleRate) ) * 0.105f)+
             (sin(t *  (M_PI * 2.0f) * (6.347f /kSampleRate)  ) * 0.162f)+
             (sin(t *  (M_PI * 2.0f) * (7.327f /kSampleRate)  ) * 0.118f)+
             (sin(t *  (M_PI * 2.0f) * (8.308f /kSampleRate)  ) * 0.0524f)+
             (sin(t *  (M_PI * 2.0f) * (9.288f /kSampleRate)  ) * 0.0389f)+
             (sin(t *  (M_PI * 2.0f) * (10.736f/kSampleRate)  ) * 0.0426f)+
             (sin(t *  (M_PI * 2.0f) * (12.0f  /kSampleRate)) * 0.0199f)
            );
