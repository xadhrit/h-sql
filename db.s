	.file	"db.c"
	.text
	.section	.rodata
.LC0:
	.string	"\033[36m"
.LC1:
	.string	"(%d , %s, %s,%s)\n"
	.text
	.globl	print_row
	.type	print_row, @function
print_row:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	37(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC0(%rip), %r8
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	print_row, .-print_row
	.globl	PARENT_POINTER_OFFSET
	.section	.rodata
	.align 4
	.type	PARENT_POINTER_OFFSET, @object
	.size	PARENT_POINTER_OFFSET, 4
PARENT_POINTER_OFFSET:
	.long	2
	.globl	COMMON_NODE_HEADER_SIZE
	.align 4
	.type	COMMON_NODE_HEADER_SIZE, @object
	.size	COMMON_NODE_HEADER_SIZE, 4
COMMON_NODE_HEADER_SIZE:
	.long	1
	.globl	INTERNAL_NODE_CELL_SIZE
	.align 4
	.type	INTERNAL_NODE_CELL_SIZE, @object
	.size	INTERNAL_NODE_CELL_SIZE, 4
INTERNAL_NODE_CELL_SIZE:
	.long	8
	.text
	.globl	get_node_type
	.type	get_node_type, @function
get_node_type:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_node_type, .-get_node_type
	.globl	set_node_type
	.type	set_node_type, @function
set_node_type:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movzbl	-1(%rbp), %edx
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	set_node_type, .-set_node_type
	.globl	is_node_root
	.type	is_node_root, @function
is_node_root:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -1(%rbp)
	cmpb	$0, -1(%rbp)
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	is_node_root, .-is_node_root
	.globl	set_node_root
	.type	set_node_root, @function
set_node_root:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movzbl	-28(%rbp), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movzbl	-1(%rbp), %eax
	movb	%al, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	set_node_root, .-set_node_root
	.globl	node_parent
	.type	node_parent, @function
node_parent:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	node_parent, .-node_parent
	.globl	internal_node_num_keys
	.type	internal_node_num_keys, @function
internal_node_num_keys:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	internal_node_num_keys, .-internal_node_num_keys
	.globl	internal_node_right_child
	.type	internal_node_right_child, @function
internal_node_right_child:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	movl	%eax, %eax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	internal_node_right_child, .-internal_node_right_child
	.globl	internal_node_cell
	.type	internal_node_cell, @function
internal_node_cell:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$1, %eax
	movl	%eax, %edx
	movl	$8, %eax
	imull	-12(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	internal_node_cell, .-internal_node_cell
	.section	.rodata
	.align 8
.LC2:
	.string	"Tried to access child_num %d > num_keys %d\n"
	.text
	.globl	internal_node_child
	.type	internal_node_child, @function
internal_node_child:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_num_keys
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jbe	.L17
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L17:
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_right_child
	jmp	.L19
.L18:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_cell
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	internal_node_child, .-internal_node_child
	.globl	internal_node_key
	.type	internal_node_key, @function
internal_node_key:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_cell
	addq	$4, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	internal_node_key, .-internal_node_key
	.globl	leaf_node_num_cells
	.type	leaf_node_num_cells, @function
leaf_node_num_cells:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	leaf_node_num_cells, .-leaf_node_num_cells
	.globl	leaf_node_next_leaf
	.type	leaf_node_next_leaf, @function
leaf_node_next_leaf:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	movl	%eax, %eax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	leaf_node_next_leaf, .-leaf_node_next_leaf
	.globl	leaf_node_cell
	.type	leaf_node_cell, @function
leaf_node_cell:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$1, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	movl	$1, %edx
	movl	%edx, %edx
	addq	$12, %rdx
	imulq	%rdx, %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	leaf_node_cell, .-leaf_node_cell
	.globl	leaf_node_key
	.type	leaf_node_key, @function
leaf_node_key:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_cell
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	leaf_node_key, .-leaf_node_key
	.globl	leaf_node_value
	.type	leaf_node_value, @function
leaf_node_value:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_cell
	addq	$4, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	leaf_node_value, .-leaf_node_value
	.globl	get_node_max_key
	.type	get_node_max_key, @function
get_node_max_key:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_node_type
	testl	%eax, %eax
	je	.L34
	cmpl	$1, %eax
	je	.L35
	jmp	.L37
.L34:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_num_keys
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_key
	movl	(%rax), %eax
	jmp	.L32
.L35:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_key
	movl	(%rax), %eax
	jmp	.L32
.L37:
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	get_node_max_key, .-get_node_max_key
	.section	.rodata
.LC3:
	.string	"ROW_SIZE: %ld\n"
.LC4:
	.string	"COMMON_NODE_HEADER_SIZE: %d\n"
.LC5:
	.string	"LEAF_NODE_HEADER_SIZE: %ld\n"
.LC6:
	.string	"LEAF_NODE_CELL_SIZE : %ld\n"
	.align 8
.LC7:
	.string	"LEAF_NODE_SPACE_FOR_CELLS: %ld\n"
.LC8:
	.string	"LEAF_NODE_MAX_CELLS: %ld\n"
	.text
	.globl	print_constants
	.type	print_constants, @function
print_constants:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$293, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
	movl	%eax, %eax
	addq	$8, %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
	movl	%eax, %eax
	addq	$12, %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$1, %edx
	movl	%edx, %edx
	leaq	12(%rdx), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	print_constants, .-print_constants
	.section	.rodata
	.align 8
.LC9:
	.string	"Tried to Find Page number out of bounds. %d > %d\n"
.LC10:
	.string	"Error reading file: %d\n"
	.text
	.globl	get_page
	.type	get_page, @function
get_page:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpl	$100, -44(%rbp)
	jbe	.L40
	movl	-44(%rbp), %eax
	movl	$100, %edx
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L40:
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L41
	movl	$4096, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$12, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	andl	$4095, %eax
	testl	%eax, %eax
	je	.L42
	addl	$1, -20(%rbp)
.L42:
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	ja	.L43
	movl	-44(%rbp), %eax
	sall	$12, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	$4096, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movq	%rax, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	jne	.L43
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	leaq	2(%rdx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jb	.L41
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
.L41:
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	get_page, .-get_page
	.globl	indent
	.type	indent, @function
indent:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L46
.L47:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L46:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L47
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	indent, .-indent
	.section	.rodata
.LC11:
	.string	"-leaf (size %d)\n"
.LC12:
	.string	"- %d\n"
.LC13:
	.string	"- internal (size %d)\n"
.LC14:
	.string	" - key %d\n"
	.text
	.globl	print_tree
	.type	print_tree, @function
print_tree:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_node_type
	testl	%eax, %eax
	je	.L50
	cmpl	$1, %eax
	je	.L51
	jmp	.L56
.L51:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	indent
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L52
.L53:
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	indent
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_key
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L52:
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jb	.L53
	jmp	.L49
.L50:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_num_keys
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	indent
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -20(%rbp)
	jmp	.L54
.L55:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_child
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-48(%rbp), %eax
	leal	1(%rax), %edx
	movl	-12(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_tree
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	indent
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_key
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -20(%rbp)
.L54:
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jb	.L55
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_right_child
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-48(%rbp), %eax
	leal	1(%rax), %edx
	movl	-12(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_tree
	nop
.L49:
.L56:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	print_tree, .-print_tree
	.globl	serialize_row
	.type	serialize_row, @function
serialize_row:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	$33, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	leaq	37(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$37, %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	serialize_row, .-serialize_row
	.globl	deserialize_row
	.type	deserialize_row, @function
deserialize_row:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	$33, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	leaq	37(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$37, %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	deserialize_row, .-deserialize_row
	.globl	initialize_leaf_node
	.type	initialize_leaf_node, @function
initialize_leaf_node:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_node_type
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_node_root
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_next_leaf
	movl	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	initialize_leaf_node, .-initialize_leaf_node
	.globl	initialize_internal_node
	.type	initialize_internal_node, @function
initialize_internal_node:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_node_type
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_node_root
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_num_keys
	movl	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	initialize_internal_node, .-initialize_internal_node
	.globl	leaf_node_find
	.type	leaf_node_find, @function
leaf_node_find:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 16(%rax)
	movl	$0, -36(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L62
.L66:
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	shrl	%eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_key
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L63
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	jmp	.L64
.L63:
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jnb	.L65
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L62
.L65:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.L62:
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L66
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	leaf_node_find, .-leaf_node_find
	.globl	internal_node_find_child
	.type	internal_node_find_child, @function
internal_node_find_child:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_num_keys
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L68
.L70:
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	shrl	%eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_key
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L69
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L68
.L69:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.L68:
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.L70
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	internal_node_find_child, .-internal_node_find_child
	.globl	internal_node_find
	.type	internal_node_find, @function
internal_node_find:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -16(%rbp)
	movl	-48(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_find_child
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_child
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_node_type
	testl	%eax, %eax
	je	.L74
	cmpl	$1, %eax
	jne	.L77
	movl	-48(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	leaf_node_find
	jmp	.L72
.L74:
	movl	-48(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	internal_node_find
	jmp	.L72
.L77:
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	internal_node_find, .-internal_node_find
	.globl	table_find
	.type	table_find, @function
table_find:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_node_type
	cmpl	$1, %eax
	jne	.L79
	movl	-28(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	leaf_node_find
	jmp	.L80
.L79:
	movl	-28(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	internal_node_find
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	table_find, .-table_find
	.globl	table_start
	.type	table_start, @function
table_start:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	table_find
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	sete	%dl
	movq	-16(%rbp), %rax
	movb	%dl, 16(%rax)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	table_start, .-table_start
	.globl	cursor_value
	.type	cursor_value, @function
cursor_value:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_value
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	cursor_value, .-cursor_value
	.globl	cursor_advance
	.type	cursor_advance, @function
cursor_advance:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-40(%rbp), %rax
	movl	12(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movl	(%rax), %eax
	cmpl	%eax, %ebx
	jb	.L88
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_next_leaf
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L87
	movq	-40(%rbp), %rax
	movb	$1, 16(%rax)
	jmp	.L88
.L87:
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 12(%rax)
.L88:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	cursor_advance, .-cursor_advance
	.section	.rodata
.LC15:
	.string	"\033[31m"
.LC16:
	.string	"%sUnable to open file\n"
	.align 8
.LC17:
	.string	"DB File is not a whole number of pages. Corrupt file."
	.text
	.globl	pager_open
	.type	pager_open, @function
pager_open:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$384, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L90
	leaq	.LC15(%rip), %rsi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L90:
	movl	-20(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -16(%rbp)
	movl	$816, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	leaq	4095(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$12, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-16(%rbp), %rax
	andl	$4095, %eax
	testq	%rax, %rax
	je	.L91
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L91:
	movl	$0, -24(%rbp)
	jmp	.L92
.L93:
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	addq	$2, %rdx
	movq	$0, (%rax,%rdx,8)
	addl	$1, -24(%rbp)
.L92:
	cmpl	$99, -24(%rbp)
	jbe	.L93
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	pager_open, .-pager_open
	.globl	db_open
	.type	db_open, @function
db_open:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	pager_open
	movq	%rax, -24(%rbp)
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L96
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	initialize_leaf_node
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_node_root
.L96:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	db_open, .-db_open
	.globl	new_input_buffer
	.type	new_input_buffer, @function
new_input_buffer:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	new_input_buffer, .-new_input_buffer
	.section	.rodata
.LC18:
	.string	"Error While Reading Input"
	.text
	.globl	read_input
	.type	read_input, @function
read_input:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	stdin(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.L101
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L101:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	read_input, .-read_input
	.globl	close_input_stream
	.type	close_input_stream, @function
close_input_stream:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	close_input_stream, .-close_input_stream
	.section	.rodata
.LC19:
	.string	"\033[33m"
.LC20:
	.string	"%s hsql> "
	.text
	.globl	print_screen
	.type	print_screen, @function
print_screen:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC19(%rip), %rsi
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	print_screen, .-print_screen
	.section	.rodata
.LC21:
	.string	"Tried to flush null page"
.LC22:
	.string	"Error : %d\n"
.LC23:
	.string	"Error writing: %d\n"
	.text
	.globl	pager_flush
	.type	pager_flush, @function
pager_flush:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L105
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L105:
	movl	-28(%rbp), %eax
	sall	$12, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -16(%rbp)
	cmpq	$-1, -16(%rbp)
	jne	.L106
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L106:
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rcx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movq	%rax, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	jne	.L108
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L108:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	pager_flush, .-pager_flush
	.section	.rodata
.LC24:
	.string	"Error while closing db file."
	.text
	.globl	db_close
	.type	db_close, @function
db_close:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L110
.L113:
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L118
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pager_flush
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	addq	$2, %rdx
	movq	$0, (%rax,%rdx,8)
	jmp	.L112
.L118:
	nop
.L112:
	addl	$1, -28(%rbp)
.L110:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jb	.L113
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L114
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L114:
	movl	$0, -24(%rbp)
	jmp	.L115
.L117:
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L116
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	addq	$2, %rdx
	movq	$0, (%rax,%rdx,8)
.L116:
	addl	$1, -24(%rbp)
.L115:
	cmpl	$99, -24(%rbp)
	jbe	.L117
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	db_close, .-db_close
	.section	.rodata
.LC25:
	.string	"exit"
.LC26:
	.string	"Prss any key to exit...."
.LC27:
	.string	"BTREE"
.LC28:
	.string	"Tree"
.LC29:
	.string	"CONSTANTS"
.LC30:
	.string	"Constants:"
	.text
	.globl	do_meta_command
	.type	do_meta_command, @function
do_meta_command:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L120
	leaq	.LC26(%rip), %rdi
	call	puts@PLT
	call	getchar@PLT
	movb	%al, -1(%rbp)
	cmpb	$0, -1(%rbp)
	je	.L121
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	close_input_stream
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	db_close
	movl	$0, %edi
	call	exit@PLT
.L121:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	close_input_stream
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	db_close
	movl	$0, %edi
	call	exit@PLT
.L120:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L122
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	print_tree
	movl	$0, %eax
	jmp	.L123
.L122:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L124
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	call	print_constants
	movl	$0, %eax
	jmp	.L123
.L124:
	movl	$1, %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	do_meta_command, .-do_meta_command
	.section	.rodata
.LC31:
	.string	" "
	.text
	.globl	prepare_insert
	.type	prepare_insert, @function
prepare_insert:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC31(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC31(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC31(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L126
	cmpq	$0, -16(%rbp)
	je	.L126
	cmpq	$0, -8(%rbp)
	jne	.L127
.L126:
	movl	$3, %eax
	jmp	.L128
.L127:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L129
	movl	$1, %eax
	jmp	.L128
.L129:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$32, %rax
	jbe	.L130
	movl	$2, %eax
	jmp	.L128
.L130:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$255, %rax
	jbe	.L131
	movl	$2, %eax
	jmp	.L128
.L131:
	movl	-36(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movq	-64(%rbp), %rax
	leaq	41(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movl	$0, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	prepare_insert, .-prepare_insert
	.section	.rodata
.LC32:
	.string	"INSERT"
.LC33:
	.string	"SELECT *"
.LC34:
	.string	"EXIT"
	.text
	.globl	prepare_statement
	.type	prepare_statement, @function
prepare_statement:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$6, %edx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L133
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prepare_insert
	jmp	.L134
.L133:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L135
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L134
.L135:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L136
	movl	$0, %edi
	call	exit@PLT
.L136:
	movl	$4, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	prepare_statement, .-prepare_statement
	.globl	get_unused_page_num
	.type	get_unused_page_num, @function
get_unused_page_num:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	get_unused_page_num, .-get_unused_page_num
	.globl	create_new_root
	.type	create_new_root, @function
create_new_root:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_unused_page_num
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_node_root
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	initialize_internal_node
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_node_root
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_num_keys
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	internal_node_child
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_node_max_key
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	internal_node_key
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_right_child
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	node_parent
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	node_parent
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	create_new_root, .-create_new_root
	.section	.rodata
	.align 8
.LC35:
	.string	"Need to implement splitting internal node."
	.text
	.globl	internal_node_insert
	.type	internal_node_insert, @function
internal_node_insert:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_node_max_key
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_find_child
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_num_keys
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_num_keys
	movq	%rax, %rdx
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, (%rdx)
	cmpl	$2, -64(%rbp)
	jbe	.L141
	leaq	.LC35(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L141:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_right_child
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_node_max_key
	cmpl	%eax, -72(%rbp)
	jbe	.L142
	movl	-64(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_child
	movq	%rax, %rdx
	movl	-60(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-64(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_key
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_node_max_key
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	internal_node_right_child
	movq	%rax, %rdx
	movl	-96(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L146
.L142:
	movl	-64(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.L144
.L145:
	movl	-76(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_cell
	movq	%rax, -32(%rbp)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_cell
	movq	%rax, -24(%rbp)
	movl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	subl	$1, -76(%rbp)
.L144:
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	ja	.L145
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_child
	movq	%rax, %rdx
	movl	-96(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_key
	movq	%rax, %rdx
	movl	-72(%rbp), %eax
	movl	%eax, (%rdx)
.L146:
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	internal_node_insert, .-internal_node_insert
	.globl	update_internal_node_key
	.type	update_internal_node_key, @function
update_internal_node_key:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_find_child
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_node_key
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	update_internal_node_key, .-update_internal_node_key
	.globl	leaf_node_split_and_insert
	.type	leaf_node_split_and_insert, @function
leaf_node_split_and_insert:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %edx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_node_max_key
	movl	%eax, -76(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_unused_page_num
	movl	%eax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	initialize_leaf_node
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	node_parent
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	node_parent
	movq	%rax, %rdx
	movl	(%rbx), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_next_leaf
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_next_leaf
	movq	%rax, %rdx
	movl	(%rbx), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_next_leaf
	movq	%rax, %rdx
	movl	-72(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$1, %edx
	movl	%edx, %edx
	leaq	12(%rdx), %rcx
	movl	$0, %edx
	divq	%rcx
	movl	%eax, -80(%rbp)
	jmp	.L149
.L155:
	movl	-80(%rbp), %eax
	movslq	%eax, %rcx
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$1, %edx
	movl	%edx, %edx
	leaq	12(%rdx), %rbx
	movl	$0, %edx
	divq	%rbx
	movq	%rax, %rsi
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$1, %edx
	movl	%edx, %edx
	leaq	12(%rdx), %rbx
	movl	$0, %edx
	divq	%rbx
	addq	$1, %rax
	shrq	%rax
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	cmpq	%rax, %rcx
	jb	.L150
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L151
.L150:
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.L151:
	movl	-80(%rbp), %eax
	movslq	%eax, %rcx
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$1, %edx
	movl	%edx, %edx
	leaq	12(%rdx), %rbx
	movl	$0, %edx
	divq	%rbx
	movq	%rax, %rsi
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$1, %edx
	movl	%edx, %edx
	leaq	12(%rdx), %rbx
	movl	$0, %edx
	divq	%rbx
	addq	$1, %rax
	shrq	%rax
	subq	%rax, %rsi
	movq	%rsi, %rax
	leaq	1(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_cell
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movl	12(%rax), %edx
	movl	-80(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L152
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_value
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	serialize_row
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_key
	movq	%rax, %rdx
	movl	-100(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L153
.L152:
	movq	-88(%rbp), %rax
	movl	12(%rax), %edx
	movl	-80(%rbp), %eax
	cmpl	%eax, %edx
	jnb	.L154
	movl	$1, %eax
	movl	%eax, %eax
	leaq	12(%rax), %rbx
	movl	-80(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_cell
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L153
.L154:
	movl	$1, %eax
	movl	%eax, %eax
	leaq	12(%rax), %rbx
	movl	-80(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_cell
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L153:
	subl	$1, -80(%rbp)
.L149:
	cmpl	$0, -80(%rbp)
	jns	.L155
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$1, %edx
	movl	%edx, %edx
	leaq	12(%rdx), %rcx
	movl	$0, %edx
	divq	%rcx
	movl	%eax, %ecx
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$1, %edx
	movl	%edx, %edx
	leaq	12(%rdx), %rbx
	movl	$0, %edx
	divq	%rbx
	addq	$1, %rax
	shrq	%rax
	movl	%ecx, %ebx
	subl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movq	%rax, %rdx
	leal	1(%rbx), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$1, %edx
	movl	%edx, %edx
	leaq	12(%rdx), %rcx
	movl	$0, %edx
	divq	%rcx
	addq	$1, %rax
	shrq	%rax
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movl	%ebx, %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	is_node_root
	testb	%al, %al
	je	.L156
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	create_new_root
	jmp	.L148
.L156:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	node_parent
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_node_max_key
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -32(%rbp)
	movl	-64(%rbp), %edx
	movl	-76(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	update_internal_node_key
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	internal_node_insert
	nop
.L148:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	leaf_node_split_and_insert, .-leaf_node_split_and_insert
	.globl	leaf_node_insert
	.type	leaf_node_insert, @function
leaf_node_insert:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ecx
	movl	$1, %eax
	movl	%eax, %eax
	movl	$4088, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$1, %edx
	movl	%edx, %edx
	leaq	12(%rdx), %rbx
	movl	$0, %edx
	divq	%rbx
	cmpq	%rax, %rcx
	jb	.L159
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	leaf_node_split_and_insert
	jmp	.L158
.L159:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jbe	.L161
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L162
.L163:
	movl	$1, %eax
	movl	%eax, %eax
	leaq	12(%rax), %rbx
	movl	-32(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_cell
	movq	%rax, %r12
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_cell
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	subl	$1, -32(%rbp)
.L162:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -32(%rbp)
	ja	.L163
.L161:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_key
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_value
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	serialize_row
.L158:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	leaf_node_insert, .-leaf_node_insert
	.globl	execute_insert
	.type	execute_insert, @function
execute_insert:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	table_find
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_page
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	leaf_node_num_cells
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jbe	.L165
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	leaf_node_key
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L165
	movl	$1, %eax
	jmp	.L166
.L165:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	leaf_node_insert
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	execute_insert, .-execute_insert
	.globl	execute_select
	.type	execute_select, @function
execute_select:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	table_start
	movq	%rax, -312(%rbp)
	jmp	.L168
.L169:
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	cursor_value
	movq	%rax, %rdx
	leaq	-304(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	deserialize_row
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	print_row
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	cursor_advance
.L168:
	movq	-312(%rbp), %rax
	movzbl	16(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L169
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L171
	call	__stack_chk_fail@PLT
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	execute_select, .-execute_select
	.globl	execute_statement
	.type	execute_statement, @function
execute_statement:
.LFB56:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L174
	cmpl	$1, %eax
	je	.L175
	jmp	.L177
.L174:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execute_insert
	jmp	.L172
.L175:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execute_select
	jmp	.L172
.L177:
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	execute_statement, .-execute_statement
	.section	.rodata
.LC36:
	.string	"\033[35m"
	.align 8
.LC37:
	.string	" %s                  WECLOME TO H-SQL DATABASE       \n"
.LC38:
	.string	"\033[34m"
	.align 8
.LC39:
	.string	"%s ls for help and getting all commands\n"
.LC40:
	.string	"\033[32m"
	.align 8
.LC41:
	.string	"INSERT ex> %sINSERT 12 user12 user12@mail.com \n"
	.align 8
.LC42:
	.string	"SELECT ex> %sSELECT * (for printing all data)\n"
	.text
	.globl	print_cmd
	.type	print_cmd, @function
print_cmd:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC36(%rip), %rsi
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	leaq	.LC38(%rip), %rsi
	leaq	.LC39(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC40(%rip), %rsi
	leaq	.LC41(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC40(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	print_cmd, .-print_cmd
	.section	.rodata
.LC43:
	.string	"clear"
	.align 8
.LC44:
	.string	"%sMust apply a database filename .\n"
.LC45:
	.string	"%sUnrecognized command '%s'\n"
.LC46:
	.string	"ID MUST BE. "
.LC47:
	.string	"String is too long."
	.align 8
.LC48:
	.string	"Syntax error. Could not parse statement."
	.align 8
.LC49:
	.string	"Unrecognized keyword at start of '%s'.\n"
.LC50:
	.string	"Executed."
.LC51:
	.string	"Error: Duplicate key. "
	.text
	.globl	main
	.type	main, @function
main:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movl	%edi, -356(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC43(%rip), %rdi
	call	system@PLT
	cmpl	$1, -356(%rbp)
	jg	.L180
	leaq	.LC15(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L180:
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	db_open
	movq	%rax, -336(%rbp)
	movl	$0, %eax
	call	new_input_buffer
	movq	%rax, -328(%rbp)
	movl	$0, %eax
	call	print_cmd
.L196:
	movl	$0, %eax
	call	print_screen
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	read_input
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L181
	movq	-336(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_meta_command
	testl	%eax, %eax
	je	.L198
	cmpl	$1, %eax
	jne	.L181
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rsi
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L195
.L181:
	leaq	-320(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prepare_statement
	cmpl	$4, %eax
	ja	.L185
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L187(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L187(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L187:
	.long	.L199-.L187
	.long	.L188-.L187
	.long	.L189-.L187
	.long	.L190-.L187
	.long	.L191-.L187
	.text
.L188:
	leaq	.LC46(%rip), %rdi
	call	puts@PLT
	jmp	.L195
.L189:
	leaq	.LC47(%rip), %rdi
	call	puts@PLT
	jmp	.L195
.L190:
	leaq	.LC48(%rip), %rdi
	call	puts@PLT
	jmp	.L195
.L191:
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L195
.L199:
	nop
.L185:
	movq	-336(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execute_statement
	testl	%eax, %eax
	je	.L193
	cmpl	$1, %eax
	je	.L194
	jmp	.L195
.L193:
	leaq	.LC50(%rip), %rdi
	call	puts@PLT
	jmp	.L195
.L194:
	leaq	.LC51(%rip), %rdi
	call	puts@PLT
	nop
	jmp	.L195
.L198:
	nop
.L195:
	jmp	.L196
	.cfi_endproc
.LFE58:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
