Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B67C173344
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2020 09:49:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726589AbgB1Is7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Feb 2020 03:48:59 -0500
Received: from mail-pg1-f193.google.com ([209.85.215.193]:34783 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726063AbgB1Is7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Feb 2020 03:48:59 -0500
Received: by mail-pg1-f193.google.com with SMTP id t3so1169058pgn.1
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2020 00:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=5EPoAhuZuphwlWtSWKyhSY+h7h3iivsxV4hMWTAxKUE=;
        b=iFV3rVkvPQnO5aV+1FwyzJXv2sSSkRysESfqak/OMWbI3jNcxqgDZw9qAddYnR6hyQ
         zGRH+b4yzk7kO1CpZLLrwj/s50pOnkCp52v6eYBdmRqm4Z1vPwuqPFwVhaE7ELQyRXrn
         08ZzgWcJHLmfD1BJH0hg3bS062kvW/N4nMi20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5EPoAhuZuphwlWtSWKyhSY+h7h3iivsxV4hMWTAxKUE=;
        b=s/58ihcaLVXKx+vQnFBDa3Ea1C1DG47xIPiJo8ETgAvj2ZyxEJrHStgy1iigdWHr58
         UKuGmlxtTob6P3r1oGngturUCqHFQq0NedxdC8/O2TI6eo43hjPCEnJGS3NZxIHXPN5+
         DoyCR/N/KrgVVBKjBnhNjd0cH3ct7f7qRoHuIIZpV+ZRZqih/l8kZaY8OVp+PSoQmdWo
         kcsc9VSy8XHpRg+qXxsTbnF3NAcKPIDk4n8qefghVNFk3FuN+KF+XiLGZ6sse2uf+YpA
         eMQgaCGaZ7M9TQbhpB8IiYqjUCiC7RAY7rX4pwn8Q1uHwE9RDEMson1X3A7TBTCLC8Vl
         VDrg==
X-Gm-Message-State: APjAAAWhnUr2gZ5quO4vYEMNSOCyGGGdRdW8EOVWE2aQgy4+DUEfSeAC
        NijJyl1kUM2ujfjF5xKz6m25LUiPM/8=
X-Google-Smtp-Source: APXvYqwQNFMpLHGueqR6+qvmtUW/XKem1Ve1Ni7aNqltZQ2HkbpOaMYtmYLwubk5R7ASlRPHUoNW3A==
X-Received: by 2002:a63:d441:: with SMTP id i1mr3685712pgj.426.1582879737942;
        Fri, 28 Feb 2020 00:48:57 -0800 (PST)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
        by smtp.gmail.com with ESMTPSA id r72sm1496939pjb.18.2020.02.28.00.48.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2020 00:48:56 -0800 (PST)
From:   Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: [PATCH v1 1/1] scripts: dtc: mask flags bit when check i2c addr
Date:   Fri, 28 Feb 2020 14:18:42 +0530
Message-Id: <20200228084842.18691-1-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Generally i2c addr should not be greater than 10-bit. The highest 2 bits
are used for I2C_TEN_BIT_ADDRESS and I2C_OWN_SLAVE_ADDRESS. Need to mask
these flags if check slave addr valid.

Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 scripts/dtc/Makefile | 2 +-
 scripts/dtc/checks.c | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index 3acbb410904c..c5e8d6a9e73c 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -9,7 +9,7 @@ dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
 dtc-objs	+= dtc-lexer.lex.o dtc-parser.tab.o
 
 # Source files need to get at the userspace version of libfdt_env.h to compile
-HOST_EXTRACFLAGS := -I $(srctree)/$(src)/libfdt
+HOST_EXTRACFLAGS := -I $(srctree)/$(src)/libfdt -I$(srctree)/tools/include
 
 ifeq ($(shell pkg-config --exists yaml-0.1 2>/dev/null && echo yes),)
 ifneq ($(CHECK_DTBS),)
diff --git a/scripts/dtc/checks.c b/scripts/dtc/checks.c
index 756f0fa9203f..17c9ed4137b5 100644
--- a/scripts/dtc/checks.c
+++ b/scripts/dtc/checks.c
@@ -3,6 +3,7 @@
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2007.
  */
 
+#include <linux/bits.h>
 #include "dtc.h"
 #include "srcpos.h"
 
@@ -17,6 +18,9 @@
 #define TRACE(c, fmt, ...)	do { } while (0)
 #endif
 
+#define I2C_TEN_BIT_ADDRESS    BIT(31)
+#define I2C_OWN_SLAVE_ADDRESS  BIT(30)
+
 enum checkstatus {
 	UNCHECKED = 0,
 	PREREQ,
@@ -1048,6 +1052,7 @@ static void check_i2c_bus_reg(struct check *c, struct dt_info *dti, struct node
 
 	for (len = prop->val.len; len > 0; len -= 4) {
 		reg = fdt32_to_cpu(*(cells++));
+		reg &= ~(I2C_OWN_SLAVE_ADDRESS | I2C_TEN_BIT_ADDRESS);
 		if (reg > 0x3ff)
 			FAIL_PROP(c, dti, node, prop, "I2C address must be less than 10-bits, got \"0x%x\"",
 				  reg);
-- 
2.17.1

