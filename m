Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5272D704E4C
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 14:56:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233271AbjEPM4Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 08:56:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233285AbjEPM4S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 08:56:18 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D56C7170E
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 05:55:48 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2ac7462d9f1so151969671fa.2
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 05:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684241744; x=1686833744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OMwKntuZiWZlps+UjnlWk+jBiexFAEwBosD6Wyn0I9A=;
        b=KkBp8x9/KuCNgqi5LqNxZdVhA17gBOVCQVbh48a7pySoiXd5VRWX+Ey96bcLzkoY1S
         GuNCoYeQPSHYrtGwdT+G0SBGAVSK71Xc1ouBjpz+IIxWH+NJTHW/dWfcl+Hf+XGjazAI
         /wBYeRcfdVzFRa/9XkbmrY4ulFF5roW3lSsNzZtgOiyXWYDNzn22Ry/KS4WWH/vZvCtr
         3iaSL5PwNy+ddiqOAFRsNAR5eH61x3hNuxiP+uCIChYEEX2749PviEMyTwXeGkV7a3mr
         jLMhx3y1Gmt9K+3C/wEi0v2a+LuT40HS1l7Hn/7HyecjCjSSUKAFG1mfshnej9pZHzP5
         MUfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684241744; x=1686833744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OMwKntuZiWZlps+UjnlWk+jBiexFAEwBosD6Wyn0I9A=;
        b=PoaoTdlKFqacYFK4CMqRXSJgdKuMo8D2rSmwZenwcxV4tZ0j0hubbRFeK3UHDT2i4j
         RM0juHmbBeGxXTO2XjmAF312+a/XngF5bVUA/Bgtf5qRr72yQ6jAG15Dw0v6K7/6A3Xx
         /1lNcG/OHhhdZfw9h6vDHcTg0noagVrvgte1fDIueSk6YwNm5dWTKlHVwutMtNbH/X2H
         B3RGfKXOW66Y+n2MmrmcLuw1ehcOu54Zt8EigUcBBR1czi/sLDNIRIOfwbGwyj2wt8AX
         vWaTItdEWQusTOcgJeDlNGw5oaOnqovr1z3u5iWYY1o7eCUqWa/jemLdNcnzWmmyLLXG
         0UgQ==
X-Gm-Message-State: AC+VfDyd+0dIFm/6PLZd+AQPWjU1qdKyoyXfhKnZDZO8PO/G7+413x4v
        99A15TnExeu1fXD183d0RVElCg==
X-Google-Smtp-Source: ACHHUZ7URbgxM3deqsVVcddMzg3AxQ50GbmmyTFpMekTCsfy1oG0HQHzCIasz5WzQEwBPqYYA+T/jg==
X-Received: by 2002:a2e:b70b:0:b0:2ac:83bb:ab46 with SMTP id j11-20020a2eb70b000000b002ac83bbab46mr7935515ljo.30.1684241743843;
        Tue, 16 May 2023 05:55:43 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id o23-20020a2e7317000000b002add1f4a92asm1647789ljc.113.2023.05.16.05.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 05:55:43 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 16 May 2023 14:55:34 +0200
Subject: [PATCH v3 4/7] dmaengine: ste_dma40: Remove platform data
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230417-ux500-dma40-cleanup-v3-4-60bfa6785968@linaro.org>
References: <20230417-ux500-dma40-cleanup-v3-0-60bfa6785968@linaro.org>
In-Reply-To: <20230417-ux500-dma40-cleanup-v3-0-60bfa6785968@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Ux500 is device tree-only since ages. Delete the
platform data header and push it into or next to the driver
instead.

Drop the non-DT probe path since this will not happen.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/dma/ste_dma40.c                            |  56 ++++++++----
 .../dma-ste-dma40.h => drivers/dma/ste_dma40.h     | 101 +--------------------
 drivers/dma/ste_dma40_ll.c                         |   3 +-
 3 files changed, 41 insertions(+), 119 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 813de4efced5..48c9606cfd46 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -23,11 +23,39 @@
 #include <linux/of_dma.h>
 #include <linux/amba/bus.h>
 #include <linux/regulator/consumer.h>
-#include <linux/platform_data/dma-ste-dma40.h>
 
 #include "dmaengine.h"
+#include "ste_dma40.h"
 #include "ste_dma40_ll.h"
 
+/**
+ * struct stedma40_platform_data - Configuration struct for the dma device.
+ *
+ * @dev_tx: mapping between destination event line and io address
+ * @dev_rx: mapping between source event line and io address
+ * @disabled_channels: A vector, ending with -1, that marks physical channels
+ * that are for different reasons not available for the driver.
+ * @soft_lli_chans: A vector, that marks physical channels will use LLI by SW
+ * which avoids HW bug that exists in some versions of the controller.
+ * SoftLLI introduces relink overhead that could impact performace for
+ * certain use cases.
+ * @num_of_soft_lli_chans: The number of channels that needs to be configured
+ * to use SoftLLI.
+ * @use_esram_lcla: flag for mapping the lcla into esram region
+ * @num_of_memcpy_chans: The number of channels reserved for memcpy.
+ * @num_of_phy_chans: The number of physical channels implemented in HW.
+ * 0 means reading the number of channels from DMA HW but this is only valid
+ * for 'multiple of 4' channels, like 8.
+ */
+struct stedma40_platform_data {
+	int				 disabled_channels[STEDMA40_MAX_PHYS];
+	int				*soft_lli_chans;
+	int				 num_of_soft_lli_chans;
+	bool				 use_esram_lcla;
+	int				 num_of_memcpy_chans;
+	int				 num_of_phy_chans;
+};
+
 #define D40_NAME "dma40"
 
 #define D40_PHY_CHAN -1
@@ -2269,7 +2297,7 @@ d40_prep_sg(struct dma_chan *dchan, struct scatterlist *sg_src,
 	return NULL;
 }
 
-bool stedma40_filter(struct dma_chan *chan, void *data)
+static bool stedma40_filter(struct dma_chan *chan, void *data)
 {
 	struct stedma40_chan_cfg *info = data;
 	struct d40_chan *d40c =
@@ -2288,7 +2316,6 @@ bool stedma40_filter(struct dma_chan *chan, void *data)
 
 	return err == 0;
 }
-EXPORT_SYMBOL(stedma40_filter);
 
 static void __d40_set_prio_rt(struct d40_chan *d40c, int dev_type, bool src)
 {
@@ -3517,16 +3544,9 @@ static int __init d40_probe(struct platform_device *pdev)
 	int num_reserved_chans;
 	u32 val;
 
-	if (!plat_data) {
-		if (np) {
-			if (d40_of_probe(pdev, np)) {
-				ret = -ENOMEM;
-				goto report_failure;
-			}
-		} else {
-			d40_err(dev, "No pdata or Device Tree provided\n");
-			goto report_failure;
-		}
+	if (d40_of_probe(pdev, np)) {
+		ret = -ENOMEM;
+		goto report_failure;
 	}
 
 	base = d40_hw_detect_init(pdev);
@@ -3650,11 +3670,11 @@ static int __init d40_probe(struct platform_device *pdev)
 
 	d40_hw_init(base);
 
-	if (np) {
-		ret = of_dma_controller_register(np, d40_xlate, NULL);
-		if (ret)
-			dev_err(dev,
-				"could not register of_dma_controller\n");
+	ret = of_dma_controller_register(np, d40_xlate, NULL);
+	if (ret) {
+		dev_err(dev,
+			"could not register of_dma_controller\n");
+		goto destroy_cache;
 	}
 
 	dev_info(base->dev, "initialized\n");
diff --git a/include/linux/platform_data/dma-ste-dma40.h b/drivers/dma/ste_dma40.h
similarity index 51%
rename from include/linux/platform_data/dma-ste-dma40.h
rename to drivers/dma/ste_dma40.h
index 10641633facc..c697bfe16a01 100644
--- a/include/linux/platform_data/dma-ste-dma40.h
+++ b/drivers/dma/ste_dma40.h
@@ -1,19 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) ST-Ericsson SA 2007-2010
- * Author: Per Forlin <per.forlin@stericsson.com> for ST-Ericsson
- * Author: Jonas Aaberg <jonas.aberg@stericsson.com> for ST-Ericsson
- */
-
 
 #ifndef STE_DMA40_H
 #define STE_DMA40_H
 
-#include <linux/dmaengine.h>
-#include <linux/scatterlist.h>
-#include <linux/workqueue.h>
-#include <linux/interrupt.h>
-
 /*
  * Maxium size for a single dma descriptor
  * Size is limited to 16 bits.
@@ -118,92 +107,4 @@ struct stedma40_chan_cfg {
 	int					 phy_channel;
 };
 
-/**
- * struct stedma40_platform_data - Configuration struct for the dma device.
- *
- * @dev_tx: mapping between destination event line and io address
- * @dev_rx: mapping between source event line and io address
- * @disabled_channels: A vector, ending with -1, that marks physical channels
- * that are for different reasons not available for the driver.
- * @soft_lli_chans: A vector, that marks physical channels will use LLI by SW
- * which avoids HW bug that exists in some versions of the controller.
- * SoftLLI introduces relink overhead that could impact performace for
- * certain use cases.
- * @num_of_soft_lli_chans: The number of channels that needs to be configured
- * to use SoftLLI.
- * @use_esram_lcla: flag for mapping the lcla into esram region
- * @num_of_memcpy_chans: The number of channels reserved for memcpy.
- * @num_of_phy_chans: The number of physical channels implemented in HW.
- * 0 means reading the number of channels from DMA HW but this is only valid
- * for 'multiple of 4' channels, like 8.
- */
-struct stedma40_platform_data {
-	int				 disabled_channels[STEDMA40_MAX_PHYS];
-	int				*soft_lli_chans;
-	int				 num_of_soft_lli_chans;
-	bool				 use_esram_lcla;
-	int				 num_of_memcpy_chans;
-	int				 num_of_phy_chans;
-};
-
-#ifdef CONFIG_STE_DMA40
-
-/**
- * stedma40_filter() - Provides stedma40_chan_cfg to the
- * ste_dma40 dma driver via the dmaengine framework.
- * does some checking of what's provided.
- *
- * Never directly called by client. It used by dmaengine.
- * @chan: dmaengine handle.
- * @data: Must be of type: struct stedma40_chan_cfg and is
- * the configuration of the framework.
- *
- *
- */
-
-bool stedma40_filter(struct dma_chan *chan, void *data);
-
-/**
- * stedma40_slave_mem() - Transfers a raw data buffer to or from a slave
- * (=device)
- *
- * @chan: dmaengine handle
- * @addr: source or destination physicall address.
- * @size: bytes to transfer
- * @direction: direction of transfer
- * @flags: is actually enum dma_ctrl_flags. See dmaengine.h
- */
-
-static inline struct
-dma_async_tx_descriptor *stedma40_slave_mem(struct dma_chan *chan,
-					    dma_addr_t addr,
-					    unsigned int size,
-					    enum dma_transfer_direction direction,
-					    unsigned long flags)
-{
-	struct scatterlist sg;
-	sg_init_table(&sg, 1);
-	sg.dma_address = addr;
-	sg.length = size;
-
-	return dmaengine_prep_slave_sg(chan, &sg, 1, direction, flags);
-}
-
-#else
-static inline bool stedma40_filter(struct dma_chan *chan, void *data)
-{
-	return false;
-}
-
-static inline struct
-dma_async_tx_descriptor *stedma40_slave_mem(struct dma_chan *chan,
-					    dma_addr_t addr,
-					    unsigned int size,
-					    enum dma_transfer_direction direction,
-					    unsigned long flags)
-{
-	return NULL;
-}
-#endif
-
-#endif
+#endif /* STE_DMA40_H */
diff --git a/drivers/dma/ste_dma40_ll.c b/drivers/dma/ste_dma40_ll.c
index b5287c661eb7..4c489b126cb2 100644
--- a/drivers/dma/ste_dma40_ll.c
+++ b/drivers/dma/ste_dma40_ll.c
@@ -6,8 +6,9 @@
  */
 
 #include <linux/kernel.h>
-#include <linux/platform_data/dma-ste-dma40.h>
+#include <linux/dmaengine.h>
 
+#include "ste_dma40.h"
 #include "ste_dma40_ll.h"
 
 static u8 d40_width_to_bits(enum dma_slave_buswidth width)

-- 
2.40.1

