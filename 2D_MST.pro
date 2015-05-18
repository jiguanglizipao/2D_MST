QT          += core gui widgets
CONFIG      += c++11 static
DEFINES     *= QT_USE_QSTRINGBUILDER

TARGET = 2D_MST
TEMPLATE = app

SOURCES += \
    relarankgraph/baseedge.cpp \
    relarankgraph/bezieredge.cpp \
    relarankgraph/drawedge.cpp \
    relarankgraph/edgearrow.cpp \
    relarankgraph/edgegroup.cpp \
    relarankgraph/edgegroupinterface.cpp \
    relarankgraph/edgegrouppair.cpp \
    relarankgraph/edgelabel.cpp \
    relarankgraph/labeltextfactory.cpp \
    relarankgraph/node.cpp \
    relarankgraph/nodehandle.cpp \
    relarankgraph/nodelabel.cpp \
    relarankgraph/perimeter.cpp \
    relarankgraph/plug.cpp \
    relarankgraph/plugarranger.cpp \
    relarankgraph/plugedge.cpp \
    relarankgraph/plughandle.cpp \
    relarankgraph/pluglabel.cpp \
    relarankgraph/scene.cpp \
    relarankgraph/scenehandle.cpp \
    relarankgraph/straightdoubleedge.cpp \
    relarankgraph/straightedge.cpp \
    relarankgraph/view.cpp \
    collapsible.cpp \
    delaunay.cpp \
    kruskal.cpp \
    main.cpp \
    mainctrl.cpp \
    mainwindow.cpp \
    nodectrl.cpp \
    nodeproperties.cpp \
    propertyeditor.cpp \
    ranklist.cpp \
    unionfind.cpp

HEADERS  += \
    boost/config/abi/borland_prefix.hpp \
    boost/config/abi/borland_suffix.hpp \
    boost/config/abi/msvc_prefix.hpp \
    boost/config/abi/msvc_suffix.hpp \
    boost/config/compiler/borland.hpp \
    boost/config/compiler/clang.hpp \
    boost/config/compiler/codegear.hpp \
    boost/config/compiler/comeau.hpp \
    boost/config/compiler/common_edg.hpp \
    boost/config/compiler/compaq_cxx.hpp \
    boost/config/compiler/cray.hpp \
    boost/config/compiler/digitalmars.hpp \
    boost/config/compiler/gcc.hpp \
    boost/config/compiler/gcc_xml.hpp \
    boost/config/compiler/greenhills.hpp \
    boost/config/compiler/hp_acc.hpp \
    boost/config/compiler/intel.hpp \
    boost/config/compiler/kai.hpp \
    boost/config/compiler/metrowerks.hpp \
    boost/config/compiler/mpw.hpp \
    boost/config/compiler/nvcc.hpp \
    boost/config/compiler/pathscale.hpp \
    boost/config/compiler/pgi.hpp \
    boost/config/compiler/sgi_mipspro.hpp \
    boost/config/compiler/sunpro_cc.hpp \
    boost/config/compiler/vacpp.hpp \
    boost/config/compiler/visualc.hpp \
    boost/config/no_tr1/cmath.hpp \
    boost/config/no_tr1/complex.hpp \
    boost/config/no_tr1/functional.hpp \
    boost/config/no_tr1/memory.hpp \
    boost/config/no_tr1/utility.hpp \
    boost/config/platform/aix.hpp \
    boost/config/platform/amigaos.hpp \
    boost/config/platform/beos.hpp \
    boost/config/platform/bsd.hpp \
    boost/config/platform/cray.hpp \
    boost/config/platform/cygwin.hpp \
    boost/config/platform/hpux.hpp \
    boost/config/platform/irix.hpp \
    boost/config/platform/linux.hpp \
    boost/config/platform/macos.hpp \
    boost/config/platform/qnxnto.hpp \
    boost/config/platform/solaris.hpp \
    boost/config/platform/symbian.hpp \
    boost/config/platform/vms.hpp \
    boost/config/platform/vxworks.hpp \
    boost/config/platform/win32.hpp \
    boost/config/stdlib/dinkumware.hpp \
    boost/config/stdlib/libcomo.hpp \
    boost/config/stdlib/libcpp.hpp \
    boost/config/stdlib/libstdcpp3.hpp \
    boost/config/stdlib/modena.hpp \
    boost/config/stdlib/msl.hpp \
    boost/config/stdlib/roguewave.hpp \
    boost/config/stdlib/sgi.hpp \
    boost/config/stdlib/stlport.hpp \
    boost/config/stdlib/vacpp.hpp \
    boost/config/abi_prefix.hpp \
    boost/config/abi_suffix.hpp \
    boost/config/auto_link.hpp \
    boost/config/posix_features.hpp \
    boost/config/requires_threads.hpp \
    boost/config/select_compiler_config.hpp \
    boost/config/select_platform_config.hpp \
    boost/config/select_stdlib_config.hpp \
    boost/config/suffix.hpp \
    boost/config/user.hpp \
    boost/config/warning_disable.hpp \
    boost/core/enable_if.hpp \
    boost/detail/workaround.hpp \
    boost/mpl/aux_/config/adl.hpp \
    boost/mpl/aux_/config/arrays.hpp \
    boost/mpl/aux_/config/compiler.hpp \
    boost/mpl/aux_/config/ctps.hpp \
    boost/mpl/aux_/config/dtp.hpp \
    boost/mpl/aux_/config/eti.hpp \
    boost/mpl/aux_/config/gcc.hpp \
    boost/mpl/aux_/config/intel.hpp \
    boost/mpl/aux_/config/lambda.hpp \
    boost/mpl/aux_/config/msvc.hpp \
    boost/mpl/aux_/config/nttp.hpp \
    boost/mpl/aux_/config/overload_resolution.hpp \
    boost/mpl/aux_/config/preprocessor.hpp \
    boost/mpl/aux_/config/static_constant.hpp \
    boost/mpl/aux_/config/ttp.hpp \
    boost/mpl/aux_/config/use_preprocessed.hpp \
    boost/mpl/aux_/config/workaround.hpp \
    boost/mpl/aux_/preprocessed/bcc/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/bcc/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/bcc/and.hpp \
    boost/mpl/aux_/preprocessed/bcc/apply.hpp \
    boost/mpl/aux_/preprocessed/bcc/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/bcc/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/bcc/arg.hpp \
    boost/mpl/aux_/preprocessed/bcc/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/bcc/bind.hpp \
    boost/mpl/aux_/preprocessed/bcc/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/bcc/bitand.hpp \
    boost/mpl/aux_/preprocessed/bcc/bitor.hpp \
    boost/mpl/aux_/preprocessed/bcc/bitxor.hpp \
    boost/mpl/aux_/preprocessed/bcc/deque.hpp \
    boost/mpl/aux_/preprocessed/bcc/divides.hpp \
    boost/mpl/aux_/preprocessed/bcc/equal_to.hpp \
    boost/mpl/aux_/preprocessed/bcc/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/bcc/greater.hpp \
    boost/mpl/aux_/preprocessed/bcc/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/bcc/inherit.hpp \
    boost/mpl/aux_/preprocessed/bcc/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/bcc/less.hpp \
    boost/mpl/aux_/preprocessed/bcc/less_equal.hpp \
    boost/mpl/aux_/preprocessed/bcc/list.hpp \
    boost/mpl/aux_/preprocessed/bcc/list_c.hpp \
    boost/mpl/aux_/preprocessed/bcc/map.hpp \
    boost/mpl/aux_/preprocessed/bcc/minus.hpp \
    boost/mpl/aux_/preprocessed/bcc/modulus.hpp \
    boost/mpl/aux_/preprocessed/bcc/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/bcc/or.hpp \
    boost/mpl/aux_/preprocessed/bcc/placeholders.hpp \
    boost/mpl/aux_/preprocessed/bcc/plus.hpp \
    boost/mpl/aux_/preprocessed/bcc/quote.hpp \
    boost/mpl/aux_/preprocessed/bcc/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc/set.hpp \
    boost/mpl/aux_/preprocessed/bcc/set_c.hpp \
    boost/mpl/aux_/preprocessed/bcc/shift_left.hpp \
    boost/mpl/aux_/preprocessed/bcc/shift_right.hpp \
    boost/mpl/aux_/preprocessed/bcc/template_arity.hpp \
    boost/mpl/aux_/preprocessed/bcc/times.hpp \
    boost/mpl/aux_/preprocessed/bcc/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/bcc/vector.hpp \
    boost/mpl/aux_/preprocessed/bcc/vector_c.hpp \
    boost/mpl/aux_/preprocessed/bcc551/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/bcc551/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/bcc551/and.hpp \
    boost/mpl/aux_/preprocessed/bcc551/apply.hpp \
    boost/mpl/aux_/preprocessed/bcc551/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/bcc551/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/bcc551/arg.hpp \
    boost/mpl/aux_/preprocessed/bcc551/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/bcc551/bind.hpp \
    boost/mpl/aux_/preprocessed/bcc551/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/bcc551/bitand.hpp \
    boost/mpl/aux_/preprocessed/bcc551/bitor.hpp \
    boost/mpl/aux_/preprocessed/bcc551/bitxor.hpp \
    boost/mpl/aux_/preprocessed/bcc551/deque.hpp \
    boost/mpl/aux_/preprocessed/bcc551/divides.hpp \
    boost/mpl/aux_/preprocessed/bcc551/equal_to.hpp \
    boost/mpl/aux_/preprocessed/bcc551/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc551/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/bcc551/greater.hpp \
    boost/mpl/aux_/preprocessed/bcc551/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/bcc551/inherit.hpp \
    boost/mpl/aux_/preprocessed/bcc551/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc551/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc551/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/bcc551/less.hpp \
    boost/mpl/aux_/preprocessed/bcc551/less_equal.hpp \
    boost/mpl/aux_/preprocessed/bcc551/list.hpp \
    boost/mpl/aux_/preprocessed/bcc551/list_c.hpp \
    boost/mpl/aux_/preprocessed/bcc551/map.hpp \
    boost/mpl/aux_/preprocessed/bcc551/minus.hpp \
    boost/mpl/aux_/preprocessed/bcc551/modulus.hpp \
    boost/mpl/aux_/preprocessed/bcc551/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/bcc551/or.hpp \
    boost/mpl/aux_/preprocessed/bcc551/placeholders.hpp \
    boost/mpl/aux_/preprocessed/bcc551/plus.hpp \
    boost/mpl/aux_/preprocessed/bcc551/quote.hpp \
    boost/mpl/aux_/preprocessed/bcc551/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc551/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc551/set.hpp \
    boost/mpl/aux_/preprocessed/bcc551/set_c.hpp \
    boost/mpl/aux_/preprocessed/bcc551/shift_left.hpp \
    boost/mpl/aux_/preprocessed/bcc551/shift_right.hpp \
    boost/mpl/aux_/preprocessed/bcc551/template_arity.hpp \
    boost/mpl/aux_/preprocessed/bcc551/times.hpp \
    boost/mpl/aux_/preprocessed/bcc551/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/bcc551/vector.hpp \
    boost/mpl/aux_/preprocessed/bcc551/vector_c.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/and.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/apply.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/arg.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/bind.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/bitand.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/bitor.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/bitxor.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/deque.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/divides.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/equal_to.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/greater.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/inherit.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/less.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/less_equal.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/list.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/list_c.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/map.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/minus.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/modulus.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/or.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/placeholders.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/plus.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/quote.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/set.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/set_c.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/shift_left.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/shift_right.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/template_arity.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/times.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/vector.hpp \
    boost/mpl/aux_/preprocessed/bcc_pre590/vector_c.hpp \
    boost/mpl/aux_/preprocessed/dmc/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/dmc/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/dmc/and.hpp \
    boost/mpl/aux_/preprocessed/dmc/apply.hpp \
    boost/mpl/aux_/preprocessed/dmc/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/dmc/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/dmc/arg.hpp \
    boost/mpl/aux_/preprocessed/dmc/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/dmc/bind.hpp \
    boost/mpl/aux_/preprocessed/dmc/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/dmc/bitand.hpp \
    boost/mpl/aux_/preprocessed/dmc/bitor.hpp \
    boost/mpl/aux_/preprocessed/dmc/bitxor.hpp \
    boost/mpl/aux_/preprocessed/dmc/deque.hpp \
    boost/mpl/aux_/preprocessed/dmc/divides.hpp \
    boost/mpl/aux_/preprocessed/dmc/equal_to.hpp \
    boost/mpl/aux_/preprocessed/dmc/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/dmc/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/dmc/greater.hpp \
    boost/mpl/aux_/preprocessed/dmc/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/dmc/inherit.hpp \
    boost/mpl/aux_/preprocessed/dmc/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/dmc/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/dmc/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/dmc/less.hpp \
    boost/mpl/aux_/preprocessed/dmc/less_equal.hpp \
    boost/mpl/aux_/preprocessed/dmc/list.hpp \
    boost/mpl/aux_/preprocessed/dmc/list_c.hpp \
    boost/mpl/aux_/preprocessed/dmc/map.hpp \
    boost/mpl/aux_/preprocessed/dmc/minus.hpp \
    boost/mpl/aux_/preprocessed/dmc/modulus.hpp \
    boost/mpl/aux_/preprocessed/dmc/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/dmc/or.hpp \
    boost/mpl/aux_/preprocessed/dmc/placeholders.hpp \
    boost/mpl/aux_/preprocessed/dmc/plus.hpp \
    boost/mpl/aux_/preprocessed/dmc/quote.hpp \
    boost/mpl/aux_/preprocessed/dmc/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/dmc/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/dmc/set.hpp \
    boost/mpl/aux_/preprocessed/dmc/set_c.hpp \
    boost/mpl/aux_/preprocessed/dmc/shift_left.hpp \
    boost/mpl/aux_/preprocessed/dmc/shift_right.hpp \
    boost/mpl/aux_/preprocessed/dmc/template_arity.hpp \
    boost/mpl/aux_/preprocessed/dmc/times.hpp \
    boost/mpl/aux_/preprocessed/dmc/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/dmc/vector.hpp \
    boost/mpl/aux_/preprocessed/dmc/vector_c.hpp \
    boost/mpl/aux_/preprocessed/gcc/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/gcc/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/gcc/and.hpp \
    boost/mpl/aux_/preprocessed/gcc/apply.hpp \
    boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/gcc/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/gcc/arg.hpp \
    boost/mpl/aux_/preprocessed/gcc/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/gcc/bind.hpp \
    boost/mpl/aux_/preprocessed/gcc/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/gcc/bitand.hpp \
    boost/mpl/aux_/preprocessed/gcc/bitor.hpp \
    boost/mpl/aux_/preprocessed/gcc/bitxor.hpp \
    boost/mpl/aux_/preprocessed/gcc/deque.hpp \
    boost/mpl/aux_/preprocessed/gcc/divides.hpp \
    boost/mpl/aux_/preprocessed/gcc/equal_to.hpp \
    boost/mpl/aux_/preprocessed/gcc/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/gcc/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/gcc/greater.hpp \
    boost/mpl/aux_/preprocessed/gcc/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/gcc/inherit.hpp \
    boost/mpl/aux_/preprocessed/gcc/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/gcc/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/gcc/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/gcc/less.hpp \
    boost/mpl/aux_/preprocessed/gcc/less_equal.hpp \
    boost/mpl/aux_/preprocessed/gcc/list.hpp \
    boost/mpl/aux_/preprocessed/gcc/list_c.hpp \
    boost/mpl/aux_/preprocessed/gcc/map.hpp \
    boost/mpl/aux_/preprocessed/gcc/minus.hpp \
    boost/mpl/aux_/preprocessed/gcc/modulus.hpp \
    boost/mpl/aux_/preprocessed/gcc/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/gcc/or.hpp \
    boost/mpl/aux_/preprocessed/gcc/placeholders.hpp \
    boost/mpl/aux_/preprocessed/gcc/plus.hpp \
    boost/mpl/aux_/preprocessed/gcc/quote.hpp \
    boost/mpl/aux_/preprocessed/gcc/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/gcc/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/gcc/set.hpp \
    boost/mpl/aux_/preprocessed/gcc/set_c.hpp \
    boost/mpl/aux_/preprocessed/gcc/shift_left.hpp \
    boost/mpl/aux_/preprocessed/gcc/shift_right.hpp \
    boost/mpl/aux_/preprocessed/gcc/template_arity.hpp \
    boost/mpl/aux_/preprocessed/gcc/times.hpp \
    boost/mpl/aux_/preprocessed/gcc/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/gcc/vector.hpp \
    boost/mpl/aux_/preprocessed/gcc/vector_c.hpp \
    boost/mpl/aux_/preprocessed/msvc60/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/msvc60/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/msvc60/and.hpp \
    boost/mpl/aux_/preprocessed/msvc60/apply.hpp \
    boost/mpl/aux_/preprocessed/msvc60/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/msvc60/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/msvc60/arg.hpp \
    boost/mpl/aux_/preprocessed/msvc60/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/msvc60/bind.hpp \
    boost/mpl/aux_/preprocessed/msvc60/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/msvc60/bitand.hpp \
    boost/mpl/aux_/preprocessed/msvc60/bitor.hpp \
    boost/mpl/aux_/preprocessed/msvc60/bitxor.hpp \
    boost/mpl/aux_/preprocessed/msvc60/deque.hpp \
    boost/mpl/aux_/preprocessed/msvc60/divides.hpp \
    boost/mpl/aux_/preprocessed/msvc60/equal_to.hpp \
    boost/mpl/aux_/preprocessed/msvc60/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/msvc60/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/msvc60/greater.hpp \
    boost/mpl/aux_/preprocessed/msvc60/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/msvc60/inherit.hpp \
    boost/mpl/aux_/preprocessed/msvc60/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/msvc60/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/msvc60/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/msvc60/less.hpp \
    boost/mpl/aux_/preprocessed/msvc60/less_equal.hpp \
    boost/mpl/aux_/preprocessed/msvc60/list.hpp \
    boost/mpl/aux_/preprocessed/msvc60/list_c.hpp \
    boost/mpl/aux_/preprocessed/msvc60/map.hpp \
    boost/mpl/aux_/preprocessed/msvc60/minus.hpp \
    boost/mpl/aux_/preprocessed/msvc60/modulus.hpp \
    boost/mpl/aux_/preprocessed/msvc60/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/msvc60/or.hpp \
    boost/mpl/aux_/preprocessed/msvc60/placeholders.hpp \
    boost/mpl/aux_/preprocessed/msvc60/plus.hpp \
    boost/mpl/aux_/preprocessed/msvc60/quote.hpp \
    boost/mpl/aux_/preprocessed/msvc60/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/msvc60/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/msvc60/set.hpp \
    boost/mpl/aux_/preprocessed/msvc60/set_c.hpp \
    boost/mpl/aux_/preprocessed/msvc60/shift_left.hpp \
    boost/mpl/aux_/preprocessed/msvc60/shift_right.hpp \
    boost/mpl/aux_/preprocessed/msvc60/template_arity.hpp \
    boost/mpl/aux_/preprocessed/msvc60/times.hpp \
    boost/mpl/aux_/preprocessed/msvc60/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/msvc60/vector.hpp \
    boost/mpl/aux_/preprocessed/msvc60/vector_c.hpp \
    boost/mpl/aux_/preprocessed/msvc70/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/msvc70/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/msvc70/and.hpp \
    boost/mpl/aux_/preprocessed/msvc70/apply.hpp \
    boost/mpl/aux_/preprocessed/msvc70/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/msvc70/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/msvc70/arg.hpp \
    boost/mpl/aux_/preprocessed/msvc70/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/msvc70/bind.hpp \
    boost/mpl/aux_/preprocessed/msvc70/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/msvc70/bitand.hpp \
    boost/mpl/aux_/preprocessed/msvc70/bitor.hpp \
    boost/mpl/aux_/preprocessed/msvc70/bitxor.hpp \
    boost/mpl/aux_/preprocessed/msvc70/deque.hpp \
    boost/mpl/aux_/preprocessed/msvc70/divides.hpp \
    boost/mpl/aux_/preprocessed/msvc70/equal_to.hpp \
    boost/mpl/aux_/preprocessed/msvc70/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/msvc70/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/msvc70/greater.hpp \
    boost/mpl/aux_/preprocessed/msvc70/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/msvc70/inherit.hpp \
    boost/mpl/aux_/preprocessed/msvc70/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/msvc70/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/msvc70/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/msvc70/less.hpp \
    boost/mpl/aux_/preprocessed/msvc70/less_equal.hpp \
    boost/mpl/aux_/preprocessed/msvc70/list.hpp \
    boost/mpl/aux_/preprocessed/msvc70/list_c.hpp \
    boost/mpl/aux_/preprocessed/msvc70/map.hpp \
    boost/mpl/aux_/preprocessed/msvc70/minus.hpp \
    boost/mpl/aux_/preprocessed/msvc70/modulus.hpp \
    boost/mpl/aux_/preprocessed/msvc70/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/msvc70/or.hpp \
    boost/mpl/aux_/preprocessed/msvc70/placeholders.hpp \
    boost/mpl/aux_/preprocessed/msvc70/plus.hpp \
    boost/mpl/aux_/preprocessed/msvc70/quote.hpp \
    boost/mpl/aux_/preprocessed/msvc70/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/msvc70/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/msvc70/set.hpp \
    boost/mpl/aux_/preprocessed/msvc70/set_c.hpp \
    boost/mpl/aux_/preprocessed/msvc70/shift_left.hpp \
    boost/mpl/aux_/preprocessed/msvc70/shift_right.hpp \
    boost/mpl/aux_/preprocessed/msvc70/template_arity.hpp \
    boost/mpl/aux_/preprocessed/msvc70/times.hpp \
    boost/mpl/aux_/preprocessed/msvc70/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/msvc70/vector.hpp \
    boost/mpl/aux_/preprocessed/msvc70/vector_c.hpp \
    boost/mpl/aux_/preprocessed/mwcw/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/mwcw/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/mwcw/and.hpp \
    boost/mpl/aux_/preprocessed/mwcw/apply.hpp \
    boost/mpl/aux_/preprocessed/mwcw/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/mwcw/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/mwcw/arg.hpp \
    boost/mpl/aux_/preprocessed/mwcw/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/mwcw/bind.hpp \
    boost/mpl/aux_/preprocessed/mwcw/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/mwcw/bitand.hpp \
    boost/mpl/aux_/preprocessed/mwcw/bitor.hpp \
    boost/mpl/aux_/preprocessed/mwcw/bitxor.hpp \
    boost/mpl/aux_/preprocessed/mwcw/deque.hpp \
    boost/mpl/aux_/preprocessed/mwcw/divides.hpp \
    boost/mpl/aux_/preprocessed/mwcw/equal_to.hpp \
    boost/mpl/aux_/preprocessed/mwcw/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/mwcw/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/mwcw/greater.hpp \
    boost/mpl/aux_/preprocessed/mwcw/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/mwcw/inherit.hpp \
    boost/mpl/aux_/preprocessed/mwcw/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/mwcw/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/mwcw/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/mwcw/less.hpp \
    boost/mpl/aux_/preprocessed/mwcw/less_equal.hpp \
    boost/mpl/aux_/preprocessed/mwcw/list.hpp \
    boost/mpl/aux_/preprocessed/mwcw/list_c.hpp \
    boost/mpl/aux_/preprocessed/mwcw/map.hpp \
    boost/mpl/aux_/preprocessed/mwcw/minus.hpp \
    boost/mpl/aux_/preprocessed/mwcw/modulus.hpp \
    boost/mpl/aux_/preprocessed/mwcw/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/mwcw/or.hpp \
    boost/mpl/aux_/preprocessed/mwcw/placeholders.hpp \
    boost/mpl/aux_/preprocessed/mwcw/plus.hpp \
    boost/mpl/aux_/preprocessed/mwcw/quote.hpp \
    boost/mpl/aux_/preprocessed/mwcw/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/mwcw/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/mwcw/set.hpp \
    boost/mpl/aux_/preprocessed/mwcw/set_c.hpp \
    boost/mpl/aux_/preprocessed/mwcw/shift_left.hpp \
    boost/mpl/aux_/preprocessed/mwcw/shift_right.hpp \
    boost/mpl/aux_/preprocessed/mwcw/template_arity.hpp \
    boost/mpl/aux_/preprocessed/mwcw/times.hpp \
    boost/mpl/aux_/preprocessed/mwcw/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/mwcw/vector.hpp \
    boost/mpl/aux_/preprocessed/mwcw/vector_c.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/and.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/apply.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/arg.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/bind.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/bitand.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/bitor.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/bitxor.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/deque.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/divides.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/equal_to.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/greater.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/inherit.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/less.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/less_equal.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/list.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/list_c.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/map.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/minus.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/modulus.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/or.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/placeholders.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/plus.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/quote.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/set.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/set_c.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/shift_left.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/shift_right.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/template_arity.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/times.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/vector.hpp \
    boost/mpl/aux_/preprocessed/no_ctps/vector_c.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/and.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/apply.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/arg.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/bind.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/bitand.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/bitor.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/bitxor.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/deque.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/divides.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/equal_to.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/greater.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/inherit.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/less.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/less_equal.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/list.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/list_c.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/map.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/minus.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/modulus.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/or.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/placeholders.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/plus.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/quote.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/set.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/set_c.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/shift_left.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/shift_right.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/template_arity.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/times.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/vector.hpp \
    boost/mpl/aux_/preprocessed/no_ttp/vector_c.hpp \
    boost/mpl/aux_/preprocessed/plain/advance_backward.hpp \
    boost/mpl/aux_/preprocessed/plain/advance_forward.hpp \
    boost/mpl/aux_/preprocessed/plain/and.hpp \
    boost/mpl/aux_/preprocessed/plain/apply.hpp \
    boost/mpl/aux_/preprocessed/plain/apply_fwd.hpp \
    boost/mpl/aux_/preprocessed/plain/apply_wrap.hpp \
    boost/mpl/aux_/preprocessed/plain/arg.hpp \
    boost/mpl/aux_/preprocessed/plain/basic_bind.hpp \
    boost/mpl/aux_/preprocessed/plain/bind.hpp \
    boost/mpl/aux_/preprocessed/plain/bind_fwd.hpp \
    boost/mpl/aux_/preprocessed/plain/bitand.hpp \
    boost/mpl/aux_/preprocessed/plain/bitor.hpp \
    boost/mpl/aux_/preprocessed/plain/bitxor.hpp \
    boost/mpl/aux_/preprocessed/plain/deque.hpp \
    boost/mpl/aux_/preprocessed/plain/divides.hpp \
    boost/mpl/aux_/preprocessed/plain/equal_to.hpp \
    boost/mpl/aux_/preprocessed/plain/fold_impl.hpp \
    boost/mpl/aux_/preprocessed/plain/full_lambda.hpp \
    boost/mpl/aux_/preprocessed/plain/greater.hpp \
    boost/mpl/aux_/preprocessed/plain/greater_equal.hpp \
    boost/mpl/aux_/preprocessed/plain/inherit.hpp \
    boost/mpl/aux_/preprocessed/plain/iter_fold_if_impl.hpp \
    boost/mpl/aux_/preprocessed/plain/iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/plain/lambda_no_ctps.hpp \
    boost/mpl/aux_/preprocessed/plain/less.hpp \
    boost/mpl/aux_/preprocessed/plain/less_equal.hpp \
    boost/mpl/aux_/preprocessed/plain/list.hpp \
    boost/mpl/aux_/preprocessed/plain/list_c.hpp \
    boost/mpl/aux_/preprocessed/plain/map.hpp \
    boost/mpl/aux_/preprocessed/plain/minus.hpp \
    boost/mpl/aux_/preprocessed/plain/modulus.hpp \
    boost/mpl/aux_/preprocessed/plain/not_equal_to.hpp \
    boost/mpl/aux_/preprocessed/plain/or.hpp \
    boost/mpl/aux_/preprocessed/plain/placeholders.hpp \
    boost/mpl/aux_/preprocessed/plain/plus.hpp \
    boost/mpl/aux_/preprocessed/plain/quote.hpp \
    boost/mpl/aux_/preprocessed/plain/reverse_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/plain/reverse_iter_fold_impl.hpp \
    boost/mpl/aux_/preprocessed/plain/set.hpp \
    boost/mpl/aux_/preprocessed/plain/set_c.hpp \
    boost/mpl/aux_/preprocessed/plain/shift_left.hpp \
    boost/mpl/aux_/preprocessed/plain/shift_right.hpp \
    boost/mpl/aux_/preprocessed/plain/template_arity.hpp \
    boost/mpl/aux_/preprocessed/plain/times.hpp \
    boost/mpl/aux_/preprocessed/plain/unpack_args.hpp \
    boost/mpl/aux_/preprocessed/plain/vector.hpp \
    boost/mpl/aux_/preprocessed/plain/vector_c.hpp \
    boost/mpl/aux_/preprocessor/def_params_tail.hpp \
    boost/mpl/aux_/preprocessor/enum.hpp \
    boost/mpl/aux_/preprocessor/ext_params.hpp \
    boost/mpl/aux_/preprocessor/filter_params.hpp \
    boost/mpl/aux_/preprocessor/params.hpp \
    boost/mpl/aux_/preprocessor/sub.hpp \
    boost/mpl/aux_/preprocessor/tuple.hpp \
    boost/mpl/aux_/adl_barrier.hpp \
    boost/mpl/aux_/arity.hpp \
    boost/mpl/aux_/include_preprocessed.hpp \
    boost/mpl/aux_/integral_wrapper.hpp \
    boost/mpl/aux_/lambda_arity_param.hpp \
    boost/mpl/aux_/lambda_support.hpp \
    boost/mpl/aux_/logical_op.hpp \
    boost/mpl/aux_/na.hpp \
    boost/mpl/aux_/na_fwd.hpp \
    boost/mpl/aux_/na_spec.hpp \
    boost/mpl/aux_/nested_type_wknd.hpp \
    boost/mpl/aux_/nttp_decl.hpp \
    boost/mpl/aux_/static_cast.hpp \
    boost/mpl/aux_/template_arity_fwd.hpp \
    boost/mpl/aux_/yes_no.hpp \
    boost/mpl/limits/arity.hpp \
    boost/mpl/and.hpp \
    boost/mpl/bool.hpp \
    boost/mpl/bool_fwd.hpp \
    boost/mpl/int.hpp \
    boost/mpl/int_fwd.hpp \
    boost/mpl/integral_c_tag.hpp \
    boost/mpl/lambda_fwd.hpp \
    boost/mpl/or.hpp \
    boost/mpl/protect.hpp \
    boost/mpl/size_t.hpp \
    boost/mpl/size_t_fwd.hpp \
    boost/mpl/void_fwd.hpp \
    boost/polygon/detail/voronoi_ctypes.hpp \
    boost/polygon/detail/voronoi_predicates.hpp \
    boost/polygon/detail/voronoi_robust_fpt.hpp \
    boost/polygon/detail/voronoi_structures.hpp \
    boost/polygon/interval_concept.hpp \
    boost/polygon/interval_data.hpp \
    boost/polygon/interval_traits.hpp \
    boost/polygon/isotropy.hpp \
    boost/polygon/point_concept.hpp \
    boost/polygon/point_data.hpp \
    boost/polygon/point_traits.hpp \
    boost/polygon/rectangle_concept.hpp \
    boost/polygon/rectangle_data.hpp \
    boost/polygon/rectangle_traits.hpp \
    boost/polygon/segment_concept.hpp \
    boost/polygon/segment_traits.hpp \
    boost/polygon/voronoi.hpp \
    boost/polygon/voronoi_builder.hpp \
    boost/polygon/voronoi_diagram.hpp \
    boost/polygon/voronoi_geometry_type.hpp \
    boost/preprocessor/arithmetic/add.hpp \
    boost/preprocessor/arithmetic/dec.hpp \
    boost/preprocessor/arithmetic/inc.hpp \
    boost/preprocessor/arithmetic/sub.hpp \
    boost/preprocessor/config/config.hpp \
    boost/preprocessor/control/detail/dmc/while.hpp \
    boost/preprocessor/control/detail/edg/while.hpp \
    boost/preprocessor/control/detail/msvc/while.hpp \
    boost/preprocessor/control/detail/while.hpp \
    boost/preprocessor/control/expr_iif.hpp \
    boost/preprocessor/control/if.hpp \
    boost/preprocessor/control/iif.hpp \
    boost/preprocessor/control/while.hpp \
    boost/preprocessor/debug/error.hpp \
    boost/preprocessor/detail/dmc/auto_rec.hpp \
    boost/preprocessor/detail/auto_rec.hpp \
    boost/preprocessor/detail/check.hpp \
    boost/preprocessor/detail/is_binary.hpp \
    boost/preprocessor/detail/split.hpp \
    boost/preprocessor/facilities/detail/is_empty.hpp \
    boost/preprocessor/facilities/empty.hpp \
    boost/preprocessor/facilities/expand.hpp \
    boost/preprocessor/facilities/identity.hpp \
    boost/preprocessor/facilities/is_1.hpp \
    boost/preprocessor/facilities/is_empty.hpp \
    boost/preprocessor/facilities/is_empty_variadic.hpp \
    boost/preprocessor/facilities/overload.hpp \
    boost/preprocessor/list/detail/dmc/fold_left.hpp \
    boost/preprocessor/list/detail/edg/fold_left.hpp \
    boost/preprocessor/list/detail/edg/fold_right.hpp \
    boost/preprocessor/list/detail/fold_left.hpp \
    boost/preprocessor/list/detail/fold_right.hpp \
    boost/preprocessor/list/adt.hpp \
    boost/preprocessor/list/fold_left.hpp \
    boost/preprocessor/list/fold_right.hpp \
    boost/preprocessor/list/for_each_i.hpp \
    boost/preprocessor/list/reverse.hpp \
    boost/preprocessor/logical/and.hpp \
    boost/preprocessor/logical/bitand.hpp \
    boost/preprocessor/logical/bool.hpp \
    boost/preprocessor/logical/compl.hpp \
    boost/preprocessor/punctuation/detail/is_begin_parens.hpp \
    boost/preprocessor/punctuation/comma.hpp \
    boost/preprocessor/punctuation/comma_if.hpp \
    boost/preprocessor/punctuation/is_begin_parens.hpp \
    boost/preprocessor/repetition/detail/dmc/for.hpp \
    boost/preprocessor/repetition/detail/edg/for.hpp \
    boost/preprocessor/repetition/detail/msvc/for.hpp \
    boost/preprocessor/repetition/detail/for.hpp \
    boost/preprocessor/repetition/for.hpp \
    boost/preprocessor/repetition/repeat.hpp \
    boost/preprocessor/tuple/detail/is_single_return.hpp \
    boost/preprocessor/tuple/eat.hpp \
    boost/preprocessor/tuple/elem.hpp \
    boost/preprocessor/tuple/rem.hpp \
    boost/preprocessor/tuple/size.hpp \
    boost/preprocessor/tuple/to_list.hpp \
    boost/preprocessor/variadic/elem.hpp \
    boost/preprocessor/variadic/size.hpp \
    boost/preprocessor/cat.hpp \
    boost/preprocessor/comma_if.hpp \
    boost/preprocessor/dec.hpp \
    boost/preprocessor/empty.hpp \
    boost/preprocessor/identity.hpp \
    boost/preprocessor/inc.hpp \
    boost/preprocessor/repeat.hpp \
    boost/preprocessor/stringize.hpp \
    boost/utility/enable_if.hpp \
    boost/config.hpp \
    boost/cstdint.hpp \
    boost/limits.hpp \
    boost/version.hpp \
    relarankgraph/baseedge.h \
    relarankgraph/bezieredge.h \
    relarankgraph/drawedge.h \
    relarankgraph/edgearrow.h \
    relarankgraph/edgegroup.h \
    relarankgraph/edgegroupinterface.h \
    relarankgraph/edgegrouppair.h \
    relarankgraph/edgelabel.h \
    relarankgraph/labeltextfactory.h \
    relarankgraph/node.h \
    relarankgraph/nodehandle.h \
    relarankgraph/nodelabel.h \
    relarankgraph/perimeter.h \
    relarankgraph/plug.h \
    relarankgraph/plugarranger.h \
    relarankgraph/plugedge.h \
    relarankgraph/plughandle.h \
    relarankgraph/pluglabel.h \
    relarankgraph/scene.h \
    relarankgraph/scenehandle.h \
    relarankgraph/straightdoubleedge.h \
    relarankgraph/straightedge.h \
    relarankgraph/utils.h \
    relarankgraph/view.h \
    collapsible.h \
    delaunay.h \
    graph.h \
    kruskal.h \
    mainctrl.h \
    mainwindow.h \
    nodectrl.h \
    nodeproperties.h \
    propertyeditor.h \
    ranklist.h \
    unionfind.h

RESOURCES += \
    res/icons.qrc

RC_FILE = res/Qt_ico.rc

FORMS +=
