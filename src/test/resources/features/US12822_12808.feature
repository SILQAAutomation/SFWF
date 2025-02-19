#User Story 12822 - Payment Process

@Main_feature @US12822_12828 @GOC
Feature: User Story 12822 - Payment Process for Registration

   #Scenario1
  @Payment_at_counter_for_Agro-Processing-Enterprise @Save_continue_test
  Scenario Outline: Payment at counter for Registration as Agro-Processing Enterprise-Application form

    Given I am on SFWF Front Office Home Page GOC "<Browser>"
    When I Input Registered Maupass User's Username "<Username>" and Password "<FPassword>"
    And I Click on Sign In button in Maupass
    And I Verify Applicant's Successful Login
    And I Click on Register as Farmer
    And I Verify that User is directed to My Application Page
    And I Verify display of Farmers Card link
    And I Verify Programmes link
    And I Click on New Button to apply for Registration
    And I Verify display of Registration Type Page
    And I Click on Agro Processing Enterprise
    And I Verify display of REGISTRATION FOR AGRO-PROCESSING ENTERPRISE Page
    And I Input Associate/Society/Company Name "<Co_Name>"
    And I Input Represented by "<Rep_by>"
    And I Input Business Registration No(BRN) for Agro-Processing Enterprise "<BRN>"
    And I Input Certificate of Incorporation No for Agro-Processing Enterprise "<Cert_No>"
    And I Select Activity "<Act>"
    And I Input Office Address "<Off_Add>"
    And I Input Enterprise Address "<Enterprise_Address>"
    And I Select No of years for Registration membership "<Year_dur>"
    And I Input List of Products manufactured "<Prod_man>"
    And I Select Status of Applicant for Agro-Processing Enterprise "<Status_Applicant>"
    And I Click on Save and Continue
    And I Verify Upload Required Documents Page is displayed
    And I Upload Business Registration Card "<Upload_test>"
    And I Upload Certificate of Incorporation "<Upload_test>"
    And I Upload List of Directors/ Associates "<Upload_test>"
    And I Upload Board Resolution of Enterprise for appointment of representative(s) "<Upload_test>"
    And I Upload National Identity card of representative "<Upload_test>"
    And I Upload Location Plan Document "<Upload_test>"
    And I Upload Copy of SMEDA Certificate Document "<Upload_test>"
    And I Upload Copy of Utility Bill Document "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Add Additional Document
    And I Input Additional Document Name "<Additional_Doc_Name>"
    And I Verify Success message for adding Additional Document Name
    And I Upload Additional Document "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Save and Continue
    And I Verify Terms and Conditions Page
    And I click on I agree to the Terms and Conditions
    And I Select Bank "<Bank_Name>"
    And I Input Bank Branch for Agro-Processing Enterprise "<Bank_Branch>"
    And I Input Personal Bank Account Number Agro-Processing Enterprise "<Bank_Account_No>"
    And I Click on Submit Application "<Confirmation>"
    And I Verify Success message for application submitted
    And I Verify Application Status "<App_status>"
    And I Verify Payment Status "<Payment_Status>"
    And I Copy Application Number
    And I Click on Shopping Cart for payment
    And I Select Application for payment
    And I Click on Proceed to Payment
    And I Click on Payment Icon
    And I Select Payment Method "<Payment_method>"
    And I Click on Final Proceed to Payment
    And I Verify Message to proceed to Post Office for Payment
    And I Sign Out as Front Registered User


    Examples:
      |Browser|Username |FPassword|Password |FUsername|PwoUsername|WpoUsername|WOUsername |ITUsername|Remarks        |Bonafide|Payment_Mode |Amount_To_Pay|Co_Name        |Rep_by       |BRN        |Cert_No  |Act      |Off_Add                  |Enterprise_Address     |Status_Applicant|Year_dur|Prod_man       |No_person|Actual_ann_turnover|Status_business|Years_operation|Upload_test                        |Additional_Doc_Name      |Bank_Name  |Bank_Branch|Bank_Account_No|Confirmation|App_status|Payment_Status |Payment_method |
      |Chrome |Suraj_Jo |Admin@123|Admin@123|Finance  |PWO        |WPO        |WO         |IT_DEPT   |This is a test |Yes     |Cash         |850          |ABC Agro Co Ltd|Mr John Brown|C123456789 |XLPR852  |Full Time|The Main Road, Grand Port|Royal Road, Port Louis |Company         |1       |Tomato, Pepper |50       |10000000           |Existing       |5              |src\test\resources\Upload_Test1.pdf|Additional Document Test |ABC Banking|Port Louis |0001252563636  |Yes         |Submitted |Pending        |Counter        |

     #Scenario2
  @Payment_online_for_Agro-Processing-Enterprise
  Scenario Outline: Payment online for Registration as Agro-Processing Enterprise-Application form

    Given I am on SFWF Front Office Home Page "<Browser>"
    When I Input Registered User's Username "<Username>" and Password "<Password>"
    And I Click on Sign In button
    And I Verify Applicant's Successful Login
    And I Click on Register as Farmer
    And I Verify that User is directed to My Application Page
    And I Verify display of Farmers Card link
    And I Verify Programmes link
    And I Click on New Button to apply for Registration
    And I Verify display of Registration Type Page
    And I Click on Agro Processing Enterprise
    And I Verify display of REGISTRATION FOR AGRO-PROCESSING ENTERPRISE Page
    And I Input Associate/Society/Company Name "<Co_Name>"
    And I Input Represented by "<Rep_by>"
    And I Input Business Registration No(BRN) for Agro-Processing Enterprise "<BRN>"
    And I Input Certificate of Incorporation No for Agro-Processing Enterprise "<Cert_No>"
    And I Select Activity "<Act>"
    And I Input Office Address "<Off_Add>"
    And I Input Enterprise Address "<Enterprise_Address>"
    And I Select Duration Year for Registration membership "<Year_dur>"
    And I Input List of Products manufactured "<Prod_man>"
    And I Select Status of Applicant for Agro-Processing Enterprise "<Status_Applicant>"
    And I Click on Save and Continue
    And I Verify Upload Required Documents Page is displayed
    And I Upload Business Registration Card "<Upload_test>"
    And I Upload Certificate of Incorporation "<Upload_test>"
    And I Upload List of Directors/ Associates "<Upload_test>"
    And I Upload Board Resolution of Enterprise for appointment of representative(s) "<Upload_test>"
    And I Upload National Identity card of representative "<Upload_test>"
    And I Upload Location Plan Document "<Upload_test>"
    And I Upload Copy of SMEDA Certificate Document "<Upload_test>"
    And I Upload Copy of Utility Bill Document "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Add Additional Document
    And I Input Additional Document Name "<Additional_Doc_Name>"
    And I Verify Success message for adding Additional Document Name
    And I Upload Additional Document "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Save and Continue
    And I Verify Terms and Conditions Page
    And I click on I agree to the Terms and Conditions
    And I Select Bank "<Bank_Name>"
    And I Input Bank Branch for Agro-Processing Enterprise "<Bank_Branch>"
    And I Input Personal Bank Account Number Agro-Processing Enterprise "<Bank_Account_No>"
    And I Click on Submit Application "<Confirmation>"
    And I Verify Success message for application submitted
    And I Verify Application Status "<App_status>"
    And I Verify Payment Status "<Payment_Status>"
    And I Copy Application Number
    And I Click on Shopping Cart for payment
    And I Select Application for payment
    And I Click on Proceed to Payment
    And I Click on Payment Icon
    And I Select Payment Method "<Payment_method>"
    And I Click on Final Proceed to Online Payment
    And I Verify display of Payment Gateway
    And I Input Card Details "<Card_Number>" "<Expiry_Month>" "<Expiry_Year>" "<Cardholder_Name>" "<Security_Code>"
    And I Click on Pay Now button
    And I Verify that User is directed to My Application Page
    And I Verify Payment Status is changed to Paid
    Then I Sign Out as Front Registered User


    Examples:
      |Browser|Username |Password |Co_Name        |Rep_by       |BRN        |Cert_No  |Act      |Off_Add                  |Enterprise_Address     |Status_Applicant|Year_dur|Prod_man       |No_person|Actual_ann_turnover|Status_business|Years_operation|Upload_test                        |Additional_Doc_Name      |Bank_Name  |Bank_Branch|Bank_Account_No|Confirmation|App_status|Payment_Status |Payment_method |Card_Number        |Expiry_Month |Expiry_Year|Security_Code|Cardholder_Name|
      |Chrome |Suraj    |Admin@123|ABC Agro Co Ltd|Mr John Brown|C123456789 |XLPR852  |Full Time|The Main Road, Grand Port|Royal Road, Port Louis |Company         |1       |Tomato, Pepper |50       |10000000           |Existing       |5              |src\test\resources\Upload_Test1.pdf|Additional Document Test |ABC Banking|Port Louis |0001252563636  |Yes         |Submitted |Pending        |Credit         |5123-4500-0000-0008|01           |39         |100          |My name        |


       #Scenario3
  @Payment_at_counter_for_Farmers_Cooperative_Association
  Scenario Outline: Payment at counter for Registration for Farmers’ Cooperative Association, Society or Company

    Given I am on SFWF Front Office Home Page "<Browser>"
    When I Input Registered User's Username "<Username>" and Password "<Password>"
    And I Click on Sign In button
    And I Verify Applicant's Successful Login
    And I Click on Register as Farmer
    And I Verify that User is directed to My Application Page
    And I Verify display of Farmers Card link
    And I Verify Programmes link
    And I Click on New Button to apply for Registration
    And I Verify display of Registration Type Page
    And I Click on Farmers Cooperatives Association, Society or Company
    And I Verify display of Registration of Farmers page
    And I Input Associate/Society/Company Name "<Co_Name>"
    And I Input Represented by "<Rep_by>"
    And I Input Business Registration No.(BRN) "<BRN>"
    And I Input Certificate of Incorporation No "<Cert_No>"
    And I Select Activity "<Act>"
    And I Input Office Phone Number "<Off_Num>"
    And I Input Mobile Phone Number "<Mob_Num>"
    And I Input Office Address "<Off_Add>"
    And I Select Status of Applicant "<Status_Applicant>"
    And I Select Duration Year for Registration membership "<Year_dur>"
    And I Input List of Products manufactured "<Prod_man>"
    And I Input No. of persons employed "<No_person>"
    And I Input Actual Annual Turnover (Rs) "<Actual_ann_turnover>"
    And I Select Status of business "<Status_business>"
    And I Input No. of years of operation "<Years_operation>"
    And I Click on Save and Continue
    And I Verify Upload Required Documents Page is displayed
    And I Upload Business Registration Card "<Upload_test>"
    And I Upload Certificate of Incorporation "<Upload_test>"
    And I Upload List of Directors/ Associates "<Upload_test>"
    And I Upload Board Resolution of Enterprise for appointment of representative(s) "<Upload_test>"
    And I Upload National Identity card of representative "<Upload_test>"
    And I Upload Location Plan Document "<Upload_test>"
    And I Upload Copy of SMEDA Certificate Document "<Upload_test>"
    And I Upload Copy of Utility Bill Document "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Add Additional Document
    And I Input Additional Document Name "<Additional_Doc_Name>"
    And I Verify Success message for adding Additional Document Name
    And I Upload Additional Documents "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Save and Continue
    And I Verify Terms and Conditions Page
    And I click on I agree to the Terms and Conditions
    And I Select Bank "<Bank_Name>"
    And I Input Bank Branch "<Bank_Branch>"
    And I Input Personal Bank Account Number"<Bank_Account_No>"
    And I Click on Submit Application "<Confirmation>"
    And I Verify Success message for application submitted
    And I Verify Application Status "<App_status>"
    And I Verify Payment Status "<Payment_Status>"
    And I Copy Application Number
    And I Click on Shopping Cart for payment
    And I Select Application for payment
    And I Click on Proceed to Payment
    And I Click on Payment Icon
    And I Select Payment Method "<Payment_method>"
    And I Click on Final Proceed to Payment
    And I Verify Message to proceed to Post Office for Payment
    Then I Sign Out as Front Registered User

    Examples:
      |Browser|Username |Password |Co_Name        |Rep_by       |BRN        |Off_Num|Mob_Num  |Cert_No  |Act      |Off_Add                  |Enterprise_Address     |Status_Applicant|Year_dur|Prod_man       |No_person|Actual_ann_turnover|Status_business|Years_operation|Upload_test                        |Additional_Doc_Name      |Bank_Name  |Bank_Branch|Bank_Account_No|Confirmation|App_status|Payment_Status |Payment_method |
      |Chrome |Suraj    |Admin@123|ABC Agro Co Ltd|Mr John Brown|C123456789 |2126666|58967896 |XLPR852  |Full Time|The Main Road, Grand Port|Royal Road, Port Louis |Company         |1       |Tomato, Pepper |50       |10000000           |Existing       |5              |src\test\resources\Upload_Test1.pdf|Additional Document Test |ABC Banking|Port Louis |0001252563636  |Yes         |Submitted |Pending        |Counter        |

    #Scenario4
  @Payment_online_for_Farmers_Cooperative_Association
  Scenario Outline: Payment online for Registration for Farmers’ Cooperative Association, Society or Company

    Given I am on SFWF Front Office Home Page "<Browser>"
    When I Input Registered User's Username "<Username>" and Password "<Password>"
    And I Click on Sign In button
    And I Verify Applicant's Successful Login
    And I Click on Register as Farmer
    And I Verify that User is directed to My Application Page
    And I Verify display of Farmers Card link
    And I Verify Programmes link
    And I Click on New Button to apply for Registration
    And I Verify display of Registration Type Page
    And I Click on Farmers Cooperatives Association, Society or Company
    And I Verify display of Registration of Farmers page
    And I Input Associate/Society/Company Name "<Co_Name>"
    And I Input Represented by "<Rep_by>"
    And I Input Business Registration No.(BRN) "<BRN>"
    And I Input Certificate of Incorporation No "<Cert_No>"
    And I Select Activity "<Act>"
    And I Input Office Phone Number "<Off_Num>"
    And I Input Mobile Phone Number "<Mob_Num>"
    And I Input Office Address "<Off_Add>"
    And I Select Status of Applicant "<Status_Applicant>"
    And I Select Duration Year for Registration membership "<Year_dur>"
    And I Input List of Products manufactured "<Prod_man>"
    And I Input No. of persons employed "<No_person>"
    And I Input Actual Annual Turnover (Rs) "<Actual_ann_turnover>"
    And I Select Status of business "<Status_business>"
    And I Input No. of years of operation "<Years_operation>"
    And I Click on Save and Continue
    And I Verify Upload Required Documents Page is displayed
    And I Upload Business Registration Card "<Upload_test>"
    And I Upload Certificate of Incorporation "<Upload_test>"
    And I Upload List of Directors/ Associates "<Upload_test>"
    And I Upload Board Resolution of Enterprise for appointment of representative(s) "<Upload_test>"
    And I Upload National Identity card of representative "<Upload_test>"
    And I Upload Location Plan Document "<Upload_test>"
    And I Upload Copy of SMEDA Certificate Document "<Upload_test>"
    And I Upload Copy of Utility Bill Document "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Add Additional Document
    And I Input Additional Document Name "<Additional_Doc_Name>"
    And I Verify Success message for adding Additional Document Name
    And I Upload Additional Documents "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Save and Continue
    And I Verify Terms and Conditions Page
    And I click on I agree to the Terms and Conditions
    And I Select Bank "<Bank_Name>"
    And I Input Bank Branch "<Bank_Branch>"
    And I Input Personal Bank Account Number"<Bank_Account_No>"
    And I Click on Submit Application "<Confirmation>"
    And I Verify Success message for application submitted
    And I Verify Application Status "<App_status>"
    And I Verify Payment Status "<Payment_Status>"
    And I Copy Application Number
    And I Click on Shopping Cart for payment
    And I Select Application for payment
    And I Click on Proceed to Payment
    And I Click on Payment Icon
    And I Select Payment Method "<Payment_method>"
    And I Click on Final Proceed to Online Payment
    And I Verify display of Payment Gateway
    And I Input Card Details "<Card_Number>" "<Expiry_Month>" "<Expiry_Year>" "<Cardholder_Name>" "<Security_Code>"
    And I Click on Pay Now button
    And I Verify that User is directed to My Application Page
    And I Verify Payment Status is changed to Paid
    Then I Sign Out as Front Registered User

    Examples:
      |Browser|Username |Password |Co_Name        |Rep_by       |BRN        |Off_Num|Mob_Num  |Cert_No  |Act      |Off_Add                  |Enterprise_Address     |Status_Applicant|Year_dur|Prod_man       |No_person|Actual_ann_turnover|Status_business|Years_operation|Upload_test                        |Additional_Doc_Name      |Bank_Name  |Bank_Branch|Bank_Account_No|Confirmation|App_status|Payment_Status |Payment_method |Card_Number        |Expiry_Month |Expiry_Year|Security_Code|Cardholder_Name|
      |Chrome |Suraj    |Admin@123|ABC Agro Co Ltd|Mr John Brown|C123456789 |2126666|58967896 |XLPR852  |Full Time|The Main Road, Grand Port|Royal Road, Port Louis |Company         |1       |Tomato, Pepper |50       |10000000           |Existing       |5              |src\test\resources\Upload_Test1.pdf|Additional Document Test |ABC Banking|Port Louis |0001252563636  |Yes         |Submitted |Pending        |Credit         |5123-4500-0000-0008|01           |39         |100          |My name        |


 #Scenario5
  @Payment_at_counter_for_Small_Planters_Registration
  Scenario Outline: Payment at counter for Registration for Small Planters

    Given I am on SFWF Front Office Home Page "<Browser>"
    When I Input Registered User's Username "<Username>" and Password "<Password>"
    And I Click on Sign In button
    And I Verify Applicant's Successful Login
    And I Click on Register as Farmer
    And I Verify that User is directed to My Application Page
    And I Verify display of Farmers Card link
    And I Verify Programmes link
    And I Click on New Button to apply for Registration
    And I Verify display of Registration Type Page
    And I Click on Small Planters Icon
    And I Verify display of REGISTRATION FOR SMALL PLANTERS Page
    And I Select Applicant Title "<Applicant_Title>"
    And I Select Applicant District "<District>"
    And I Select Applicant Level of Education "<Education_Level>"
    And I Select Agricultural Activity "<Act>"
    And I Input Other Occupation "<Other_Occupation>"
    And I Upload Photograph "<Photo>"
    And I Verify for Photo upload success message
    And I Select No of years for Registration membership "<Year_dur>"
    And I Select Marital Status "<Marital_Status>"
    And I Click on Save and Continue
    And I Verify Display of Particulars of Family Beneficiaries Page
    And I Click on Add Family and Beneficiaries
    And Verify Display of Particulars of Family Beneficiaries input table
    And I Select Family relationship "<Relationship>"
    And I Input Family Surname "<Family_Surname>"
    And I Input Family Other Names "<Family_Other_Names>"
    And I Select Family Gender "<Gender>"
    And I Input Family Date of Birth "<DOB>"
    And I Input Family Occupation "<Occupation>"
    And I Click on Beneficiary of life Insurance Scheme
    And I Click on Beneficiary of Accident Insurance Scheme
    And I Save Particulars of Family and Beneficiaries
    And I Click on Save and Continue
    And I Verify Display of Particulars of Crop: Sugarcane and Tea Plantation Page
    And I Click on Add Crop
    And I Verify Display of Particulars of Crop: Sugarcane and Tea Plantation Table
    And I Input Organisation Account Number "<Org_acc_no>"
    And I Select Crop Type "<Crop_Type>"
    And I Input Total Extent of plot (In Arpent) "<Land_Extent>"
    And I Select Owner Type "<Owner_Type>"
    And I Input Plot Location "<Plot_Location>"
    And I Save Particulars of Crop
    And I Click on Save and Continue
    And I Verify Display of Particulars for Horticultural Plantations Page
    And I Click on Add Horticultural
    And Verify Display of Particulars for Horticultural Plantations Table
    And I Input Field Location "<Field_Location>"
    And I Select Production System "<Production_System>"
    And I Input Total Extent of plot - Size "<Total_Extent>"
    And I Input Crop grown at time of Registration/ Crop to be grown "<Crop_Grown>"
    And I Select Owner Type for Horticultural Plantation "<Owner_Type>"
    And I Select Plantation Type "<Plantation_Type>"
    And I Input Expected Date of Planting/Seedling "<Date_Plantation_Seedling>"
    And I Save Particulars for Horticultural Plantations
    And I Upload documents for Horticultural Plantations "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Close Horticultural Plantation Documents tab
    And I Click on Edit button for Particulars for Horticultural Plantations declared under FPS
    And I Verify Particulars for Horticultural Plantations declared under FPS Table
    And I Input Crop Status and Organisation "<Crop_Status>"
    And I Input Organisation Account Number "<Org_acc_no>"
    And I Save Particulars for Horticultural Plantations declared under FPS
    And I Click on Save and Continue
    And I Verify Declaration Page for REGISTRATION FOR SMALL PLANTERS
    And I click on I agree to the Terms and Conditions
    And I Click on Photo checkbox
    And I Select Bank "<Bank_Name>"
    And I Input Bank Branch for Agro-Processing Enterprise "<Bank_Branch>"
    And I Input Personal Bank Account Number Agro-Processing Enterprise "<Bank_Account_No>"
    And I Click on Submit Application "<Confirmation>"
    And I Verify Success message for application submitted for Small Planters Registration
    And I Click on Cancel button not to proceed with another registration
    And I Verify Application Status "<App_status>"
    And I Verify Payment Status "<Payment_Status>"
    And I Copy Application Number
    And I Click on Shopping Cart for payment
    And I Select Application for payment
    And I Click on Proceed to Payment
    And I Click on Payment Icon
    And I Select Payment Method "<Payment_method>"
    And I Click on Final Proceed to Payment
    And I Verify Message to proceed to Post Office for Payment
    Then I Sign Out as Front Registered User


    Examples:
      |Browser|Username |Password |Applicant_Title |District   |Education_Level |Act      |Other_Occupation  |Photo                               |Year_dur |Marital_Status|Relationship|Family_Surname|Family_Other_Names|Gender|DOB   |Occupation |Org_acc_no|Crop_Type|Land_Extent|Owner_Type|Plot_Location|Field_Location |Production_System|Total_Extent |Crop_Grown |Plantation_Type|Date_Plantation_Seedling |Upload_test                        |Crop_Status|Additional_Doc_Name      |Bank_Name  |Bank_Branch|Bank_Account_No|Confirmation|App_status|Payment_Status |Payment_method |
      |Chrome |Suraj    |Admin@123|Mr              |Black River|Tertiary        |Full Time|Manager           |src\test\resources\Photo_upload.jpg |1        |Married       |Spouse      |Sanon         |Kirti             |Female|1Jan94|Air Hostess|0001252563|Cane     |2.5        |Tenant    |Moka         |Port Louis     |Sheltered Farming|600M2        |Pepper     |Interline      |1Aug2030                 |src\test\resources\Upload_Test1.pdf|Harvest    |Additional Document Test |ABC Banking|Port Louis |0001252563636  |Yes         |Submitted |Pending        |Counter        |



 #Scenario 6
  @Payment_at_online_for_Small_Planters_Registration
  Scenario Outline: Payment Online for Registration for Small Planters

    Given I am on SFWF Front Office Home Page "<Browser>"
    When I Input Registered User's Username "<Username>" and Password "<Password>"
    And I Click on Sign In button
    And I Verify Applicant's Successful Login
    And I Click on Register as Farmer
    And I Verify that User is directed to My Application Page
    And I Verify display of Farmers Card link
    And I Verify Programmes link
    And I Click on New Button to apply for Registration
    And I Verify display of Registration Type Page
    And I Click on Small Planters Icon
    And I Verify display of REGISTRATION FOR SMALL PLANTERS Page
    And I Select Applicant Title "<Applicant_Title>"
    And I Select Applicant District "<District>"
    And I Select Applicant Level of Education "<Education_Level>"
    And I Select Agricultural Activity "<Act>"
    And I Input Other Occupation "<Other_Occupation>"
    And I Upload Photograph "<Photo>"
    And I Verify for Photo upload success message
    And I Select No of years for Registration membership "<Year_dur>"
    And I Select Marital Status "<Marital_Status>"
    And I Click on Save and Continue
    And I Verify Display of Particulars of Family Beneficiaries Page
    And I Click on Add Family and Beneficiaries
    And Verify Display of Particulars of Family Beneficiaries input table
    And I Select Family relationship "<Relationship>"
    And I Input Family Surname "<Family_Surname>"
    And I Input Family Other Names "<Family_Other_Names>"
    And I Select Family Gender "<Gender>"
    And I Input Family Date of Birth "<DOB>"
    And I Input Family Occupation "<Occupation>"
    And I Click on Beneficiary of life Insurance Scheme
    And I Click on Beneficiary of Accident Insurance Scheme
    And I Save Particulars of Family and Beneficiaries
    And I Click on Save and Continue
    And I Verify Display of Particulars of Crop: Sugarcane and Tea Plantation Page
    And I Click on Add Crop
    And I Verify Display of Particulars of Crop: Sugarcane and Tea Plantation Table
    And I Input Organisation Account Number "<Org_acc_no>"
    And I Select Crop Type "<Crop_Type>"
    And I Input Total Extent of plot (In Arpent) "<Land_Extent>"
    And I Select Owner Type "<Owner_Type>"
    And I Input Plot Location "<Plot_Location>"
    And I Save Particulars of Crop
    And I Click on Save and Continue
    And I Verify Display of Particulars for Horticultural Plantations Page
    And I Click on Add Horticultural
    And Verify Display of Particulars for Horticultural Plantations Table
    And I Input Field Location "<Field_Location>"
    And I Select Production System "<Production_System>"
    And I Input Total Extent of plot - Size "<Total_Extent>"
    And I Input Crop grown at time of Registration/ Crop to be grown "<Crop_Grown>"
    And I Select Owner Type for Horticultural Plantation "<Owner_Type>"
    And I Select Plantation Type "<Plantation_Type>"
    And I Input Expected Date of Planting/Seedling "<Date_Plantation_Seedling>"
    And I Save Particulars for Horticultural Plantations
    And I Upload documents for Horticultural Plantations "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Close Horticultural Plantation Documents tab
    And I Click on Edit button for Particulars for Horticultural Plantations declared under FPS
    And I Verify Particulars for Horticultural Plantations declared under FPS Table
    And I Input Crop Status and Organisation "<Crop_Status>"
    And I Input Organisation Account Number "<Org_acc_no>"
    And I Save Particulars for Horticultural Plantations declared under FPS
    And I Click on Save and Continue
    And I Verify Declaration Page for REGISTRATION FOR SMALL PLANTERS
    And I click on I agree to the Terms and Conditions
    And I Click on Photo checkbox
    And I Select Bank "<Bank_Name>"
    And I Input Bank Branch for Agro-Processing Enterprise "<Bank_Branch>"
    And I Input Personal Bank Account Number Agro-Processing Enterprise "<Bank_Account_No>"
    And I Click on Submit Application "<Confirmation>"
    And I Verify Success message for application submitted for Small Planters Registration
    And I Click on Cancel button not to proceed with another registration
    And I Verify Application Status "<App_status>"
    And I Verify Payment Status "<Payment_Status>"
    And I Copy Application Number
    And I Click on Shopping Cart for payment
    And I Select Application for payment
    And I Click on Proceed to Payment
    And I Click on Payment Icon
    And I Select Payment Method "<Payment_method>"
    And I Click on Final Proceed to Online Payment
    And I Verify display of Payment Gateway
    And I Input Card Details "<Card_Number>" "<Expiry_Month>" "<Expiry_Year>" "<Cardholder_Name>" "<Security_Code>"
    And I Click on Pay Now button
    And I Verify that User is directed to My Application Page
    And I Verify Payment Status is changed to Paid
    Then I Sign Out as Front Registered User


    Examples:
      |Browser|Username |Password |Applicant_Title |District   |Education_Level |Act      |Other_Occupation  |Photo                               |Year_dur |Marital_Status|Relationship|Family_Surname|Family_Other_Names|Gender|DOB   |Occupation |Org_acc_no|Crop_Type|Land_Extent|Owner_Type|Plot_Location|Field_Location |Production_System|Total_Extent |Crop_Grown |Plantation_Type|Date_Plantation_Seedling |Upload_test                        |Crop_Status|Additional_Doc_Name      |Bank_Name  |Bank_Branch|Bank_Account_No|Confirmation|App_status|Payment_Status |Payment_method |Card_Number        |Expiry_Month |Expiry_Year|Security_Code|Cardholder_Name|
      |Chrome |Suraj    |Admin@123|Mr              |Black River|Tertiary        |Full Time|Manager           |src\test\resources\Photo_upload.jpg |1        |Married       |Spouse      |Sanon         |Kirti             |Female|1Jan94|Air Hostess|0001252563|Cane     |2.5        |Tenant    |Moka         |Port Louis     |Sheltered Farming|600M2        |Pepper     |Interline      |1Aug2030                 |src\test\resources\Upload_Test1.pdf|Harvest    |Additional Document Test |ABC Banking|Port Louis |0001252563636  |Yes         |Submitted |Pending        |Credit         |5123-4500-0000-0008|01           |39         |100          |My name        |

#Scenario7
  @Payment_at_counter_for_Tea_grower
  Scenario Outline: Payment at counter for Registration as Tea Grower
    Given I am on SFWF Front Office Home Page "<Browser>"
    When I Input Registered User's Username "<Username>" and Password "<Password>"
    And I Click on Sign In button
    And I Verify Applicant's Successful Login
    And I Click on Register as Farmer
    And I Verify that User is directed to My Application Page
    And I Verify display of Farmers Card link
    And I Verify Programmes link
    And I Click on New Button to apply for Registration
    And I Verify display of Registration Type Page
    And I Click on Tea Grower Icon
    And I Verify display of REGISTRATION FOR TEA GROWERS Page
    And I Select an Applicant Title "<Applicant_Title>"
    And I Select Applicant District "<District>"
    And I Select Applicant Education Level "<Education_Level>"
    And I Select Agricultural Activity "<Act>"
    And I Input Other Occupation "<Other_Occupation>"
    And I Upload Photograph "<Photo>"
    And I Verify for Photo upload success message
    And I Select No of years for Registration membership "<Year_dur>"
    And I Select Marital Status "<Marital_Status>"
    And I Click on Save and Continue
    And I Verify Display of Particulars of Family Beneficiaries Page
    And I Click on Add Family and Beneficiaries
    And Verify Display of Particulars of Family Beneficiaries input table
    And I Select Family relationship for tea grower "<Relationship>"
    And I Input Family Surname "<Family_Surname>"
    And I Input Family Other Names "<Family_Other_Names>"
    And I Select Family Gender "<Gender>"
    And I Input Family Date of Birth "<DOB>"
    And I Input Family Occupation "<Occupation>"
    And I Click on Beneficiary of life Insurance Scheme
    And I Click on Beneficiary of Accident Insurance Scheme
    And I Save Particulars of Family and Beneficiaries
    And I Click on Save and Continue
    And I Verify Display of Particulars for Registration of Tea Plantation
    And I Click on Add Tea Plantation
    And I Verify Display of Particulars for Registration of Tea Plantation Table
    And I Input License No "<License>"
    And I Input Total Extent of plot (In Arpent) "<Land_Extent>"
    And I Select Type of Owner "<Owner_Type>"
    And I Input Plot Location "<Plot_Location>"
    And I Save Particulars of Crop
    And I Click on Save and Continue
    And I Verify Declaration Page for REGISTRATION FOR TEA GROWER
    And I click on I agree to the Terms and Conditions
    And I Click on Photo checkbox
    And I Select Bank "<Bank_Name>"
    And I Input Bank Branch for Agro-Processing Enterprise "<Bank_Branch>"
    And I Input Personal Bank Account Number Agro-Processing Enterprise "<Bank_Account_No>"
    And I Click on Submit Application "<Confirmation>"
    And I Verify Success message for application submitted
    And I Verify Application Status "<App_status>"
    And I Verify Payment Status "<Payment_Status>"
    And I Copy Application Number
    And I Click on Shopping Cart for payment
    And I Select Application for payment
    And I Click on Proceed to Payment
    And I Click on Payment Icon
    And I Select Payment Method "<Payment_method>"
    And I Click on Final Proceed to Payment
    And I Verify Message to proceed to Post Office for Payment
    Then I Sign Out as Front Registered User

    Examples:
      |Browser|Username |Password |Applicant_Title |District   |Education_Level |Act      |Other_Occupation  |Photo                               |Year_dur |Marital_Status|Relationship|Family_Surname|Family_Other_Names|Gender|DOB   |Occupation |License|Land_Extent|Owner_Type|Plot_Location|Upload_test                        |Additional_Doc_Name      |Bank_Name  |Bank_Branch|Bank_Account_No|Confirmation|App_status|Payment_Status |Payment_method |
      |Chrome |Suraj    |Admin@123|Mrs              |Port Louis|Tertiary        |Full Time|Manager           |src\test\resources\Photo_upload.jpg |2        |Married       |Spouse      |Keen         |Dafne            |Female|1Jan94|Actress|Tea Grower|2.7        |Tenant    |Moka        |src\test\resources\Upload_Test1.pdf|Additional Document Test |ABC Banking|Port Louis |0001252563636  |Yes         |Submitted |Pending        |Counter        |

#Scenario8
  @Payment_online_for_Tea_grower
  Scenario Outline: Payment online for Registration as Tea Grower
    Given I am on SFWF Front Office Home Page "<Browser>"
    When I Input Registered User's Username "<Username>" and Password "<Password>"
    And I Click on Sign In button
    And I Verify Applicant's Successful Login
    And I Click on Register as Farmer
    And I Verify that User is directed to My Application Page
    And I Verify display of Farmers Card link
    And I Verify Programmes link
    And I Click on New Button to apply for Registration
    And I Verify display of Registration Type Page
    And I Click on Tea Grower Icon
    And I Verify display of REGISTRATION FOR TEA GROWERS Page
    And I Select an Applicant Title "<Applicant_Title>"
    And I Select Applicant District "<District>"
    And I Select Applicant Education Level "<Education_Level>"
    And I Select Agricultural Activity "<Act>"
    And I Input Other Occupation "<Other_Occupation>"
    And I Upload Photograph "<Photo>"
    And I Verify for Photo upload success message
    And I Select No of years for Registration membership "<Year_dur>"
    And I Select Marital Status "<Marital_Status>"
    And I Click on Save and Continue
    And I Verify Display of Particulars of Family Beneficiaries Page
    And I Click on Add Family and Beneficiaries
    And Verify Display of Particulars of Family Beneficiaries input table
    And I Select Family relationship for tea grower "<Relationship>"
    And I Input Family Surname "<Family_Surname>"
    And I Input Family Other Names "<Family_Other_Names>"
    And I Select Family Gender "<Gender>"
    And I Input Family Date of Birth "<DOB>"
    And I Input Family Occupation "<Occupation>"
    And I Click on Beneficiary of life Insurance Scheme
    And I Click on Beneficiary of Accident Insurance Scheme
    And I Save Particulars of Family and Beneficiaries
    And I Click on Save and Continue
    And I Verify Display of Particulars for Registration of Tea Plantation
    And I Click on Add Tea Plantation
    And I Verify Display of Particulars for Registration of Tea Plantation Table
    And I Input License No "<License>"
    And I Input Total Extent of plot (In Arpent) "<Land_Extent>"
    And I Select Type of Owner "<Owner_Type>"
    And I Input Plot Location "<Plot_Location>"
    And I Save Particulars of Crop
    And I Click on Save and Continue
    And I Verify Declaration Page for REGISTRATION FOR TEA GROWER
    And I click on I agree to the Terms and Conditions
    And I Click on Photo checkbox
    And I Select Bank "<Bank_Name>"
    And I Input Bank Branch for Agro-Processing Enterprise "<Bank_Branch>"
    And I Input Personal Bank Account Number Agro-Processing Enterprise "<Bank_Account_No>"
    And I Click on Submit Application "<Confirmation>"
    And I Verify Success message for application submitted
    And I Verify Application Status "<App_status>"
    And I Verify Payment Status "<Payment_Status>"
    And I Copy Application Number
    And I Click on Shopping Cart for payment
    And I Select Application for payment
    And I Click on Proceed to Payment
    And I Click on Payment Icon
    And I Select Payment Method "<Payment_method>"
    And I Click on Final Proceed to Online Payment
    And I Verify display of Payment Gateway
    And I Input Card Details "<Card_Number>" "<Expiry_Month>" "<Expiry_Year>" "<Cardholder_Name>" "<Security_Code>"
    And I Click on Pay Now button
    And I Verify that User is directed to My Application Page
    And I Verify Payment Status is changed to Paid
    Then I Sign Out as Front Registered User

    Examples:
      |Browser|Username |Password |Applicant_Title |District   |Education_Level |Act      |Other_Occupation  |Photo                               |Year_dur |Marital_Status|Relationship|Family_Surname|Family_Other_Names|Gender|DOB   |Occupation |License    |Land_Extent|Owner_Type|Plot_Location |Upload_test                        |Additional_Doc_Name      |Bank_Name  |Bank_Branch|Bank_Account_No|Confirmation|App_status|Payment_Status |Payment_method |Card_Number        |Expiry_Month |Expiry_Year|Security_Code|Cardholder_Name|
      |Chrome |Suraj    |Admin@123|Mrs              |Port Louis|Tertiary        |Full Time|Manager           |src\test\resources\Photo_upload.jpg |2        |Married       |Spouse      |Keen           |Dafne            |Female|1Jan94|Actress    |Tea Grower |2.7        |Tenant    |Moka          |src\test\resources\Upload_Test1.pdf|Additional Document Test |ABC Banking|Port Louis |0001252563636  |Yes         |Submitted |Pending        |Credit         |5123-4500-0000-0008|01           |39         |100          |My name        |

#Scenario9
  @Payment_at_counter_for_Registration_as_Small_Breeder
  Scenario Outline: Payment at counter for Registration as Small Breeder

    Given I am on SFWF Front Office Home Page "<Browser>"
    When I Input Registered User's Username "<Username>" and Password "<Password>"
    And I Click on Sign In button
    And I Verify Applicant's Successful Login
    And I Click on Register as Farmer
    And I Verify that User is directed to My Application Page
    And I Verify display of Farmers Card link
    And I Verify Programmes link
    And I Click on New Button to apply for Registration
    And I Verify display of Registration Type Page
    And I Click on Small Breeder Icon
    And I Verify display of REGISTRATION FOR SMALL BREEDERS page
    And I Select an Applicant Title "<Applicant_Title>"
    And I Select Applicant District "<District>"
    And I Select Applicant Level of Education "<Education_Level>"
    And I Select Agricultural Activity "<Act>"
    And I Input Other Occupation "<Other_Occupation>"
    And I Upload Photograph "<Photo>"
    And I Verify for Photo upload success message
    And I Select No of years for Registration membership "<Year_dur>"
    And I Select Marital Status "<Marital_Status>"
    And I Click on Save and Continue
    And I Verify Display of Particulars of Family Beneficiaries Page
    And I Click on Add Family and Beneficiaries
    And Verify Display of Particulars of Family Beneficiaries input table
    And I Select Family relationship for tea grower "<Relationship>"
    And I Input Family Surname "<Family_Surname>"
    And I Input Family Other Names "<Family_Other_Names>"
    And I Select Family Gender "<Gender>"
    And I Input Family Date of Birth "<DOB>"
    And I Input Family Occupation "<Occupation>"
    And I Click on Beneficiary of life Insurance Scheme
    And I Click on Beneficiary of Accident Insurance Scheme
    And I Save Particulars of Family and Beneficiaries
    And I Click on Save and Continue
    And I Verify Display of Livestock Activity
    And I Click on Add Livestock Activity
    And I Verify Display of Particulars for Livestock Activity Table
    And I Select Species "<Spicies>"
    And I Input Number of Male and Female "<Male_Female_Number>"
    And I Input Total Heads "<Total_Heads>"
    And I Select Reason "<Reason>"
    And I Save Livestock Activity
    And I Click on Save and Continue
    And I Verify Display of Particulars for Cattle Page
    And I Click on Add Particular of Cattle
    And I Verify Display of Particulars for Cattle Table
    And I Input Microchip Number "<Microchip_No>"
    And I Select Cattle Sex "<Cattle_Sex>"
    And I Select Cattle Age "<Cattle_Age>"
    And I Save Particulars for Cattle
    And I Click on Save and Continue
    And I Verify Upload Required Documents Page is displayed
    And I Upload Copy of National Identify Card (ID) "<Upload_test>"
    And I Upload Existing SFWF Reg No (if any) "<Upload_test>"
    And I Upload copy of Title Deed "<Upload_test>"
    And I Upload Copy of registered /Non-Registered Lease Paper "<Upload_test>"
    And I Upload Copy of title deed of land owner including cooperatives (for non-registered lease paper) "<Upload_test>"
    And I Upload Preliminary environmental report, Building and land use Permit and health clearance "<Upload_test>"
    And I Upload Location plan of farm including size "<Upload_test>"
    And I Upload List of Tags Nos. (except poultry and pig) "<Upload_test>"
    And I Upload Animal Card DVs where applicable "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Add Additional Document
    And I Input Additional Document Name "<Additional_Doc_Name>"
    And I Verify Success message for adding Additional Document Name
    And I Upload Additional Document "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Save and Continue
    And I Verify Declaration Page for REGISTRATION FOR SMALL BREEDERS
    And I click on I agree to the Terms and Conditions
    And I Click on Photo checkbox
    And I Select Bank "<Bank_Name>"
    And I Input Bank Branch for Agro-Processing Enterprise "<Bank_Branch>"
    And I Input Personal Bank Account Number Agro-Processing Enterprise "<Bank_Account_No>"
    And I Click on Submit Application "<Confirmation>"
    And I Verify Success message for application submitted for Small Breeders Registration
    And I Click on Cancel button not to proceed with another registration
    And I Verify Application Status "<App_status>"
    And I Verify Payment Status "<Payment_Status>"
    And I Copy Application Number
    And I Click on Shopping Cart for payment
    And I Select Application for payment
    And I Click on Proceed to Payment
    And I Click on Payment Icon
    And I Select Payment Method "<Payment_method>"
    And I Click on Final Proceed to Payment
    And I Verify Message to proceed to Post Office for Payment
    Then I Sign Out as Front Registered User

    Examples:
      |Browser|Username |Password |Applicant_Title |District   |Education_Level |Act      |Other_Occupation  |Photo                               |Year_dur |Marital_Status|Relationship|Family_Surname|Family_Other_Names|Gender|DOB   |Occupation |License    |Land_Extent|Owner_Type|Plot_Location|Spicies |Male_Female_Number|Total_Heads |Reason |Microchip_No|Cattle_Sex|Cattle_Age|Upload_test                        |Additional_Doc_Name      |Bank_Name  |Bank_Branch|Bank_Account_No|Confirmation|App_status|Payment_Status |Payment_method |
      |Chrome |Suraj    |Admin@123|Mrs              |Port Louis|Tertiary        |Full Time|Manager           |src\test\resources\Photo_upload.jpg |2        |Married       |Spouse      |Keen          |Dafne             |Female|1Jan94|Actress    |Tea Grower |2.7        |Tenant    |Moka         |Cattle  |550               |550         |Meat   |AAA2563     |Male      |1Month    |src\test\resources\Upload_Test1.pdf|Additional Document Test |ABC Banking|Port Louis |0001252563636  |Yes         |Submitted |Pending        |Counter        |


    #Scenario10
  @Payment_online_for_Registration_as_Small_Breeder
  Scenario Outline: Payment online for Registration as Small Breeder

    Given I am on SFWF Front Office Home Page "<Browser>"
    When I Input Registered User's Username "<Username>" and Password "<Password>"
    And I Click on Sign In button
    And I Verify Applicant's Successful Login
    And I Click on Register as Farmer
    And I Verify that User is directed to My Application Page
    And I Verify display of Farmers Card link
    And I Verify Programmes link
    And I Click on New Button to apply for Registration
    And I Verify display of Registration Type Page
    And I Click on Small Breeder Icon
    And I Verify display of REGISTRATION FOR SMALL BREEDERS page
    And I Select an Applicant Title "<Applicant_Title>"
    And I Select Applicant District "<District>"
    And I Select Applicant Level of Education "<Education_Level>"
    And I Select Agricultural Activity "<Act>"
    And I Input Other Occupation "<Other_Occupation>"
    And I Upload Photograph "<Photo>"
    And I Verify for Photo upload success message
    And I Select No of years for Registration membership "<Year_dur>"
    And I Select Marital Status "<Marital_Status>"
    And I Click on Save and Continue
    And I Verify Display of Particulars of Family Beneficiaries Page
    And I Click on Add Family and Beneficiaries
    And Verify Display of Particulars of Family Beneficiaries input table
    And I Select Family relationship for tea grower "<Relationship>"
    And I Input Family Surname "<Family_Surname>"
    And I Input Family Other Names "<Family_Other_Names>"
    And I Select Family Gender "<Gender>"
    And I Input Family Date of Birth "<DOB>"
    And I Input Family Occupation "<Occupation>"
    And I Click on Beneficiary of life Insurance Scheme
    And I Click on Beneficiary of Accident Insurance Scheme
    And I Save Particulars of Family and Beneficiaries
    And I Click on Save and Continue
    And I Verify Display of Livestock Activity
    And I Click on Add Livestock Activity
    And I Verify Display of Particulars for Livestock Activity Table
    And I Select Species "<Spicies>"
    And I Input Number of Male and Female "<Male_Female_Number>"
    And I Input Total Heads "<Total_Heads>"
    And I Select Reason "<Reason>"
    And I Save Livestock Activity
    And I Click on Save and Continue
    And I Verify Display of Particulars for Cattle Page
    And I Click on Add Particular of Cattle
    And I Verify Display of Particulars for Cattle Table
    And I Input Microchip Number "<Microchip_No>"
    And I Select Cattle Sex "<Cattle_Sex>"
    And I Select Cattle Age "<Cattle_Age>"
    And I Save Particulars for Cattle
    And I Click on Save and Continue
    And I Verify Upload Required Documents Page is displayed
    And I Upload Copy of National Identify Card (ID) "<Upload_test>"
    And I Upload Existing SFWF Reg No (if any) "<Upload_test>"
    And I Upload copy of Title Deed "<Upload_test>"
    And I Upload Copy of registered /Non-Registered Lease Paper "<Upload_test>"
    And I Upload Copy of title deed of land owner including cooperatives (for non-registered lease paper) "<Upload_test>"
    And I Upload Preliminary environmental report, Building and land use Permit and health clearance "<Upload_test>"
    And I Upload Location plan of farm including size "<Upload_test>"
    And I Upload List of Tags Nos. (except poultry and pig) "<Upload_test>"
    And I Upload Animal Card DVs where applicable "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Add Additional Document
    And I Input Additional Document Name "<Additional_Doc_Name>"
    And I Verify Success message for adding Additional Document Name
    And I Upload Additional Document "<Upload_test>"
    And I Verify for Document Upload Success Message
    And I Click on Save and Continue
    And I Verify Declaration Page for REGISTRATION FOR SMALL BREEDERS
    And I click on I agree to the Terms and Conditions
    And I Click on Photo checkbox
    And I Select Bank "<Bank_Name>"
    And I Input Bank Branch for Agro-Processing Enterprise "<Bank_Branch>"
    And I Input Personal Bank Account Number Agro-Processing Enterprise "<Bank_Account_No>"
    And I Click on Submit Application "<Confirmation>"
    And I Verify Success message for application submitted for Small Breeders Registration
    And I Click on Cancel button not to proceed with another registration
    And I Verify Application Status "<App_status>"
    And I Verify Payment Status "<Payment_Status>"
    And I Copy Application Number
    And I Click on Shopping Cart for payment
    And I Select Application for payment
    And I Click on Proceed to Payment
    And I Click on Payment Icon
    And I Select Payment Method "<Payment_method>"
    And I Click on Final Proceed to Online Payment
    And I Verify display of Payment Gateway
    And I Input Card Details "<Card_Number>" "<Expiry_Month>" "<Expiry_Year>" "<Cardholder_Name>" "<Security_Code>"
    And I Click on Pay Now button
    And I Verify that User is directed to My Application Page
    And I Verify Payment Status is changed to Paid
    Then I Sign Out as Front Registered User

    Examples:
      |Browser|Username |Password |Applicant_Title |District   |Education_Level |Act      |Other_Occupation  |Photo                               |Year_dur |Marital_Status|Relationship|Family_Surname|Family_Other_Names|Gender|DOB   |Occupation |License    |Land_Extent|Owner_Type|Plot_Location|Spicies |Male_Female_Number|Total_Heads |Reason |Microchip_No|Cattle_Sex|Cattle_Age|Upload_test                        |Additional_Doc_Name      |Bank_Name  |Bank_Branch|Bank_Account_No|Confirmation|App_status|Payment_Status |Payment_method |Card_Number        |Expiry_Month |Expiry_Year|Security_Code|Cardholder_Name|
      |Chrome |Suraj    |Admin@123|Mrs              |Port Louis|Tertiary        |Full Time|Manager           |src\test\resources\Photo_upload.jpg |2        |Married       |Spouse      |Keen          |Dafne             |Female|1Jan94|Actress    |Tea Grower |2.7        |Tenant    |Moka         |Cattle  |550               |550         |Meat   |AAA2563     |Male      |1Month    |src\test\resources\Upload_Test1.pdf|Additional Document Test |ABC Banking|Port Louis |0001252563636  |Yes         |Submitted |Pending        |Credit         |5123-4500-0000-0008|01           |39         |100          |My name        |
