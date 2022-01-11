Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C70648B816
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 21:15:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243345AbiAKUP2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 15:15:28 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:59742
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243115AbiAKUPZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 15:15:25 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A372E40A54
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 20:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641932119;
        bh=d5pGhmqJ0JRQXzooQo2hGyeaXgPlX3UQHjrncRGcciU=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=wBJOjjswoGepclCBIAiGLhrqgneLa+bqBgnPgQSdVCGRU9a80LBwrggqL8tOGpKu3
         AXaicg7fclnRAxmAdcmqZLAZp5eZWEK2ISVNLJeuPffORO1O5bim9fYICDrSUo+AHM
         EpoaaCASIAcHIgkDjFWMdM8P113TAa7oCWZHbaVlCg27d1faJ0cAWBzjMJrvAsmf7b
         +YnNm9fJeMtDmYr3p5rJROcPvgYOjxguV+8iZ4JTU+vFbnS/fX8SG4npRcTR++02hr
         En90iX9V7Yb9WSMLWJcwUgiw+oNb2aPcV5p2RLWUACeRKz6sgDVpuDaKc/0zEbs7qV
         9a7GbPnGNSvMQ==
Received: by mail-ed1-f71.google.com with SMTP id z10-20020a05640235ca00b003f8efab3342so212191edc.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 12:15:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d5pGhmqJ0JRQXzooQo2hGyeaXgPlX3UQHjrncRGcciU=;
        b=zT97VcxCMTIJ30ULJUuPzyGj2zVjxyO3oNkbI6ecxTEr+7gMigboLrbEgDm8PhtqsA
         Xak+Z0yJfMDe/qmKuFEIrBQXsCuVKeqaPEsths8zF1zTHGsyputx7MNTKAs4kTpck9pG
         +Fsd9cfakaNcgMSx7sHQ9hLafc6JoadSCPkLQ8kF0niW3+HM/LtPCJVMXyI+DACRWu0y
         68l5vObcM1zZTsmnsr6g/kDxOegS+u3AHeVyqkzAL5MdYdMv/hMxDR95RRE5It15DakC
         j6D0XcMRuU9vLAe6FPhRAFKLTEdGCTYz/PQMCYb+eQ95L8seb1UDQJaedeyEy+zH6Lcc
         Ol2w==
X-Gm-Message-State: AOAM533Nilcnj2bxkIMTN7WhiPhfCpHMqn8YM0KpY8aRNCsdqTUNF2RU
        Cua6q3Xvw9mlsOXYqWQAImsSHY4z0ICNBLwG6Z+N/squM8EXbKJDRdqDC96LJoxEwYwxDSgUTbi
        qD+XjkbxlmtQQBAZqABwRdSB6qhF0kWNn2+Di550=
X-Received: by 2002:a17:907:ea2:: with SMTP id ho34mr4926900ejc.168.1641932117428;
        Tue, 11 Jan 2022 12:15:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyVXIzemSiT3Glycmt0qLBDrfwwgWfKCYqgbL01msK36gJb1e8KFMLVuCJzheYC99dB0RaOlw==
X-Received: by 2002:a17:907:ea2:: with SMTP id ho34mr4926894ejc.168.1641932117257;
        Tue, 11 Jan 2022 12:15:17 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id f23sm3852212ejj.128.2022.01.11.12.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 12:15:16 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Tomasz Figa <tomasz.figa@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Alim Akhtar <alim.akhtar@gmail.com>, stable@vger.kernel.org
Subject: [PATCH v2 01/28] pinctrl: samsung: drop pin banks references on error paths
Date:   Tue, 11 Jan 2022 21:13:59 +0100
Message-Id: <20220111201426.326777-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
References: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The driver iterates over its devicetree children with
for_each_child_of_node() and stores for later found node pointer.  This
has to be put in error paths to avoid leak during re-probing.

Fixes: ab663789d697 ("pinctrl: samsung: Match pin banks with their device nodes")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 drivers/pinctrl/samsung/pinctrl-samsung.c | 30 +++++++++++++++++------
 1 file changed, 23 insertions(+), 7 deletions(-)

diff --git a/drivers/pinctrl/samsung/pinctrl-samsung.c b/drivers/pinctrl/samsung/pinctrl-samsung.c
index 8941f658e7f1..b19ebc43d886 100644
--- a/drivers/pinctrl/samsung/pinctrl-samsung.c
+++ b/drivers/pinctrl/samsung/pinctrl-samsung.c
@@ -1002,6 +1002,16 @@ samsung_pinctrl_get_soc_data_for_of_alias(struct platform_device *pdev)
 	return &(of_data->ctrl[id]);
 }
 
+static void samsung_banks_of_node_put(struct samsung_pinctrl_drv_data *d)
+{
+	struct samsung_pin_bank *bank;
+	unsigned int i;
+
+	bank = d->pin_banks;
+	for (i = 0; i < d->nr_banks; ++i, ++bank)
+		of_node_put(bank->of_node);
+}
+
 /* retrieve the soc specific data */
 static const struct samsung_pin_ctrl *
 samsung_pinctrl_get_soc_data(struct samsung_pinctrl_drv_data *d,
@@ -1116,19 +1126,19 @@ static int samsung_pinctrl_probe(struct platform_device *pdev)
 	if (ctrl->retention_data) {
 		drvdata->retention_ctrl = ctrl->retention_data->init(drvdata,
 							  ctrl->retention_data);
-		if (IS_ERR(drvdata->retention_ctrl))
-			return PTR_ERR(drvdata->retention_ctrl);
+		if (IS_ERR(drvdata->retention_ctrl)) {
+			ret = PTR_ERR(drvdata->retention_ctrl);
+			goto err_put_banks;
+		}
 	}
 
 	ret = samsung_pinctrl_register(pdev, drvdata);
 	if (ret)
-		return ret;
+		goto err_put_banks;
 
 	ret = samsung_gpiolib_register(pdev, drvdata);
-	if (ret) {
-		samsung_pinctrl_unregister(pdev, drvdata);
-		return ret;
-	}
+	if (ret)
+		goto err_unregister;
 
 	if (ctrl->eint_gpio_init)
 		ctrl->eint_gpio_init(drvdata);
@@ -1138,6 +1148,12 @@ static int samsung_pinctrl_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, drvdata);
 
 	return 0;
+
+err_unregister:
+	samsung_pinctrl_unregister(pdev, drvdata);
+err_put_banks:
+	samsung_banks_of_node_put(drvdata);
+	return ret;
 }
 
 /*
-- 
2.32.0

