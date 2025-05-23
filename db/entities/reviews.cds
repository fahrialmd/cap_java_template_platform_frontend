namespace com.fahrialmd.example;

using {
    cuid,
    managed
} from '@sap/cds/common';

using {com.fahrialmd.example as temp} from '../index';

entity Reviews : cuid, managed {
    @cds.odata.ValueList
    book   : Association to temp.Books;
    rating : temp.rating;
    title  : temp.title;
    descr  : temp.description;
}

// input validation
annotate Reviews with {
    book   @mandatory  @assert.target;
    rating @assert.range;
    title  @mandatory;
}
