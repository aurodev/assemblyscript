(module
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\01")
 (data (i32.const 40) "\02\00\00\00\00\00\00\00\18")
 (data (i32.const 64) "\05\00\00\00\00\00\00\00\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 112) "\05\00\00\00\00\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (table $0 7 anyfunc)
 (elem (i32.const 0) $null $~lib/arraybuffer/ArrayBuffer~gc $~lib/array/Array<Foo>~gc $~lib/collector/itcm/__gc_mark $~lib/arraybuffer/ArrayBuffer~gc $~lib/arraybuffer/ArrayBuffer~gc $~lib/allocator/arena/__memory_free)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $std/gc-array/arr (mut i32) (i32.const 48))
 (global $~argc (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc-array/main))
 (func $~lib/arraybuffer/ArrayBuffer~gc (; 1 ;) (type $iv) (param $0 i32)
  get_local $0
  if
   get_local $0
   call $~lib/collector/itcm/__gc_mark
  end
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $1
  get_local $1
  i32.load
  i32.const 3
  i32.and
  get_local $0
  i32.or
  i32.store
  get_local $1
  get_local $2
  i32.store offset=4
  get_local $2
  get_local $2
  i32.load
  i32.const 3
  i32.and
  get_local $1
  i32.or
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 3 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  get_global $~lib/collector/itcm/iter
  get_local $0
  i32.eq
  if
   get_local $0
   i32.load offset=4
   set_global $~lib/collector/itcm/iter
  end
  get_local $0
  i32.load
  i32.const -4
  i32.and
  tee_local $2
  get_local $0
  i32.load offset=4
  tee_local $1
  i32.store offset=4
  get_local $1
  get_local $1
  i32.load
  i32.const 3
  i32.and
  get_local $2
  i32.or
  i32.store
  get_global $~lib/collector/itcm/toSpace
  get_local $0
  call $~lib/collector/itcm/ManagedObjectList#push
  get_local $0
  get_local $0
  i32.load
  i32.const -4
  i32.and
  i32.const 2
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/__gc_mark (; 4 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  get_local $0
  if
   get_global $~lib/collector/itcm/white
   get_local $0
   i32.const 16
   i32.sub
   tee_local $1
   i32.load
   i32.const 3
   i32.and
   i32.eq
   if
    get_local $1
    call $~lib/collector/itcm/ManagedObject#makeGray
   end
  end
 )
 (func $~lib/array/Array<Foo>~gc (; 5 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.load
  tee_local $2
  call $~lib/collector/itcm/__gc_mark
  get_local $0
  i32.load offset=4
  i32.const 2
  i32.shl
  set_local $0
  loop $shape$1$continue
   get_local $1
   get_local $0
   i32.lt_u
   if
    get_local $1
    get_local $2
    i32.add
    i32.load offset=8
    call $~lib/collector/itcm/__gc_mark
    get_local $1
    i32.const 4
    i32.add
    set_local $1
    br $shape$1$continue
   end
  end
 )
 (func $~lib/allocator/arena/__memory_allocate (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  tee_local $1
  get_local $0
  i32.const 1
  get_local $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  tee_local $2
  current_memory
  tee_local $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   block $block$13$break
    get_local $3
    get_local $2
    get_local $1
    i32.sub
    i32.const 65535
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    tee_local $0
    get_local $3
    get_local $0
    i32.gt_s
    select
    grow_memory
    i32.const 0
    i32.ge_s
    br_if $block$13$break
    get_local $0
    grow_memory
    i32.const 0
    i32.ge_s
    br_if $block$13$break
    unreachable
   end
  end
  get_local $2
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/allocator/arena/__memory_free (; 7 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/collector/itcm/step (; 8 ;) (type $v)
  (local $0 i32)
  block $block$2$break
   get_global $~lib/collector/itcm/state
   tee_local $0
   if
    get_local $0
    i32.const 1
    i32.ne
    if
     get_local $0
     i32.const 2
     i32.eq
     if
      get_global $~lib/collector/itcm/iter
      i32.load
      i32.const -4
      i32.and
      tee_local $0
      get_global $~lib/collector/itcm/toSpace
      i32.ne
      if
       get_local $0
       set_global $~lib/collector/itcm/iter
       get_local $0
       get_global $~lib/collector/itcm/white
       i32.eqz
       get_local $0
       i32.load
       i32.const -4
       i32.and
       i32.or
       i32.store
       i32.const 1
       set_global $~argc
       get_local $0
       i32.const 16
       i32.add
       get_local $0
       i32.load offset=8
       call_indirect (type $iv)
       br $block$2$break
      end
      get_global $std/gc-array/arr
      i32.const 3
      call_indirect (type $iv)
      get_global $~lib/collector/itcm/toSpace
      get_global $~lib/collector/itcm/iter
      i32.load
      i32.const -4
      i32.and
      i32.ne
      br_if $block$2$break
      get_global $~lib/collector/itcm/fromSpace
      set_local $0
      get_global $~lib/collector/itcm/toSpace
      set_global $~lib/collector/itcm/fromSpace
      get_local $0
      set_global $~lib/collector/itcm/toSpace
      get_global $~lib/collector/itcm/white
      i32.eqz
      set_global $~lib/collector/itcm/white
      get_local $0
      i32.load
      i32.const -4
      i32.and
      set_global $~lib/collector/itcm/iter
      i32.const 3
      set_global $~lib/collector/itcm/state
      br $block$2$break
     end
     get_local $0
     i32.const 3
     i32.ne
     br_if $block$2$break
     get_global $~lib/collector/itcm/iter
     tee_local $0
     get_global $~lib/collector/itcm/toSpace
     i32.eq
     if
      get_global $~lib/collector/itcm/toSpace
      tee_local $0
      get_local $0
      i32.store
      get_local $0
      get_local $0
      i32.store offset=4
      i32.const 1
      set_global $~lib/collector/itcm/state
      br $block$2$break
     end
     get_local $0
     i32.load
     i32.const -4
     i32.and
     set_global $~lib/collector/itcm/iter
     br $block$2$break
    end
   else    
    i32.const 16
    call $~lib/allocator/arena/__memory_allocate
    set_global $~lib/collector/itcm/fromSpace
    get_global $~lib/collector/itcm/fromSpace
    i32.const -1
    i32.store offset=8
    get_global $~lib/collector/itcm/fromSpace
    tee_local $0
    get_local $0
    i32.store
    get_local $0
    get_local $0
    i32.store offset=4
    i32.const 16
    call $~lib/allocator/arena/__memory_allocate
    set_global $~lib/collector/itcm/toSpace
    get_global $~lib/collector/itcm/toSpace
    i32.const -1
    i32.store offset=8
    get_global $~lib/collector/itcm/toSpace
    tee_local $0
    get_local $0
    i32.store
    get_local $0
    get_local $0
    i32.store offset=4
    get_global $~lib/collector/itcm/toSpace
    set_global $~lib/collector/itcm/iter
    i32.const 1
    set_global $~lib/collector/itcm/state
   end
   get_global $std/gc-array/arr
   i32.const 3
   call_indirect (type $iv)
   i32.const 2
   set_global $~lib/collector/itcm/state
  end
 )
 (func $~lib/collector/itcm/__gc_collect (; 9 ;) (type $v)
  (local $0 i32)
  block $block$10$break
   get_global $~lib/collector/itcm/state
   tee_local $0
   if
    get_local $0
    i32.const 1
    i32.ne
    br_if $block$10$break
   end
   call $~lib/collector/itcm/step
  end
  loop $shape$5$continue
   get_global $~lib/collector/itcm/state
   i32.const 1
   i32.ne
   if
    call $~lib/collector/itcm/step
    br $shape$5$continue
   end
  end
 )
 (func $~lib/collector/itcm/__gc_allocate (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.const 1073741808
  i32.gt_u
  if (result i32)
   unreachable
  else   
   call $~lib/collector/itcm/step
   get_local $0
   i32.const 16
   i32.add
   call $~lib/allocator/arena/__memory_allocate
   tee_local $2
   get_local $1
   i32.store offset=8
   get_local $2
   get_global $~lib/collector/itcm/white
   get_local $2
   i32.load
   i32.const -4
   i32.and
   i32.or
   i32.store
   get_global $~lib/collector/itcm/fromSpace
   get_local $2
   call $~lib/collector/itcm/ManagedObjectList#push
   get_local $2
   i32.const 16
   i32.add
  end
 )
 (func $~lib/internal/memory/memset (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  get_local $1
  i32.eqz
  if
   return
  end
  get_local $0
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  i32.const 1
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  tee_local $2
  i32.const 2
  i32.sub
  i32.const 0
  i32.store8
  get_local $2
  i32.const 3
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  tee_local $2
  get_local $0
  i32.add
  tee_local $0
  i32.const 0
  i32.store
  get_local $1
  get_local $2
  i32.sub
  i32.const -4
  i32.and
  tee_local $1
  get_local $0
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store
  get_local $1
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 8
  i32.add
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  tee_local $2
  i32.const 12
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 8
  i32.sub
  i32.const 0
  i32.store
  get_local $1
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 16
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 20
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 24
  i32.add
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  tee_local $2
  i32.const 28
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 24
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 20
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 16
  i32.sub
  i32.const 0
  i32.store
  get_local $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  tee_local $2
  get_local $0
  i32.add
  set_local $0
  get_local $1
  get_local $2
  i32.sub
  set_local $1
  loop $shape$19$continue
   get_local $1
   i32.const 32
   i32.ge_u
   if
    get_local $0
    i64.const 0
    i64.store
    get_local $0
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    get_local $0
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    get_local $0
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    get_local $1
    i32.const 32
    i32.sub
    set_local $1
    get_local $0
    i32.const 32
    i32.add
    set_local $0
    br $shape$19$continue
   end
  end
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 120
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 32
  get_local $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  i32.const 6
  call $~lib/collector/itcm/__gc_allocate
  tee_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/memory/memcpy (; 13 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $shape$1$continue
   get_local $2
   if (result i32)
    get_local $1
    i32.const 3
    i32.and
   else    
    get_local $2
   end
   if
    get_local $0
    tee_local $3
    i32.const 1
    i32.add
    set_local $0
    get_local $3
    set_local $4
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $4
    get_local $3
    i32.load8_u
    i32.store8
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    br $shape$1$continue
   end
  end
  get_local $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $shape$10$continue
    get_local $2
    i32.const 16
    i32.ge_u
    if
     get_local $0
     get_local $1
     i32.load
     i32.store
     get_local $0
     i32.const 4
     i32.add
     get_local $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     get_local $0
     i32.const 8
     i32.add
     get_local $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     get_local $0
     i32.const 12
     i32.add
     get_local $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     get_local $1
     i32.const 16
     i32.add
     set_local $1
     get_local $0
     i32.const 16
     i32.add
     set_local $0
     get_local $2
     i32.const 16
     i32.sub
     set_local $2
     br $shape$10$continue
    end
   end
   get_local $2
   i32.const 8
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    get_local $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    get_local $0
    i32.const 8
    i32.add
    set_local $0
    get_local $1
    i32.const 8
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 4
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    set_local $0
    get_local $1
    i32.const 4
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 2
   i32.and
   if
    get_local $0
    get_local $1
    i32.load16_u
    i32.store16
    get_local $0
    i32.const 2
    i32.add
    set_local $0
    get_local $1
    i32.const 2
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 1
   i32.and
   if
    get_local $0
    get_local $1
    i32.load8_u
    i32.store8
   end
   return
  end
  get_local $2
  i32.const 32
  i32.ge_u
  if
   block $block$72$break
    get_local $0
    i32.const 3
    i32.and
    tee_local $3
    i32.const 1
    i32.eq
    if
     get_local $1
     i32.load
     set_local $5
     get_local $0
     get_local $1
     i32.load8_u
     i32.store8
     get_local $0
     i32.const 1
     i32.add
     tee_local $0
     get_local $1
     i32.const 1
     i32.add
     tee_local $1
     i32.load8_u
     i32.store8
     get_local $0
     i32.const 1
     i32.add
     tee_local $0
     set_local $3
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     get_local $3
     set_local $4
     get_local $1
     i32.const 1
     i32.add
     tee_local $1
     set_local $3
     get_local $1
     i32.const 1
     i32.add
     set_local $1
     get_local $4
     get_local $3
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 3
     i32.sub
     set_local $2
     loop $shape$31$continue
      get_local $2
      i32.const 17
      i32.lt_u
      br_if $block$72$break
      get_local $0
      get_local $1
      i32.const 1
      i32.add
      i32.load
      tee_local $3
      i32.const 8
      i32.shl
      get_local $5
      i32.const 24
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 4
      i32.add
      get_local $1
      i32.const 5
      i32.add
      i32.load
      tee_local $5
      i32.const 8
      i32.shl
      get_local $3
      i32.const 24
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 8
      i32.add
      get_local $1
      i32.const 9
      i32.add
      i32.load
      tee_local $3
      i32.const 8
      i32.shl
      get_local $5
      i32.const 24
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 12
      i32.add
      get_local $1
      i32.const 13
      i32.add
      i32.load
      tee_local $5
      i32.const 8
      i32.shl
      get_local $3
      i32.const 24
      i32.shr_u
      i32.or
      i32.store
      get_local $1
      i32.const 16
      i32.add
      set_local $1
      get_local $0
      i32.const 16
      i32.add
      set_local $0
      get_local $2
      i32.const 16
      i32.sub
      set_local $2
      br $shape$31$continue
      unreachable
     end
     unreachable
    end
    get_local $3
    i32.const 2
    i32.eq
    if
     get_local $1
     i32.load
     set_local $5
     get_local $0
     get_local $1
     i32.load8_u
     i32.store8
     get_local $0
     i32.const 1
     i32.add
     tee_local $0
     set_local $3
     get_local $0
     i32.const 1
     i32.add
     set_local $0
     get_local $3
     set_local $4
     get_local $1
     i32.const 1
     i32.add
     tee_local $1
     set_local $3
     get_local $1
     i32.const 1
     i32.add
     set_local $1
     get_local $4
     get_local $3
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 2
     i32.sub
     set_local $2
     loop $shape$37$continue
      get_local $2
      i32.const 18
      i32.lt_u
      br_if $block$72$break
      get_local $0
      get_local $1
      i32.const 2
      i32.add
      i32.load
      tee_local $3
      i32.const 16
      i32.shl
      get_local $5
      i32.const 16
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 4
      i32.add
      get_local $1
      i32.const 6
      i32.add
      i32.load
      tee_local $5
      i32.const 16
      i32.shl
      get_local $3
      i32.const 16
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 8
      i32.add
      get_local $1
      i32.const 10
      i32.add
      i32.load
      tee_local $3
      i32.const 16
      i32.shl
      get_local $5
      i32.const 16
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 12
      i32.add
      get_local $1
      i32.const 14
      i32.add
      i32.load
      tee_local $5
      i32.const 16
      i32.shl
      get_local $3
      i32.const 16
      i32.shr_u
      i32.or
      i32.store
      get_local $1
      i32.const 16
      i32.add
      set_local $1
      get_local $0
      i32.const 16
      i32.add
      set_local $0
      get_local $2
      i32.const 16
      i32.sub
      set_local $2
      br $shape$37$continue
      unreachable
     end
     unreachable
    end
    get_local $3
    i32.const 3
    i32.ne
    br_if $block$72$break
    get_local $1
    i32.load
    set_local $5
    get_local $0
    tee_local $3
    i32.const 1
    i32.add
    set_local $0
    get_local $3
    set_local $4
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $4
    get_local $3
    i32.load8_u
    i32.store8
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    loop $shape$42$continue
     get_local $2
     i32.const 19
     i32.lt_u
     br_if $block$72$break
     get_local $0
     get_local $1
     i32.const 3
     i32.add
     i32.load
     tee_local $3
     i32.const 24
     i32.shl
     get_local $5
     i32.const 8
     i32.shr_u
     i32.or
     i32.store
     get_local $0
     i32.const 4
     i32.add
     get_local $1
     i32.const 7
     i32.add
     i32.load
     tee_local $5
     i32.const 24
     i32.shl
     get_local $3
     i32.const 8
     i32.shr_u
     i32.or
     i32.store
     get_local $0
     i32.const 8
     i32.add
     get_local $1
     i32.const 11
     i32.add
     i32.load
     tee_local $3
     i32.const 24
     i32.shl
     get_local $5
     i32.const 8
     i32.shr_u
     i32.or
     i32.store
     get_local $0
     i32.const 12
     i32.add
     get_local $1
     i32.const 15
     i32.add
     i32.load
     tee_local $5
     i32.const 24
     i32.shl
     get_local $3
     i32.const 8
     i32.shr_u
     i32.or
     i32.store
     get_local $1
     i32.const 16
     i32.add
     set_local $1
     get_local $0
     i32.const 16
     i32.add
     set_local $0
     get_local $2
     i32.const 16
     i32.sub
     set_local $2
     br $shape$42$continue
     unreachable
    end
    unreachable
   end
  end
  get_local $2
  i32.const 16
  i32.and
  if
   get_local $0
   get_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   set_local $3
   get_local $0
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   set_local $4
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   set_local $3
   get_local $1
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 8
  i32.and
  if
   get_local $0
   get_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   set_local $3
   get_local $0
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   set_local $4
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   set_local $3
   get_local $1
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 4
  i32.and
  if
   get_local $0
   get_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   set_local $3
   get_local $0
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   set_local $4
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   set_local $3
   get_local $1
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 2
  i32.and
  if
   get_local $0
   get_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $0
   set_local $3
   get_local $0
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   set_local $4
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   set_local $3
   get_local $1
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 1
  i32.and
  if
   get_local $0
   get_local $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   return
  end
  get_local $1
  get_local $2
  i32.add
  get_local $0
  i32.le_u
  tee_local $3
  i32.eqz
  if
   get_local $0
   get_local $2
   i32.add
   get_local $1
   i32.le_u
   set_local $3
  end
  get_local $3
  if
   get_local $0
   get_local $1
   get_local $2
   call $~lib/internal/memory/memcpy
   return
  end
  block $block$70$break
   get_local $0
   get_local $1
   i32.lt_u
   if
    get_local $1
    i32.const 7
    i32.and
    get_local $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $block$36$break
      block $block$28$break
       loop $shape$14$continue
        get_local $0
        i32.const 7
        i32.and
        i32.eqz
        br_if $block$28$break
        get_local $2
        if
         get_local $2
         i32.const 1
         i32.sub
         set_local $2
         get_local $0
         tee_local $3
         i32.const 1
         i32.add
         set_local $0
         get_local $3
         set_local $4
         get_local $1
         tee_local $3
         i32.const 1
         i32.add
         set_local $1
         get_local $4
         get_local $3
         i32.load8_u
         i32.store8
         br $shape$14$continue
        end
       end
       return
      end
      loop $shape$20$continue
       get_local $2
       i32.const 8
       i32.lt_u
       br_if $block$36$break
       get_local $0
       get_local $1
       i64.load
       i64.store
       get_local $2
       i32.const 8
       i32.sub
       set_local $2
       get_local $0
       i32.const 8
       i32.add
       set_local $0
       get_local $1
       i32.const 8
       i32.add
       set_local $1
       br $shape$20$continue
       unreachable
      end
      unreachable
     end
    end
    loop $shape$23$continue
     get_local $2
     i32.eqz
     br_if $block$70$break
     get_local $0
     tee_local $3
     i32.const 1
     i32.add
     set_local $0
     get_local $3
     set_local $4
     get_local $1
     tee_local $3
     i32.const 1
     i32.add
     set_local $1
     get_local $4
     get_local $3
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     br $shape$23$continue
     unreachable
    end
    unreachable
   else    
    get_local $1
    i32.const 7
    i32.and
    get_local $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $block$64$break
      block $block$56$break
       loop $shape$28$continue
        get_local $0
        get_local $2
        i32.add
        i32.const 7
        i32.and
        i32.eqz
        br_if $block$56$break
        get_local $2
        if
         get_local $2
         i32.const 1
         i32.sub
         tee_local $2
         get_local $0
         i32.add
         get_local $1
         get_local $2
         i32.add
         i32.load8_u
         i32.store8
         br $shape$28$continue
        end
       end
       return
      end
      loop $shape$34$continue
       get_local $2
       i32.const 8
       i32.lt_u
       br_if $block$64$break
       get_local $2
       i32.const 8
       i32.sub
       tee_local $2
       get_local $0
       i32.add
       get_local $1
       get_local $2
       i32.add
       i64.load
       i64.store
       br $shape$34$continue
       unreachable
      end
      unreachable
     end
    end
    loop $shape$37$continue
     get_local $2
     i32.eqz
     br_if $block$70$break
     get_local $2
     i32.const 1
     i32.sub
     tee_local $2
     get_local $0
     i32.add
     get_local $1
     get_local $2
     i32.add
     i32.load8_u
     i32.store8
     br $shape$37$continue
     unreachable
    end
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  get_local $0
  i32.load
  tee_local $2
  i32.gt_s
  if
   get_local $1
   i32.const 1073741816
   i32.gt_s
   if
    i32.const 0
    i32.const 120
    i32.const 37
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   get_local $1
   i32.const 1
   i32.const 32
   get_local $2
   i32.const 7
   i32.add
   i32.clz
   i32.sub
   i32.shl
   i32.const 8
   i32.sub
   i32.le_s
   if
    get_local $0
    get_local $1
    i32.store
    get_local $0
    i32.const 8
    i32.add
    get_local $2
    i32.add
    get_local $1
    get_local $2
    i32.sub
    call $~lib/internal/memory/memset
   else    
    get_local $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    tee_local $3
    i32.const 8
    i32.add
    tee_local $4
    get_local $0
    i32.const 8
    i32.add
    get_local $2
    call $~lib/internal/memory/memmove
    get_local $2
    get_local $4
    i32.add
    get_local $1
    get_local $2
    i32.sub
    call $~lib/internal/memory/memset
    get_local $3
    return
   end
  else   
   get_local $1
   get_local $2
   i32.lt_s
   if
    get_local $1
    i32.const 0
    i32.lt_s
    if
     i32.const 0
     i32.const 120
     i32.const 61
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     get_local $0
     get_local $1
     i32.store
    end
   end
  end
  get_local $0
 )
 (func $~lib/collector/itcm/__gc_link (; 16 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  get_global $~lib/collector/itcm/white
  i32.eqz
  get_local $0
  i32.const 16
  i32.sub
  tee_local $2
  i32.load
  i32.const 3
  i32.and
  i32.eq
  tee_local $0
  if
   get_global $~lib/collector/itcm/white
   get_local $1
   i32.const 16
   i32.sub
   i32.load
   i32.const 3
   i32.and
   i32.eq
   set_local $0
  end
  get_local $0
  if
   get_local $2
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/array/Array<Foo>#__set (; 17 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  get_local $0
  i32.load
  tee_local $3
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 72
    i32.const 109
    i32.const 41
    call $~lib/env/abort
    unreachable
   else    
    get_local $0
    get_local $3
    get_local $1
    i32.const 1
    i32.add
    tee_local $4
    i32.const 2
    i32.shl
    call $~lib/internal/arraybuffer/reallocateUnsafe
    tee_local $3
    i32.store
    get_local $0
    get_local $4
    i32.store offset=4
   end
  end
  get_local $1
  i32.const 2
  i32.shl
  get_local $3
  i32.add
  get_local $2
  i32.store offset=8
  get_local $0
  get_local $2
  call $~lib/collector/itcm/__gc_link
 )
 (func $std/gc-array/main (; 18 ;) (type $i) (result i32)
  get_global $~started
  i32.eqz
  if
   call $start
   i32.const 1
   set_global $~started
  end
  i32.const 0
 )
 (func $start (; 19 ;) (type $v)
  i32.const 184
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  set_global $~lib/collector/itcm/state
  call $~lib/collector/itcm/__gc_collect
  get_global $std/gc-array/arr
  i32.const 0
  i32.const 0
  i32.const 4
  call $~lib/collector/itcm/__gc_allocate
  call $~lib/array/Array<Foo>#__set
  call $~lib/collector/itcm/__gc_collect
  get_global $std/gc-array/arr
  i32.const 1
  i32.const 0
  i32.const 4
  call $~lib/collector/itcm/__gc_allocate
  call $~lib/array/Array<Foo>#__set
  call $~lib/collector/itcm/__gc_collect
  get_global $std/gc-array/arr
  i32.const 0
  i32.const 0
  i32.const 4
  call $~lib/collector/itcm/__gc_allocate
  call $~lib/array/Array<Foo>#__set
  call $~lib/collector/itcm/__gc_collect
 )
 (func $null (; 20 ;) (type $v)
  nop
 )
)
