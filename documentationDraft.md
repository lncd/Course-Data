Course Data API documentation
===
Institutions
--
**id** - requires the full UKPRN for the institution. Returns details for that institution. <br>
**name** - returns institutions that have names 'like' the specified term. I.e, ?name=lincoln will return University of Lincoln <br>


Courses
--
**kisID=x** - returns courses that match the kisID specified. Relates to _id in schema.<br>
**institution** -  requires UKPRN of an institution, will return courses delivered at that institution. Relates to applicationUKPRN in schema.<br>
**courseTitle** - returns courses that have a title 'like' the words specified. Relates to courseTitle in schema. <br>
**distance** - accepted 1 or 0. Returns courses that are/aren't ONLY distance learnig. Relates to distanceLearningOnly in schema.
**level** - returns courses that match the level of award specified. Relates to levelOfAward in schema. <br>
**partTime** - accpeted 1 or 0. Returns courses that are/aren't part time ONLY courses. Relates to partTimeOnly in schema. <br>
**jacs** - Returns courses that relate to the jacs code provided. Relates to fullJacs in the schema. <br>
**teacher** - accepted 1 or 0. Returns courses that are/aren't teacher training courses. Realtes to teacherTraining in schema. <br>
**ucas** - returns courses that use the ucas programme / course code provided. Relates to ucasProgrammeCode in the schema. <br>
**feeWaiver** - accepted 1 or 0. Returns courses that do/do not have fee waivers available. <br>
**maxFee** - Returns courses that have a max fee which is <= amount specified. Relates to maxFee in the schema.<br>
**meansTested** - accepted 1 or 0. Returns courses that do/do not have means tested support available. (This is generally inherited from the providing institution and as such may be farmed out to institution-level only at some point.) Relates to meansTested in the schema. <br>
<br>**The following section relates specifically to NSS results for this course/related courses**<br><br>
**nssQuality** - accepted int or decimal value. Returns courses that have a >= score for the 'Overall, I am satisfied with the quality of the course' question on NSS. Relates to nss->overall->quality in the schema. <br>
**nssExplaining** - accepted int or decimal value. Returns courses that have a >= score for the 'Staff are good at explaining things'  question. Relates to nss->teaching->explaining in the schema. <br>
**nssInteresting** - accepted int or decimal value. Returns courses that have a >= score for the 'Staff have made the subject interesting' question on NSS. Relates to nss->teaching->interesting in the schema. <br>
**nssEnthusiastic** - accepted int or decimal value. Returns courses that have a >= score for the 'Staff are enthusiastic about what they are teaching'. Relates to nss->teaching->enthusiastic in the schema. <br>
**nssStimulating** - accepted int or decimal value. Returns courses that have a >= score for the 'The course is intellectually stimulating' question on the nss. Relates to nss->teaching->stimulating on the schema.
**nssCriteria** - accepted int or decimal value. Returns courses that have a >= score the for 'The criteria used in marking have been clear in advance' NSS question. Realtes to the nss->assessment->criteria in the schema. <br>
**nssFair** - accepted int or decimal value. Returns courses that have a >= score for the 'Assessment arrangements and marking have been fair' question on NSS. Relates to nss->assessment->fair in the schema. <br>
**nssPrompt** - accepted int or decimal value. Returns courses that have a >= score for the 'Feedback on my work has been prompt' question on NSS. Relates to nss->assessment->prompt in the schema. <br>
**nssComments** - accepted int or decimal value. Returns courses that have a >= score for the 'I have received detailed comments on my work' question on NSS. Relates to nss->assessment->comments in the schema. <br>
**nssClarify** - accepted int or decimal value. Returns courses that have a >= score for the 'Feedback on my work has helped me clarify things I did not understand.' question on NSS. Relates to nss->assessment->clarify in the schema. <br>
**nssSupport** - accepted int or decimal value. Returns courses that have a >= score for the 'I have received sufficient advice and support with my studies' question on NSS. Relates to nss->academic->support in the schema. <br>
**nssContact** - accepted int or decimal value. Returns courses that have a >= score for the 'I have been able to contact staff when I needed to' question on NSS. Relates to nss->academic->contact in the schema. <br>
**nssAdvice** - accepted int or decimal value. Returns courses that have a >= score in the 'Good advice was available when I needed to make study choices' question on NSS. Relates to nss->academic->advice in the schema. <br>
**nssTimetable** - accepted int or decimal value. Returns courses that have a >= score for the 'The timetable works efficiently as far as my activities are concerned' question on NSS. Relates to nss->organisation->timetable in the schema. <br>
**nssChanges** - accepted int or decimal value. Returns courses that have a >= score for the 'Any changes in the course or teaching have been communicated effectively' question on NSS. Relates to nss->organisation->changes in the schema. <br>
**nssOrganised** - accepted int or decimal value. Returns courses that have a >= score for the 'The course is well organised and is running smoothly' on the NSS. Relates to nss->organisation->organised in the schema. <br>
**nssLibrary** - accepted int or decimal value. Returns courses that have a >= score for the 'The library resources and services are good enough for my needs' question on NSS. Relates to nss->resources->library in schema. <br>
**nssICT** - accepted int or decimal value. Returns courses that have a >= score for 'I have been able to access general IT resources when I needed to' question on NSS. Relates to nss->resources->ict in the schema. <br>
**nssSpecialist** - accepted int or decimal value. Returns courses that have a >= score for the 'I have been able to access specialised equipment, facilities or room when I needed to' question on NSS. Relates to nss->resources->specialist in the schema. <br>
**nssConfidence** - accepted int or decmial value. Returns courses that have a >= score for the 'The course has helped me present myself with confidence.' question on NSS. Relates to nss->development->confidence in the schema. <br>
**nssCommunication** - accepted int or decmial value. Returns courses that have a >= score for the 'My communication skills have improved' question on NSS. Relates to nss->development->communication in the schema. <br>
**nssUnfamiliar** - accepted int or decmial value. Returns courses that have a >= score for the 'As a result of the course, I feel confident in tackling unfamiliar problems' question on NSS. Relates to nss->development->unfamiliar in the schema. <br>
**nssImpact** - accepted int or decmial value. Returns courses that have a >= score for the 'To what extent do you agree the student’s union has had a positive impact on your time as a student' question on NSS. Relates to nss->studentsUnion->impact in the schema. <br><br>

**The next criteria relate to employment statistics of graduates from this course (or related courses)**<br><br>

**graduateEmployment** - accepted int or decimal value. Returns courses that have a >= % of graduates in graduate jobs. Relates to employment->graduate employment in the schema. <br>
**sixMonth** - accepted int values only. Returns courses that have an average graduate salaray >= specified amount, 6 months after course completion. Relats to employment->sixMonth in the schema. <br><br>

**The next criteria relate to degree classification statistics for this course (or related courses)**<br><br>

**first** - accepted int or decimal value. Returns courses that have a >= % of first class degrees. Relates to classification->first in the schema.

**upperSecond** - accepted int or decimal value. Returns courses that have a >= % of upper second class degrees. Relates to classification->upperSecond in the schema.

**lowerSecond** - accepted int or decimal value. Returns courses that have a >= % of lower second class degrees. Relates to classification->lowerSecond in the schema.