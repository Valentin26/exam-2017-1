layout 'layout/main.tpl', title:  'All hobbies',
content: contents {
  h4 ('All hobbies')
  table(class: 'striped') {
    thead {
      tr {
        th('name')
        th('origin')
        th('hobbyQuantity')

      }
    }
    tbody {
      hobbies.eachWithIndex { hobby, number->
        tr {
          td(hobby.getName())
          td(hobby.getOrigin())
          td(hobby.getHobbyQuantity())
          }
        }
      }
    }
a(href: '/humans') {yield "go back to the humans list"}
  }