# Rails Routing Constraints

- The goal with this application is to allow a single app to have multiple
domain constraints that have the same constraint name

  - i.e. allow two websites to use the same url constraint and lead to two different places

  - ex: a single app that has two domains, getstealz.com and epifany.com, and both should allow getstealz.com/dashboard and epifany.com/dashboard, while sending the user to different dashboards


## TO USE:

- start server
- go to `a.vcap.me:3000`
- then switch to `b.vcap.me:3000`
- will show different sites
