Course Data API documentation
===
Institutions
--
Something here


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
