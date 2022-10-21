*** Settings ***
Library    SeleniumLibrary
#Library    exceldatadriver
#Library    ExcelLibrary 
Library    random
Library    DateTime    
Library    keyring
Library    ExcelRobot
#Variables    ../variables/variables.py
#Library    Excel.Files
Library    AutoItLibrary        
#Library    Windows
#Library    Images
#Library    SikuliLibrary
Library    OCRLibrary
Library    DatabaseLibrary           


Suite Setup    Log    Inside suite setup...
Test Setup    Log    Inside testcase setup..
Test Teardown    Close Browser
Suite Teardown    Close Browser


Default Tags    Default


*** Variables ***
${UrlOrange}    https://opensource-demo.orangehrmlive.com/
@{ListCredOrange}    Admin    admin123
&{DictionaryCredOrange}    username=Admin    password=admin123

${usernameOrange}    Admin
${passwordOrange}    admin123

${usernameNgen}    support@ngendigital.com
${passwordNgen}    abc123

${Responce}    Toronto Chicago New York London

#${InputExcelFile}    C:\\SS\\RF\\WS_RF\\Robot Framework Template Project\\input\\Data.xlsx
${InputExcelFile}    C:/Users/suryasur/git/RobotProjects/RobotProject1/input/Data.xlsx
${OutputExcelFile}    C:/Users/suryasur/git/RobotProjects/RobotProject1/output/OutputData

${InputXLSFile}    C:/Users/suryasur/git/RobotProjects/RobotProject1/input/Data.xls

${Assg7Input}    C:/Users/suryasur/git/RobotProjects/RobotProject1/input/Assignment7.xls

${InputXLSFileLogin}    C:/Users/suryasur/git/RobotProjects/RobotProject1/input/LoginData.xls

@{FirstNameData}    Suraj    Sunil    Sharad    Sahil

${row}    1
${column}    1

#${WholeScreen1}     C:/SS/RF/RF_Udemy/Screens/Whitebox1_4.PNG 
${WholeScreen1}     C:/Users/suryasur/git/RobotProjects/RobotProject1/sikuli_captured/sikuliximage-1636536815316.PNG  

${TrainingRFUsername}    bp
${TrainingRFPassword}    password
${EmptyVariable}

${OrderOptions1}    1
${OrderOptions2}    2

${ProdCode}    ABC-125
${NumberOfQty}    3
${UnitPrice}    2.16
${CostCenter}    101

${OrderId}    125


*** Test Cases ***
# MyTestCase1
    # [Tags]    Tag1
    # Set Tags    Default
    # Log    Inside 1st test case
    # Remove Tags    Tag1
    

# MyTestCase2
    # Log    Inside 2nd test case
    # Set Tags    Tag2
    

# MyTestCase3
    # Log    Inside 3rd test case
    

# MyTestCase4
    # Log    Inside 4th test case


# LogTestCase
    # Log    Welcome to Tieto
    # Log    This use case is executed by %{username} on %{os}
    # Log    ${EXECDIR}${/}Input
    # Log    Current Dir: ${CURDIR}


# SeleniumTestCase1
    # Open Browser    https://google.com    chrome
    # Maximize Browser Window
    # Set Selenium Timeout    30
    # Set Browser Implicit Wait    5
    # Input Text    name=q    RPA Robot Framework
    # # Press Keys    name=q    ESC
    # # Press Keys    name=q    ENTER
    # Click Button    name=btnK
    # #Capture Page Screenshot
    # Close Browser
    # Log    Test Completed..
          

# WindowsCredtest
    # Log    Hiii.. WinCred1
    # #Log    ${OrangeUsername}
    # Log    ${ListCredOrange}[0]
    # Log    Hiii.. WinCred2
    # ${WindowsPass1} =    Get Password    OrangeTest    Admin
    # Log    Hiii.. WinCred3
    # Log    ${WindowsPass1}


# OrangeWebTest
    # [Documentation]    This is a sample login logout test
    # #Set Log Level    NONE    
    # Log    Hiii..
    # ${date1}=  Get Current Date  result_format=%Y-%m-%d %H-%M-%S
    # #Set Global Variable    ${Path}    /Output/Screenshots/${date1}
    # Set Global Variable    ${Path}    /Output/Screenshots
    # Set Screenshot Directory    ${Path}
    # #Log    ${OrangeUsername}
    # Log    ${ListCredOrange}[0]
    # #${WindowsPass1} =    Get Password    OrangeTest    ${OrangeUsername} 
    # #Log    ${WindowsPass1}  
    # #OrangeLogin    ${usernameOrange}    ${passwordOrange}
    # #OrangeLogin    ${usernameOrange}    ${WindowsPass1}
    # Log    ${usernameOrange}
    # OrangeLogin    ${usernameOrange}    ${passwordOrange}
    # Sleep    1
    # ${WelcomeMsg}    SeleniumLibrary.Get Text    //*[@class="oxd-userdropdown-tab"]
    # Log    WelcomeMsg: ${WelcomeMsg}
    # #Run keyword IF    """${WelcomeMsg}""" == """Welcome Meghana"""    Log    Login successful...
    # Run keyword IF    """${WelcomeMsg}""" != """Welcome"""    Log    Login successful...
    # ...    ELSE    Log    Failed
    # #Capture Page Screenshot    ${Path}.png
    # Capture Page Screenshot
    # #Scroll Element Into View    id=footer
    # #Capture Element Screenshot    class=flot-overlay
    # OrangeLogout
    # Log    Bye..
    # KW Pass
    # #...    ELSE    Log    """Failed"""
    

# NgenTest1
    # [Tags]    Tag1
    # Set Selenium Speed    0.5
    # Open Browser    https://ngendigital.com/practice    chrome
    # Maximize Browser Window
    # Select Frame    id=iframe-03
    # Assign Id To Element    //tbody/tr[4]/td[3]    xpath1
    # ${str1}    Get Text    xpath1
    # Log    ${str1}
    # #Scroll Element Into View    xpath1
    # Capture Element Screenshot    xpath1        
    # Capture Page Screenshot
    # KW Fail
    

# NgenTest2Login
    # NgenDigitalLogin    ${usernameNgen}    ${passwordNgen}
    # NgenManageBooking
    # Validate FromCity
    # Book Flight
    # NgenDigitalLogout
    

# DatabaseTest1
    # DatabaseConnect
    # DatabaseKeywords
    # DatabaseDisConnect


# DatabaseTest2
    # Log	Trying to connect Database						
    # Connect To Database	pymssql	TestDB	TestSQL	admin123	localhost	52747	
    # Log	Connected to database						
    # Table Must Exist	NgenCred						
    # @{QueryResults1}	Query	select Username from NgenCred where id = 1					
    # @{QueryResults2}	Query	select Password from NgenCred where id = 1
    # Log    ${QueryResults1}[0]						
    # Log    ${QueryResults2}[0]		
    # Disconnect From Database
    # Log	Successfully disconnected from database	
    # NgenDigitalLogin    ${QueryResults1}[0]    ${QueryResults2}[0]
    # NgenDigitalLogout


DesktopTest1
    Log    DesktopTest1 started
    DesktopCalculator1


DesktopTest2
    Log    DesktopTest2 started
    DesktopCentrix1


DesktopTest3
    Log    DesktopTest3 started    
    DesktopNotepad1
    
DesktopTest4
    Log    DesktopTest4 started
    TrainingOrderSystemLogout
    TrainingOrderSystemLogin    ${TrainingRFUsername}    ${TrainingRFPassword}
    TrainingOrderSystemOptions       ${OrderOptions1}
    TrainingOrderSystemCreateOrder    ${ProdCode}    ${NumberOfQty}    ${UnitPrice}    ${CostCenter}
    TrainingOrderSystemVerifyOrder
    TrainingOrderSystemLogout
    ##${OrderId}	Get Substring	${InputExcelFile}	-3
    

DesktopTest5
    Log    DesktopTest4 started
    TrainingOrderSystemLogout
    TrainingOrderSystemLogin    ${TrainingRFUsername}    ${TrainingRFPassword}
    TrainingOrderSystemOptions    ${OrderOptions2}
    TrainingOrderSystemRetrieveOrder    ${OrderId}
    TrainingOrderSystemLogout
    

*** Keywords ***
OrangeLogin    [Arguments]    ${u1}    ${p1}
    Open Browser    ${UrlOrange}    chrome
    Maximize Browser Window
    Set Selenium Timeout    30
    Set Browser Implicit Wait    5
    #Input Text    //input[@id='txtUsername']    ${ListCredOrange}[0]
    #Input Password    //input[@id='txtPassword']    ${DictionaryCredOrange}[password]
    SeleniumLibrary.Input Text    //input[@name='username']    ${u1}
    Input Password    //input[@name='password']    ${p1}
    Click Button    //button[@class='oxd-button oxd-button--medium oxd-button--main orangehrm-login-button']
    #Get Text    //*[@id="welcome"]


OrangeLogout
    Click Element    class=oxd-userdropdown-tab
    Click Element    link=Logout
    Close Browser


NgenDigitalLogin    [Arguments]    ${u2}    ${p2}
    Log    NgenDigitalLogin start
    #Set Selenium Speed	0.5				
    Set Selenium Implicit Wait	30				
    Open Browser	https://ngendigital.com/demo-application	chrome			
    Maximize Browser Window					
    Set Browser Implicit Wait    5				
    Wait Until Keyword Succeeds    6    2    Select Frame	xpath://iframe[@frameborder='0']				
    Log    ${u2}				
    ${LoginPageHeader}    Get Text	xpath://div[@class='box']/h1			
    Should Be Equal As Strings	${LoginPageHeader}    My Account			
    Input Text	xpath://input[@value='email']    ${u2}			
    Input Text	xpath://input[@value='password']    ${p2}			
    Wait Until Keyword Succeeds    6    2    Click Element    xpath://div[@name='SignIn']	
    Select Frame	xpath://iframe[@frameborder='0']				
    Page Should Contain Element	xpath://button[contains(text(),'Search Flights')]

    Sleep	1	
    Log    NgenDigitalLogin end
    

NgenManageBooking
    Log    NgenManageBooking start
    Click Element    xpath://button[text()='Manage Booking']
    Wait Until Keyword Succeeds    6    2    Page Should Contain Element    xpath://Select[@id="FromCity"]
    Wait Until Page Contains Element    xpath://Select[@id="ToCity"]    2    Page does not contains To City element    
    Sleep	1	
    Log    NgenManageBooking end
    

Validate FromCity
    @{Cities}	Get List Items	xpath://Select[@id="FromCity"]
    		
    FOR	${City}	IN	@{Cities}	
    	Log	${City}		
    	Should Contain    ${Responce}    ${City}	
    END


Book Flight			
    Log	Book Flight start					
    List Selection Should Be	xpath://Select[@id="FromCity"]	Toronto				
    Select From List By Label	xpath://Select[@id="FromCity"]	London				
    Select From List By Label	xpath://Select[@id="ToCity"]	Mumbai				
    ${date1}	Get Current Date	result_format=%m-%d-%Y				
    ${today}	Get Current Date	result_format=%Y-%m-%d %H-%M-%S				
    ${date2}	DateTime.Add Time To Date	${today}	1 day	result_format=%m-%d-%Y		
    Input Text    //input[@id='goDate']    ${date1}				
    Input Text    //input[@id='returnDate']    ${date2}				
    Select From List By Label    xpath://Select[@id="Class"]	First				
    Select Checkbox    xpath://input[@name='roundtrip']					
    Checkbox Should Be Selected    xpath://input[@name='roundtrip']					
    Select Radio Button	flight	flight				
    Radio Button Should Be Set To	flight	flight				
    Click Button	xpath://button[contains(text(),'Get Fare')]	
    Log    Clicked 'Get Fare' button successfully
    Wait Until Keyword Succeeds    9    3	Click Element	xpath://div[@id='FareFirst']//tbody/tr[4]/td[4]
    Log    Clicked 4th column 4th row cell in the cell successfully	
    ${ConfirmBookingText}	Get Text	xpath://div[@id='FareFirst']/p/button[contains(text(),'Confirm Booking')]			
    Wait Until Keyword Succeeds    9	3	Click Element	xpath://div[@id='FareFirst']/p/button[contains(text(),'Confirm Booking')]
    Log    Clicked 'Confirm Booking' button successfully		
    Sleep	1
    ${flightBookStatus}    Get Text    xpath://*[@id="Booking"]/p[1]/label			
    Should Be Equal As Strings    ${flightBookStatus}    SUCCESS !! Your flight is booked
    Log	Book Flight end					


NgenDigitalLogout
    Log    NgenDigitalLogout start
    Click Element    xpath://button[text()='Log out']
    Sleep	1
    Element Text Should Be	//span[contains(text(),'Login to Flight Application')]	Login to Flight Application
    Log    NgenDigitalLogout end


DatabaseConnect
    Log    DatabaseConnect start
    Connect To Database    pymssql    TestDB	TestSQL	admin123	localhost	52747
    Log    DB Connected
    Log    DatabaseConnect end


DatabaseDisConnect
    Log    DatabaseDisConnect start
    Disconnect From Database
    Log    DB Disconnected
    Log    DatabaseDisConnect end

    
DatabaseKeywords
    Log    DatabaseKeywords start					
    @{Query1Results}	Description	Select * from Student					
    Log Many	@{Query1Results}						
    @{Query2Results}	Query	Select * from Student					
    Log Many	@{Query2Results}						
    ${Count}	Row Count	Select * from Student					
    Row Count Is Equal To X	Select * from Student	6					
    Table Must Exist	Student						
    Comment	Delete All Rows From Table	Student					
    Check If Exists In Database	Select FirstName from Student where LastName = 'Suryakar'						
    Log    DatabaseKeywords end


DatabaseReadNgenCred
    Log	Trying to connect Database						
    Connect To Database	pymssql	TestDB	TestSQL	admin123	localhost	52747	
    Log	Connected to database						
    Table Must Exist	NgenCred						
    @{QueryResults1}	Query	select Username from NgenCred where id = 1					
    @{QueryResults2}	Query	select Password from NgenCred where id = 1
    Log    ${QueryResults1}[0]						
    Log    ${QueryResults2}[0]		
    Disconnect From Database
    Log	Successfully disconnected from database		


DesktopCalculator1
    Run    calc.exe	
    Log    App started	
    Win Wait Active    Calculator    ${EmptyVariable}    5
    Log    Win Wait Active Done
    Control Click    Calculator    ${EmptyVariable}    Button10
    Log    Control Click done
    Sleep    2
    Win Close    Calculator
    Log    App Closed
    

DesktopCentrix1
    Run	C:/SS/ZZOthers/Apps/CentrixDataSolutions App/CentrixDataSolutions.exe			
    Log	App started			
    Win Wait Active	Centrix Data Solutions - Please Log In    ${EmptyVariable}    8	
    Log	Win Wait Active Done			
    Sleep	2			
    Control Click	Centrix Data Solutions - Please Log In    ${EmptyVariable}    WindowsForms10.EDIT.app.0.141b42a_r9_ad12	
    Sleep	2			
    Control Click	Centrix Data Solutions - Please Log In    ${EmptyVariable}    WindowsForms10.EDIT.app.0.141b42a_r9_ad11	
    Sleep	2			
    Control Click	Centrix Data Solutions - Please Log In    ${EmptyVariable}    WindowsForms10.BUTTON.app.0.141b42a_r9_ad11	
    Log	Control Click done			
    Sleep	2			
    Win Close	Centrix Data Solutions - Please Log In			
    Log	App Closed		
    

DesktopNotepad1
    #Run    notepad.exe		
    Run    C:/Windows/system32/notepad.exe    ${EmptyVariable}    1		
    Log    App started			
    Win Wait Active	Untitled - Notepad    ${EmptyVariable}    5	
    Log    Win Wait Active Done			
    Sleep    2			
    Control Click	Untitled - Notepad    ${EmptyVariable}    Notepad	
    Log    Control Click done			
    Sleep    2			
    Win Close	Untitled - Notepad			
    Log    App Closed
				
TrainingOrderSystemLogin    [Arguments]    ${u1}    ${p1}
    Run    C:/SS/ZZOthers/Apps/TrainingOrderSystem/TrainingOrderSystem.exe    ${EmptyVariable}    1		
    Win Wait Active    Sign in    ${EmptyVariable}    5		
    Log    App started				
    ${title1}	Win Get Title	Sign in			
    Control Set Text	${title1}    ${EmptyVariable}    [NAME:txtUsername]    ${u1}
    Control Set Text	${title1}    ${EmptyVariable}    [NAME:txtPassword]    ${p1}
    Control Click	${title1}    ${EmptyVariable}    [NAME:Button1]		
    Log    Clicked sign in button				


TrainingOrderSystemOptions    [Arguments]    ${o1}
    Win Wait Active    Options    ${EmptyVariable}    5		
    Log    Logged in, Options window opened				
    Sleep	2				
    ${title2}	Win Get Title	Options			
    Control Set Text	${title2}    ${EmptyVariable}    [NAME:txtOption]	${o1}
    Control Click	${title2}    ${EmptyVariable}    [NAME:Button2]		
    Log    Clicked Go button
    

TrainingOrderSystemCreateOrder    [Arguments]    ${ProdCode}    ${NumberOfQty}    ${UnitPrice}    ${CostCenter}
    Win Wait Active    New Order    ${EmptyVariable}    5
    Log    New Order window opened			
    Sleep	1	
    ${title3}	Win Get Title	New Order		
    Control Set Text	${title3}	${EmptyVariable} 	[NAME:txtProductCode]	ABC-125
    Control Set Text	${title3}	${EmptyVariable} 	[NAME:txtNumberReq]	3
    Control Set Text	${title3}	${EmptyVariable} 	[NAME:txtUnitprice]	2.16
    Control Set Text	${title3}	${EmptyVariable} 	[NAME:txtCostCentre]	101
    Sleep	1
    Control Click	${title3}	${EmptyVariable} 	[NAME:Button1]	
    Log	Clicked Submit button


TrainingOrderSystemVerifyOrder
    Win Wait Active    Order Confirmation    ${EmptyVariable}    5
    Log    Order Confirmation window opened
    ${title4}	Win Get Title    Order Confirmation		
    ${Result}	Control Get Text	${title4}	${EmptyVariable}	[NAME:Label1]
    Should Contain    ${Result}    Please take note of your order reference:
    Sleep	1	
    Control Click	${title4}    ${EmptyVariable}    [NAME:Button1]	
    Log    Clicked continue button
    

TrainingOrderSystemRetrieveOrder    [Arguments]    ${oid}
    Win Wait Active	View order    ${EmptyVariable}    5	
    Log    View Order window opened			
    Sleep    1			
    ${title3}	Win Get Title	View order		
    Control Set Text	${title3}    ${EmptyVariable}    [NAME:txtOrderRef]    ${oid}
    Sleep	1			
    Control Click	${title3}    ${EmptyVariable}    [NAME:Button1]	
    Log	Clicked Retrieve Order button			
    ${ProductCode}	Control Get Text	${title3}	${EmptyVariable}	[NAME:lblProductCode]
    ${TotalPrice}	Control Get Text	${title3}	${EmptyVariable}	[NAME:lblTotalPrice]
		
    

TrainingOrderSystemLogout
    Sleep	1
    Win Close	Sign in    					
    					

KW Pass
    [Return]    SomeRandomValue


KW Fail
    Fail    Failed....
    
