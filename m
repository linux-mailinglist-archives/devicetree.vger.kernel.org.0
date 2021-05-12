Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A59937B8D4
	for <lists+devicetree@lfdr.de>; Wed, 12 May 2021 11:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230408AbhELJGy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 05:06:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230393AbhELJGy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 05:06:54 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35F30C061574
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 02:05:46 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id e7so4285808wrc.11
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 02:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DNxyhq7WYEH0U4TtHXig9vqQWs7OAdf1s4tgVO034Ek=;
        b=HGOnTOk1wyuMeZate+pz9qa08rrPMAJyz+9W8PbfIsKz6pUsZzlwvHVdXcd8oxv1PW
         FtK952Lkh6G/MfpDsX9fPnQEP5tmeeCyZImONdTYMgyuiiYyezyF89qJDCo1yOT3S9gT
         pDvcvhSYNUSjHvA6n/83ZMWRT9XngvFFtn6fK670UZUwz3CnA2NpO+gveurYtElnjeqJ
         3Cr8mKGg0TC8fZe2KzwiE1jFwxpk/XiofC/USk27vTmAm3gprnAfejguyozUOodmadn2
         sTj4v3g7dMFxDHiV8x5MfY5S3d9KNE6vxUqOapgV3qtFijKc4sbFUyMOftUyothcROEF
         anBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DNxyhq7WYEH0U4TtHXig9vqQWs7OAdf1s4tgVO034Ek=;
        b=q1oAxwnpANhVDEBLOJnYPY+oygFo58yYiP9VkDvpRl0Iil3BceQeJgaRFcUJ4mxhLE
         4VNWb8plIcOfZL8/rTaTHjsJZoJW7Kb5gwh/H+JtZAfKhcq9RXrrKOJRHdDUdIUUtng8
         mlBQ1R2VjQ0hF87gXv7aF7YEONoanmOdhP/JJAtQ/we5Gm7KZJMHWJkaljO20Qxd/FHF
         Y4IMlzDby4pcw7+X/WCYacziHFczd/pV/H56BHm7DPsGWcgpB21b/0DFpwEJMcEsVrYG
         gYAiWe6PELypXGXCTA0vRGFos0LbpZ7wJ1dLrMGuI9aE6+JBobDMYJbEAY4sqXLHciQl
         kF0A==
X-Gm-Message-State: AOAM532DTfn7TpU14X0uagU9JyxsNCl4IidYEbrYdv+zwpC8VpkMKwCn
        gj/7nsFtKt+rAVtJUcphF98MHg==
X-Google-Smtp-Source: ABdhPJwqyoSAD4Wpj4Bs/+VYsvXqU4WIzy9O2AchHRJcVZNN25kyPgqokk69CeaZC7bVkpXTu2JZ8A==
X-Received: by 2002:a5d:654b:: with SMTP id z11mr44001285wrv.167.1620810344928;
        Wed, 12 May 2021 02:05:44 -0700 (PDT)
Received: from arch-thunder.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id v20sm26679451wmj.15.2021.05.12.02.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 02:05:44 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sebastian Siewior <bigeasy@linutronix.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v3 4/9] usb: isp1760: remove platform data struct and code
Date:   Wed, 12 May 2021 10:05:24 +0100
Message-Id: <20210512090529.2283637-5-rui.silva@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210512090529.2283637-1-rui.silva@linaro.org>
References: <20210512090529.2283637-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the removal of the Blackfin port with:
commit 4ba66a976072 ("arch: remove blackfin port")

No one is using or referencing this header and platform data struct.
Remove them.

Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
 drivers/usb/isp1760/isp1760-if.c | 20 +++-----------------
 include/linux/usb/isp1760.h      | 19 -------------------
 2 files changed, 3 insertions(+), 36 deletions(-)
 delete mode 100644 include/linux/usb/isp1760.h

diff --git a/drivers/usb/isp1760/isp1760-if.c b/drivers/usb/isp1760/isp1760-if.c
index abfba9f5ec23..fb6701608cd8 100644
--- a/drivers/usb/isp1760/isp1760-if.c
+++ b/drivers/usb/isp1760/isp1760-if.c
@@ -16,7 +16,6 @@
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
-#include <linux/usb/isp1760.h>
 #include <linux/usb/hcd.h>
 
 #include "isp1760-core.h"
@@ -225,22 +224,9 @@ static int isp1760_plat_probe(struct platform_device *pdev)
 
 		if (of_property_read_bool(dp, "dreq-polarity"))
 			devflags |= ISP1760_FLAG_DREQ_POL_HIGH;
-	} else if (dev_get_platdata(&pdev->dev)) {
-		struct isp1760_platform_data *pdata =
-			dev_get_platdata(&pdev->dev);
-
-		if (pdata->is_isp1761)
-			devflags |= ISP1760_FLAG_ISP1761;
-		if (pdata->bus_width_16)
-			devflags |= ISP1760_FLAG_BUS_WIDTH_16;
-		if (pdata->port1_otg)
-			devflags |= ISP1760_FLAG_OTG_EN;
-		if (pdata->analog_oc)
-			devflags |= ISP1760_FLAG_ANALOG_OC;
-		if (pdata->dack_polarity_high)
-			devflags |= ISP1760_FLAG_DACK_POL_HIGH;
-		if (pdata->dreq_polarity_high)
-			devflags |= ISP1760_FLAG_DREQ_POL_HIGH;
+	} else {
+		pr_err("isp1760: no platform data\n");
+		return -ENXIO;
 	}
 
 	ret = isp1760_register(mem_res, irq_res->start, irqflags, &pdev->dev,
diff --git a/include/linux/usb/isp1760.h b/include/linux/usb/isp1760.h
deleted file mode 100644
index b75ded28db81..000000000000
--- a/include/linux/usb/isp1760.h
+++ /dev/null
@@ -1,19 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * board initialization should put one of these into dev->platform_data
- * and place the isp1760 onto platform_bus named "isp1760-hcd".
- */
-
-#ifndef __LINUX_USB_ISP1760_H
-#define __LINUX_USB_ISP1760_H
-
-struct isp1760_platform_data {
-	unsigned is_isp1761:1;			/* Chip is ISP1761 */
-	unsigned bus_width_16:1;		/* 16/32-bit data bus width */
-	unsigned port1_otg:1;			/* Port 1 supports OTG */
-	unsigned analog_oc:1;			/* Analog overcurrent */
-	unsigned dack_polarity_high:1;		/* DACK active high */
-	unsigned dreq_polarity_high:1;		/* DREQ active high */
-};
-
-#endif /* __LINUX_USB_ISP1760_H */
-- 
2.31.1

