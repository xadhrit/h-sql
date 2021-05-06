/*
 *                               BASIC GiST
 *
 *                         search(search-pred)
 *                             push(stack, root):
 *                             while(stack is not empty)
 *                                 child = pop(stack);
 *                                 for each page entry e on child
 *                                 if (consistent(search-pred, e-pred))
 *                                    if (child is leaf)
 *                                        add e to search result set;
 *                                    else
 *                                        push(stack, e.child-ptr);
 *
 *                                 end
 *                              end
 *                          end
 *
 *
 */





