# See the file LICENSE for redistribution information.
#
# Copyright (c) 2007, 2011 Oracle and/or its affiliates.  All rights reserved.
#
# $Id$
#
# TEST	repmgr020
# TEST	Basic repmgr test with region files in memory.  This test is
# TEST	identical to repmgr001 except the env is set up with "-private."
# TEST
# TEST	Create an appointed master and two clients, process some records and 
# TEST	verify resulting databases.
# TEST
# TEST	Run for btree only because access method shouldn't matter.
# TEST
proc repmgr020 { { niter 100 } { tnum "020" } args } {

	source ./include.tcl

	if { $is_freebsd_test == 1 } {
		puts "Skipping replication manager test on FreeBSD platform."
		return
	}

	set method "btree"
	set args [convert_args $method $args]

	puts "Repmgr$tnum ($method):\
	    Basic repmgr test with region files in memory."
	basic_repmgr_test $method $niter $tnum 0 0 0 0 0 1 $args
}

