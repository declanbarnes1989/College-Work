SELECT Student_ID, COUNT(Scan_Time) AS Points FROM attendance GROUP BY Student_ID ORDER BY Points DESC;
