(defrule money
   (credit_score high)
=>
    (assert (money yes))
)

(defrule credit_score
   (credit_score high)
=>
    (assert (credit_score yes))
)


(defrule employed
   (has_job yes)
=>
    (assert (employeed yes))
)

(defrule rich
  (money yes)
  (has_job yes)
  (debt no)
  =>
  (assert (status rich))
)

(defrule poor
  (money no)
  (has_job no)
  (debt yes)
  =>
  (assert (status poor))
)

(defrule middle_class
  (money yes)
  (has_job yes)
  (debt yes)
  =>
  (assert (status middle_class))
)

(defrule family
  (married yes)
  (children yes)
  =>
  (assert (family yes))
)

(defrule loan
  (employeed yes)
  (money yes)
  (credit_score high)
  =>
  (assert (family yes))
)

(defrule citizen
  (citizen us)
  =>
  (assert (citizen yes))
)

(defrule never_jail
   (never_jail yes)
=>
    (assert (never_jail yes))
)


(defrule background_check
   (never_jail yes)
   (has_job yes)
   (citizen yes)
=>
    (assert (background_check clear))
)

(defrule purchase_gun
   (background_check yes)
   (money yes)
=>
    (assert (purchase_gun yes))
)

(defrule purchase_house
   (credit_score yes)
   (money yes)
   (has_job yes)
=>
    (assert (purchase_house yes))
)

(defrule time_off
   (approved_time_off yes)
=>
    (assert (time_off yes))
)

(defrule vacation
   (approved_time_off yes)
=>
    (assert (vacation yes))
)

(defrule purchase_car
   (credit_score yes)
   (money yes)
   (has_job yes)
=>
    (assert (purchase_car yes))
)

(defrule famous
   (money yes)
   (has_job yes)
   (social_media yes)
=>
    (assert (famous yes))
)

(defrule free_sponsor
   (famous yes)
   (social_media yes)
=>
    (assert (free_sponsor yes))
)

(defrule free_food
   (poor yes)
=>
    (assert (free_food yes))
)

(defrule free_sample
   (middle_class yes)
=>
    (assert (free_sample yes))
)

