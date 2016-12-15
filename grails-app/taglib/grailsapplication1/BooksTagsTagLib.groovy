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
        
        String s = '<div style="width:100%; float:left;">'+
                '<table>'+
                    '<tr><th>Tytuł</th><th>Autor</th><th>Data wydania</th><th>Status</th><th>Action</th><th>Show</th></tr>'
        for(Book book: books){
            s+='<tr><td>'+book.title+'</td><td>'+book.author+'</td><td>'+book.year+'</td><td><img src="'+resource(dir: "images", file: book.image)+'" width="50px"/></td><td><a href="'+createLink(controller:'book', action:'prepareBook', id: book.id)+'">'+book.act+'</a></td>'+
            '<td><a href="'+createLink(controller: 'book', action: 'show', id: book.id)+'">Show</a></td></tr>'
        }
        s+='</table>'+
                '<p>'+books.size()+'&nbsp;books listed.</p>'+
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
    
    def borrowerslist = {attrs, body ->
        def borrowers = attrs.borrowers
        StringBuilder sb = new StringBuilder()
        sb.append('<table>')
        sb.append('<tr><th>First Name</th><th>Last Name</th><th>Edit</th><th>Show</th></tr>')
        if(borrowers!=null){
            for(Borrower b: borrowers){
                sb.append('<tr><td>'+b.firstName+'</td><td>'+b.lastName+'</td><td><a href="'+createLink(controller: 'borrower', action: 'edit', id: b.id)+'">Edit</a></td><td>'+
                        '<a href="'+createLink(controller: 'borrower', action: 'show', id: b.id)+'">Show</a></td></tr>')
            }
        }
        sb.append(' </table>' )
        out << sb.toString() 
    }
            
    
}

        