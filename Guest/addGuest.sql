INSERT INTO Guests (first_name, last_name, dob, case_manager, created_at, updated_at)
VALUES (@guest_first_name, @guest_last_name, @DOB, @guest_case_manager, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);