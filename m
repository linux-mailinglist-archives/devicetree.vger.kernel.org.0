Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39D824B3E3B
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238692AbiBMW6P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:15 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238693AbiBMW6N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:13 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E32E754BE0
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:06 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id co28so24588212edb.1
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+88MzjtKS6j33NfAKjT3ZitqU5pJbrVp5tu84yNOBq8=;
        b=b7REtzY/JvhBJbXT0D8NzJcn4SOWmJeDBABbRL+qh81EYjhvpor1acp5gx6VaWzpBc
         MA0gXh6UpiLtlnJM7Q2oULI8CXPuW3hDGWweJ7TmlaQAiOdt+NRoAHf6t/qFd1dEKiFh
         xe8UqM5PBIgHMVgvIa97DfxxQpGC5weN7KD0ExPnP3mKvHkOYYhKVCFNVVajWNI3z6sL
         GAfJLwGoZPqSPG5EhXXP9l5sDWEZTNgCTom4RJshogG1egcxRL/oYqvmFqV4D5TssDms
         clPVC7ycCGSjp9BH4tTDTyNUp1z+yEY7c5zaHhJ9EX0TZjFVESXHT/n+1H3oFKKGoRQ4
         42tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+88MzjtKS6j33NfAKjT3ZitqU5pJbrVp5tu84yNOBq8=;
        b=kgQ5ppXrEeA9p6BDMMBpzk//6xJhK7yCCCXPcejaeCz2LcZ6hoYXZ4Gh37uXZGk6Kr
         jwGHM/OhWYhudqgt8nTGiLTi+P8eH0vB/c7vTsE/FrUCaEa6meLzfOPM6vvsMLiuEQVy
         qZRMow6t3IEav7MzauMbvsQkCEnIw41fh886ofBkiU5+1FlRnnsZLdM2fbM58IUPC2s3
         I/VRKexxZUYvR4+iATwe0l79zy0XRsPxfZt8IlvV1fMCAEjugMVVyb7NYBlGtvXh1yLN
         SPpcIl037qSCwW0+ByXUZIJK5nl2iIwqAV5/0qpHgQI+QURNdbmVztEeHp3OU7nu8vqa
         fZOg==
X-Gm-Message-State: AOAM532cbBOlTfFEifb+RXrZtLipxe3F6lIb+cjbBixqTYYBEcNtd3Bq
        DDB7Q98hPhn26FaHTWt+J9o=
X-Google-Smtp-Source: ABdhPJxvbQaHzI63ftYUju86HpJS58ngGCI8VPlF27GSAWqVjn0k5gIlPOm+FppvaTyiik2aOpwk8A==
X-Received: by 2002:aa7:da13:: with SMTP id r19mr11509923eds.266.1644793085496;
        Sun, 13 Feb 2022 14:58:05 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:05 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 06/15] mfd: bcm2835-pm: Use 'reg-names' to get resources
Date:   Sun, 13 Feb 2022 22:56:38 +0000
Message-Id: <20220213225646.67761-7-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

If available in firmware, find resources by their 'reg-names' position
instead of relying on hardcoded offsets. Care is taken to support old
firmware nonetheless.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
Changes since v2:
 - correct names 

 drivers/mfd/bcm2835-pm.c | 55 ++++++++++++++++++++++++++--------------
 1 file changed, 36 insertions(+), 19 deletions(-)

diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
index 42fe67f1538e..36fede92775c 100644
--- a/drivers/mfd/bcm2835-pm.c
+++ b/drivers/mfd/bcm2835-pm.c
@@ -25,9 +25,37 @@ static const struct mfd_cell bcm2835_power_devs[] = {
 	{ .name = "bcm2835-power" },
 };
 
+static int bcm2835_pm_get_pdata(struct platform_device *pdev,
+				struct bcm2835_pm *pm)
+{
+	/* If no 'reg-names' property is found we can assume we're using old
+	 * firmware.
+	 */
+	if (!of_find_property(pm->dev->of_node, "reg-names", NULL)) {
+		dev_warn(pm->dev, "Old devicetree detected, please update your firmware.\n");
+
+		pm->base = devm_platform_ioremap_resource(pdev, 0);
+		if (IS_ERR(pm->base))
+			return PTR_ERR(pm->base);
+
+		pm->asb = devm_platform_ioremap_resource(pdev, 1);
+		if (IS_ERR(pm->asb))
+			pm->asb = NULL;
+	} else {
+		pm->base = devm_platform_ioremap_resource_byname(pdev, "pm");
+		if (IS_ERR(pm->base))
+			return PTR_ERR(pm->base);
+
+		pm->asb = devm_platform_ioremap_resource_byname(pdev, "asb");
+		if (IS_ERR(pm->base))
+			pm->asb = NULL;
+	}
+
+	return 0;
+}
+
 static int bcm2835_pm_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct device *dev = &pdev->dev;
 	struct bcm2835_pm *pm;
 	int ret;
@@ -39,10 +67,9 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
 
 	pm->dev = dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pm->base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(pm->base))
-		return PTR_ERR(pm->base);
+	ret = bcm2835_pm_get_pdata(pdev, pm);
+	if (ret)
+		return ret;
 
 	ret = devm_mfd_add_devices(dev, -1,
 				   bcm2835_pm_devs, ARRAY_SIZE(bcm2835_pm_devs),
@@ -54,20 +81,10 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
 	 * bcm2835-pm binding as the key for whether we can reference
 	 * the full PM register range and support power domains.
 	 */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	if (res) {
-		pm->asb = devm_ioremap_resource(dev, res);
-		if (IS_ERR(pm->asb))
-			return PTR_ERR(pm->asb);
-
-		ret = devm_mfd_add_devices(dev, -1,
-					   bcm2835_power_devs,
-					   ARRAY_SIZE(bcm2835_power_devs),
-					   NULL, 0, NULL);
-		if (ret)
-			return ret;
-	}
-
+	if (pm->asb)
+		return devm_mfd_add_devices(dev, -1, bcm2835_power_devs,
+					    ARRAY_SIZE(bcm2835_power_devs),
+					    NULL, 0, NULL);
 	return 0;
 }
 
-- 
2.35.1

