Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADD2D3728A8
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 12:19:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230153AbhEDKUn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 06:20:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230218AbhEDKUm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 06:20:42 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05BD6C061574
        for <devicetree@vger.kernel.org>; Tue,  4 May 2021 03:19:47 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id t18so8778255wry.1
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 03:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DNxyhq7WYEH0U4TtHXig9vqQWs7OAdf1s4tgVO034Ek=;
        b=yjup6vOr7ANovXMF+OcFojfm0IMlyo4McjymWvbZA4sptaudPdI1tvwuyARppoEFLY
         T/fBVmuv+nVQPrslP0dhPF8i9CvU6SlL1487T+9TcGPuGxokcanpJy878Rjuxwh3HtRJ
         aZC5GWpBYbgynAul17qnUEMNK07Uefk88an4KGH2y60B5GKjYqAps4+dkoGM4WNZHzJ8
         72WvatqVsk7qsNSKEiDriCeofTTJHUULMgkzbdrEq5+cQtmlNkEyfslc3HGoXkB3b0MI
         RPXU7JVNm+RA1u/JMFgWLViUN07xipnNBqyvCv5smgJhUeW+EurkCyLeOQoWVXlkJw7J
         27qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DNxyhq7WYEH0U4TtHXig9vqQWs7OAdf1s4tgVO034Ek=;
        b=TCqKkBJfezrskg+SQTaSFphPv8YF0ikvjd8b0ruRL7fuz5GIGcd6dCTU8xZYVdSdiM
         t+sun1h9UlmzH+qJ4jIffygrYsElmw7ZtB4rE6aZ3pxTmMrmWL6hvyVF71KXcRHpdhIK
         U5Q1c90211FFed/yM4Qd6t9R8kkVKtm62BTLVX0mfWNRjLeOfV/DDyeNLlrgemWHcrkd
         NwOOa4+GL/1Vm471hFw9ykpAo/VVibWiTfD8s215G3EL7Y+TGq3kE+n9xluSWQnouZtT
         SD0QjYDHgq3R5Q6Do9YDwU7dsIa2GyqvS1Bw6ECd1SUj2JHteFzBYHJR6je5xzdeGUzv
         aJxA==
X-Gm-Message-State: AOAM532r3eI8mK1EeF4lLBAz5H9hUljT/JlDkeJN5R7O8KHMn4T/1dRG
        Mre+EzI/AJKvHNpTjrftv3ObCw==
X-Google-Smtp-Source: ABdhPJy02d6PuLqzgAq/C7WYQ4o20b9EkdSeKjOtKyX9RsnbBO2crRtsnX8iROEMiTfrNV01u4ebFg==
X-Received: by 2002:a5d:63cb:: with SMTP id c11mr30752734wrw.49.1620123586669;
        Tue, 04 May 2021 03:19:46 -0700 (PDT)
Received: from arch-thunder.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id d5sm16293789wrv.43.2021.05.04.03.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 03:19:46 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sebastian Siewior <bigeasy@linutronix.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH 2/7] usb: isp1760: remove platform data struct and code
Date:   Tue,  4 May 2021 11:19:05 +0100
Message-Id: <20210504101910.18619-3-rui.silva@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210504101910.18619-1-rui.silva@linaro.org>
References: <20210504101910.18619-1-rui.silva@linaro.org>
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

