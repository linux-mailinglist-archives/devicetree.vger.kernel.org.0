Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9F4C579611
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 11:19:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237206AbiGSJSM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 05:18:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237184AbiGSJSF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 05:18:05 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2660252B3
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 02:18:02 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id j1so16181731wrs.4
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 02:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7sysAA+7rUYPU1adrhA9a7CIYRlB/YUN+4vaR7wZ9RE=;
        b=ijzRhrkmLikS+R0gesXzCJ74FzCcjbekplXoiZ+iBUSa9EQx/vIup3ZndV4L+2hUNy
         dUd+uXtmnDKFvwA4Y3nUGxZJf/PloNOsxsJSTTZph21azGmXThXmyphDj7xhzNWMmOGG
         I2FRs425DM3bt4cK08Tornj2UdDMsaeQUsor3SFDpdvBTfF0HGb1rI0kNkysH+TauZyb
         dHx8eaOgkzNE1OjCpMtj1E6f6tQ3bwa65s4zPFS7ES1Tx4JSW6kyXAZk5HwQ8u1MvKd9
         R+8LIDVTSxPE5d1ZCFK/292XuaDkA0M9XVTJ4QgxLZxNKi0EYbOcnHxR/exWi0gRVUdp
         2hgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7sysAA+7rUYPU1adrhA9a7CIYRlB/YUN+4vaR7wZ9RE=;
        b=MRvS9dKHIavgWxALyJqMqwCgn3UgFyQKcBgWC9zGDNIw6n/tJM7058Zrt7QgwgI9d2
         U9+BVl8r0RCYMnrUvFTUgKq6HjPf8kB4N5NYhhZOy8VyRw33VffNpFdP0G7g6kfW2oDw
         HCfqZp2poEcM0LfzhsSedm1PP163+mLrlsk2Px4HS81O0lPo8L4c9odX3KCJi+FRue4p
         +0A+cpIIjIkqbGVE37aZuMPqR14qPqgtqPbPLsnJNeAMAFtr2HyiQe6CaRuT72WKZMwF
         l8qg3bExlC0lvr14u2oik61j+u9g895tyB0CU6eAEDYSjElAnocJIQsBJO433rgomHyh
         yDRg==
X-Gm-Message-State: AJIora8NyHi2tZOnaYmneHwoJBAAEfvnWkuanGBV3sM5FhFASXYDxmBn
        S6n8jy4E0Md1jVgf57URdMNp/A==
X-Google-Smtp-Source: AGRyM1vGFISv4eWsp75ctQeAvGatpAUDTs/XeI8mXWR4VI3Zvz6tCwQYcS6Z5MrxvgRr1M+xyZVzFg==
X-Received: by 2002:a5d:6da8:0:b0:21d:bddf:b61b with SMTP id u8-20020a5d6da8000000b0021dbddfb61bmr24163308wrs.664.1658222281257;
        Tue, 19 Jul 2022 02:18:01 -0700 (PDT)
Received: from localhost.localdomain (192.201.68.85.rev.sfr.net. [85.68.201.192])
        by smtp.gmail.com with ESMTPSA id bk19-20020a0560001d9300b0021d63fe0f03sm12944281wrb.12.2022.07.19.02.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 02:18:00 -0700 (PDT)
From:   Jerome Neanne <jneanne@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        nm@ti.com, kristo@kernel.org
Cc:     khilman@baylibre.com, narmstrong@baylibre.com, msp@baylibre.com,
        j-keerthy@ti.c, lee.jones@linaro.org, jneanne@baylibre.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 07/14] mfd: tps65219: Add power-button support
Date:   Tue, 19 Jul 2022 11:17:35 +0200
Message-Id: <20220719091742.3221-8-jneanne@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220719091742.3221-1-jneanne@baylibre.com>
References: <20220719091742.3221-1-jneanne@baylibre.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Markus Schneider-Pargmann <msp@baylibre.com>

Using a power-button on the EN/PB/VSENSE pin of TPS65219 is optional, so
this driver adds the mfd cell for tps65219-pwrbutton only if needed. Two
interrupts are passed to the driver.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
---
 drivers/mfd/tps65219.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/mfd/tps65219.c b/drivers/mfd/tps65219.c
index b01a62c09885..f9bfc38240ea 100644
--- a/drivers/mfd/tps65219.c
+++ b/drivers/mfd/tps65219.c
@@ -336,7 +336,10 @@ static int tps65219_probe(struct i2c_client *client,
 	struct tps65219 *tps;
 	int ret;
 	unsigned int chipid;
+	bool pwr_button;
 	bool sys_pwr;
+	struct mfd_cell cells[TPS65219_MAX_CELLS];
+	int nr_cells = 0;
 
 	tps = devm_kzalloc(&client->dev, sizeof(*tps), GFP_KERNEL);
 	if (!tps)
@@ -365,9 +368,16 @@ static int tps65219_probe(struct i2c_client *client,
 		return ret;
 	}
 
-	ret = devm_mfd_add_devices(tps->dev, PLATFORM_DEVID_AUTO, tps65219_cells,
-				   ARRAY_SIZE(tps65219_cells), NULL, 0,
-				   NULL);
+	memcpy(&cells[nr_cells++], &tps65219_regulator_cell,
+	       sizeof(tps65219_regulator_cell));
+	pwr_button = of_property_read_bool(tps->dev->of_node, "power-button");
+	if (pwr_button)
+		memcpy(&cells[nr_cells++], &tps65219_pwrbutton_cell,
+		       sizeof(tps65219_pwrbutton_cell));
+
+	ret = devm_mfd_add_devices(tps->dev, PLATFORM_DEVID_AUTO, cells,
+				   nr_cells, NULL, 0,
+				   regmap_irq_get_domain(tps->irq_data));
 	if (ret) {
 		dev_err(tps->dev, "mfd_add_devices failed: %d\n", ret);
 		return ret;
-- 
2.17.1

