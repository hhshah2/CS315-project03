PROG = project03

OBJS = find_max_index_c.o find_max_index_s.o reverse_c.o reverse_s.o search_c.o search_s.o

%.o: %.c
	gcc -c -g -o $@ $<

%.o: %.s
	as -g -o $@ $<

$(PROG): $(OBJS)
	gcc -g -o $(PROG) $(OBJS)

clean:
	rm -rf $(PROG) $(OBJS)