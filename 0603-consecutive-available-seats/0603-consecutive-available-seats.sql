# Write your MySQL query statement below

SELECT middle_seat.seat_id
FROM cinema middle_seat
LEFT JOIN cinema left_seat
    ON middle_seat.seat_id - left_seat.seat_id = 1
LEFT JOIN cinema right_seat
    ON right_seat.seat_id - middle_seat.seat_id = 1
WHERE middle_seat.free = 1 AND (left_seat.free = 1 OR right_seat.free = 1)
ORDER BY middle_seat.seat_id
;