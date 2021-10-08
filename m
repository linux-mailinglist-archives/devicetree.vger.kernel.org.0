Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD6614261D7
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241532AbhJHB1m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234356AbhJHB1d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:33 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DAF1C061714
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:38 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id m3so32596150lfu.2
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B1tfgMXD/HCZM2/dbxQ/czHnewIDG6QY34tUjSKvwfk=;
        b=HREMM7YvdSBGH5yCfeBE1GD/MG6qFX3jZvB/hGwR7HZ7db3jFWbR6EjuTL16AfB5UQ
         koYroB34dm/ZoDXxlxZVaIHC4zdDpnu6Vy7uRPrWOm4t2C6XxRFlKNFN4bTUuSTVTNQY
         vWACLWBR1Dx5Fz8akQdBCY0VkhkjI8/HeGv+6PNn0pwg170Zq0EUF59oUw3iZN0/fLHe
         czilOud48xH7CG4PmSkcxH9wRtV9Z1XSRrA24s+ddMsvShtrB0qTXgf9QcU0USltGVH/
         1Do+dge+n5Hnn6CI7GkrIBwFtvS0ZZ7AmfQJzIjXrhHvobw1K1U5m8Eo4xvBONkk8TOi
         wjZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B1tfgMXD/HCZM2/dbxQ/czHnewIDG6QY34tUjSKvwfk=;
        b=aVrBtcUmJrCSykQT4UtNXE9zBUV32OZlCWgSct11SV6FxXIgTdwxQT0ChhZUqISMPQ
         LZ9ftZf5g1k2By1TwFEKLVWWcFZuuDv5dJfdW8JdZ5ZygVPJ1b+7Xwp+spDQL/YcmHl2
         BCAHj6oczBVYxCK/DPg7p41LB6iU9DBLcRCG6uUw7VPAneFKuhV9pwDMv5SP+1sPQuiO
         5JkdwHMx9jN30NF+Jw/t1aS11TEahqRX7FFD7Qxs9LrxrjppKaW2UxnNrcGTgRMUypOr
         vEWCTJlAhJDzyw1FmT5Us+iyx8Vp81QjEs403mJLpKtzmMgbqTWS6Obqx/Ya5xY2sgc3
         s5pQ==
X-Gm-Message-State: AOAM531Mo4ZW368FaJhHNg9Ypk9226dpotTu4gQ//s7q+X7dybnniMzi
        2bF+Jn7zAhCHfeV3eAy+tblAgg==
X-Google-Smtp-Source: ABdhPJzKdd8/qODtRD3p+6nMYsqC38bIDPZxHTkZ4qvkzYmr0yp6kv6J7YzSEnI+Jxi416yc+t6QVA==
X-Received: by 2002:a05:6512:96f:: with SMTP id v15mr7510057lft.455.1633656336652;
        Thu, 07 Oct 2021 18:25:36 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s4sm112875ljp.115.2021.10.07.18.25.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 18:25:36 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 13/25] pinctrl: qcom: ssbi-mpp: hardcode IRQ counts
Date:   Fri,  8 Oct 2021 04:25:12 +0300
Message-Id: <20211008012524.481877-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The probing of this driver calls platform_irq_count, which will
setup all of the IRQs that are configured in device tree. In
preparation for converting this driver to be a hierarchical IRQ
chip, hardcode the IRQ count based on the hardware type so that all
the IRQs are not configured immediately and are configured on an
as-needed basis later in the boot process.

This change will also allow for the removal of the interrupts property
later in this patch series once the hierarchical IRQ chip support is in.

This patch also removes the generic qcom,ssbi-mpp OF match since we
don't know the number of pins. All of the existing upstream bindings
already include the more-specific binding.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c b/drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c
index 92e7f2602847..a90cada1d657 100644
--- a/drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c
+++ b/drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c
@@ -733,13 +733,12 @@ static int pm8xxx_pin_populate(struct pm8xxx_mpp *pctrl,
 }
 
 static const struct of_device_id pm8xxx_mpp_of_match[] = {
-	{ .compatible = "qcom,pm8018-mpp" },
-	{ .compatible = "qcom,pm8038-mpp" },
-	{ .compatible = "qcom,pm8058-mpp" },
-	{ .compatible = "qcom,pm8917-mpp" },
-	{ .compatible = "qcom,pm8821-mpp" },
-	{ .compatible = "qcom,pm8921-mpp" },
-	{ .compatible = "qcom,ssbi-mpp" },
+	{ .compatible = "qcom,pm8018-mpp", .data = (void *) 6 },
+	{ .compatible = "qcom,pm8038-mpp", .data = (void *) 6 },
+	{ .compatible = "qcom,pm8058-mpp", .data = (void *) 12 },
+	{ .compatible = "qcom,pm8821-mpp", .data = (void *) 4 },
+	{ .compatible = "qcom,pm8917-mpp", .data = (void *) 10 },
+	{ .compatible = "qcom,pm8921-mpp", .data = (void *) 12 },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, pm8xxx_mpp_of_match);
@@ -750,19 +749,14 @@ static int pm8xxx_mpp_probe(struct platform_device *pdev)
 	struct pinctrl_pin_desc *pins;
 	struct pm8xxx_mpp *pctrl;
 	int ret;
-	int i, npins;
+	int i;
 
 	pctrl = devm_kzalloc(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
 	if (!pctrl)
 		return -ENOMEM;
 
 	pctrl->dev = &pdev->dev;
-	npins = platform_irq_count(pdev);
-	if (!npins)
-		return -EINVAL;
-	if (npins < 0)
-		return npins;
-	pctrl->npins = npins;
+	pctrl->npins = (uintptr_t) device_get_match_data(&pdev->dev);
 
 	pctrl->regmap = dev_get_regmap(pdev->dev.parent, NULL);
 	if (!pctrl->regmap) {
-- 
2.30.2

