*** Settings ***
Library      AppiumLibrary
Library    XML

*** Variables ***
${LanjutkanBtn}     com.traveloka.android:id/on_board_button_continue
${BersediaBtn}      com.traveloka.android:id/button_request_permission
${el2}      com.traveloka.android:id/buttonJoin
${el3}      com.traveloka.android:id/edit_text_field
${el4}      com.traveloka.android:id/button_continue
${el5}      com.traveloka.android.user_impl:id/buttonAction
${el6}      com.traveloka.android.user_impl:id/buttonNext
${Mobil}    xpath=(//android.widget.ImageView[@resource-id="com.traveloka.android:id/image_view_product_icon"])[8]
${TanpaSupir}    xpath=(//android.view.View[@resource-id="com.traveloka.android.rental_impl:id/background"])[2]
${Lokasi}    com.traveloka.android:id/edit_text_field
${SearchLokasi}    xpath=//android.widget.EditText[@resource-id="com.traveloka.android:id/edit_text"]
${Jakarta}    xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="com.traveloka.android:id/recycler_view"]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout
${TglPickup}    xpath=//android.widget.EditText[@resource-id="com.traveloka.android:id/edit_text_field" and @text="Sel, 30 Apr 2024 - 09:00"]
${SelectTgl1}    xpath=//android.view.View[@content-desc="30"]
${SelectNextTgl}    com.traveloka.android:id/iv_icon_end
${SelectTgl2}    accessibility_id=3
${SelesaiBtn}    com.traveloka.android.rental_impl:id/button_done
${Carimobilbtn}    com.traveloka.android.rental_impl:id/button_rental_search
${SelectMobil}      xpath=(//android.view.ViewGroup[@resource-id="com.traveloka.android.rental_impl:id/layout_main"])[1]
${SelectTempat}    xpath=(//androidx.cardview.widget.CardView[@resource-id="com.traveloka.android.rental_impl:id/layout_rental_item"])[1]/android.view.ViewGroup
${LanjutkanBtn2}   com.traveloka.android.rental_impl:id/button_action
${kantor_rental}    xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="com.traveloka.android.rental_impl:id/recycler_view"]/android.view.ViewGroup[4]
${wilayah}         id=com.traveloka.android.rental_impl:id/container
${PilihBtn}     id=com.traveloka.android.rental_impl:id/button_action
${pengembalian} =    Set Variable     id=com.traveloka.android.rental_impl:id/button_select
${LokasiLain} =    Set Variable     xpath=//android.widget.TextView[@resource-id="com.traveloka.android.rental_impl:id/text_title" and @text="Lokasi Lain"]
${GambiSt} =    Set Variable     xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="com.traveloka.android:id/recycler_view"]/android.widget.RelativeLayout[3]/android.widget.RelativeLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout
${Notes} =    Set Variable     xpath=(//android.widget.EditText[@resource-id="com.traveloka.android:id/edit_text_field"])[2]
${LanjutkanBtn3} =    Set Variable     id=com.traveloka.android.rental_impl:id/button_action
${DataPemesan} =    Set Variable     accessibility_id=trip_booking_label_contactemptytitle
${NamaPemesan} =    Set Variable     xpath=//android.widget.LinearLayout[@resource-id="com.traveloka.android.trip_impl:id/layout_view_description"]/android.widget.LinearLayout/android.widget.EditText[1]
${NoPemesan} =    Set Variable     xpath=//android.widget.LinearLayout[@resource-id="com.traveloka.android.trip_impl:id/layout_view_description"]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[2]
${EmailPemesan} =    Set Variable     xpath=//android.widget.LinearLayout[@resource-id="com.traveloka.android.trip_impl:id/layout_view_description"]/android.widget.LinearLayout/android.widget.EditText[2]
${SimpanPemesan} =    Set Variable     id=com.traveloka.android.trip_impl:id/button_save

#${el19} =    Set Variable     xpath=//android.widget.RelativeLayout[@content-desc="trip_booking_view_traveleremptycontainer"]/android.widget.LinearLayout
#Click Element    ${el19}
#${el20} =    Set Variable     class=android.widget.Spinner
#Click Element    ${el20}
#${el21} =    Set Variable     xpath=//android.widget.TextView[@text="Tuan"]
#Click Element    ${el21}
#${el22} =    Set Variable     xpath=//android.widget.LinearLayout[@resource-id="com.traveloka.android.trip_impl:id/layout_view_description"]/android.widget.LinearLayout/android.widget.EditText
#Input Text    ${el22}    yanto tueying
#${el23} =    Set Variable     xpath=//android.widget.LinearLayout[@resource-id="com.traveloka.android.trip_impl:id/layout_view_description"]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[2]
#Input Text    ${el23}    85770736557
#${el24} =    Set Variable     id=com.traveloka.android.trip_impl:id/button_save
#Click Element    ${el24}
#${el25} =    Set Variable     id=com.traveloka.android.trip_impl:id/text_view_see_below_view
#Click Element    ${el25}
#${el26} =    Set Variable     xpath=(//android.widget.FrameLayout[@resource-id="com.traveloka.android.trip_impl:id/container_image_view_right_icon"])[1]/android.widget.ImageView
#Click Element    ${el26}
#${el27} =    Set Variable     id=com.traveloka.android.rental_impl:id/edit_text_special_request
#Input Text    ${el27}    Pasang Klakson Telolet
#${el28} =    Set Variable     id=com.traveloka.android.rental_impl:id/button_save
#Click Element    ${el28}






*** Test Cases ***
Test start
    Open Applications
    

*** Keywords ***
Open Applications
    Open Application   http://127.0.0.1:4723/wd/hub   platformName=Android    deviceName=192.168.1.5:5555     appPackage=com.traveloka.android    appActivity=com.traveloka.android.appentry.splash.SplashActivity      automationName=UiAutomator2     noReset=true
    ${LanjutkanBTN2}=   Run Keyword And Ignore Error    Get Text    ${LanjutkanBtn}
    IF    ${LanjutkanBTN2} == "Lanjutkan"
        Regist
    ELSE
         Home
    END

Regist
    Wait Until Element Is Visible    ${LanjutkanBtn}
    Click Element    ${LanjutkanBtn}
    Click Element    ${el2}
    Input Text    ${el3}    085770736557
    Wait Until Element Is Visible    ${el4}     3s
    Click Element    ${el4}
    Wait Until Element Is Visible    ${el5}     3s
    Click Element    ${el5}
    Sleep   10s
    Click Element    ${el6}
    
Home
    Wait Until Element Is Visible    ${Mobil}   2s
    Click Element    ${Mobil}
    Wait Until Element Is Visible    ${TanpaSupir}  3s
    Click Element    ${TanpaSupir}
    Wait Until Element Is Visible    ${Lokasi}  3s
    Click Element    ${Lokasi}
    Click Element    ${SearchLokasi}
    Input Text    ${SearchLokasi}    jakarta
    Wait Until Element Is Visible    ${Jakarta}     3s
    Click Element    ${Jakarta}
    Click Element    ${TglPickup}
    Sleep   3s
    Click Element    ${SelectTgl1}
    Click Element    ${SelectNextTgl}
    Click Element    ${SelectTgl2}
    Click Element    ${SelesaiBtn}
    Wait Until Element Is Visible    ${Carimobilbtn}    10s
    Click Element    ${Carimobilbtn}
    Wait Until Element Is Visible    ${SelectMobil}     10s
    Click Element    ${SelectMobil}
    Sleep    10s
    Click Element    ${SelectTempat}
    Wait Until Element Is Visible    ${LanjutkanBtn2}   10s
    Click Element    ${LanjutkanBtn2}

    Click Element    ${kantor_rental}
    Click Element    ${wilayah}
    Click Element    ${PilihBtn}
    Click Element    ${pengembalian}
    Click Element    ${LokasiLain}
    Click Element    ${GambiSt}
    Click Element    ${Notes}
    Input Text    ${Notes}    Dekat Gerbang Keluar Parkir
    Press Keycode    3
    Click Element    ${LanjutkanBtn3}
    Click Element    ${DataPemesan}
    Input Text    ${NamaPemesan}    Yanto
    Input Text    ${NoPemesan}    85770736557
    Input Text    ${EmailPemesan}    yanto665@gmail.com
    Click Element    ${SimpanPemesan}

#    Can't finish the work. The apps keep closing after i running multiple time test