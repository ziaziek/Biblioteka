package grailsapplication1

class BooksTagsTagLib {
    //static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    
    def borrower = { attrs, body ->
        if(attrs.var!=null){
            String outStr = '<div>'
            outStr += '<label for="firstName">First name</label><input type=\"text\" name="firstName" value="'+attrs.var.firstName+'"/><br/>'+
            '<label for="lastName">Last name</label><input type="text" name="lastName" value="'+attrs.var.lastName+'"/><br/>'+
            '<label for="regnumber">Registration number<input type="text" name="regnumber" value="'+attrs.var.regnumber+'"/><br/>'+
            '<input type="hidden" name="id" value="'+attrs.var.id+'"/><br/>'
            out<<outStr            
        } else {
            out << "<div>No borrower object provided.</div>"
        
        }
    }
    
    def bookslist = {attrs, body ->
        def books = attrs.books
        String s = '<div style="width:50%; float:left;">'+
                '<table>'+
                    '<tr><th>Tytuł</th><th>Autor</th><th>Data wydania</th><th>Status</th><th></th></tr>'
        for(Book book: books){
            s+='<tr><td>${book.title}</td><td>${book.author}</td><td>${book.year}</td><td><asset:image src="${book.image}" width="50px"/></td><td><a href="/book/prepareBook/${book.id}">${book.act}</a></td></tr>'
        }
                s+='</table>'+
                '<p>${bookCount}&nbsp;books listed.</p>'+
            '</div>'
        out<<s
    }
    
    def searchbox = {attr ->
        StringBuilder sb = new StringBuilder()
        sb.append('<script type="text/javascript">')
            sb.append('function clearText () {')
            sb.append('if($(\'#'+attr.id+'\').val()==\'Search...\'){')
            sb.append('$(\'#'+attr.id+'\').val("")');
            sb.append('}}')
            sb.append('function bringText(){')
            sb.append('if($(\'#'+attr.id+'\').val()==\'\'){')
            sb.append('$(\'#'+attr.id+'\').val("Search...");')
            sb.append('}}')
        sb.append('</script>')
        sb.append('<input id="'+attr.id+'" type="text" value="Search..." name="search" style="width:50%" onclick="clearText();" onblur="bringText();"/>')
        out<<sb.toString()
    }
}