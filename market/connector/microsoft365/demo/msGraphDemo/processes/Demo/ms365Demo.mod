[Ivy]
176D21535A8FEE20 9.2.0 #module
>Proto >Proto Collection #zClass
mo0 ms365Demo Big #zClass
mo0 B #cInfo
mo0 #process
mo0 @TextInP .type .type #zField
mo0 @TextInP .processKind .processKind #zField
mo0 @TextInP .xml .xml #zField
mo0 @TextInP .responsibility .responsibility #zField
mo0 @StartRequest f0 '' #zField
mo0 @EndTask f1 '' #zField
mo0 @RestClientCall f3 '' #zField
mo0 @PushWFArc f4 '' #zField
mo0 @RestClientCall f5 '' #zField
mo0 @PushWFArc f6 '' #zField
mo0 @RestClientCall f7 '' #zField
mo0 @PushWFArc f8 '' #zField
mo0 @PushWFArc f2 '' #zField
mo0 @StartRequest f9 '' #zField
mo0 @PushWFArc f10 '' #zField
>Proto mo0 mo0 ms365Demo #zField
mo0 f0 outLink start.ivp #txt
mo0 f0 inParamDecl '<> param;' #txt
mo0 f0 requestEnabled true #txt
mo0 f0 triggerEnabled false #txt
mo0 f0 callSignature start() #txt
mo0 f0 caseData businessCase.attach=true #txt
mo0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
mo0 f0 @C|.responsibility Everybody #txt
mo0 f0 81 49 30 30 -25 17 #rect
mo0 f0 @|StartRequestIcon #fIcon
mo0 f1 433 241 30 30 0 15 #rect
mo0 f1 @|EndIcon #fIcon
mo0 f3 clientId 007036dc-72d1-429f-88a7-ba5d5cf5ae58 #txt
mo0 f3 path /me #txt
mo0 f3 resultType com.microsoft.graph.MicrosoftGraphUser #txt
mo0 f3 responseMapping 'out.user=result;
' #txt
mo0 f3 clientErrorCode ivy:error:rest:client #txt
mo0 f3 statusErrorCode ivy:error:rest:client #txt
mo0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>My AD
User Info</name>
    </language>
</elementInfo>
' #txt
mo0 f3 168 42 112 44 -28 -15 #rect
mo0 f3 @|RestClientCallIcon #fIcon
mo0 f4 111 64 168 64 #arcP
mo0 f5 clientId 007036dc-72d1-429f-88a7-ba5d5cf5ae58 #txt
mo0 f5 path /me/calendar #txt
mo0 f5 resultType com.microsoft.graph.MicrosoftGraphCalendar #txt
mo0 f5 responseCode ivy.log.info(result); #txt
mo0 f5 clientErrorCode ivy:error:rest:client #txt
mo0 f5 statusErrorCode ivy:error:rest:client #txt
mo0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>My Cal</name>
    </language>
</elementInfo>
' #txt
mo0 f5 168 122 112 44 -19 -7 #rect
mo0 f5 @|RestClientCallIcon #fIcon
mo0 f6 224 86 224 122 #arcP
mo0 f7 clientId 007036dc-72d1-429f-88a7-ba5d5cf5ae58 #txt
mo0 f7 path /me/calendar/calendarView #txt
mo0 f7 queryParams '$$top=;
$$skip=;
$$filter=;
$$count=;
$$orderby=;
$$select=;
startDateTime=new DateTime(2020,1,1,08,0,0);
endDateTime=new DateTime(2020,1,10,08,0,0);
' #txt
mo0 f7 headers 'Accept=application/json; odata.metadata=minimal;
' #txt
mo0 f7 resultType java.util.List<com.microsoft.graph.MicrosoftGraphEvent> #txt
mo0 f7 responseMapping 'out.events=result;
' #txt
mo0 f7 responseCode ivy.log.info(result); #txt
mo0 f7 clientErrorCode ivy:error:rest:client #txt
mo0 f7 statusErrorCode ivy:error:rest:client #txt
mo0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>My Events 
in this week</name>
    </language>
</elementInfo>
' #txt
mo0 f7 248 234 112 44 -37 -15 #rect
mo0 f7 @|RestClientCallIcon #fIcon
mo0 f8 280 144 304 234 #arcP
mo0 f8 1 304 144 #addKink
mo0 f8 0 0.7854569202314754 0 0 #arcLabel
mo0 f2 360 256 433 256 #arcP
mo0 f9 outLink readCalendar.ivp #txt
mo0 f9 inParamDecl '<> param;' #txt
mo0 f9 requestEnabled true #txt
mo0 f9 triggerEnabled false #txt
mo0 f9 callSignature readCalendar() #txt
mo0 f9 caseData businessCase.attach=true #txt
mo0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readCalendar.ivp</name>
    </language>
</elementInfo>
' #txt
mo0 f9 @C|.responsibility Everybody #txt
mo0 f9 81 241 30 30 -29 17 #rect
mo0 f9 @|StartRequestIcon #fIcon
mo0 f10 111 256 248 256 #arcP
>Proto mo0 .type ms.graph.demo.Data #txt
>Proto mo0 .processKind NORMAL #txt
>Proto mo0 0 0 32 24 18 0 #rect
>Proto mo0 @|BIcon #fIcon
mo0 f0 mainOut f4 tail #connect
mo0 f4 head f3 mainIn #connect
mo0 f3 mainOut f6 tail #connect
mo0 f6 head f5 mainIn #connect
mo0 f5 mainOut f8 tail #connect
mo0 f8 head f7 mainIn #connect
mo0 f7 mainOut f2 tail #connect
mo0 f2 head f1 mainIn #connect
mo0 f9 mainOut f10 tail #connect
mo0 f10 head f7 mainIn #connect
