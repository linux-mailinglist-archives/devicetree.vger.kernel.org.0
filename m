Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56035532BDE
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 16:02:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238063AbiEXOCP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 10:02:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238071AbiEXOCO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 10:02:14 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 683D74130C
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 07:02:13 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id bg25so10651794wmb.4
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 07:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5mhXJbAqcgTA4KWN8H8AXnpke49ZRdi4wrpj76K6Kgc=;
        b=G4IYSvljgIaJ8D7CbXZ8ZTGNlBhC8ZJEkiFFe4/VgEZ4ayxT9sz/RUrl+u+mGqF6D7
         pX+r4VIucEoGZ+xWS5l71vorfyTLIRDipriFyM7i08So4Po/MDdKVnLoHm0W3MF7d2Ja
         8286NQ7ZOwCXSTklo9hRhkdd5b1DWPy55Tj6sDAn7W6jFeHYHC8hS/NBUVkBtiBvGZa7
         kFKvZK8tWbOsCjcUIqhng4VhdIrW2mXtqFYEHaOFHlwkEqUdVS/SyHkplXO3bQ6BILAX
         tN85jZ6H5Yd/lLpipDHEItXggB1uewAL6vm4ew3kold8e3q9Lt1U+XCEUy9e6wN9pcBg
         sfqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5mhXJbAqcgTA4KWN8H8AXnpke49ZRdi4wrpj76K6Kgc=;
        b=e4bFbsP0SqPqfXIMbSc7K/uZYxCw5oGgPFFWTWwRA6BKaUR6XGDNy3ojo9uP06AKP9
         Eir2VmT4NwzHmIi4k4xtgC5n7DTdHTm1a0RpG2EJlgmUw8eb/tQVZZujesZphB9j78ZD
         brPr9/mnF80L31VYw5gR+G0Irz3GtKvT0dfKPs3zU+XegM+efIJNdS2/bDgYuXTAKmip
         mpR1mzDY2xD/3+Gk+WbC6lBH4R090C2Fe21f+XI5s+o0XWRZrGvYuaLTgWzFrLKkcN4z
         IWE2ro6xGqDvf+tsi32UHCw9brduZGNjioPEU0TV0m5XMABBSSt9AVtivhtNhIC8bKbV
         09WA==
X-Gm-Message-State: AOAM531nhtOCQadcG5Nyouvz7ATgr+KTSVVmiFZy//K8kbnOPX/S7CZS
        wPjsQYP1W/BrT+raC0mkn96c3w==
X-Google-Smtp-Source: ABdhPJxGjXM5D1+3NyM22sjywl+lIjmmgPdGLTImyxax0NR8FmreG4ZYBqLqU8ZJPz38USbY0UUT/Q==
X-Received: by 2002:a05:600c:4fcc:b0:397:5a83:fac5 with SMTP id o12-20020a05600c4fcc00b003975a83fac5mr3435937wmq.107.1653400931852;
        Tue, 24 May 2022 07:02:11 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id f9-20020adfc989000000b0020c5253d8e0sm12829030wrh.44.2022.05.24.07.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 May 2022 07:02:11 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robert.foss@linaro.org, todor.too@gmail.com, agross@kernel.org,
        bjorn.andersson@linaro.org
Cc:     vladimir.zapolskiy@linaro.org, mchehab@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, mmitkov@quicinc.com, jgrahsl@snap.com,
        hfink@snap.com, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v2 1/4] i2c: qcom-cci: Fix ordering of pm_runtime_xx and i2c_add_adapter
Date:   Tue, 24 May 2022 15:02:04 +0100
Message-Id: <20220524140207.2758605-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220524140207.2758605-1-bryan.odonoghue@linaro.org>
References: <20220524140207.2758605-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When we compile-in the CCI along with the imx412 driver and run on the RB5
we see that i2c_add_adapter() causes the probe of the imx412 driver to
happen.

This probe tries to perform an i2c xfer() and the xfer() in i2c-qcom-cci.c
fails on pm_runtime_get() because the i2c-qcom-cci.c::probe() function has
not completed to pm_runtime_enable(dev).

Fix this sequence by ensuring pm_runtime_xxx() calls happen prior to adding
the i2c adapter.

Fixes: e517526195de ("i2c: Add Qualcomm CCI I2C driver")
Reported-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-cci.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-cci.c b/drivers/i2c/busses/i2c-qcom-cci.c
index 5c7cc862f08f..90d02effeae9 100644
--- a/drivers/i2c/busses/i2c-qcom-cci.c
+++ b/drivers/i2c/busses/i2c-qcom-cci.c
@@ -638,6 +638,11 @@ static int cci_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto error;
 
+	pm_runtime_set_autosuspend_delay(dev, MSEC_PER_SEC);
+	pm_runtime_use_autosuspend(dev);
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+
 	for (i = 0; i < cci->data->num_masters; i++) {
 		if (!cci->master[i].cci)
 			continue;
@@ -649,14 +654,13 @@ static int cci_probe(struct platform_device *pdev)
 		}
 	}
 
-	pm_runtime_set_autosuspend_delay(dev, MSEC_PER_SEC);
-	pm_runtime_use_autosuspend(dev);
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
-
 	return 0;
 
 error_i2c:
+	pm_runtime_put(dev);
+	pm_runtime_disable(dev);
+	pm_runtime_dont_use_autosuspend(dev);
+
 	for (--i ; i >= 0; i--) {
 		if (cci->master[i].cci) {
 			i2c_del_adapter(&cci->master[i].adap);
-- 
2.36.1

