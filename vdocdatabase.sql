-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 23, 2012 at 07:31 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vdocdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`name`) VALUES
('Ahmedabad'),
('Delhi'),
('Kolkata'),
('Chennai'),
('Mumbai'),
('Bangalore'),
('Hyderabad'),
('Pune'),
('Chandigarh'),
('Jaipur'),
('Patna');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE IF NOT EXISTS `disease` (
  `disease` varchar(40) NOT NULL,
  `s1` varchar(50) NOT NULL,
  `s2` varchar(50) NOT NULL,
  `s3` varchar(50) NOT NULL,
  `s4` varchar(50) NOT NULL,
  `s5` varchar(50) NOT NULL,
  `about` varchar(1000) NOT NULL,
  `cure` varchar(1000) NOT NULL,
  PRIMARY KEY (`disease`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`disease`, `s1`, `s2`, `s3`, `s4`, `s5`, `about`, `cure`) VALUES
('AIDS', 'coughing', 'weight loss', 'pneumonia', 'fever', 'swollen glands', 'Human immunodeficiency virus (HIV) is a lentivirus (a member of the retrovirus family) that causes acquired immunodeficiency syndrome (AIDS), a condition in humans in which progressive failure of the immune system allows life-threatening opportunistic infections and cancers to thrive. HIV infects vital cells in the human immune system such as helper T cells (specifically CD4+ T cells), macrophages, and dendritic cells. HIV infection leads to low levels of CD4+ T cells through three main mechanisms: First, direct viral killing of infected cells; second, increased rates of apoptosis in infected cells; and third, killing of infected CD4+ T cells by CD8 cytotoxic lymphocytes that recognize infected cells. When CD4+ T cell numbers decline below a critical level, cell-mediated immunity is lost, and the body becomes progressively more susceptible to opportunistic infections.', 'Prevent infections and illnesses. Since HIV makes your immune system less effective, you become more susceptible to every virus, bacteria, and germ you are exposed to. Wash your hands frequently, and stay away from sick people to stay as healthy as possible. Also stay up-to-date on all of your vaccinations to reduce your risk of preventable illnesses. Follow doctors orders about your prescriptions. Its crucial to take your HIV medication exactly as prescribed by your doctor. Skipping even one day of medication can give the virus an opportunity to become resistant to the drugs, making them ineffective against the virus, says Englund. Be sure to take prescriptions at the same time every day, and always have your medication with you so that if you are away from home, you wont have to miss a dose. Dont abuse drugs or alcohol. Avoiding drug abuse can also help to prevent cognitive (thinking and reasoning) impairment, which is important in minimizing HIV-related dementia. Quit smoking.Exerci'),
('anemia', 'paleness', 'dizziness', 'shortness of breath', 'fainting', 'chest-pain', 'Anemia (/??ni?mi?/; also spelled anaemia and anæmia; from Ancient Greek: ??????? anaimia, meaning lack of blood) is a decrease in number of red blood cells (RBCs) or less than the normal quantity of hemoglobin in the blood. However, it can include decreased oxygen-binding ability of each hemoglobin molecule due to deformity or lack in numerical development as in some other types of hemoglobin deficiency. Because hemoglobin (found inside RBCs) normally carries oxygen from the lungs to the tissues, anemia leads to hypoxia (lack of oxygen) in organs. Since all human cells depend on oxygen for survival, varying degrees of anemia can have a wide range of clinical consequences.', 'Oral iron supplements are the best way to restore iron levels for people who are iron deficient, but they should be used only when dietary measures have failed. However, iron supplements cannot correct anemias that are not due to iron deficiency. Iron replacement therapy can cause gastrointestinal problems, sometimes severe ones. Excess iron may also contribute to heart disease, diabetes, and certain cancers. Doctors generally advise against iron supplements in anyone with a healthy diet and no indications of iron deficiency anemia.'),
('arthritis', 'limited function of joints', 'inflammation of joints', 'stiffness in joints', 'warmth in joints', 'tenderness in joints', 'Arthritis (from Greek arthro-, joint + -itis, inflammation; plural: arthritides) is a form of joint disorder that involves inflammation of one or more joints. There are over 100 different forms of arthritis. The most common form, osteoarthritis (degenerative joint disease), is a result of trauma to the joint, infection of the joint, or age. Other arthritis forms are rheumatoid arthritis, psoriatic arthritis, and related autoimmune diseases. Septic arthritis is caused by joint infection. The major complaint by individuals who have arthritis is joint pain. Pain is often a constant and may be localized to the joint affected. The pain from arthritis is due to inflammation that occurs around the joint, damage to the joint from disease, daily wear and tear of joint, muscle strains caused by forceful movements against stiff, painful joints and fatigue.', 'There is no cure for arthritis but there are a number of treatments that can help slow down the condition’s progress. Medication can help relieve the symptoms of arthritis. In severe cases, surgery may be recommended. For osteoarthritis, analgesics (painkillers), non-steroidal anti-inflammatory drugs (NSAIDs) and corticosteroids are often prescribed. In severe cases, surgery may be recommended.'),
('asthma', 'coughing', 'wheezing', 'shortness of breath', 'chest-tightness', 'chest-pain', 'Asthma (from the Greek ?????, ásthma, "panting") is the common chronic inflammatory disease of the airways characterized by variable and recurring symptoms, reversible airflow obstruction, and bronchospasm. Symptoms include wheezing, coughing, chest tightness, and shortness of breath. Asthma is clinically classified according to the frequency of symptoms, forced expiratory volume in 1 second (FEV1), and peak expiratory flow rate. Asthma may also be classified as atopic (extrinsic) or non-atopic (intrinsic).', 'The first step to treatment is really to understand what can cause the problem. The person needs to be aware what they may be allergic to because it is only then that they would be able to avoid all of these things to prevent the asthma attacks from occurring. Foods that are rich in salt or sodium content should not be included in an asthmatic person’s regular diet. Instead, one should focus on the intake of foods that are rick in magnesium not only because it is healthy but it also has other healthy benefits on the person. A person diagnosed with asthma should know the proper way of breathing. Sometimes, people die of asthma because when they are suffering from an asthma attack, they do not know other ways on how they could breathe. It is important for asthmatic people to practice breathing exercises every day. Asthmatic people must also take extra care in the foods that they eat. It is important that they know which foods they are allergic to. Perhaps they could also incorporate more'),
('breast cancer', 'breast-pain', 'skin irritation', 'lump in underarm', 'swelling in breast area', 'fluid discharge', 'Breast cancer (malignant breast neoplasm) is a type of cancer originating from breast tissue, most commonly from the inner lining of milk ducts or the lobules that supply the ducts with milk. Cancers originating from ducts are known as ductal carcinomas; those originating from lobules are known as lobular carcinomas. Breast cancer is a disease of humans and other mammals; while the overwhelming majority of cases in humans are women, male breast cancer also exists.', 'The main treatments for breast cancer are:surgery, radiotherapy, chemotherapy, hormone therapy, biological therapy (targeted therapy)'),
('cancer', 'blood-tinged saliva', 'stool', 'anemia', 'blood in urine', 'back-pain', 'Cancer i/?kæns?r/, known medically as a malignant neoplasm, is a broad group of various diseases, all involving unregulated cell growth. In cancer, cells divide and grow uncontrollably, forming malignant tumors, and invade nearby parts of the body. The cancer may also spread to more distant parts of the body through the lymphatic system or bloodstream. Not all tumors are cancerous. Benign tumors do not grow uncontrollably, do not invade neighboring tissues, and do not spread throughout the body. There are over 200 different known cancers that afflict humans. Determining what causes cancer is complex. Many things are known to increase the risk of cancer, including tobacco use, certain infections, radiation, lack of physical activity, obesity, and environmental pollutants. These can directly damage genes or combine with existing genetic faults within cells to cause the disease. Approximately five to ten percent of cancers are entirely hereditary.', 'Treatments for cancer include surgery, chemotherapy and radiotherapy.'),
('cardiovascular disease', 'chest-pain', 'excess sweating', 'seizures', 'loss of conciousness', 'sweating', 'Cardiovascular disease is a class of diseases that involve the heart or blood vessels (arteries and veins). Cardiovascular disease refers to any disease that affects the cardiovascular system (as used in MeSH C14 or International Statistical Classification of Diseases and Related Health Problems 10th Revision (ICD10), ICD-10 Chapter IX: Diseases of the circulatory system), principally cardiac disease, vascular diseases of the brain and kidney, and peripheral arterial disease. The causes of cardiovascular disease are diverse but atherosclerosis and/or hypertension are the most common.', 'Stop smoking. Cut down on salt. Watch your diet. Monitor your alcohol.  Manage your weight. Get your blood pressure and cholesterol levels checked by your GP. Learn to manage your stress levels. Make sure you can recognise the early signs of coronary heart disease . Tightness or discomfort in the chest, neck, arm or stomach which comes on when you exert yourself but goes away with rest may be the first sign of angina, which can lead to a heart attack if left untreated.'),
('chickenpox', 'itchy rashes on skin', 'fatigue', 'scabs', 'fever', 'crusting of skin', 'Chickenpox (or chicken pox) is a highly contagious illness caused by primary infection with varicella zoster virus (VZV). It usually starts with vesicular skin rash mainly on the body and head rather than at the periphery and becomes itchy, raw pockmarks, which mostly heal without scarring. On examination, the observer typically finds lesions at various stages of healing. Chickenpox is an airborne disease spread easily through coughing or sneezing of ill individuals or through direct contact with secretions from the rash. A person with chickenpox is infectious one to two days before the rash appears. They remain contagious until all lesions have crusted over (this takes approximately six days). Immunocompromised patients are contagious during the entire period as new lesions keep appearing. Crusted lesions are not contagious.', 'There is no cure for chickenpox, and the virus usually clears up by itself without any treatment. However, there are ways of easing the itch and discomfort, and there are important steps you can take to stop chickenpox spreading.'),
('cholera', 'rapid heart rate', 'low blood pressure', 'diarrhoea', 'vomiting', 'dehydration', 'Cholera is an infection in the small intestine caused by the bacterium Vibrio cholerae. The main symptoms are profuse, watery diarrhea and vomiting. Transmission occurs primarily by drinking water or eating food that has been contaminated by the feces of an infected person, including one with no apparent symptoms. The severity of the diarrhea and vomiting can lead to rapid dehydration and electrolyte imbalance, and death in some cases. The primary treatment is oral rehydration therapy, typically with oral rehydration solution (ORS), to replace water and electrolytes. If this is not tolerated or does not provide improvement fast enough, intravenous fluids can also be used. Antibacterial drugs are beneficial in those with severe disease to shorten its duration and severity. ', 'Cholera needs prompt treatment with oral rehydration solution (ORS) to prevent dehydration and shock. ORS comes in a sachet. It is made up of a mixture of salts and glucose, which are dissolved in water. ORS is ideal for replacing the fluids and minerals that are lost when a person becomes dehydrated. As well as treating dehydration and shock with ORS, antibiotics can be used to treat the underlying infection. ORS sachets are available from many pharmacists, camping shops and travel clinics. If you are travelling to regions of the world affected by cholera, take ORS sachets as a precaution.'),
('dengue', 'joint pain', 'muscle pain', 'exhaustion', 'fever', 'headache', 'Dengue fever (UK /?d???e?/ or US /?d???i?/), also known as breakbone fever, is an infectious tropical disease caused by the dengue virus. Symptoms include fever, headache, muscle and joint pains, and a characteristic skin rash that is similar to measles. In a small proportion of cases the disease develops into the life-threatening dengue hemorrhagic fever, resulting in bleeding, low levels of blood platelets and blood plasma leakage, or into dengue shock syndrome, where dangerously low blood pressure occurs.', 'As dengue is a virus, there is nothing doctors can do to cure it. All you can do is rest, take painkillers and drink plenty of water. However, if you have been diagnosed with dengue, it is best to be treated under the supervision of medical professionals in case your symptoms get worse.'),
('diabetes', 'frequent urination', 'vomiting', 'nausea', 'abdominal pains', 'hunger pangs', 'Diabetes mellitus, often simply referred to as diabetes, is a group of metabolic diseases in which a person has high blood sugar, either because the body does not produce enough insulin, or because cells do not respond to the insulin that is produced. This high blood sugar produces the classical symptoms of polyuria (frequent urination), polydipsia (increased thirst) and polyphagia (increased hunger).', 'Carbohydrates have a big impact on your blood sugar levels—more so than fats and proteins—but you don’t have to avoid them. You just need to be smart about what types of carbs you eat.In general, it’s best to limit highly refined carbohydrates like white bread, pasta, and rice, as well as soda, candy, and snack foods. Focus instead on high-fiber complex carbohydrates—also known as slow-release carbs. Slow-release carbs help keep blood sugar levels even because they are digested more slowly, thus preventing your body from producing too much insulin. They also provide lasting energy and help you stay full longer. Eating for diabetes does not mean eliminating sugar. If you have diabetes, you can still enjoy a small serving of your favorite dessert now and then.'),
('diphtheria', 'hoarseness', 'difficulty swallowing', 'sore throat', 'fever', 'difficulty breathing', 'Diphtheria (Greek ??????? (diphthera) "pair of leather scrolls") is an upper respiratory tract illness caused by Corynebacterium diphtheriae, a facultative anaerobic, Gram-positive bacterium. It is characterized by sore throat, low fever, and an adherent membrane (a pseudomembrane) on the tonsils, pharynx, and/or nasal cavity. A milder form of diphtheria can be restricted to the skin. Less common consequences include myocarditis (about 20% of cases)  and peripheral neuropathy (about 10% of cases).', 'Most people who have diphtheria require a 14-day course of antibiotics. After this time, you will have tests to find out if all the bacteria have gone. If diphtheria bacteria are still present, you may need to continue taking antibiotics for another 10 days. Your recommended dose will vary depending on how severe your condition is and how long you have had diphtheria. Once you have completed the treatment, you wony be infectious to other people. However, you wont be able to leave the isolation ward until tests show that you are completely free of infection.'),
('food poisoning', 'nausea', 'vomiting', 'diarrhoea', 'fever', 'abdominal cramping', 'Foodborne illness (also foodborne disease and colloquially referred to as food poisoning) is any illness resulting from the consumption of contaminated food, pathogenic bacteria, viruses, or parasites that contaminate food, as well as chemical or natural toxins such as poisonous mushrooms.', 'In most cases of food poisoning, you can relieve your symptoms at home without needing to see a doctor. The most important thing is to make sure you do not become dehydrated, as this will make you feel worse and slow your recovery time. Dehydration is a risk because fluid is lost through vomiting and diarrhoea. Aim to drink at least two litres (3.5 pints) of water a day, as well as 200ml (one-third of a pint) of water every time you pass diarrhoea.'),
('gastroenteritis', 'dehydration', 'nausea', 'diarrhoea', 'abdominal pains', 'low fever', 'Gastroenteritis is a medical condition characterized by inflammation ("-itis") of the gastrointestinal tract that involves both the stomach ("gastro"-) and the small intestine ("entero"-), resulting in some combination of diarrhea, vomiting, and abdominal pain and cramping. Gastroenteritis has also been referred to as gastro, stomach bug, and stomach virus. Although unrelated to influenza, it has also been called stomach flu and gastric flu.', 'If you have gastroenteritis, it is very important to replace any fluids that your body loses through vomiting and diarrhoea. Drink at least 2 litres (3.5 pints) of water a day, plus 200ml (a third of a pint) of water every time you pass diarrhoea. Oral rehydration salts are recommended for people who are vulnerable to the effects of dehydration, such as elderly people or those with another existing condition. Oral rehydration salts are available in sachets from pharmacies. You dissolve them in water and they help replace salt, glucose and other important minerals that your body loses during dehydration. Some types of oral rehydration salts may not be suitable if you have a kidney condition. Your pharmacist or GP will be able to give you further advice about this. Try to maintain a normal, healthy diet. Avoid eating foods that are high in fat and sugar because they could make your symptoms worse. You will be able to tolerate light, plain foods, such as rice or wholemeal bread, better th'),
('hepatitis A', 'dizziness', 'vomiting', 'appetite loss', 'fever', 'headache', 'Hepatitis A (formerly known as infectious hepatitis and epidemical virus) is an acute infectious disease of the liver caused by the hepatitis A virus (Hep A), an RNA virus, usually spread the fecal-oral route; transmitted person-to-person by ingestion of contaminated food or water or through direct contact with an infectious person. Tens of millions of individuals worldwide are estimated to become infected with Hep A each year. The time between infection and the appearance of the symptoms (the incubation period) is between two and six weeks and the average incubation period is 28 days.', 'There are no specific medicines to cure infection with hepatitis A. Most people require no treatment except to relieve symptoms. However, if symptoms become severe or dehydration develops, the person should seek medical care emergently. There is a vaccine for hepatitis A. If a person has been exposed to someone who is infected with HAV, a treatment called immune serum globulin is available and may prevent them from becoming infected. Immune serum globulin is more likely to be effective when given within 2 weeks of exposure.'),
('hypertension', 'headache', 'dizziness', 'nausea', 'vomiting', 'chest-pain', 'Hypertension (HTN) or high blood pressure, sometimes called arterial hypertension, is a chronic medical condition in which the blood pressure in the arteries is elevated. This requires the heart to work harder than normal to circulate blood through the blood vessels. Blood pressure involves two measurements, systolic and diastolic, which depend on whether the heart muscle is contracting (systole) or relaxed between beats (diastole). Normal blood pressure at rest is within the range of 100-140mmHg systolic (top reading) and 60-90mmHg diastolic (bottom reading). High blood pressure is said to be present if it is persistently at or above 140/90 mmHg.', 'There is a wide range of blood pressure lowering medicines to choose from. You may need to take more than one type of medication because a combination of drugs is sometimes needed to successfully treat high blood pressure. In some cases, you may need to take blood pressure-lowering medication for the rest of your life. However, if your blood pressure levels stay under control for several years, you might be able to stop your treatment.'),
('influenza', 'pain while moving eyes', 'dry cough', 'fever', 'fatigue', 'headache', 'Influenza, commonly referred to as the flu, is an infectious disease caused by RNA viruses of the family Orthomyxoviridae (the influenza viruses), that affects birds and mammals. The most common symptoms of the disease are chills, fever, sore throat, muscle pains, severe headache, coughing, weakness/fatigue and general discomfort. Although it is often confused with other influenza-like illnesses, especially the common cold, influenza is a more severe disease caused by a different type of virus. Influenza may produce nausea and vomiting, particularly in children, but these symptoms are more common in the unrelated gastroenteritis, which is sometimes, inaccurately, referred to as "stomach flu."Approximately 33% of persons with influenza are asymptomatic.', 'Treatments for influenza include a range of medications and therapies that are used in response to disease influenza. Treatments may either directly target the influenza virus itself; or instead they may just offer relief to symptoms of the disease, while the bodys own immune system works to recover from infection. The two main classes of antiviral drugs used against influenza are neuraminidase inhibitors, such as zanamivir and oseltamivir, or inhibitors of the viral M2 protein, such as amantadine and rimantadine. These drugs can reduce the severity of symptoms if taken soon after infection and can also be taken to decrease the risk of infection. However, viral strains have emerged that show drug resistance to both classes of drug.'),
('jaundice', 'dark urine', 'itching', 'mental confusion', 'fatigue', 'swelling of ankles', 'Jaundice (also known as icterus; attributive adjective: icteric) is a yellowish pigmentation of the skin, the conjunctival membranes over the sclerae (whites of the eyes), and other mucous membranes caused by hyperbilirubinemia (increased levels of bilirubin in the blood). This hyperbilirubinemia subsequently causes increased levels of bilirubin in the extracellular fluid. Concentration of bilirubin in blood plasma does not normally exceed 1 mg/dL (>17µmol/L). A concentration higher than 1.8 mg/dL (>30µmol/L) leads to jaundice. The term jaundice comes from the French word jaune, meaning yellow.', 'If it is caused by anemia you might have to start taking iron tablets. If it is caused by hepatitis you might need to start taking tablets, but not all types of hepatitis can be treated. If it is caused by taking particular drugs, your doctor might prescribe an alternative. If it is caused by an obstruction such as a gallstone or a tumour, you may need to have surgery. If the liver is severely damaged, the damage cannot be reversed. If you stop drinking alcohol this will increase your chances of survival. You may be considered for a liver transplant if the damage is very severe.'),
('leprosy', 'loss of fingers or toes', 'Eye Problems', 'skin stiffness', 'muscle weakness', 'dry skin', 'Leprosy, also known as Hansen disease (HD), is a chronic disease caused by the bacteria Mycobacterium leprae and Mycobacterium lepromatosis. Named after physician Gerhard Armauer Hansen, leprosy is primarily a granulomatous disease of the peripheral nerves and mucosa of the upper respiratory tract; skin lesions are the primary external sign. Left untreated, leprosy can be progressive, causing permanent damage to the skin, nerves, limbs and eyes. Contrary to folklore, leprosy does not cause body parts to fall off, although they can become numb or diseased as a result of secondary infections; these occur as a result of the bodys defenses being compromised by the primary disease. Secondary infections, in turn, can result in tissue loss causing fingers and toes to become shortened and deformed, as cartilage is absorbed into the body.', 'Paucibacillary leprosy should be treated for 6-12 months with dapsone 100 mg/day unsupervised plus rifampin 600 mg/month supervised. This regimen should be followed by treatment with dapsone as monotherapy for 3 years in patients with tuberculoid leprosy or 5 years in patients with borderline lepromatous leprosy. Multibacillary leprosy should be treated for 24 months with dapsone 100 mg/day unsupervised, clofazimine 50 mg/day unsupervised, and rifampin 600 mg plus clofazimine 300 mg/month supervised. Corticosteroids have been used to treat nerve damage associated with leprosy, but a recent review of 3 randomized controlled trials shows no significant long-term effect. Prednisolone is believed to minimize pain and acute inflammation. The recommended initial dose is prednisolone 40 mg daily.'),
('lymphoma', 'lymph nodes swelling', 'fever', 'chills', 'lack of energy', 'abdominal pain', 'Lymphoma is a cancer of the lymphocytes, a type of cell that forms part of the immune system. Typically, lymphoma is present as a solid tumor of lymphoid cells. Treatment might involve chemotherapy and in some cases radiotherapy and/or bone marrow transplantation, and can be curable depending on the histology, type, and stage of the disease. These malignant cells often originate in lymph nodes, presenting as an enlargement of the node (a tumor). It can also affect other organs in which case it is referred to as extranodal lymphoma. Extranodal sites include the skin, brain, bowels and bone. Lymphomas are closely related to lymphoid leukemias, which also originate in lymphocytes but typically involve only circulating blood and the bone marrow (where blood cells are generated in a process termed haematopoesis) and do not usually form static tumors. There are many types of lymphomas, and in turn, lymphomas are a part of the broad group of diseases called hematological neoplasms.', 'Chemotherapy is widely used treatment for lymphoma, either on its own, combined with biological therapy and/or combined with radiotherapy. Some chemotherapy is given by injection (intravenous chemotherapy) and some is given by mouth (oral chemotherapy). The type of chemotherapy you receive will depend on the type and stage of your non-Hodgkins lymphoma. If it is thought that your lymphoma is curable, you will normally receive an aggressive treatment programme of chemotherapy (with or without radiotherapy) designed to kill all of the cancerous cells in your body. However, if a cure is unlikely, a more moderate treatment programme may be used, which can often provide long-term relief from symptoms.'),
('malaria', 'diarrhoea', 'chills', 'tiredness', 'vomiting', 'muscle pains', 'Malaria is a mosquito-borne infectious disease of humans and other animals caused by eukaryotic protists (a type of microorganism) of the genus Plasmodium. The protists first infect the liver, then act as parasites within red blood cells, causing symptoms that typically include fever and headache, in severe cases progressing to coma or death. The disease is widespread in tropical and subtropical regions in a broad band around the equator, including much of Sub-Saharan Africa, Asia, and the Americas.Five species of Plasmodium can infect and be transmitted by humans. Severe disease is largely caused by P. falciparum while the disease caused by P. vivax, P. ovale, and P. malariae is generally a milder form that is rarely fatal. The zoonotic species P. knowlesi, prevalent in Southeast Asia, causes malaria in macaques but can also cause severe infections in humans. Malaria is prevalent in tropical regions because the significant amounts of rainfall, consistently high temperatures and high h', 'If malaria is diagnosed and treated promptly, a full recovery can be expected. Treatment should be started as soon as your blood test confirms malaria. The same antimalarial medicines used to prevent malaria can also be used to treat malaria. However, if you have taken an antimalarial as prevention, you should not take the same one to treat malaria. Tell the doctor treating you the name of the tablets that you took to prevent malaria.'),
('meningitis', 'stiff neck', 'altered mental status', 'seizures', 'fever', 'headache', 'Meningitis is inflammation of the protective membranes covering the brain and spinal cord, known collectively as the meninges. The inflammation may be caused by infection with viruses, bacteria, or other microorganisms, and less commonly by certain drugs. Meningitis can be life-threatening because of the inflammations proximity to the brain and spinal cord; therefore the condition is classified as a medical emergency. The most common symptoms of meningitis are headache and neck stiffness associated with fever, confusion or altered consciousness, vomiting, and an inability to tolerate light (photophobia) or loud noises (phonophobia). Sometimes, especially in small children, only nonspecific symptoms may be present, such as irritability and drowsiness. If a rash is present, it may indicate a particular cause of meningitis; for instance, meningitis caused by meningococcal bacteria may be accompanied by a characteristic rash.', 'If the symptoms of viral meningitis are severe enough to require admission to hospital, the condition will be treated in the same way as bacterial meningitis with antibiotics. Once a diagnosis of viral meningitis has been confirmed, the antibiotics will be withdrawn. However, intravenous fluids will be continued to support the body as it recovers. In very severe cases, where someone is in hospital with viral meningitis, anti-viral medicines may be given.'),
('migraine', 'disturbance of vision', 'fatigue', 'sweating', 'irritability to bright lights or noise', 'severe headache', 'Migraine is a chronic disorder characterized by moderate to severe headaches, and nausea. Although some believe it to be a neurological disorder, there is no evidence to confirm this theory. Migraines are about three times more common in women than in men. The word derives from the Greek ????????? (hemikrania), "pain on one side of the head", from ???- (hemi-), "half", and ??????? (kranion), "skull". A typical migraine headache is unilateral (affecting one half of the head) and pulsating in nature and lasting from two to 72 hours; symptoms include nausea, vomiting, photophobia (increased sensitivity to light) and phonophobia (increased sensitivity to sound); the symptoms are generally aggravated by routine activity. Approximately one-third of people who suffer from migraine headaches perceive an aura—transient visual, sensory, language, or motor disturbances signaling the migraine will soon occur.', 'Many people who have migraines find that over-the-counter painkillers, such as paracetamol and aspirin, can help to reduce their symptoms. When taking paracetamol or aspirin, always make sure you read the instructions on the packaging and follow the dosage recommendations. Children under 16 should not take aspirin unless it is under the guidance of a healthcare professional. Aspirin is also not recommended for adults who have, or have had in the past, stomach problems, such as a peptic ulcer, liver problems or kidney problems. Some people find that the painkiller codeine makes migraine worse. This can be because it increases the nausea associated with the migraine.'),
('plague', 'headache', 'abdominal pain', 'chills', 'weakness', 'fever', 'Bubonic plague is a zoonotic disease, circulating mainly among small rodents and their fleas, and is one of three types of infections caused by Yersinia pestis (formerly known as Pasteurella pestis), which belongs to the family Enterobacteriaceae. Without treatment, the bubonic plague kills about two thirds of infected humans within 4 days. The term bubonic plague is derived from the Greek word ??????, meaning "groin." Swollen lymph nodes (buboes) especially occur in the armpit and groin in persons suffering from bubonic plague. Bubonic plague was often used synonymously for plague, but it does in fact refer specifically to an infection that enters through the skin and travels through the lymphatics, as is often seen in flea-borne infections.', 'As soon as a diagnosis of suspected plague is made, the patient should be isolated, and local and state health departments should be notified. Confirmatory laboratory work should be initiated, including blood cultures and examination of lymph node specimens if possible. Drug therapy should begin as soon as possible after the laboratory specimens are taken. The drugs of choice are streptomycin or gentamycin, but a number of other antibiotics are also effective (please read the box below for more information about plague treatment). Those individuals closely associated with the patient, particularly in cases with pneumonia, should be traced, identified, and evaluated. Contacts of pneumonic plague patients should be placed under observation or given preventive antibiotic therapy, depending on the degree and timing of contact.'),
('rabies', 'anxiety', 'tiredness', 'excitement', 'fever', 'headache', 'Rabies (pronounced /?re?bi?z/. From Latin: rabies, "madness") is a viral disease that causes acute encephalitis (inflammation of the brain) in warm-blooded animals. It is zoonotic (i.e., transmissible from animals to humans), most commonly by a bite from an infected animal. For a human, rabies is almost invariably fatal if post-exposure prophylaxis is not administered prior to the onset of severe symptoms. The rabies virus infects the central nervous system, ultimately causing disease in the brain and death. The rabies virus travels to the brain by following the peripheral nerves. The incubation period of the disease is usually a few months in humans, depending on the distance the virus must travel to reach the central nervous system. Once the rabies virus reaches the central nervous system and symptoms begin to show, the infection is effectively untreatable and usually fatal within days.', 'There are currently no effective treatments for rabies. Therefore the only effective option is to try to prevent the rabies virus spreading from the site of the bite to the brain and nervous system. This is done by cleaning out the wound and administering several doses of the rabies vaccine and a type of blood product known as immunoglobulin, which contains rabies-fighting antibodies. This is known as post-exposure prophylaxis.If you are travelling in a part of the world that is known to have high levels of rabies and you are bitten by an animal, seek immediate medical attention so that you can receive post-exposure prophylaxis.'),
('swine flu', 'coughing', 'tiredness', 'diarrhoea', 'sore throat', 'headache', 'Influenza A (H1N1) virus is a subtype of influenza A virus and was the most common cause of human influenza (flu) in 2009. Some strains of H1N1 are endemic in humans and cause a small fraction of all influenza-like illness and a small fraction of all seasonal influenza. H1N1 (pronounced "HEE-NEE" by healthcare professionals) strains caused a small percentage of all human flu infections in 2004–2005. Other strains of H1N1 are endemic in pigs (swine influenza) and in birds (avian influenza).', 'Antibiotics are not prescribed for flu as they have no effect on viruses. However, occasionally it may be necessary to treat complications of flu, especially serious chest infections or pneumonia, with a course of antibiotics.'),
('tonsillitis', 'rash', 'change in voice', 'glands in neck', 'throat pain', 'fever', 'Tonsillitis is inflammation of the tonsils most commonly caused by a viral or bacterial infection. Symptoms of tonsillitis include sore throat and fever. While no treatment has been found to shorten the duration of viral tonsillitis, bacterial causes such as streptococcal pharyngitis are treatable with antibiotics. It usually takes one to three weeks to recover.', 'Over-the-counter (OTC) painkillers such as paracetamol and ibuprofen can help relieve symptoms such as a sore throat. When treating children with painkillers it is important to check you have bought the correct type and dosage as younger children only need small dosages. Your pharmacist will be able to advise you. Children under 16 years of age should not take aspirin. There are also over-the-counter treatments that can soothe a sore throat, such as lozenges and oral sprays. Some people find that gargling with a mild antiseptic solution can help relieve a sore throat. An alternative method is to gargle with warm salty water. Mix half a teaspoon of salt (2.5g) with a quarter of a litre (eight ounces) of water. It is important never to swallow the water so this method may not be suitable for younger children.'),
('tuberculosis', 'coughing up blood', 'weight loss', 'night sweats', 'fever', 'chest-pain', 'Tuberculosis, MTB, or TB (short for tubercle bacillus) is a common, and in many cases lethal, infectious disease caused by various strains of mycobacteria, usually Mycobacterium tuberculosis. Tuberculosis typically attacks the lungs but can also affect other parts of the body. It is spread through the air when people who have an active TB infection cough, sneeze, or otherwise transmit their saliva through the air. Most infections are asymptomatic and latent, but about one in ten latent infections eventually progresses to active disease which, if left untreated, kills more than 50% of those so infected.', 'Pulmonary TB is treated using a six-month course of a combination of antibiotics. The usual course of treatment is: two antibiotics - isoniazid and rifampicin - every day for six months, two additional antibiotics - pyrazinamide and ethambutol - every day for the first two months.'),
('typhoid', 'constipation', 'weight loss', 'diarrhoea', 'back-ache', 'headache', 'Typhoid fever, also known as Typhoid, is a common worldwide bacterial disease, transmitted by the ingestion of food or water contaminated with the feces of an infected person, which contain the bacterium Salmonella typhi, serovar Typhi. The bacteria then perforate through the intestinal wall and are phagocytosed by macrophages. The organism is a Gram-negative short bacillus that is motile due to its peritrichous flagella. The bacterium grows best at 37°C / 98.6°F – human body temperature. This fever received various names, such as gastric fever, abdominal typhus, infantile remittant fever, slow fever, nervous fever, pythogenic fever, etc. The name of "typhoid" comes from the neuropsychiatric symptoms common to typhoid and typhus (from Greek ?????, "stupor").', 'If typhoid fever is diagnosed in its early stages, usually during the first week, a course of antibiotic tablets may be prescribed for you. Most people require a 7- to 14-day course of antibiotics. Some strains of the Salmonella typhi bacteria have developed a resistance to one or more types of antibiotics. Therefore, you may be prescribed a combination of different antibiotics, depending on where in the world the infection is thought to have originated. Make sure that you rest, drink plenty of fluids and eat regular meals. You may be able to tolerate eating smaller, more frequent meals rather than three larger meals a day.'),
('viral fever', 'coughing', 'fatigue', 'skin rashes', 'fever', 'headache', 'The viral hemorrhagic (or haemorrhagic) fevers (VHFs) are a diverse group of animal and human illnesses that may be caused by four distinct families of RNA viruses: the families Arenaviridae, Filoviridae, Bunyaviridae, and Flaviviridae. All types of VHF are characterized by fever and bleeding disorders and all can progress to high fever, shock and death in many cases. Some of the VHF agents cause relatively mild illnesses, such as the Scandinavian nephropathia epidemica, while others, such as the African Ebola virus, can cause severe, life-threatening disease.', 'If you have a fever, it’s important to keep yourself well hydrated by giving them plenty of cool water to drink. Even if you are not thirsty, try to drink little and often to keep the fluid levels up. Take paracetamol or ibuprofen.'),
('yellow fever', 'slow heartbeat', 'nausea', 'bloody nose', 'headache', 'fever', 'Yellow fever is an acute viral hemorrhagic disease. The virus is a 40 to 50 nm enveloped RNA virus with positive sense of the Flaviviridae family. The yellow fever virus is transmitted by the bite of female mosquitoes (the yellow fever mosquito, Aedes aegypti, and other species) and is found in tropical and subtropical areas in South America and Africa, but not in Asia. The only known hosts of the virus are primates and several species of mosquito. The origin of the disease is most likely to be Africa, from where it was introduced to South America through the slave trade in the 16th century. Since the 17th century, several major epidemics of the disease have been recorded in the Americas, Africa and Europe. In the 19th century, yellow fever was deemed one of the most dangerous infectious diseases.', 'People who experience mild yellow fever symptoms usually have symptoms for a couple of days. During this time, treatment to relieve symptoms can include: Resting in bed, Drinking plenty of fluids, Taking medication such as acetaminophen (not aspirin) to relieve fever and discomfort.');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `name` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`name`, `city`, `link`) VALUES
('AIIMS', 'Delhi', 'http://www.aiims.edu'),
('Amri Hospitals', 'Kolkata', 'http://www.amrihospital.com'),
('Apex Hospital', 'Jaipur', 'http://www.apexhospital.in/'),
('Apollo Gleneagles Hospital', 'Kolkata', 'http://kolkata.apollohospitals.com'),
('Apollo Hospital', 'Ahmedabad', 'http://www.apolloahd.com'),
('Apollo Specialty Hospital', 'Chennai', 'http://www.apollohospitals.com'),
('Bangalore Hospital', 'Bangalore', 'http://www.bangalorehospital.co.in'),
('Billroth Hospital', 'Chennai', 'http://www.billrothhospitals.com'),
('BM Birla Heart Research Institute', 'Kolkata', 'http://www.birlaheart.org'),
('Chaitanya Hospital', 'Chandigarh', 'http://chaitanyahospital.org'),
('Child Trust Hospital', 'Chennai', 'http://www.childstrusthospital.in'),
('CIMS Hospital', 'Ahmedabad', 'http://www.cims.me'),
('Columbia Asia Hospital', 'Bangalore', 'http://www.columbiaasia.com'),
('Cooper Hospital', 'Mumbai', 'http://www.mdacs.org'),
('Dindayal Memorial Hospital', 'Pune', 'http://www.deendayalhospital.com'),
('Dr. Agarwal''s Eye Hospital Ltd.', 'Chennai', 'http://www.dragarwal.com'),
('Dr. Ram Manohar Lohia Hospital', 'Delhi', 'http://rmlh.nic.in'),
('Dr.Balabhai Nanavati Hospital', 'Mumbai', 'http://www.nanavatihospital.org'),
('Fernandez Hospital', 'Hyderabad', 'http://www.fernandezhospital.com'),
('Ford Hospital and Research Centre', 'Patna', 'http://www.fordhospital.org'),
('Global Hospital', 'Hyderabad', 'http://www.globalhospitalsindia.com'),
('Hardikar Hospital', 'Pune', 'http://www.hardikarhospital.org'),
('Hinduja Hospital', 'Mumbai', 'http://www.hindujahospital.com'),
('Hosmat Hospital', 'Bangalore', 'http://www.hosmatnet.com'),
('Image Hospital', 'Hyderabad', 'http://www.imagehospitals.com'),
('Jagdish Memorial Hospital', 'Patna', 'http://jagdishhospital.com'),
('Jaipur Hospital', 'Jaipur', 'www.jaipurhospital.in'),
('Jaslok Hospital', 'Mumbai', 'http://www.jaslokhospital.net'),
('Jehangir Hospital', 'Pune', 'http://www.jehangirhospital.com'),
('Kamineni', 'Hyderabad', 'http://www.kaminenihospitals.com'),
('Koshy''s Hospital', 'Bangalore', 'http://www.koshyshospital.com'),
('L V Prasad Eye Institute', 'Hyderabad', 'http://www.lvpei.org'),
('Lilavati Hospital', 'Mumbai', 'http://www.lilavatihospital.com'),
('Manipal Hospital', 'Bangalore', 'http://www.manipalhospitals.com'),
('Max Hospital', 'Delhi', 'http://www.maxhealthcare.in'),
('Monilek Hospital', 'Jaipur', 'http://www.monilekhospital.com'),
('Moolchand Hospital', 'Delhi', 'http://www.moolchandfertility.com'),
('Mukat Hospital & Heart Institute', 'Chandigarh', 'http://mukathospital.com'),
('Oyster & Pearl Hospital', 'Pune', 'http://www.onphospital.com'),
('Ruby General Hospital', 'Kolkata', 'http://www.rubyhospital.com'),
('Ruby Hall Clinic', 'Pune', 'http://rubyhall.com'),
('S.A.L Hospital', 'Ahmedabad', 'http://www.salhospital.com'),
('Sagar Hospitals', 'Bangalore', 'http://www.sagarhospitals.in'),
('Sahai Hospital & Research Centre', 'Jaipur', 'http://www.sahaihospital.com/'),
('Sahyadri Hospital', 'Pune', 'http://www.sahyadrihospital.com'),
('Sancheti Hospital', 'Pune', 'http://www.sanchetihospital.org'),
('Sant Parmanand Hospital', 'Delhi', 'http://sphdelhi.org'),
('Seba Hospital', 'Kolkata', 'http://www.sebahospital.org'),
('Shalby Hospitals', 'Ahmedabad', 'http://www.shelby.org'),
('SIR Ganga Ram Hospital', 'Delhi', 'http://www.sgrh.com'),
('St Stephens Hospital', 'Delhi', 'http://www.ststephenshospital.org'),
('Sunflower Women''s Hospital', 'Ahmedabad', 'http://www.sunflowerhospital.in'),
('Victoria Hospital', 'Bangalore', 'http://www.bmcri.org/victoria_hosp.html'),
('Vijaya Hospital', 'Chennai', 'http://www.vijayahospital.org'),
('Woodlands Hospital', 'Kolkata', 'http://www.woodlandshospital.in'),
('Yashoda Hospital', 'Hyderabad', 'http://www.yashodahospitals.com');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE IF NOT EXISTS `keywords` (
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`name`) VALUES
('abdominal cramping'),
('abdominal pain'),
('altered mental status'),
('anemia'),
('anxiety'),
('appetite loss'),
('back-ache'),
('back-pain'),
('blood in urine'),
('blood-tinged saliva'),
('bloody nose'),
('breast-pain'),
('change in voice'),
('chest-pain'),
('chest-tightness'),
('chills'),
('constipation'),
('coughing'),
('coughing up blood'),
('crusting of skin'),
('dark urine'),
('dehydration'),
('diarrhoea'),
('difficulty breathing'),
('difficulty swallowing'),
('disturbance of vision'),
('dizziness'),
('dry cough'),
('dry skin'),
('excess sweating'),
('excitement'),
('exhaustion'),
('Eye Problems'),
('fainting'),
('fatigue'),
('fever'),
('fluid discharge'),
('frequent urination'),
('glands in neck'),
('headache'),
('hoarseness'),
('hunger pangs'),
('inflammation of joints'),
('irritability to bright lights or noise'),
('itching'),
('itchy rashes on skin'),
('joint pain'),
('lack of energy'),
('limited function of joints'),
('loss of conciousness'),
('loss of fingers or toes'),
('low blood pressure'),
('low fever'),
('lump in underarm'),
('lymph nodes swelling'),
('mental confusion'),
('muscle pain'),
('muscle pains'),
('muscle weakness'),
('nausea'),
('night sweats'),
('pain while moving eyes'),
('paleness'),
('pneumonia'),
('rapid heart rate'),
('rash'),
('scabs'),
('seizures'),
('shortness of breath'),
('skin irritation'),
('skin rashes'),
('skin stiffness'),
('slow heartbeat'),
('sore throat'),
('stiff neck'),
('stiffness in joints'),
('stool'),
('sweating'),
('swelling in breast area'),
('swelling of ankles'),
('swollen glands'),
('tenderness in joints'),
('throat pain'),
('tiredness'),
('vomiting'),
('warmth in joints'),
('weakness'),
('weight loss'),
('wheezing');

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE IF NOT EXISTS `ngo` (
  `name` varchar(100) NOT NULL,
  `city` varchar(40) NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`name`, `city`, `link`) VALUES
('Aarogyasri Health Care Trust', 'Hyderabad', 'http://www.aarogyasri.org/'),
('Aarthy Charitable Trust ', 'Chennai', 'http://www.aarathy.org/'),
('Akankssha Charitable Trust', 'Hyderabad', 'http://www.akankssha.org/'),
('AM Charitable Trust', 'Hyderabad', 'http://www.cancerhope.org/'),
('APSACS - AP State AIDS Control Society', 'Hyderabad', 'http://www.apsacs.org/english/index.asp'),
('Ashwinikumar Medical Relief Society', 'Mumbai', 'http://www.ashwinikumar-stoptb.org/'),
('Bombay Leprosy Project', 'Mumbai', 'http://www.bombayleprosy.org/'),
('Canstop - Sundaram Medical Foundation', 'Chennai', 'http://www.canstop.org/'),
('Center for Advocacy in Mental Health', 'Pune', 'http://www.camhindia.org/'),
('Center for Enquiry Into Health and Allied Themes (CEHAT)', 'Mumbai', 'http://www.cehat.org/'),
('Centre for Health and Social Justice (CHSJ)', 'Delhi', 'http://www.chsj.org/'),
('Centre for Health Education Training and Nutrition Awareness (CHETNA)', 'Ahmedabad', ' http://www.chetnaindia.org/'),
('Child in Need Institute', 'Kolkata', 'http://www.cini-india.org/ProjectSRCH.asp'),
('Community Development Medicinal Unit', 'Kolkata', 'http://www.cdmubengal.org/'),
('Delhi Osteoporosis Foundation', 'Delhi', 'http://drchopra.com/doff/'),
('Dr. Reddys Foundation for Health education (DRFHE)', 'Hyderabad', 'http://www.drfhe.com/'),
('eHealth-Care Foundation', 'Delhi', 'http://www.ehealth-care.net/'),
('Foundation for Research in Community Health (FRCH)', 'Pune', 'http://www.frch.org/'),
('FPA India', 'Mumbai', 'http://www.fpaindia.org/'),
('Freedom Foundation', 'Bangalore', 'http://www.thefreedomfoundation.org/'),
('Healing Fields Foundation (HFF)', 'Hyderabad', 'http://www.healing-fields.org/'),
('Hope Kolkata Foundation', 'Kolkata', 'http://www.hopechild.org/'),
('Humlog', 'Chandigarh', 'http://www.humlog.org/'),
('IC HEALTH', 'Delhi', 'http://www.ichealth.org/'),
('India Health Foundation', 'Hyderabad', 'http://indiahealthfoundation.org/'),
('Indiacancer.org', 'Mumbai', 'http://www.indiacancer.org/'),
('Innovative Centre for Biosciences (ICBio)', 'Bangalore', 'http://www.icbio.org/'),
('Karmayog', 'Mumbai', 'http://www.karmayog.org/'),
('Mahila Dakshata Samiti', 'Bangalore', 'http://www.mahiladakshatasamiti.org/'),
('Mamta health institute for mother and child', 'Delhi', 'http://www.mamta-himc.org/'),
('Medico Friend Circle', 'Pune', 'http://www.geocities.com/mfcircle/'),
('Mohan Foundation (Multi Organ Harvesting Aid Network)', 'Chennai', 'http://www.mohanfoundation.org/'),
('Nalamdana', 'Chennai', 'http://www.nalamdana.org/'),
('Narmada Kidney Foundation', 'Mumbai', 'http://www.narmadakidney.org/'),
('Nava Chaithanya ', 'Bangalore', 'http://www.navachaithanya.com/'),
('Naz Foundation (India) Trust', 'Delhi', 'http://www.nazindia.org/'),
('Niamath Research Foundation', 'Chennai', 'http://www.herbalniamaths.com/'),
('Nightingale Medical Trust', 'Bangalore', 'http://www.nightingaleseldercare.com/'),
('Niramaya Health Foundation', 'Mumbai', 'http://www.niramaya.org/'),
('Nutrition Society of India (NSI)', 'Hyderabad', 'http://www.nutritionsocietyindia.org/'),
('Partha\\''s Alternative Medical and Research Foundation', 'Chennai', 'http://www.geocities.com/acupunctureindia'),
('Prayas', 'Pune', 'http://www.prayaspune.org/'),
('Prerna Social Development and Welfare Society', 'Delhi', 'http://www.prerna.org/'),
('Public Health Foundation of India', 'Delhi', 'http://www.phfi.org/'),
('Saathi', 'Kolkata', 'http://www.saathii.org/'),
('Samarth Gastroenterology', 'Pune', 'http://www.samarthgastroenterology.com/'),
('SCARF-Schizophrenia Research Foundation', 'Chennai', 'http://www.scarfindia.org/'),
('Smile Foundation', 'Delhi', 'http://www.smilefoundationindia.org/'),
('Sneha-India', 'Mumbai', 'http://www.sneha-india.org/'),
('Sri Guru Raghavendra Charitable Trust ', 'Bangalore', 'http://www.sgrv.org/home.html'),
('The Vasantha Memorial trust for Cancer Care & Cure', 'Chennai', 'http://www.vasantha.org/'),
('Trinity Care Foundation', 'Bangalore', 'http://www.antya.com/detail/Trinity-Care-Foundatio');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `address` varchar(400) NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `height` varchar(10) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `medical_history` varchar(400) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`member_id`, `username`, `age`, `gender`, `address`, `email`, `blood_group`, `height`, `weight`, `medical_history`, `password`) VALUES
(2, 'xyz', 1, '1', '1', 'xyz@xyz.com', '1', '1', '1', '1', 'd16fb36f0911f878998c136191af705e'),
(3, 'mno', 1, '1', '1', 'mno@mno.com', '1', '1', '1', '1a<br>VDoc+ diognised you with a<br><br>***VDoc+ diognised you with a***<br><br>***VDoc+ diognised you with b***<br><br>***VDoc+ diagnosed you with chickenpox***<br><br>***VDoc+ diagnosed you with ***<br><br>***VDoc+ diagnosed you with typhoid***<br><br>***VDoc+ diagnosed you with typhoid***<br><br>***VDoc+ diagnosed you with ***<br><br>***VDoc+ diagnosed you with typhoid***<br><br>***VDoc+ diagno', 'd1cf6a6090003989122c4483ed135d55'),
(4, 'Somsubhra', 19, 'Male', '***', 'somsubhra.bairi@gmail.com', 'o+', '180', '60', '***<br>***VDoc+ diagnosed you with typhoid***<br><br>***VDoc+ diagnosed you with tonsillitis***<br>', '45b505d095d5b6286ab77abef53f6785');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
