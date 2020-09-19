Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1750270E9A
	for <lists+devicetree@lfdr.de>; Sat, 19 Sep 2020 16:39:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726400AbgISOja (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Sep 2020 10:39:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726371AbgISOja (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Sep 2020 10:39:30 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EABC6C0613CE
        for <devicetree@vger.kernel.org>; Sat, 19 Sep 2020 07:39:29 -0700 (PDT)
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1kJe1N-0001Lm-2J; Sat, 19 Sep 2020 16:39:25 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
        (envelope-from <ukl@pengutronix.de>)
        id 1kJe1L-0006JS-BS; Sat, 19 Sep 2020 16:39:23 +0200
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>
Cc:     kernel@pengutronix.de, devicetree@vger.kernel.org
Subject: [PATCH] scripts/dtc: only append to HOST_EXTRACFLAGS instead of overwriting
Date:   Sat, 19 Sep 2020 16:39:22 +0200
Message-Id: <20200919143922.22793-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200917094024.17215-1-u.kleine-koenig@pengutronix.de>
References: <20200917094024.17215-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When building with

	$ HOST_EXTRACFLAGS=-g make

the expectation is that host tools are built with debug informations.
This however doesn't happen if the Makefile assigns a new value to the
HOST_EXTRACFLAGS instead of appending to it. So use += instead of := for
the first assignment.

Fixes: e3fd9b5384f3 ("scripts/dtc: consolidate include path options in Makefile")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
Hello,

this is a resend as I failed to add the devicetree mailing list to Cc
for the first mail :-\ Thanks to Rob for reminding me. Those who got
this mail twice and want to reply please make sure you reply to the
right (i.e. this) mail.

The patch is the same as my earlier patch "scripts/dtc: Don't overwrite
HOST_EXTRACFLAGS passed on command line" but here the commit log is not
wrong.

Thanks and sorry,
Uwe

 scripts/dtc/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index a698ece43fff..4852bf44e913 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -9,7 +9,7 @@ dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
 dtc-objs	+= dtc-lexer.lex.o dtc-parser.tab.o
 
 # Source files need to get at the userspace version of libfdt_env.h to compile
-HOST_EXTRACFLAGS := -I $(srctree)/$(src)/libfdt
+HOST_EXTRACFLAGS += -I $(srctree)/$(src)/libfdt
 
 ifeq ($(shell pkg-config --exists yaml-0.1 2>/dev/null && echo yes),)
 ifneq ($(CHECK_DT_BINDING)$(CHECK_DTBS),)
-- 
2.28.0

