SELECT
  sc.LicenseNumber,
  sc.LicenseDate,
  sc.AccreditationNumber,
  sc.AccreditationDate,
  CURDATE() AS ReferenceDate,
  CONCAT_WS(' ', a.fam, a.name, a.vname) AS StudentName,
  a.kurs AS StudentCourse,
  f.DeclensionName AS FacultyName,
  d.DeclensionName AS EducationForm,
  (SELECT m.mvnum FROM moves m WHERE m.acc = a.pin AND m.mvdate = (SELECT MAX(m1.mvdate) FROM moves m1 WHERE m1.acc = a.pin AND m1.spevent IN (1,2,3,54,64,65)) LIMIT 1) as EnrollOrderNumber,
  (SELECT MAX(m1.mvdate) FROM moves m1 WHERE m1.acc = a.pin AND m1.spevent IN (1,2,3,54,64,65)) AS EnrollOrderDate,
  IF(a.spotd = 6, '4 года', '5 лет') AS EducationTime,
  IF(a.spotd = 6, CONCAT('31.08.', g.AdmissionYear + 4), CONCAT('31.08.', g.AdmissionYear + 5)) AS GraduationDate,
  f.nameruk as DeanName,
  IF(ak.spkat = 6, 'Ю.В. Тутучкина', 'М.В. Шадрина') AS BookerName,
  'А.С. Кузнецова' AS HeadBookerName 
  FROM acc a
  INNER JOIN service_constants sc
  INNER JOIN spfak f ON f.pin = a.spfak
  INNER JOIN spotd d ON a.spotd = d.pin
  inner join spgrup g ON a.spgrup = g.pin
  INNER JOIN acckadr ak ON a.pin = ak.acc
  WHERE a.pin = :StudentId