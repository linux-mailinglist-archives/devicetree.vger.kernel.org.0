Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2EE53263E9
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 15:17:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230113AbhBZOQE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 09:16:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230105AbhBZOPq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 09:15:46 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35955C061793
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 06:14:18 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id p1so6626293edy.2
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 06:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fiQu2oPApg5uagXMeqvolPXEApCItlWJFjBIgQNcT+U=;
        b=J5pKGpp119dXassFAQHDedxcYd25QkctzzdK/xuhuJiTm3yxPt1cK8uG+fpwUUdGy+
         IiimOncJrA+KsZtTxqnEaWqkr/ahi005229VXf7F+d02ok7m5USrYAvviwADS1Fxzuay
         2l1WLWwav6JcD1uEa0BWutnySL0uDe5xzN7BU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fiQu2oPApg5uagXMeqvolPXEApCItlWJFjBIgQNcT+U=;
        b=OOgSX/wsj0Dxxw4Q4tFWa1rPxRs5H+P/GKvq+VdLzmiCiXEIZk23y7DKnzASuUZx2q
         AObV+ekgCAy6McEM2/e0iGnYVunjo1QMpvSqtu8wa2+QZ+PLv3PExdmZpWq4aeSz0VMY
         dF2/eu/LczaUNRDzGkfJrwdIIbCBcLmyG7UTrsdoXL0kVTmEES8Yf0QDmrsUwkGzm82y
         nZdsvUQEZjzVQn/BFBwtuiSitg6igW762aa7RtCtDDQmbjcf1704fvY6DGDGGz5w85vy
         KYB1vTMnIfbSkqibWcG8OriCxCHARgaDuy+AoZg+nu1ktvBIYCupe/epXH5IcoJvbg1b
         VAag==
X-Gm-Message-State: AOAM531hx3aGRyapPEdlkBsR+HuT6IjOtHO/BuaLhroWqryBnMd0Mn78
        8cE6E6aCNX/WWnqv5DDW/wUowg==
X-Google-Smtp-Source: ABdhPJw/Q9UFfy0SlSake+cTOwjAruZIS7wv4RgEF5dEECeCFkfD0F584h7BRA9fzQUyQlAlUYBC7w==
X-Received: by 2002:aa7:d451:: with SMTP id q17mr3483756edr.381.1614348856948;
        Fri, 26 Feb 2021 06:14:16 -0800 (PST)
Received: from prevas-ravi.prevas.se ([80.208.71.141])
        by smtp.gmail.com with ESMTPSA id g3sm5316838ejz.91.2021.02.26.06.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 06:14:16 -0800 (PST)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>, linux-clk@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: [PATCH 2/2] drivers: misc: add ripple counter driver
Date:   Fri, 26 Feb 2021 15:14:11 +0100
Message-Id: <20210226141411.2517368-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210226141411.2517368-1-linux@rasmusvillemoes.dk>
References: <20210226141411.2517368-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The only purpose of this driver is to serve as a consumer of the input
clock, to prevent it from being disabled by clk_disable_unused().

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/misc/Kconfig      |  7 +++++++
 drivers/misc/Makefile     |  1 +
 drivers/misc/ripple-ctr.c | 31 +++++++++++++++++++++++++++++++
 3 files changed, 39 insertions(+)
 create mode 100644 drivers/misc/ripple-ctr.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index f532c59bb59b..44b0b6ce42df 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -445,6 +445,13 @@ config HISI_HIKEY_USB
 	  switching between the dual-role USB-C port and the USB-A host ports
 	  using only one USB controller.
 
+config RIPPLE_CTR
+	tristate "Trivial ripple counter driver"
+	help
+	  This provides a stub driver for a ripple counter, whose
+	  only purpose is to request and enable the clock source
+	  driving the counter.
+
 source "drivers/misc/c2port/Kconfig"
 source "drivers/misc/eeprom/Kconfig"
 source "drivers/misc/cb710/Kconfig"
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 99b6f15a3c70..d560163068a9 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -56,3 +56,4 @@ obj-$(CONFIG_HABANA_AI)		+= habanalabs/
 obj-$(CONFIG_UACCE)		+= uacce/
 obj-$(CONFIG_XILINX_SDFEC)	+= xilinx_sdfec.o
 obj-$(CONFIG_HISI_HIKEY_USB)	+= hisi_hikey_usb.o
+obj-$(CONFIG_RIPPLE_CTR)	+= ripple-ctr.o
diff --git a/drivers/misc/ripple-ctr.c b/drivers/misc/ripple-ctr.c
new file mode 100644
index 000000000000..f086eaf335df
--- /dev/null
+++ b/drivers/misc/ripple-ctr.c
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+
+static int ripple_ctr_probe(struct platform_device *pdev)
+{
+	struct clk *clk;
+
+	clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+	return clk_prepare_enable(clk);
+}
+
+static const struct of_device_id ripple_ctr_ids[] = {
+	{ .compatible = "linux,ripple-counter", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, ripple_ctr_ids);
+
+static struct platform_driver ripple_ctr_driver = {
+	.driver	= {
+		.name		= "ripple-counter",
+		.of_match_table	= ripple_ctr_ids,
+	},
+	.probe	= ripple_ctr_probe,
+};
+module_platform_driver(ripple_ctr_driver);
-- 
2.29.2

