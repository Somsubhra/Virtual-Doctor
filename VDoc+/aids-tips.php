<?php
	require_once('auth.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>VDoc+: Health Tips-AIDS</title><link rel="stylesheet" href="code/style.css" /><link rel="stylesheet" href="code/menu_style.css" />

</head>

<body>

<div id="header" align="right">Welcome <?php echo $_SESSION['SESS_FIRST_NAME'];?> | <a href="logout.php" target="_parent">Logout</a></div>

<ul id="menu">
<li><a href="member-index.php" target="mainFrame">Home</a></li>
<li><a href="symptoms.php" target="mainFrame">Evaluate Symptoms</a></li>
<li><a href="#" target="mainFrame">Ailments</a>
	<ul>
    <li><a href="#" target="mainFrame">Lung Diseases</a><ul><li><a href="bronchitis.php" target="mainFrame">Bronchitis</a></li><li><a href="asthma.php" target="mainFrame">Asthma</a></li><li><a href="tuberculosis.php" target="mainFrame">Tuberculosis</a></li></ul></li>
    <li><a href="#" target="mainFrame">STD</a><ul><li><a href="aids.php" target="mainFrame">AIDS</a></li><li><a href="gonorrhea.php" target="mainFrame">Gonorrhea</a></li><li><a href="syphilis.php" target="mainFrame">Syphilis</a></li></ul></li>
    <li><a href="#" target="mainFrame">Cancer</a><ul><li><a href="lung-cancer.php" target="mainFrame">Lung</a></li><li><a href="mouth-cancer.php" target="mainFrame">Mouth</a></li><li><a href="breast-cancer.php" target="mainFrame">Breast</a></li></ul></li>
    <li><a href="diabetes.php" target="mainFrame">Diabetes</a></li>
    <li><a href="heart.php" target="mainFrame">Heart Ailments</a></li>
    </ul>
</li>

<li><a href="#" target="mainFrame">Health Tips</a>
	<ul>
    <li><a href="#" target="mainFrame">Lung Diseases</a><ul><li><a href="bronchitis-tips.php" target="mainFrame">Bronchitis</a></li><li><a href="asthma-tips.php" target="mainFrame">Asthma</a></li><li><a href="tuberculosis-tips.php" target="mainFrame">Tuberculosis</a></li></ul></li>
    <li><a href="#" target="mainFrame">STD</a><ul><li><a href="aids-tips.php" target="mainFrame">AIDS</a></li><li><a href="gonorrhea-tips.php" target="mainFrame">Gonorrhea</a></li><li><a href="syphilis-tips.php" target="mainFrame">Syphilis</a></li></ul></li>
    <li><a href="#" target="mainFrame">Cancer</a><ul><li><a href="lung-cancer-tips.php" target="mainFrame">Lung</a></li><li><a href="mouth-cancer-tips.php" target="mainFrame">Mouth</a></li><li><a href="breast-cancer-tips.php" target="mainFrame">Breast</a></li></ul></li>
    <li><a href="diabetes-tips.php" target="mainFrame">Diabetes</a></li>
    <li><a href="heart-tips.php" target="mainFrame">Heart Ailments</a></li>
    </ul>
</li>
<li><a href="#" target="mainFrame">First-Aid</a>
<ul>
<li><a href="electric-shock.php" target="mainFrame">Electric Shock</a></li>
<li><a href="burns.php" target="mainFrame">Burns</a></li>
<li><a href="cuts-scrapes.php" target="mainFrame">Cuts and Scrapes</a></li>
<li><a href="nosebleed.php" target="mainFrame">Nosebleed</a></li>
<li><a href="resuscitation.php" target="mainFrame">Resuscitation</a></li>

</ul>

</li>

<li><a href="#" target="mainFrame">Links</a>
	<ul>
    <li><a href="hospital.php" target="mainFrame">Hospitals</a></li>
   
    <li><a href="ngo.php" target="mainFrame">NGOs</a></li>
    </ul>
</li>

<li><a href="medical-history.php" target="mainFrame">Medical History</a></li>

</ul>

<h1>Health Tips-AIDS</h1><hr>
<p>
1. Practice safe sex. This is paramount on the list. Says Dr. Englund, "Practicing safe sex is essential.” Understand how the virus is transmitted to reduce the risk of infecting others. Use condoms not only to avoid the spread of HIV, but also to protect both you and your partner against other sexually transmitted diseases (STDs) and other types of infections.
<br />
2. Get tested for other STDs. If you have another STD, also known as sexually transmitted infections, or STIs, you may be more likely to transmit both HIV and your other STD to someone else. STDs can also worsen HIV and make the disease progress more rapidly. And HIV can make STDs more difficult to treat, so you’ll want to address an STD as soon as possible. Getting tested is a must because many STDs don't cause any symptoms — without testing, you may not even realize you have one.
<br />
3. Prevent infections and illnesses. Since HIV makes your immune system less effective, you become more susceptible to every virus, bacteria, and germ you're exposed to. Wash your hands frequently, and stay away from sick people to stay as healthy as possible. Also stay up-to-date on all of your vaccinations to reduce your risk of preventable illnesses.
<br />
4. Follow doctor's orders about your prescriptions. It's crucial to take your HIV medication exactly as prescribed by your doctor. Skipping even one day of medication can give the virus an opportunity to become resistant to the drugs, making them ineffective against the virus, says Englund. Be sure to take prescriptions at the same time every day, and always have your medication with you so that if you are away from home, you won’t have to miss a dose.
<br />
5. Don't abuse drugs or alcohol. Alcohol and drug overuse can contribute to feelings of depression. Avoid illegal drugs and take prescription drugs as directed by your doctor to help protect your immune system. Avoiding drug abuse can also help to prevent cognitive (thinking and reasoning) impairment, which is important in minimizing HIV-related dementia.
<br />
6. Quit smoking. Giving up cigarettes is beneficial for anyone. Stopping all tobacco use will help you live healthier and feel better, according to Englund, as well as prevent a number of health problems and reduce your risk of serious events like heart attack and stroke.
<br />
7. Manage physical and emotional health problems. Depression is common among people with HIV, and the stress associated with having HIV can worsen depression symptoms. What’s more, both stress and depression can worsen physical pain associated with HIV. Keeping stress, depression, and pain under control can help improve your physical and emotional health, making life with HIV easier. See a mental health professional if you feel you’re experiencing depression, and be sure to mention that you’re taking medication for HIV to avoid potential drug interactions between depression and HIV medicines.
<br />
8. Exercise mind and body. Physical and mental exercise can keep your mind and body strong. Regular physical exercise, such as walking, biking, running, swimming, or another activity you enjoy, keeps you physically fit and can keep both stress and depression in check. Physical exercise significantly helps the immune system as well. Mental exercise — doing a daily crossword puzzle or playing brain-challenging games — can help maintain your cognitive health. Exercise your memory, concentration, and attention, all of which can be affected by HIV.
<br />
The keys to staying healthy with HIV are within your control. Live a healthy lifestyle. Fuel your body with a healthy, nutritious, and balanced diet, and allow it to recharge each night with enough quality sleep. Treat your body well to strengthen it, so that it can defend against illnesses that could threaten your health.
</p>
</body>
</html>
