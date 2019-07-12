Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E35D666BF1
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2019 13:59:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726582AbfGLL7D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Jul 2019 07:59:03 -0400
Received: from bastet.se.axis.com ([195.60.68.11]:32778 "EHLO
        bastet.se.axis.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726254AbfGLL7C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Jul 2019 07:59:02 -0400
X-Greylist: delayed 353 seconds by postgrey-1.27 at vger.kernel.org; Fri, 12 Jul 2019 07:59:02 EDT
Received: from localhost (localhost [127.0.0.1])
        by bastet.se.axis.com (Postfix) with ESMTP id 4319E184F4;
        Fri, 12 Jul 2019 13:53:08 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
        by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new, port 10024)
        with LMTP id B8xvrNuuyqWV; Fri, 12 Jul 2019 13:53:07 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
        by bastet.se.axis.com (Postfix) with ESMTPS id 98D2118317;
        Fri, 12 Jul 2019 13:53:07 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 7BB0F1A063;
        Fri, 12 Jul 2019 13:53:07 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 704B31A060;
        Fri, 12 Jul 2019 13:53:07 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
        by boulder02.se.axis.com (Postfix) with ESMTP;
        Fri, 12 Jul 2019 13:53:07 +0200 (CEST)
Received: from lnxpavelmn.se.axis.com (lnxpavelmn.se.axis.com [10.94.101.1])
        by seth.se.axis.com (Postfix) with ESMTP id 6472C2D9D;
        Fri, 12 Jul 2019 13:53:07 +0200 (CEST)
Received: by lnxpavelmn.se.axis.com (Postfix, from userid 11147)
        id 534BB600F2; Fri, 12 Jul 2019 13:53:07 +0200 (CEST)
From:   Pavel Modilaynen <pavel.modilaynen@axis.com>
To:     robh+dt@kernel.org, frowand.list@gmail.com
Cc:     devicetree@vger.kernel.org, Pavel Modilaynen <pavelmn@axis.com>
Subject: [PATCH] dtc: Use pkg-config to locate libyaml
Date:   Fri, 12 Jul 2019 13:52:19 +0200
Message-Id: <20190712115219.25997-1-pavelmn@axis.com>
X-Mailer: git-send-email 2.11.0
X-TM-AS-GCONF: 00
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Pavel Modilaynen <pavel.modilaynen@axis.com>

Using Makefile's wildcard with absolute path to detect
the presence of libyaml results in false-positive
detection when cross-compiling e.g. in yocto environment.
The latter results in build error:
| scripts/dtc/yamltree.o: In function `yaml_propval_int':
| yamltree.c: undefined reference to `yaml_sequence_start_event_initialize'
| yamltree.c: undefined reference to `yaml_emitter_emit'
| yamltree.c: undefined reference to `yaml_scalar_event_initialize'
...
Use pkg-config to locate libyaml to address this scenario.

Signed-off-by: Pavel Modilaynen <pavel.modilaynen@axis.com>
---
 scripts/dtc/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index 82160808765c..99d51b665432 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -11,7 +11,7 @@ dtc-objs	+= dtc-lexer.lex.o dtc-parser.tab.o
 # Source files need to get at the userspace version of libfdt_env.h to compile
 HOST_EXTRACFLAGS := -I $(srctree)/$(src)/libfdt
 
-ifeq ($(wildcard /usr/include/yaml.h),)
+ifeq ($(shell pkg-config --exists yaml-0.1 && echo yes),)
 ifneq ($(CHECK_DTBS),)
 $(error dtc needs libyaml for DT schema validation support. \
 	Install the necessary libyaml development package.)
@@ -19,7 +19,7 @@ endif
 HOST_EXTRACFLAGS += -DNO_YAML
 else
 dtc-objs	+= yamltree.o
-HOSTLDLIBS_dtc	:= -lyaml
+HOSTLDLIBS_dtc	:= $(shell pkg-config yaml-0.1 --libs)
 endif
 
 # Generated files need one more search path to include headers in source tree
-- 
2.11.0

