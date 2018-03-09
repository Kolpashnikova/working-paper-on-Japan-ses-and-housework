label var v1 "government stat code"
lab var v2 "management code"
lab var v3 "year of survey"
lab var v4 "type of data"
lab var v5 "record sequence number"
lab var v6 "household number"
lab var v7 "household member number"
lab var v8 "one member household"
destring v8, replace
label values v8  v8
label define v8 ///
	1 "one member household" ///
	2 "not a one-member household" ///
	3 "other"
lab var v9 "region: metropolitan area or not"
label values v9  v9
label define v9 ///
	1 "metropolitan area" ///
	0 "not a metropolitan area"
lab var v10 "gender"
label values v10  v10
label define v10 ///
	1 "male" ///
	2 "female"
lab var v11 "relationship with head of household"
label values v11  v11
label define v11 ///
	01 "head of the household" ///
	02 "spouse of the head of the household" ///
	03 "child" ///
	04 "spouse of the child" ///
	05 "grandchild" ///
	06 "parents of the head" ///
	07 "parents of the spouse" ///
	08 "grantparents" ///
	09 "siblings" ///
	10 "other relationships"
lab var v12 "age"
label values v12  v12
label define v12 ///
	01 "10-14 years of age" ///
	02 "15-19 years of age" ///
	03 "20-24 years of age" ///
	04 "25-29 years of age" ///
	05 "30-34 years of age" ///
	06 "35-39 years of age" ///
	07 "40-44 years of age" ///
	08 "45-49 years of age" ///
	09 "50-54 years of age" ///
	10 "55-59 years of age" ///
	11 "60-64 years of age" ///
	12 "65-69 years of age" ///
	13 "70-74 years of age" ///
	14 "75-79 years of age" ///
	15 "80-84 years of age" ///
	16 "above 85 years of age"
lab var v13 "marital status"
replace v13="4" if v13=="V"
destring v13, replace
label values v13  v13
label define v13 ///
	1 "never married" ///
	2 "married" ///
	3 "divorced, widowed" ///
	4 "NA"
lab var v14 "education"
replace v14="0" if v14==" "
replace v14="10" if v14=="V"
destring v14, replace
label values v14  v14
label define v14 ///
	0 "never been in school" ///
	1 "in school: elementary" ///
	2 "in school: middle school" ///
	3 "in school: high school" ///
	4 "in school: trade school" ///
	5 "in school: university" ///
	6 "finished: elementary, middle school" ///
	7 "finished: high school" ///
	8 "finished: trade school" ///
	9 "finished: university" ///
	10 "NA"
lab var v15 "technology use: mobile phones PHS"
replace v15="0" if v15==" "
replace v15="-1" if v15=="V"
destring v15, replace
label values v15  v15
label define v15 ///
	0 "not using it" ///
	1 "using it" ///
	-1 "NA"
lab var v16 "technology use: PC"
replace v16=0 if v16==.
label values v16  v16
label define v16 ///
	0 "not using it" ///
	2 "using it"
lab var v17 "technology use: PDA"
replace v17=0 if v17==.
label values v17  v17
label define v17 ///
	0 "not using it" ///
	3 "using it"
lab var v18 "technology use: do not use"
replace v18=5 if v18==.
label values v18  v18
label define v18 ///
	4 "not using it" ///
	5 "using it"
lab var v19 "elderly care (above 65 y/o) at home"
replace v19=0 if v19==.
label values v19  v19
label define v19 ///
	0 "not providing it" ///
	1 "providing it"
lab var v20 "elderly care (above 65 y/o) not at home"
replace v20=0 if v20==.
label values v20  v20
label define v20 ///
	0 "not providing it" ///
	2 "providing it"
lab var v21 "other family care at home"
replace v21=0 if v21==.
label values v21  v21
label define v21 ///
	0 "not providing it" ///
	3 "providing it"
lab var v22 "other family care not at home"
replace v22=0 if v22==.
label values v22  v22
label define v22 ///
	0 "not providing it" ///
	4 "providing it"
lab var v23 "I don't provide care for family members"
replace v23=6 if v23==.
label values v23 v23
label define v23 ///
	5 "not providing it" ///
	6 "providing it"
lab var v24 "where does your child live?"
replace v24="-1" if v24==" "
replace v24="-2" if v24=="V"
destring v24, replace
label values v24  v24
label define v24 ///
	-2 "outside the scope" ///
	-1 "NA" ///
	1 "lives together" ///
	2 "lives in the same building" ///
	3 "lives nearby (can walk there)" ///
	4 "lives in the same town" ///
	5 "lives in other area" ///
	6 "don't have children"
lab var v25 "do you usually work?"
replace v25="-1" if v25==" "
replace v25="-2" if v25=="V"
destring v25, replace
label values v25  v25
label define v25 ///
	-2 "outside the scope" ///
	-1 "NA" ///
	1 "mainly work" ///
	2 "housework and work" ///
	3 "study and work" ///
	4 "housewife" ///
	5 "student" ///
	6 "other"
lab var v26 "do you want to work?"
replace v26="-1" if v26==" "
replace v26="-2" if v26=="V"
destring v26, replace
label values v26  v26
label define v26 ///
	-2 "outside the scope" ///
	-1 "NA" ///
	1 "I want to work and I am looking for a job" ///
	2 "I want to work but I am not looking for a job" ///
	3 "I don't want to work"
lab var v27 "employed or self-employed?"
replace v27="-1" if v27=="  "
replace v27="-2" if v27=="VV"
destring v27, replace
label values v27  v27
label define v27 ///
	-2 "outside the scope" ///
	-1 "NA" ///
	01 "full time worker" ///
	02 "part time worker" ///
	03 "arubaito" ///
	04 "temporary staff" ///
	05 "otherwise employed" ///
	06 "corporate official" ///
	07 "company owner with employees" ///
	08 "company owner without employees" ///
	09 "family firm" ///
	10 "working for family"
lab var v28 "number of employees at work place"
replace v28="-1" if v28==" "
replace v28="-2" if v28=="V"
destring v28, replace
label values v28  v28
label define v28 ///
	-2 "outside the scope" ///
	-1 "NA" ///
	1 "1-4 people" ///
	2 "5-9 people" ///
	3 "10-29 people" ///
	4 "30-99 people" ///
	5 "100-299 people" ///
	6 "300-999 people" ///
	7 "1000-4999 people" ///
	8 "more than 5000 people" ///
	9 "governmental/public company"
lab var v29 "usual work time per week"
replace v29="-1" if v29==" "
replace v29="-2" if v29=="V"
destring v29, replace
label values v29  v29
label define v29 ///
	-2 "outside the scope" ///
	-1 "NA" ///
	1 "less than 15 hours" ///
	2 "15-29 hours" ///
	3 "30-34 hours" ///
	4 "35-39 hours" ///
	5 "40-48 hours" ///
	6 "49-59 hours" ///
	7 "more than 60 hours" ///
	8 "not fixed"
lab var v30 "usual time spent on commute (one way)"
replace v30="-1" if v30==" "
replace v30="-2" if v30=="V"
destring v30, replace
label values v30  v30
label define v30
	-2 "outside the scope" ///
	-1 "NA" ///
	1 "work at home" ///
	2 "less than 15 min" ///
	3 "15-less than 30 min" ///
	4 "30-less than 45 min" ///
	5 "45 min to less than an hour" ///
	6 "1 hour - to less than 1 hour 30" ///
	7 "1:30 to less than 2 hours" ///
	8 "2 hours and more"
lab var v31 "the weekly holiday system"
replace v31="-1" if v31==" "
replace v31="-2" if v31=="V"
destring v31, replace
label values v31  v31
label define v31 ///
	-2 "outside the scope" ///
	-1 "NA" ///
	1 "one day a week" ///
	2 "2 days a week up to three times a month" ///
	3 "2 days every week" ///
	4 "other" ///
	5 "not fixed"
lab var v32 "holiday time: new year"
replace v32=0 if v32==.
label values v32  v32
label define v32 ///
	0 "didn't take it" ///
	1 "took it"
lab var v33 "holiday time: golden week"
replace v33=0 if v33==.
label values v33  v33
label define v33 ///
	0 "didn't take it" ///
	2 "took it"
lab var v34 "holiday time: summer"
replace v34=0 if v34==.
label values v34  v34
label define v34 ///
	0 "didn't take it" ///
	3 "took it"
lab var v35 "holiday time: other time"
replace v35=0 if v35==.
label values v35  v35
label define v35 ///
	0 "didn't take it" ///
	4 "took it"
lab var v36 "holiday time: I didn't use my holiday time"
replace v36=6 if v36==.
label values v36  v36
label define v36 ///
	5 "didn't take it" ///
	6 "took it"
lab var v37 "type of dwelling"
replace v37="-1" if v37=="V"
destring v37, replace
label values v37  v37
label define v37 ///
	1 "owns home" ///
	2 "private housing renting" ///
	3 "municipal housing renting" ///
	4 "public housing renting" ///
	5 "work housing" ///
	6 "dormitory" ///
	-1 "NA"
lab var v38 "number of rooms in the dwelling"
replace v38="-1" if v38=="V"
destring v38, replace
label values v38  v38
label define v38 ///
	1 "1 room" ///
	2 "2 rooms" ///
	3 "3 rooms" ///
	4 "4 rooms" ///
	5 "5 rooms" ///
	6 "6 rooms" ///
	7 "7 rooms" ///
	8 "8 and more rooms" ///
	-1 "NA"
lab var v39 "do you have a car?"
replace v39="-1" if v39=="V"
destring v39, replace
label values v39  v39
label define v39 ///
	1 "yes" ///
	2 "no" ///
	-1 "NA"
lab var v40 "household income (including tax)"
replace v40="-1" if v40=="VV"
destring v40, replace
label values v40  v40
label define v40 ///
	01 "less than 100 man" ///
	02 "100-199 man" ///
	03 "200-299 man" ///
	04 "300-399 man" ///
	05 "400-499 man" ///
	06 "500-599 man" ///
	07 "600-699 man" ///
	08 "700-799 man" ///
	09 "800-899 man" ///
	10 "900-999 man" ///
	11 "1000-1499 man" ///
	12 "1500 man and more" ///
	-1 "NA"
lab var v41 "do you receive any help from non-household members?"
label values v41  v41
label define v41 ///
	1 "no" ///
	2 "one day a month" ///
	3 "two-three days a month" ///
	4 "one day a week" ///
	5 "2-3 days a week" ///
	6 "4 or more days a week"
lab var v42 "household absentee: migrant: none"
replace v42=0 if v42==.
label values v42  v42
label define v42 ///
	1 "none" ///
	0 "there is"
lab var v43 "household absentee: migrant: spouse"
replace v43=0 if v43==.
label values v43  v43
label define v43 ///
	2 "there is" ///
	0 "none"
lab var v44 "household absentee: migrant: parents or spouse's parents"
replace v44=0 if v44==.
label values v44  v44
label define v44 ///
	3 "there is" ///
	0 "none"
lab var v45 "household absentee: migrant: child or child's spouse"
replace v45=0 if v45==.
label values v45  v45
label define v45 ///
	4 "there is" ///
	0 "none"
lab var v46 "household absentee: migrant: other member"
replace v46=0 if v46==.
label values v46  v46
label define v46 ///
	5 "there is" ///
	0 "none"
lab var v47 "household absentee: hospitalized: none"
replace v47=0 if v47==.
label values v47  v47
label define v47 ///
	1 "none" ///
	0 "there is"
lab var v48 "household absentee: hospitalized: spouse"
replace v48=0 if v48==.
label values v48  v48
label define v48 ///
	2 "there is" ///
	0 "none"
lab var v49 "household absentee: hospitalized: parents or spouse's parents"
replace v49=0 if v49==.
label values v49  v49
label define v49 ///
	3 "there is" ///
	0 "none"
lab var v50 "household absentee: hospitalized: child or child's spouse"
replace v50=0 if v50==.
label values v50 v50
label define v50 ///
	4 "there is" ///
	0 "none"
lab var v51 "household absentee: hospitalized: other member"
replace v51=0 if v51==.
label values v51  v51
label define v51 ///
	5 "there is" ///
	0 "none"
lab var v52 "1: information about a household member under 10: relationship with the head"
replace v52=0 if v52==.
label values v52  v52
label define v52 ///
	1 "child" ///
	2 "grandchild" ///
	3 "brother or sister" ///
	4 "other" ///
	0 "no children under 10"
lab var v53 "1: information about a household member under 10: age"
lab var v54 "1: information about a household member under 10: in school or kindergarten?"
label values v54  v54
label define v54 ///
	1 "(nursery) using child care" ///
	2 "(nursery) not using child care" ///
	3 "(kindergarten) using child care" ///
	4 "(kindergarten) not using child care" ///
	5 "(primary school) using child care" ///
	6 "(primary school) not using child care"
lab var v55 "2: information about a household member under 10: relationship with the head"
replace v55=0 if v55==.
label values v55  v55
label define v55 ///
	1 "child" ///
	2 "grandchild" ///
	3 "brother or sister" ///
	4 "other" ///
	0 "no children under 10"
lab var v56 "2: information about a household member under 10: age"
lab var v57 "2: information about a household member under 10: in school or kindergarten?"
label values v57  v57
label define v57 ///
	1 "(nursery) using child care" ///
	2 "(nursery) not using child care" ///
	3 "(kindergarten) using child care" ///
	4 "(kindergarten) not using child care" ///
	5 "(primary school) using child care" ///
	6 "(primary school) not using child care"
lab var v58 "3: information about a household member under 10: relationship with the head"
replace v58=0 if v58==.
label values v58  v58
label define v58 ///
	1 "child" ///
	2 "grandchild" ///
	3 "brother or sister" ///
	4 "other" ///
	0 "no children under 10"
lab var v59 "3: information about a household member under 10: age"
lab var v60 "3: information about a household member under 10: in school or kindergarten?" 
label values v60  v60
label define v60 ///
	1 "(nursery) using child care" ///
	2 "(nursery) not using child care" ///
	3 "(kindergarten) using child care" ///
	4 "(kindergarten) not using child care" ///
	5 "(primary school) using child care" ///
	6 "(primary school) not using child care"
lab var v61 "4: information about a household member under 10: relationship with the head"
replace v61=0 if v61==.
label values v61  v61
label define v61 ///
	1 "child" ///
	2 "grandchild" ///
	3 "brother or sister" ///
	4 "other" ///
	0 "no children under 10"
lab var v62 "4: information about a household member under 10: age"
lab var v63 "4: information about a household member under 10: in school or kindergarten?" 
label values v63  v63
label define v63 ///
	1 "(nursery) using child care" ///
	2 "(nursery) not using child care" ///
	3 "(kindergarten) using child care" ///
	4 "(kindergarten) not using child care" ///
	5 "(primary school) using child care" ///
	6 "(primary school) not using child care"
lab var v64 "5: information about a household member under 10: relationship with the head"
replace v64=0 if v64==.
label values v64  v64
label define v64 ///
	1 "child" ///
	2 "grandchild" ///
	3 "brother or sister" ///
	4 "other" ///
	0 "no children under 10"
lab var v65 "5: information about a household member under 10: age"
lab var v66 "5: information about a household member under 10: in school or kindergarten?" 
label values v66  v66
label define v66 ///
	1 "(nursery) using child care" ///
	2 "(nursery) not using child care" ///
	3 "(kindergarten) using child care" ///
	4 "(kindergarten) not using child care" ///
	5 "(primary school) using child care" ///
	6 "(primary school) not using child care"
lab var v67 "6: information about a household member under 10: relationship with the head"
replace v67=0 if v67==.
label values v67  v67
label define v67 ///
	1 "child" ///
	2 "grandchild" ///
	3 "brother or sister" ///
	4 "other" ///
	0 "no children under 10"
lab var v68 "6: information about a household member under 10: age"
lab var v69 "6: information about a household member under 10: in school or kindergarten?" 
label values v69  v69
label define v69 ///
	1 "(nursery) using child care" ///
	2 "(nursery) not using child care" ///
	3 "(kindergarten) using child care" ///
	4 "(kindergarten) not using child care" ///
	5 "(primary school) using child care" ///
	6 "(primary school) not using child care"

lab var v70 "household size: 10 and above"
lab var v71 "household size: below 10"
lab var v72 "weight 1"
lab var v73 "info: occupation"
replace v73=-1 if v73==.
label values v73  v73
label define v73 ///
	01 "trades: technician" ///
	02 "trades: instructor" ///
	03 "trades: other trades occupation" ///
	04 "managerial occupation" ///
	05 "office worker" ///
	06 "sales representative" ///
	07 "services: care support service worker" ///
	08 "services: insurance worker" ///
	09 "services: other service worker" ///
	10 "agriculture worker" ///
	11 "transport worker" ///
	12 "industry: worker" ///
	13 "industry: construction worker" ///
	14 "industry: blue collar worker" ///
	15 "unclassifiable job" ///
	-1 "NA"
lab var v74 "info: life stage"
replace v74="-1" if v74=="VV"
destring v74, replace
label values v74  v74
label define v74 ///
	01 "studying: elementary school" ///
	02 "studying: middle school" ///
	03 "studying: high school" ///
	04 "studying: other school" ///
	05 "single and less than 35 years of age" ///
	06 "single and 35-44 years of age" ///
	07 "single and 45-64 years of age" ///
	08 "single and 65 years of age and over (household head or wife)" ///
	09 "single and 65 years of age and over (other than household head)" ///
	10 "married, without children, under 35" ///
	11 "married, without children, 35-44 years of age" ///
	12 "married, without children, 45-64 years of age" ///
	13 "married, without children, 65 and over (household head or wife)" ///
	14 "married, without children, 65 and over (other than household head or wife)" ///
	15 "married, with children, last child not yet in school" ///
	16 "married, with children, last child in elementary school" ///
	17 "married, with children, last child in middle school" ///
	18 "married, with children, last child in high school" ///
	19 "married, with children, last child in school or unemployed" ///
	20 "single parent, last child not yet in school" ///
	21 "single parent, last child in school or unemployed" ///
	22 "child, and child's spouse" ///
	23 "child, and co-living single parent" ///
	-1 "NA"
lab var v75 "info: type of household"
replace v75=-1 if v75==.
label values v75  v75
label define v75 ///
	01 "married couple only" ///
	02 "elderly married couple only" ///
	03 "married coupld with child" ///
	04 "married couple and husband's parents" ///
	05 "married couple and wife's parents" ///
	06 "married couple and husband's father" ///
	07 "married couple and husband's mother" ///
	08 "married couple and wife's father" ///
	09 "married couple and wife's mother" ///
	10 "married couple with child, and husband's parents" ///
	11 "married couple with child, and wife's parents" ///
	12 "married couple with child and husband's father" ///
	13 "married couple with child and husband's mother" ///
	14 "married couple with child and wife's father" ///
	15 "married couple with child and wife's mother" ///
	16 "father and child" ///
	17 "mother and child" ///
	18 "legal guardian and child" ///
	19 "one person household" ///
	20 "other type of household" ///
	-1 "NA"
lab var v76 "info: dual earners or not"
replace v76="-1" if v76=="V"
replace v76="-2" if v76==" "
destring v76, replace
label values v76  v76
label define v76 ///
	1 "both working" ///
	2 "both relying on children" ///
	3 "husband works, wife doesn't work" ///
	4 "husband doesn't work, wife does" ///
	5 "both unemployed" ///
	-2 "outside of scope" ///
	-1 "NA"
lab var v77 "info: 4 types of spousal work hours"
replace v77=-1 if v77==.
label values v77  v77
label define v77 ///
	1 "both work more than 35 hours" ///
	2 "husband more than 35 hours, wife less than 35" ///
	3 "husband less than 35 hours, wife more than 35" ///
	4 "both work less than 35 hours" ///
	5 "for both the time is not fixed" ///
	-1 "NA"
lab var v78 "info: age of the youngest child"
replace v78=-1 if v78==.
label values v78 v78
label define v78 ///
	1 "less than 1 years of age" ///
	2 "1-2 years of age" ///
	3 "3-5 years of age" ///
	4 "6-8 years of age" ///
	5 "9-11 years of age" ///
	6 "12 and over years of age" ///
	-1 "NA"
lab var v79 "info: education of the yougest child"
replace v79=-1 if v79==.
label values v79 v79
label define v79 ///
	1 "before school" ///
	2 "elementary school" ///
	3 "middle school" ///
	4 "high school" ///
	5 "trade school" ///
	6 "university" ///
	7 "other education" ///
	-1 "NA"
lab var v80 "info: children x childrenUnder6"
replace v80=-1 if v80==.
label values v80 v80
label define v80 ///
	1 "no children" ///
	2 "with children (no child under 6)" ///
	3 "with children (there is a child under 6)" ///
	-1 "NA"
lab var v81 "time use: first day or second day"
label values v81 v81
label define v81 ///
	1 "first day" ///
	2 "second day"
lab var v82 "date"
lab var v83 "travel day"
replace v83=0 if v83==.
label values v83 v83
label define v83 ///
	1 "travel day" ///
	0 "not a travel day"
lab var v84 "on an excursion"
replace v84=0 if v84==.
label values v84 v84
label define v84 ///
	2 "excursion day" ///
	0 "not an excursion day"
lab var v85 "on an event or festival"
replace v85=0 if v85==.
label values v85 v85
label define v85 ///
	3 "event or festivalday" ///
	0 "not an event or festival day"
lab var v86 "on business trip or training"
replace v86=0 if v86==.
label values v86 v86
label define v86 ///
	4 "business trip or training day" ///
	0 "not a business trip or training day"
lab var v87 "on recuperation"
replace v87=0 if v87==.
label values v87 v87
label define v87 ///
	5 "recuperation day" ///
	0 "not a recuperation day"
lab var v88 "on the day off"
replace v88=0 if v88==.
label values v88 v88
label define v88 ///
	6 "day off" ///
	0 "not a day off"
lab var v89 "other day"
replace v89=8 if v89==.
label values v89 v89
label define v89 ///
	7 "other day" ///
	8 "not other day"
lab var v90 "weather"
replace v90="-1" if v90=="V"
replace v90="-2" if v90==" "
destring v90, replace
label values v90 v90
label define v90 ///
	1 "rain whole day" ///
	2 "some rain during the day" ///
	3 "no rain" ///
	-1 "NA" ///
	-2 "no information"
lab var v91 "weekday"
replace v91=-1 if v91==.
label values v91 v91
label define v91 ///
	1 "Monday" ///
	2 "Tuesday" ///
	3 "Wednesday" ///
	4 "Thursday" ///
	5 "Friday" ///
	6 "Saturday" ///
	7 "Sunday" ///
	-1 "NA"

forval i = 1(1)26 {
	local a = 92+(`i'-1)*8
	lab var v`a' "`i': activity type"
	label values v`a'  v`a'
	label define v`a' ///
		01 "sleep"  ///
		02 "self-time"  ///
		03 "eating" ///
		04 "travel to school/work" ///
		05 "work" ///
		06 "study" ///
		07 "housework" ///
		08 "care work" ///
		09 "child care" ///
		10 "shopping" ///
		11 "travel other" ///
		12 "TV and reading" ///
		13 "rest" ///
		14 "learning and research" ///
		15 "leisure activity, hobby" ///
		16 "sports" ///
		17 "volunteering" ///
		18 "communication with others" ///
		19 "medical" ///
		20 "other activity" ///
		21 "main activity" ///
		22 "second activity" ///
		23 "third activity" ///
		24 "total activity" ///
		25 "total activity excluding sleep" ///
		26 "main activity excluding sleep"
	local a1 = `a'+1
	lab var v`a1' "`i': total (activity time)"
	local a2 = `a'+2
	lab var v`a2' "`i': total time: alone"
	local a3 = `a'+3
	lab var v`a3' "`i': total time: alone (excluding sleep)"
	local a4 = `a'+4
	lab var v`a4' "`i': total time: with a family member"
	local a5 = `a'+5
	lab var v`a5' "`i': total time: with a colleague"
	local a6 = `a'+6
	lab var v`a6' "`i': total time: with another person other than household member"
	local a7 = `a'+7
	lab var v`a7' "`i': total time: unknown with who"
}	

forval i= 1(1)96 {
	local a = 300+(`i'-1)*6
	lab var v`a' "`i': time: time period"
	label values v`a'  v`a'
	label define v`a' ///
		01 "0:00-0:15"  ///
		02 "0:15-0:30"  ///
		03 "0:30-0:45" ///
		04 "0:45-1:00" ///
		05 "1:00-1:15" ///
		06 "1:15-1:30" ///
		07 "1:30-1:45" ///
		08 "1:45-2:00" ///
		09 "2:00-2:15" ///
		10 "2:15-2:30" ///
		11 "2:30-2:45" ///
		12 "2:45-3:00" ///
		13 "3:00-3:15" ///
		14 "3:15-3:30" ///
		15 "3:30-3:45" ///
		16 "3:45-4:00" ///
		17 "4:00-4:15" ///
		18 "4:15-4:30" ///
		19 "4:30-4:45" ///
		20 "4:45-5:00" ///
		21 "5:00-5:15" ///
		22 "5:15-5:30" ///
		23 "5:30-5:45" ///
		24 "5:45-6:00" ///
		25 "6:00-6:15" ///
		26 "6:15-6:30" ///
		27 "6:30-6:45" ///
		28 "6:45-7:00" ///
		29 "7:00-7:15" ///
		30 "7:15-7:30" ///
		31 "7:30-7:45" ///
		32 "7:45-8:00" ///
		33 "8:00-8:15" ///
		34 "8:15-8:30" ///
		35 "8:30-8:45" ///
		36 "8:45-9:00" ///
		37 "9:00-9:15" ///
		38 "9:15-9:30" ///
		39 "9:30-9:45" ///
		40 "9:45-10:00" ///
		41 "10:00-10:15" ///
		42 "10:15-10:30" ///
		43 "10:30-10:45" ///
		44 "10:45-11:00" ///
		45 "11:00-11:15" ///
		46 "11:15-11:30" ///
		47 "11:30-11:45" ///
		48 "11:45-12:00" ///
		49 "12:00-12:15" ///
		50 "12:15-12:30" ///
		51 "12:30-12:45" ///
		52 "12:45-13:00" ///
		53 "13:00-13:15" ///
		54 "13:15-13:30" ///
		55 "13:30-13:45" ///
		56 "13:45-14:00" ///
		57 "14:00-14:15" ///
		58 "14:15-14:30" ///
		59 "14:30-14:45" ///
		60 "14:45-15:00" ///
		61 "15:00-15:15" ///
		62 "15:15-15:30" ///
		63 "15:30-15:45" ///
		64 "15:45-16:00" ///
		65 "16:00-16:15" ///
		66 "16:15-16:30" ///
		67 "16:30-16:45" ///
		68 "16:45-17:00" ///
		69 "17:00-17:15" ///
		70 "17:15-17:30" ///
		71 "17:30-17:45" ///
		72 "17:45-18:00" ///
		73 "18:00-18:15" ///
		74 "18:15-18:30" ///
		75 "18:30-18:45" ///
		76 "18:45-19:00" ///
		77 "19:00-19:15" ///
		78 "19:15-19:30" ///
		79 "19:30-19:45" ///
		80 "19:45-20:00" ///
		81 "20:00-20:15" ///
		82 "20:15-20:30" ///
		83 "20:30-20:45" ///
		84 "20:45-21:00" ///
		85 "21:00-21:15" ///
		86 "21:15-21:30" ///
		87 "21:30-21:45" ///
		88 "21:45-22:00" ///
		89 "22:00-22:15" ///
		90 "22:15-22:30" ///
		91 "22:30-22:45" ///
		92 "22:45-23:00" ///
		93 "23:00-23:15" ///
		94 "23:15-23:30" ///
		95 "23:30-23:45" ///
		96 "23:45-0:00"
	local a1 = `a'+1
	lab var v`a1' "`i': time: activity type"
	label values v`a1'  v`a1'
	label define v`a1' ///
		01 "sleep"  ///
		02 "self-time"  ///
		03 "eating" ///
		04 "travel to school/work" ///
		05 "work" ///
		06 "study" ///
		07 "housework" ///
		08 "care work" ///
		09 "child care" ///
		10 "shopping" ///
		11 "travel other" ///
		12 "TV and reading" ///
		13 "rest" ///
		14 "learning and research" ///
		15 "leisure activity, hobby" ///
		16 "sports" ///
		17 "volunteering" ///
		18 "communication with others" ///
		19 "medical" ///
		20 "other activity"
	local a2 = `a'+2
	lab var v`a2' "`i': time: with whom: alone"
	replace v`a2'="-1" if v`a2'=="V"
	destring v`a2', replace
	label values v`a2'  v`a2'
	label define v`a2' ///
		1 "was alone" ///
		0 "wasn't alone" ///
		-1 "NA"
	local a3 = `a'+3
	lab var v`a3' "`i': time: with whom: family member"
	replace v`a3'="-1" if v`a3'=="V"
	destring v`a3', replace
	label values v`a3'  v`a3'
	label define v`a3' ///
		1 "with a family member" ///
		0 "not with a family member" ///
		-1 "NA"
	local a4 = `a'+4
	lab var v`a4' "`i': time: with whom: colleague"
	replace v`a4'="-1" if v`a4'=="V"
	destring v`a4', replace
	label values v`a4'  v`a4'
	label define v`a4' ///
		1 "with a colleague" ///
		0 "not with a colleague" ///
		-1 "NA"
	local a5 = `a'+5
	lab var v`a5' "`i': time: with whom: other person"
	replace v`a5'="-1" if v`a5'=="V"
	destring v`a5', replace
	label values v`a5'  v`a5'
	label define v`a5' ///
		1 "with another person" ///
		0 "not with another person" ///
		-1 "NA"
}


/**Checking for SES differences in Japan**/

recode v40 (01=50)(02=150)(03=250)(04=350)(05=450)(06=550)(07=650) ///
	(08=750)(09=850)(10=950)(11=1250)(12=1500)(-1=0),gen(HhldIncome)
	
recode v12 (01=12)(02=17)(03=22)(04=27)(05=32)(06=37)(07=42) ///
	(08=47)(09=52)(10=57)(11=62)(12=67)(13=72)(14=77)(15=82)(16=85), gen(Age)
	
recode v14 (1=3)(2=7.5)(3=11)(4=13)(5=14)(6=9)(7=12)(8=14)(9=16)(10=.), gen(EduInYears)

recode v80 (1=0)(2/3=1)(-1=0), gen(Children)

gen HhldSize = v70+v71

recode v29 (-2/-1=.)(1=10)(2=22)(3=32)(4=37)(5=44)(6=54)(7=60)(8=40), gen(WorkHours)

gen PaidWork=v125

recode v10 (1=0)(2=1), gen(Female)

recode v13 (1=0)(2=1)(3/4=0), gen(Married)

recode v37 (-1=.)(1=1)(2/6=0), gen(OwnHome)

recode v91 (1/5=1)(6/7=0)(-1=.), gen(Weekday)

sum v72
gen a=r(mean)

gen Weight=v72/a

 
***** margins *******************************************
use "C:\Users\Kamila\Documents\2017\datacopy\Japan_J.dta", clear
gen HI=HhldInc/1000
nbreg v141 i.Female i.Married i.Children ///
	i.Female##i.Married##c.HI##c.HI EduInYears i.Weekday ///
	c.Age##c.Age [pw=Weight]
margins Female, at(HI=(0(0.1)1)) atmeans over(Married)
marginsplot, yline(0) ///
	ylabel(0(40)300) ///
	ytitle("Time Spent on Housework, min", height(10) size(medium)) ///
	xtitle("Income, ten million yen", height(5)) ///
	title("Japan") ///
	legend(order(1 "Non-Married Men" 2 "Married Men" 3 "Non-Married Women" 4 "Married Women"))
nbreg v141 i.Married i.Children ///
	i.Married##c.HI##c.HI EduInYears i.Weekday ///
	c.Age##c.Age [pw=Weight] if Female==1
nbreg v141 i.Married i.Children ///
	i.Married##c.HI##c.HI EduInYears i.Weekday ///
	c.Age##c.Age [pw=Weight] if Female==0


gen HI = HhldIncome/100000
gen DVCC = DVCOOK+DVCLEAN
nbreg DVCC i.Female i.Married i.Children ///
	i.Female##i.Married##c.HI##c.HI EduInYears i.Weekday ///
	c.Age##c.Age [pw=Weight]
margins Female, at(HI=(0(0.1)1.5)) atmeans over(Married)
marginsplot, yline(0) ///
	ylabel(0(40)200) ///
	xlabel(0(0.25)1.5) ///
	ytitle("Time Spent on Housework, min", height(10) size(medium)) ///
	xtitle("Income, hundred thousand USD", height(5)) ///
	title("USA") ///
	legend(order(1 "Non-Married Men" 2 "Married Men" 3 "Non-Married Women" 4 "Married Women"))
nbreg DVCC i.Married i.Children ///
	i.Married##c.HI##c.HI EduInYears i.Weekday ///
	c.Age##c.Age [pw=Weight] if Female==1
nbreg DVCC i.Married i.Children ///
	i.Married##c.HI##c.HI EduInYears i.Weekday ///
	c.Age##c.Age [pw=Weight] if Female==0
	
