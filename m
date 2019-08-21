Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC3E6971C0
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 07:56:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727674AbfHUF4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 01:56:10 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:38119 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725385AbfHUF4K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 01:56:10 -0400
Received: by mail-pl1-f196.google.com with SMTP id w11so240010plp.5
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 22:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lLwP3mTOJnfDSrV2MSql/pLg1RylIFBDj+4cxU85JLA=;
        b=pgfPMqAYF1GB9XdOwifBr9+txHI4Bvok60GT3VptbvsIKyyrpsDxznr48oNqWFPy0Z
         obk2AWdFDOJO0+HbeoUQsDLJlQ+6on9XrOFpnBktqGSAIDyZhQ0jBxBenpFZhF1PWadB
         B4kmu3+tV2X7lHFWqrBnCKQt/5dFxdRN7K1pn7xw7EzubDJKQkPsfeH0tAc5rxJJrw6Z
         LVK31Gulp/iQI6J2K/jicOEpE0ozIdVTu0dE1S6nXFUfy6EC/27Y1474FiMtF8fxNxka
         thf7+ZFwgxhFGCkkR8yG0CtCoZqcqUhcZxE8QGa9TVHf1/c/Aj0lT6oLDgbItlauMYlx
         EhoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=lLwP3mTOJnfDSrV2MSql/pLg1RylIFBDj+4cxU85JLA=;
        b=oC4KP3dUlFqkzaAhT28gymUsvbQz6oqmB8RO8Y0XANlpMIV1ylhCwyeyXCKfRq+jbk
         jquqYQow0vQmzzc6QnT3lHjNTt47uyva55bsgLLD2R9ZNXFZlNoCziou2H8A548KrDUk
         H9bsuuY1dprWJ7DC0H9ODVsuIdxXps6DWNJxSiNdJaWzyGrBN27QWhZDEa9rjaaD5WJa
         r5waxB00a6Xd52GQLkDvYDU57knI1ww6HEMlWSje4Y/OZfSK3Gfb6yQNivGEqHmHjUhY
         eEsonG2yvPe/lo2wrzA4Phh4c6Ac2HJySEUxLrzsYjD9z5Zc5JZtVnb5i5RnTDWyLDFb
         5qBg==
X-Gm-Message-State: APjAAAX0UpJYTKCpHJs0iUw1NIBxuHWZFw6H4ozRN3r2Hyx8wDg6CO48
        8Q1LGr7GgK1EhVriL+K4VzY=
X-Google-Smtp-Source: APXvYqz+UEvlsHPy8pZuC/TGIdmf7TVS3tbQQ2LbuvsuOV6sZRFG0SOn7rSViCigIl+8HOPZOoOe4w==
X-Received: by 2002:a17:902:e9:: with SMTP id a96mr16619138pla.169.1566366969567;
        Tue, 20 Aug 2019 22:56:09 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
        by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 22:56:08 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH 4/7] ARM: aspeed: Enable SMP boot
Date:   Wed, 21 Aug 2019 15:25:27 +0930
Message-Id: <20190821055530.8720-5-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This brings the secondary CPU into Linux. It depends on the setup
performed by ASPEED's u-boot.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/Makefile              |  1 +
 arch/arm/mach-aspeed/Makefile  |  5 +++
 arch/arm/mach-aspeed/platsmp.c | 61 ++++++++++++++++++++++++++++++++++
 3 files changed, 67 insertions(+)
 create mode 100644 arch/arm/mach-aspeed/Makefile
 create mode 100644 arch/arm/mach-aspeed/platsmp.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f96419135d35..be2fc3e79434 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -155,6 +155,7 @@ textofs-$(CONFIG_ARCH_AXXIA) := 0x00308000
 machine-$(CONFIG_ARCH_ACTIONS)		+= actions
 machine-$(CONFIG_ARCH_ALPINE)		+= alpine
 machine-$(CONFIG_ARCH_ARTPEC)		+= artpec
+machine-$(CONFIG_ARCH_ASPEED)           += aspeed
 machine-$(CONFIG_ARCH_AT91)		+= at91
 machine-$(CONFIG_ARCH_AXXIA)		+= axxia
 machine-$(CONFIG_ARCH_BCM)		+= bcm
diff --git a/arch/arm/mach-aspeed/Makefile b/arch/arm/mach-aspeed/Makefile
new file mode 100644
index 000000000000..1951b3317a76
--- /dev/null
+++ b/arch/arm/mach-aspeed/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+# Copyright (C) ASPEED Technology Inc.
+# Copyright IBM Corp.
+
+obj-$(CONFIG_SMP) += platsmp.o
diff --git a/arch/arm/mach-aspeed/platsmp.c b/arch/arm/mach-aspeed/platsmp.c
new file mode 100644
index 000000000000..2324becf7991
--- /dev/null
+++ b/arch/arm/mach-aspeed/platsmp.c
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright (C) ASPEED Technology Inc.
+// Copyright IBM Corp.
+
+#include <linux/of_address.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/smp.h>
+
+#define BOOT_ADDR	0x00
+#define BOOT_SIG	0x04
+
+static struct device_node *secboot_node;
+
+static int aspeed_g6_boot_secondary(unsigned int cpu, struct task_struct *idle)
+{
+	void __iomem *base;
+
+	base = of_iomap(secboot_node, 0);
+	if (!base) {
+		pr_err("could not map the secondary boot base!");
+		return -ENODEV;
+	}
+
+	writel_relaxed(0, base + BOOT_ADDR);
+	writel_relaxed(__pa_symbol(secondary_startup_arm), base + BOOT_ADDR);
+	writel_relaxed((0xABBAAB00 | (cpu & 0xff)), base + BOOT_SIG);
+
+	dsb_sev();
+
+	iounmap(base);
+
+	return 0;
+}
+
+static void __init aspeed_g6_smp_prepare_cpus(unsigned int max_cpus)
+{
+	void __iomem *base;
+
+	secboot_node = of_find_compatible_node(NULL, NULL, "aspeed,ast2600-smpmem");
+	if (!secboot_node) {
+		pr_err("secboot device node found!!\n");
+		return;
+	}
+
+	base = of_iomap(secboot_node, 0);
+	if (!base) {
+		pr_err("could not map the secondary boot base!");
+		return;
+	}
+	__raw_writel(0xBADABABA, base + BOOT_SIG);
+
+	iounmap(base);
+}
+
+static const struct smp_operations aspeed_smp_ops __initconst = {
+	.smp_prepare_cpus	= aspeed_g6_smp_prepare_cpus,
+	.smp_boot_secondary	= aspeed_g6_boot_secondary,
+};
+
+CPU_METHOD_OF_DECLARE(aspeed_smp, "aspeed,ast2600-smp", &aspeed_smp_ops);
-- 
2.23.0.rc1

