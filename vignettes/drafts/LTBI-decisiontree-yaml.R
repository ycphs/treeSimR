
sink("raw data/LTBI_dtree-cost-distns.yaml")

cat("
    name: LTBI screening cost
    distn: gamma
    mean: 1
    sd: 1
    type: chance
    under 40k cob incidence:
      distn: gamma
      mean: 1
      sd: 1
      p: 0.25
      type: chance
      Screening:
        distn: gamma
        mean: 1
        sd: 1
        p: 0.25
        type: logical
        LTBI:
          p: 0.25
          distn: gamma
          mean: 1
          sd: 1
          type: chance
          Not GP registered:
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
            type: terminal
          GP registered:
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
            type: chance
            Not Agree to Screen:
              p: 0.6
              distn: gamma
              mean: 1
              sd: 1
              type: terminal
            Agree to Screen:
              p: 0.6
              distn: gamma
              mean: 1
              sd: 1
              type: chance
              Test Negative:
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
                type: terminal
              Test Positive:
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
                type: chance
                Not Start Treatment:
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                  type: terminal
                Start Treatment:
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                  type: chance
                  Complete Treatment:
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
                    type: terminal
                  Not Complete Treatment:
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
                    type: terminal
        non-LTBI:
          p: 0.25
          distn: gamma
          mean: 1
          sd: 1
          type: chance
          Not GP registered:
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
            type: terminal
          GP registered:
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
            type: chance
            Not Agree to Screen:
              p: 0.6
              distn: gamma
              mean: 1
              sd: 1
              type: terminal
            Agree to Screen:
              p: 0.6
              distn: gamma
              mean: 1
              sd: 1
              type: chance
              Test Negative:
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
                type: terminal
              Test Positive:
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
                type: chance
                Not Start Treatment:
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                  type: terminal
                Start Treatment:
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                  type: chance
                  Complete Treatment:
                    type: terminal
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
                  Not Complete Treatment:
                    type: terminal
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
      No Screening:
        p: 0.25
        distn: gamma
        mean: 1
        sd: 1
        type: logical
        LTBI:
          type: terminal
          p: 0.4
          distn: gamma
          mean: 1
          sd: 1
        non-LTBI:
          p: 0.6
          type: terminal
          distn: gamma
          mean: 1
          sd: 1
    40-150k cob incidence:
      p: 0.25
      distn: gamma
      mean: 1
      sd: 1
      type: chance
      Screening:
        p: 0.25
        distn: gamma
        mean: 1
        sd: 1
        type: logical
        LTBI:
          p: 0.25
          distn: gamma
          mean: 1
          sd: 1
          type: chance
          Not GP registered:
            type: terminal
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
          GP registered:
            type: chance
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
            Not Agree to Screen:
              p: 0.6
              distn: gamma
              mean: 1
              sd: 1
              type: terminal
            Agree to Screen:
              p: 0.6
              type: chance
              distn: gamma
              mean: 1
              sd: 1
              Test Negative:
                type: terminal
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
              Test Positive:
                type: chance
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
                Not Start Treatment:
                  type: terminal
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                Start Treatment:
                  type: chance
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                  Complete Treatment:
                    type: terminal
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
                  Not Complete Treatment:
                    type: terminal
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
        non-LTBI:
          p: 0.25
          distn: gamma
          mean: 1
          sd: 1
          type: chance
          Not GP registered:
            type: terminal
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
          GP registered:
            type: chance
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
            Not Agree to Screen:
              p: 0.6
              type: terminal
              distn: gamma
              mean: 1
              sd: 1
            Agree to Screen:
              p: 0.6
              type: chance
              distn: gamma
              mean: 1
              sd: 1
              Test Negative:
                type: terminal
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
              Test Positive:
                type: chance
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
                Not Start Treatment:
                  type: terminal
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                Start Treatment:
                  type: chance
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                  Complete Treatment:
                    type: terminal
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
                  Not Complete Treatment:
                    type: terminal
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
      No Screening:
        p: 0.25
        distn: gamma
        mean: 1
        sd: 1
        type: logical
        LTBI:
          type: terminal
          p: 0.4
          distn: gamma
          mean: 1
          sd: 1
        non-LTBI:
          p: 0.6
          type: terminal
          distn: gamma
          mean: 1
          sd: 1
    over 150k cob incidence:
      p: 0.25
      distn: gamma
      mean: 1
      sd: 1
      type: chance
      Screening:
        distn: gamma
        mean: 1
        sd: 1
        type: logical
        p: 0.25
        LTBI:
          p: 0.25
          distn: gamma
          mean: 1
          sd: 1
          type: chance
          Not GP registered:
            type: terminal
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
          GP registered:
            type: chance
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
            Not Agree to Screen:
              p: 0.6
              type: terminal
              distn: gamma
              mean: 1
              sd: 1
            Agree to Screen:
              p: 0.6
              type: chance
              distn: gamma
              mean: 1
              sd: 1
              Test Negative:
                type: terminal
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
              Test Positive:
                type: chance
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
                Not Start Treatment:
                  type: terminal
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                Start Treatment:
                  type: chance
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                  Complete Treatment:
                    type: terminal
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
                  Not Complete Treatment:
                    type: terminal
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
        non-LTBI:
          p: 0.25
          distn: gamma
          mean: 1
          sd: 1
          type: chance
          Not GP registered:
            type: terminal
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
          GP registered:
            type: chance
            p: 0.4
            distn: gamma
            mean: 1
            sd: 1
            Not Agree to Screen:
              p: 0.6
              type: terminal
              distn: gamma
              mean: 1
              sd: 1
            Agree to Screen:
              p: 0.6
              type: chance
              distn: gamma
              mean: 1
              sd: 1
              Test Negative:
                type: terminal
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
              Test Positive:
                type: chance
                p: 0.7
                distn: gamma
                mean: 1
                sd: 1
                Not Start Treatment:
                  type: terminal
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                Start Treatment:
                  type: chance
                  p: 0.3
                  distn: gamma
                  mean: 1
                  sd: 1
                  Complete Treatment:
                    type: terminal
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
                  Not Complete Treatment:
                    type: terminal
                    p: 0.75
                    distn: gamma
                    mean: 1
                    sd: 1
      No Screening:
        p: 0.25
        distn: gamma
        mean: 1
        sd: 1
        type: logical
        LTBI:
          type: terminal
          p: 0.4
          distn: gamma
          mean: 1
          sd: 1
        non-LTBI:
          p: 0.6
          type: terminal
          distn: gamma
          mean: 1
          sd: 1
    ", fill=TRUE)
sink()
