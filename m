Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B1A2421A9A
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 01:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236155AbhJDXY0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 19:24:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236977AbhJDXYY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 19:24:24 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90227C061766
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 16:22:32 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id b20so78874532lfv.3
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 16:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fSoTwIybzpP2ja1UE0gJTnY+M6QRSJ7ijJBeYL79794=;
        b=Ae1WSuukxg4h733uCGW7Okza8bs4gUBceaq/6+pGiZ71a1WN4m1B3msi4Ni5jbz/n9
         MN/9aubugtLhrM4Nz9w5m9D5r6+NE9Hd2jn4yPC82IuX8MYSCQyt4iMAKKcrZAZs824U
         y2ztkOJHKc603+8ousBzylI+FQSxH8K2vEsIuekDxxF//g7a+nDfLDkdsOcTwwkrfakS
         ldWkmymYB4s0IKIL7tWpyVvXzGGaoKrstVaPy4TG43sLFtAvSglHp3AB9y8dR3AE004J
         lTcLPEilhXsN5lwt6QOT5WUWf2wN1luNYd3/InUx73wpBl2Lykx9qJ+7WY5XJ6X+slsd
         EAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fSoTwIybzpP2ja1UE0gJTnY+M6QRSJ7ijJBeYL79794=;
        b=xR2TKpXLU8dD+hDR1W9N5xq7lBGZgySFGSB1HoCt8YncAytmFxxLswYz1o7Zpd0b/z
         q2eXIdDgPwLcG3RRwQgZgORVchR1knJzTFMrfo/nLex17ZsBv1FylRlYPZIuOP0lX4at
         YJuziWnoJxotHflcaIUt1yakQg4HfM+JqA6qOIiuqcYgMnx7IcDnPNWdAXcpp0Y83XV4
         Pq2qht6Fd/XlAYg1BWB91VdvZo0egU9Y7hx7y5G8InWBSHKCWpFZ4u5r2RFAwIt9tEKV
         Aro5nzW3Fbqb7LgFpAQR9zpB3ql7WIv7F9oPpj90ubexDKdzFt6+vQeZ1/i3VrC8hikE
         mJRA==
X-Gm-Message-State: AOAM533SDvdqbGbLlo7L613nH9Nz4ETPjvjgV+9StS+xWQKAZYFJ8gXp
        VMQbB9e+4orOa65tIQ+jUDTvFw==
X-Google-Smtp-Source: ABdhPJxcUw1Z9An+H8gw1UtZ+WdeSO8VclehP2Jir/VFDfeRWbYKcnUMh/Qa1YdJ8zDFizNKcb10Ig==
X-Received: by 2002:a2e:8603:: with SMTP id a3mr19178645lji.142.1633389750937;
        Mon, 04 Oct 2021 16:22:30 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h23sm1786219lja.131.2021.10.04.16.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Oct 2021 16:22:30 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH 5/6] pinctrl: qcom: spmi-mpp: hardcode IRQ counts
Date:   Tue,  5 Oct 2021 02:22:24 +0300
Message-Id: <20211004232225.2260665-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211004232225.2260665-1-dmitry.baryshkov@linaro.org>
References: <20211004232225.2260665-1-dmitry.baryshkov@linaro.org>
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

This patch also removes the generic qcom,spmi-mpp OF match since we
don't know the number of pins. All of the existing upstream bindings
already include the more-specific binding.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pinctrl/qcom/pinctrl-spmi-mpp.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/pinctrl/qcom/pinctrl-spmi-mpp.c b/drivers/pinctrl/qcom/pinctrl-spmi-mpp.c
index 2da9b5f68f3f..a9f994863126 100644
--- a/drivers/pinctrl/qcom/pinctrl-spmi-mpp.c
+++ b/drivers/pinctrl/qcom/pinctrl-spmi-mpp.c
@@ -812,11 +812,7 @@ static int pmic_mpp_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	npins = platform_irq_count(pdev);
-	if (!npins)
-		return -EINVAL;
-	if (npins < 0)
-		return npins;
+	npins = (uintptr_t) device_get_match_data(&pdev->dev);
 
 	BUG_ON(npins > ARRAY_SIZE(pmic_mpp_groups));
 
@@ -912,16 +908,15 @@ static int pmic_mpp_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id pmic_mpp_of_match[] = {
-	{ .compatible = "qcom,pm8019-mpp" },	/* 6 MPP's */
-	{ .compatible = "qcom,pm8841-mpp" },	/* 4 MPP's */
-	{ .compatible = "qcom,pm8916-mpp" },	/* 4 MPP's */
-	{ .compatible = "qcom,pm8941-mpp" },	/* 8 MPP's */
-	{ .compatible = "qcom,pm8950-mpp" },	/* 4 MPP's */
-	{ .compatible = "qcom,pmi8950-mpp" },	/* 4 MPP's */
-	{ .compatible = "qcom,pm8994-mpp" },	/* 8 MPP's */
-	{ .compatible = "qcom,pma8084-mpp" },	/* 8 MPP's */
-	{ .compatible = "qcom,pmi8994-mpp" },	/* 4 MPP's */
-	{ .compatible = "qcom,spmi-mpp" },	/* Generic */
+	{ .compatible = "qcom,pm8019-mpp", .data = (void *) 6 },
+	{ .compatible = "qcom,pm8841-mpp", .data = (void *) 4 },
+	{ .compatible = "qcom,pm8916-mpp", .data = (void *) 4 },
+	{ .compatible = "qcom,pm8941-mpp", .data = (void *) 8 },
+	{ .compatible = "qcom,pm8950-mpp", .data = (void *) 4 },
+	{ .compatible = "qcom,pmi8950-mpp", .data = (void *) 4 },
+	{ .compatible = "qcom,pm8994-mpp", .data = (void *) 8 },
+	{ .compatible = "qcom,pma8084-mpp", .data = (void *) 8 },
+	{ .compatible = "qcom,pmi8994-mpp", .data = (void *) 4 },
 	{ },
 };
 
-- 
2.30.2

