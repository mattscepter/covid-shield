import 'package:flutter/material.dart';

class covidInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Covid-19 Info',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400  ),),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/images/back.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 110, 10, 20),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            color: Colors.white.withOpacity(.5),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Image.asset('asset/images/logo2.png',scale: 2,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Text('Coronavirus disease 2019 (COVID-19) is an infectious disease caused by severe respiratory syndrome coronavirus 2 (SARS-CoV-2). It was first identified in December 2019 in Wuhan, China, and has coverted into a pandemic. The first case may be traced back to 17 November 2019. As of 16 June 2020, more than 8.05 million cases have been reported across 188 countries and territories, resulting in more than 437,000 deaths. More than 3.88 million people have recovered.\n\n'
                          'Common symptoms include fever, cough, fatigue, shortness of breath, and loss of smell and taste. While the majority of cases result in mild symptoms, some progress to acute respiratory distress syndrome (ARDS) possibly precipitated by cytokine storm, multi-organ failure, septic shock, and blood clots.\n\n'
                          'The virus is primarily spread between people during close contact, most often via small droplets produced by coughing, sneezing, and talking. The droplets usually fall to the ground or onto surfaces rather than travelling through air over long distances. Less commonly, people may become infected by touching a contaminated surface and then touching their face.\n\n'
                          'Recommended measures to prevent infection include frequent hand washing, maintaining physical distance from others (especially from those with symptoms), quarantine (especially for those with symptoms), covering coughs, and keeping unwashed hands away from the face. The use of cloth face coverings such as a scarf or a bandana has been recommended by health officials in public settings to minimise the risk of transmissions, with some authorities requiring their use.\n\n'
                          'According to the World Health Organization (WHO), there are no vaccines nor specific antiviral treatments for COVID-19. Management involves the treatment of symptoms, supportive care, isolation, and experimental measures. The World Health Organization (WHO) declared the COVID‑19 outbreak a public health emergency of international concern (PHEIC) on 30 January 2020 and a pandemic on 11 March 2020. Local transmission of the disease has occurred in most countries across all six WHO regions.\n\n'
                          'The WHO has published several testing protocols for the disease. The standard method of testing is real-time reverse transcription polymerase chain reaction (rRT-PCR). The test is typically done on respiratory samples obtained by a nasopharyngeal swab; however, a nasal swab or sputum sample may also be used. Results are generally available within a few hours to two days. Blood tests can be used, but these require two blood samples taken two weeks apart, and the results have little immediate value.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }

}
