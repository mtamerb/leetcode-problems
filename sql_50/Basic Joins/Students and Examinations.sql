SELECT st.student_id,
       st.student_name,
       su.subject_name,
       count(ex.subject_name) AS attended_exams
FROM Students AS st
         JOIN Subjects AS su
         LEFT JOIN Examinations ex ON st.student_id = ex.student_id
    AND su.subject_name = ex.subject_name
GROUP BY st.student_id,
         su.subject_name
ORDER BY student_id;