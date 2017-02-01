SELECT
  (SELECT sc.LicenseNumber FROM service_constants sc) AS LicenseNumber,
  (SELECT sc.LicenseDate FROM service_constants sc) AS LicenseDate,
  (SELECT sc.AccreditationNumber FROM service_constants sc) AS AccreditationNumber,
  (SELECT sc.AccreditationDate FROM service_constants sc) AS AccreditationDate,
  DateToString(CURDATE()) AS ReferenceDate,
  IF(MONTH(CURDATE()) > 6, CONCAT('31 января ', YEAR(CURDATE()) + 1), CONCAT('30 июня ', YEAR(CURDATE()))) AS ValidityDate,  
  CONCAT_WS(' ', a.fam, a.name, a.vname) AS StudentName,
  ak.dat_ro as StudentBorndate,
  a.kurs as CourseNumber,
  g.name AS GroupName,
  f.DeclensionName as FacultyName,
  d.DeclensionName AS EducationForm,
  s.name AS DirectionName,
  CONCAT('01.09.', g.AdmissionYear) AS BeginLearnDate,
  CONCAT('31.08.', GetGraduationYear(a.pin)) AS EndLearnDate,
  (SELECT m.mvnum FROM moves m WHERE m.pin = GetAdmissionOrderId(a.pin)) AS AdmissionOrderNumber,
  (SELECT m.mvdate FROM moves m WHERE m.pin = GetAdmissionOrderId(a.pin)) AS AdmissionOrderDate,
  'А.А. Кутумов' AS DirectorName,
  f.nameruk AS DeanName
  
  FROM acc as a
  INNER JOIN acckadr ak ON a.pin = ak.acc
  INNER JOIN spgrup g ON g.pin = a.spgrup
  INNER JOIN spfak f ON a.spfak = f.pin
  INNER JOIN spotd d ON a.spotd = d.pin
  INNER JOIN spspec s ON a.spspec = s.pin

  WHERE a.pin = :StudentId