Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62164338F20
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 14:50:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbhCLNtn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 08:49:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231516AbhCLNtc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 08:49:32 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F708C061574
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 05:49:31 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id v9so45879268lfa.1
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 05:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ig/feJqfg6Zk4+Z4VaaTDAGGxi9ON2uvzxTxlPep8Ng=;
        b=Pop+0/qgodqLeVXPy4/mpIwgtod1OWM0PRrTMbXdi4Qj3ZbtSvOBsSlTuAcR0O8OUV
         B+X88hjj2FBuaIT49XcmVEeW88dI1ek7No+5JOFjLrymAuvxm1pNndX+mTT5Epqz58Hr
         p5u4i/RF6m/QPm6kJjjf5aBuf3c6VI00YC2BioNlIpnJTQeVIczGZc7hm4hPBrmW21hv
         rJahjaalMDOSSxRXummAgpa11nrDogmhDkZLqLNPif0iy1zem8PhXubsZkMnL9DzY+pi
         eBF/qiif/6tUw6372Kbejj3kOSrNYPHx6kav0z/viVkOCVdq9cPoytRCA8lgvNhgydX1
         PEGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ig/feJqfg6Zk4+Z4VaaTDAGGxi9ON2uvzxTxlPep8Ng=;
        b=eyTa2iG/aVATqA2nYClPrjh3cE7ihP2k2rZwYTMexJ6aM41iPBUlpRKGsYGIfC3P69
         GK08YYK4J6wAkNjjXzmqRIiVAp4qzE6w26pTrj9AlPkQJA66+ewNjP8bEwP994xh9SQI
         z7xiZbUVcS5aqseFICfIgsRXIQiSLdlHdgxs6sYgaDe7zfAL6HPvK1/fNUvob30VZ946
         J/1uF5WjebXzdG8mZPUpO532GPYGlMV2l9FfjcNifIEEiA+c9Ts9fhAym8YCTxNpKKCB
         6zFMRidSpZXPb466Qsid0zzrp8zGuy2F1Ak+6xEu+AjnqZ0ij9OV1HPzxxrHt0oWbDBA
         WhYA==
X-Gm-Message-State: AOAM531dJWhEiHAlf6I8vRc6m9NP4h5a+rucgbN0toC9TBvh0UsXSg0D
        K8Dh/PFkjb6Vwrp7D+32zk8=
X-Google-Smtp-Source: ABdhPJzW2/QQiUcxc5Vn2KspsRiqIepsFziS7gL2I7XO06JQCB8gE3mTkvqu8KUK4M7WErehAfYprg==
X-Received: by 2002:a05:6512:696:: with SMTP id t22mr5361614lfe.631.1615556970104;
        Fri, 12 Mar 2021 05:49:30 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id j19sm1741071lfb.15.2021.03.12.05.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 05:49:29 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Vivek Unune <npcomplete13@gmail.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] mtd: parsers: ofpart: support Linksys Northstar partitions
Date:   Fri, 12 Mar 2021 14:49:19 +0100
Message-Id: <20210312134919.7767-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210312134919.7767-1-zajec5@gmail.com>
References: <20210312134919.7767-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This allows extending ofpart parser with support for Linksys Northstar
devices. That support uses recently added quirks mechanism.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 drivers/mtd/parsers/Kconfig             | 10 +++++
 drivers/mtd/parsers/Makefile            |  1 +
 drivers/mtd/parsers/ofpart_core.c       |  6 +++
 drivers/mtd/parsers/ofpart_linksys_ns.c | 50 +++++++++++++++++++++++++
 drivers/mtd/parsers/ofpart_linksys_ns.h | 18 +++++++++
 5 files changed, 85 insertions(+)
 create mode 100644 drivers/mtd/parsers/ofpart_linksys_ns.c
 create mode 100644 drivers/mtd/parsers/ofpart_linksys_ns.h

diff --git a/drivers/mtd/parsers/Kconfig b/drivers/mtd/parsers/Kconfig
index 0528855cf6c1..9babe678c41b 100644
--- a/drivers/mtd/parsers/Kconfig
+++ b/drivers/mtd/parsers/Kconfig
@@ -76,6 +76,16 @@ config MTD_OF_PARTS_BCM4908
 	  that can have multiple "firmware" partitions. It takes care of
 	  finding currently used one and backup ones.
 
+config MTD_OF_PARTS_LINKSYS_NS
+	bool "Linksys Northstar partitioning support"
+	depends on MTD_OF_PARTS && (ARCH_BCM_5301X || ARCH_BCM4908 || COMPILE_TEST)
+	default ARCH_BCM_5301X
+	help
+	  This provides partitions parser for Linksys devices based on Broadcom
+	  Northstar architecture. Linksys commonly uses fixed flash layout with
+	  two "firmware" partitions. Currently used firmware has to be detected
+	  using CFE environment variable.
+
 config MTD_PARSER_IMAGETAG
 	tristate "Parser for BCM963XX Image Tag format partitions"
 	depends on BCM63XX || BMIPS_GENERIC || COMPILE_TEST
diff --git a/drivers/mtd/parsers/Makefile b/drivers/mtd/parsers/Makefile
index 2dfe9fb602de..2e98aa048278 100644
--- a/drivers/mtd/parsers/Makefile
+++ b/drivers/mtd/parsers/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_MTD_CMDLINE_PARTS)		+= cmdlinepart.o
 obj-$(CONFIG_MTD_OF_PARTS)		+= ofpart.o
 ofpart-y				+= ofpart_core.o
 ofpart-$(CONFIG_MTD_OF_PARTS_BCM4908)	+= ofpart_bcm4908.o
+ofpart-$(CONFIG_MTD_OF_PARTS_LINKSYS_NS)+= ofpart_linksys_ns.o
 obj-$(CONFIG_MTD_PARSER_IMAGETAG)	+= parser_imagetag.o
 obj-$(CONFIG_MTD_AFS_PARTS)		+= afs.o
 obj-$(CONFIG_MTD_PARSER_TRX)		+= parser_trx.o
diff --git a/drivers/mtd/parsers/ofpart_core.c b/drivers/mtd/parsers/ofpart_core.c
index 2cef527dd976..0fd8d2a0db97 100644
--- a/drivers/mtd/parsers/ofpart_core.c
+++ b/drivers/mtd/parsers/ofpart_core.c
@@ -17,6 +17,7 @@
 #include <linux/mtd/partitions.h>
 
 #include "ofpart_bcm4908.h"
+#include "ofpart_linksys_ns.h"
 
 struct fixed_partitions_quirks {
 	int (*post_parse)(struct mtd_info *mtd, struct mtd_partition *parts, int nr_parts);
@@ -26,6 +27,10 @@ static struct fixed_partitions_quirks bcm4908_partitions_quirks = {
 	.post_parse = bcm4908_partitions_post_parse,
 };
 
+static struct fixed_partitions_quirks linksys_ns_partitions_quirks = {
+	.post_parse = linksys_ns_partitions_post_parse,
+};
+
 static const struct of_device_id parse_ofpart_match_table[];
 
 static bool node_has_compatible(struct device_node *pp)
@@ -167,6 +172,7 @@ static const struct of_device_id parse_ofpart_match_table[] = {
 	{ .compatible = "fixed-partitions" },
 	/* Customized */
 	{ .compatible = "brcm,bcm4908-partitions", .data = &bcm4908_partitions_quirks, },
+	{ .compatible = "linksys,ns-partitions", .data = &linksys_ns_partitions_quirks, },
 	{},
 };
 MODULE_DEVICE_TABLE(of, parse_ofpart_match_table);
diff --git a/drivers/mtd/parsers/ofpart_linksys_ns.c b/drivers/mtd/parsers/ofpart_linksys_ns.c
new file mode 100644
index 000000000000..318c42d0256b
--- /dev/null
+++ b/drivers/mtd/parsers/ofpart_linksys_ns.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Rafał Miłecki <rafal@milecki.pl>
+ */
+
+#include <linux/bcm47xx_nvram.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/partitions.h>
+
+#include "ofpart_linksys_ns.h"
+
+#define NVRAM_BOOT_PART		"bootpartition"
+
+static int ofpart_linksys_ns_bootpartition(void)
+{
+	char buf[4];
+	int bootpartition;
+
+	/* Check CFE environment variable */
+	if (bcm47xx_nvram_getenv(NVRAM_BOOT_PART, buf, sizeof(buf)) > 0) {
+		if (!kstrtoint(buf, 0, &bootpartition))
+			return bootpartition;
+		pr_warn("Failed to parse %s value \"%s\"\n", NVRAM_BOOT_PART,
+			buf);
+	} else {
+		pr_warn("Failed to get NVRAM \"%s\"\n", NVRAM_BOOT_PART);
+	}
+
+	return 0;
+}
+
+int linksys_ns_partitions_post_parse(struct mtd_info *mtd,
+				     struct mtd_partition *parts,
+				     int nr_parts)
+{
+	int bootpartition = ofpart_linksys_ns_bootpartition();
+	int trx_idx = 0;
+	int i;
+
+	for (i = 0; i < nr_parts; i++) {
+		if (of_device_is_compatible(parts[i].of_node, "linksys,ns-firmware")) {
+			if (trx_idx++ == bootpartition)
+				parts[i].name = "firmware";
+			else
+				parts[i].name = "backup";
+		}
+	}
+
+	return 0;
+}
diff --git a/drivers/mtd/parsers/ofpart_linksys_ns.h b/drivers/mtd/parsers/ofpart_linksys_ns.h
new file mode 100644
index 000000000000..730c46812ebf
--- /dev/null
+++ b/drivers/mtd/parsers/ofpart_linksys_ns.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __OFPART_LINKSYS_NS_H
+#define __OFPART_LINKSYS_NS_H
+
+#ifdef CONFIG_MTD_OF_PARTS_LINKSYS_NS
+int linksys_ns_partitions_post_parse(struct mtd_info *mtd,
+				     struct mtd_partition *parts,
+				     int nr_parts);
+#else
+static inline int linksys_ns_partitions_post_parse(struct mtd_info *mtd,
+						   struct mtd_partition *parts,
+						   int nr_parts)
+{
+	return -EOPNOTSUPP;
+}
+#endif
+
+#endif
-- 
2.26.2

