Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 745D737F460
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 10:47:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232141AbhEMIst (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 May 2021 04:48:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232136AbhEMIso (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 May 2021 04:48:44 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 667CFC06138B
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 01:47:34 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id d11so26139689wrw.8
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 01:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DNxyhq7WYEH0U4TtHXig9vqQWs7OAdf1s4tgVO034Ek=;
        b=YNFnAKpPgZ+prGN3gmf1Tc9b1GcpwYrQsFx5zmdVIIIRvITfr76aL0HJyGO5lOuXhD
         1fUMjCHvhsKrnCLSEgnlapDWIvoVEcrQJbRu5p6pi6axi0d8GpWNOb78xSPrNCaqOnCl
         UeijrsRhF5hJg6Wd4OLgeYLhRFSQxYaXXkIqi4UEca3lv4hXVZG3k4w9w4HavyDJwaYK
         0uIqFhttESv1G2jF6BIhUAJaO7QIjZToyk8FKeH2T9AY2rwAKq7eKTKJE7PK11aDaXi4
         opub6d4Rr2/Yo8a2HTC16iZD0HEqDICil9aiRfob7CkThHfvx8xjMLR7IMpdwAGDCp/T
         e2Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DNxyhq7WYEH0U4TtHXig9vqQWs7OAdf1s4tgVO034Ek=;
        b=PUHL/TpZyBkQosONJ1uOudCFSU3lzfKyBSxzbvLyDTBNvaZj8Risdf1F1wPbpsZUnr
         IxtcY1M+XeZQ0zAeTmI5RWCreRTlNfhwk3PuS96oeBUCBdYzDGKABKQWXEX8P5RNWKLj
         3/v9lhjCSHfbhpF793Vtnc4zOHTxHJz0y3YnXozQJgJXEPFv5OD/0Y+5sLtA1BuzyL0d
         UpxC8CcA5l9eVYRWMNUZpGi5XQi6M55YI5IzkUU8XvcfOd/AJQYJR8rOhyaxKlP6PTtt
         sfldKKlUHIgNB6xcKJyYCx17TOWV4fBziZTpHdOFfcOPmfzfE/jNp4QN9fYF3RJkFGQT
         XDNw==
X-Gm-Message-State: AOAM532Bu4gCQ8MF7cV2UvGdS47MFkyrCaDSC+OA9K3t/OWtYe6W/E3Q
        /Ui006u4AWjb30Jcxd9RN21dDQ==
X-Google-Smtp-Source: ABdhPJzGuPGVrvLPcXeifdUqZAS9n0gJiB/zEC2Ir63GVX4gXdP4UXodvqu0uFwMd2nESNE86pw+fQ==
X-Received: by 2002:a5d:4003:: with SMTP id n3mr62804wrp.173.1620895653162;
        Thu, 13 May 2021 01:47:33 -0700 (PDT)
Received: from arch-thunder.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id h15sm1730282wmq.4.2021.05.13.01.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 01:47:32 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sebastian Siewior <bigeasy@linutronix.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v4 4/9] usb: isp1760: remove platform data struct and code
Date:   Thu, 13 May 2021 09:47:12 +0100
Message-Id: <20210513084717.2487366-5-rui.silva@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210513084717.2487366-1-rui.silva@linaro.org>
References: <20210513084717.2487366-1-rui.silva@linaro.org>
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

