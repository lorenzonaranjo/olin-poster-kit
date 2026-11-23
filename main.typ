// main.typ: the poster content. This is the only file you (or Claude) edit.
// Example poster: Riverbend Bank is a fictional client and every number is made up.

#import "olin-poster.typ": *

#show: poster.with(
  course: [CFAR Practicum · Fall 2026],
  title: [Should Riverbend Bank Launch a Robo-Advisor?],
  subtitle: [A cost, demand and risk assessment for a regional bank's wealth business],
  tagline: [Serve smaller accounts profitably without replacing human advisors.],
  team: ([Alex Rivera (lead)], [Jordan Lee], [Sam Patel], [Casey Nguyen]),
  advisor: [Prof. Jane Doe],
  sponsor: [Riverbend Bank (fictional)],
  footer: [Example poster for the Olin poster kit. Riverbend Bank is fictional and all figures are illustrative. #h(1fr) Contact: team-email\@wustl.edu],
)

#columns-layout(
  widths: (1fr, 1.25fr, 1fr),

  // ---------------------------------------------------------- column 1
  [
    #section(1, [What problem are we solving?])[
      Riverbend turns away clients with less than \$250,000 because a human advisor costs too much to serve them.

      - 62% of deposit customers hold no investment account with the bank
      - Competitors offer digital advice from \$0 minimums
      - Younger clients expect to open accounts on their phone
      - Accounts under \$250,000 are 70% of the client base
    ]

    #section(2, [What did we do?])[
      #steps(
        ([Interview], [12 advisors and branch managers]),
        ([Survey], [840 deposit customers]),
        ([Model], [Cost and revenue for 3 channels]),
      )
      #v(0.3in)
      We compared a fully human, a hybrid and a fully digital service on cost to serve, expected demand and operational risk, using the bank's 2025 cost data and vendor quotes.
    ]

    #stat([3 in 10], [surveyed customers would open a digital account within a year], note: [Survey of 840 deposit customers, October 2026.])
    #v(0.6in)

    #callout(title: [What advisors told us])[
      - Small accounts take as much time as large ones
      - Clients want a person for retirement and estate decisions
      - Routine rebalancing is where most hours go
      - Digital tools would free time for prospecting
      - Clients under 40 rarely visit a branch
    ]
  ],

  // ---------------------------------------------------------- column 2
  [
    #section(3, [What did we find?])[
      #figure(
        image("figures/cost-per-client.png", alt: "Bar chart of annual cost per client: human advisor 1,450 dollars, hybrid 620 dollars, robo-advisor 140 dollars."),
        caption: [Annual cost to serve one client. A robo-advisor costs a tenth of a human advisor.],
      )
      #v(0.2in)
      #cards(
        ([Cost], [Digital service breaks even at \$15,000 per account.]),
        ([Demand], [Interest is highest among clients under 40.]),
        ([Risk], [Main risk is vendor dependence, not markets.]),
      )
    ]

    #section(4, [How would the options compare?])[
      #table(
        columns: (auto, 1fr, 1fr, 1fr),
        [], [Human], [Hybrid], [Robo],
        [Minimum account], [\$250,000], [\$25,000], [\$500],
        [Annual fee], [1.00%], [0.50%], [0.25%],
        [Break-even account], [\$145,000], [\$124,000], [\$15,000],
        [Launch time], [n/a], [9 months], [4 months],
      )
      #v(0.2in)
      The hybrid service keeps advisors for the decisions clients value most, retirement, estates and taxes, and lets software handle rebalancing. It also reaches clients the bank turns away today.
    ]
  ],

  // ---------------------------------------------------------- column 3
  [
    #section(5, [What could it be worth?])[
      #figure(
        image("figures/aum-scenarios.png", alt: "Line chart of assets on the platform from 2027 to 2032 under three scenarios. All start at 40 million dollars; the high-adoption case reaches about 360 million, the base case about 180 million and the low case about 80 million."),
        caption: [Assets on the platform under three adoption scenarios.],
      )
    ]

    #section(6, [What could go wrong?])[
      - *Vendor dependence.* Negotiate data access and an exit clause.
      - *Advisor resistance.* Credit advisors for referred digital clients.
      - *Weak adoption.* Set a 12-month target before scaling up.
    ]

    #callout(title: [What we are unsure about])[
      Survey intent overstates actual sign-ups. Our base case assumes half of interested customers follow through.
    ]
    #v(0.6in)

    #takeaway(title: [Our recommendation])[
      + Launch a hybrid service with a \$25,000 minimum.
      + Partner with a vendor rather than build in-house.
      + Review adoption after 12 months before adding a pure robo tier.
    ]
  ],
)
