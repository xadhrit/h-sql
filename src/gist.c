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

/*
 *       Tree-MiniMum(x)                |           Tree-Maximum(x)
 * -------------------------------------|---------------------------------------
 *       while x.left != NIL            | while x.right != NIL
 *               x = x.left             |        x = x.right
 *       return x                       | return x
 *                                      |
 *                                      |
 *------------------------------------------------------------------
 *
 *   TREE-INSERT(T,z)
 *
 *   y = NIL
 *   x = T.root
 *   while x != NIL
 *         y = x
 *         if z.key < x.key
 *             x = x.left
 *         else x = x.right
 *
 *   z.p = y
 *   if y == NIL
 *       T.root = z   //tree T was empty
 *   else if z.key < y.key
 *           y.left = z
 *   else  y.right = z
 *
 * -----------------------------------------------------------------
 *                              |   TREE-DELETE(T,z)
 *                              |     if z.left == NIL
 *                              |           TRANSPLANT(T,z,z.right)
 *                              |     else if z.right == NIL
 *                              |            TRANSPLANT(T,z,z.left)
 *                              |     else y = TREE-MINIMUM(z.right)
 * Transplant(T,u,v)            |            if y.p != z
 *  if u.p == NIL               |                TRANSPLANT(T,y,y.right)
 *                                               y.right = z.right
 *      T.root = v              |                y.right.p = y
 *  else if u == u.p.left       |            TRANSPLANT(T,z,y)
 *       u.p.left = v           |             y.left= z.left
 *  else u.p.right = v          |             y.left.p = y
 *                              |
 *  if v != NIL                 |
 *      v.p = u.p               |
 *-----------------------------------------------------------------
 *
 *
 *
 *
 *
 *
 **/



