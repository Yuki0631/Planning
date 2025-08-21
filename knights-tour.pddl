(define (domain knights-tour)
    (:requirements :strips :negative-preconditions)

    (:predicates
        (at ?square)
        (visited ?square)
        (valid_move ?square_from ?square_tor)
    )

    (:action move
    :parameters (?from ?to)
    :precondition (and (at ?from)
                        (valid_move ?from ?to)
                        (not (visited ?to)))
    :effect (and (not (at ?from))
                        (at ?to)
                        (visited ?to)))
)