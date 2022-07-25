Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C00FB580663
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 23:22:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237197AbiGYVWR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 17:22:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237069AbiGYVWM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 17:22:12 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99B031DA56
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 14:22:10 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id n185so7614027wmn.4
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 14:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tWOOFKf52gAy7W/ZrGz750v2UUX4okU1KlSqizimZr4=;
        b=M54IfpZG9KKKODJTR1eJYGGn+iUrfMqUOkRnb9jArCQQ8yexwLiqnD63I8nRvxbdUC
         f08bErpai1S2bij+j98TrM4Cqm/NcjpG8kA0mSaI8rsFwPCIFWTGPKwlYV0/sWocGj5d
         YH1fTkgjFbkCVgIz+lu38q7k1zg5z504P7CDUja/0DB/eGVRPIKc7ghA4vtAHH0b5qwM
         PF+tLiIqoy2Cwb5MuMVKadHGErjzPY1yhTbN2+dqmpKEJZJcyrhdHTwkdK0fMxs4d61W
         ulb6XL8WNmqa9jUO7WYorrwUpGkCC6+pIH1rJo/N6SJxSqt28FYGCApfscJlLvlsetSb
         3yKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tWOOFKf52gAy7W/ZrGz750v2UUX4okU1KlSqizimZr4=;
        b=yh4UlnMPaDjkbLVdKA6S9MtU2tZKLEAM6FeFG2SFk87Y+44I8o+HqNPGtjq/vVjG7w
         sjYdQ/npwZHe861wzV/Tk2tJf/PizrH+xMDBKOXHdwLLUTpOw4y8S0nxWsoDGqHwPBUV
         vHwoDGJ2bK/68oW+cBeXFXeABxVVOtVjf5NHfjXGw3YRHRPg0tz+7fwQ7GoPUIBG1hvY
         48jKGX4fkLcAb3lsXzn/FSeItezqJR6rtizIhxd1X3zPfphyQmHIpFSV5jJEfRuMJtxn
         V/vmaStamYYzn1+X/v+Eus80dtiBSPC1Pwg187NPF5T4ycuFW3gKweIUkW0wB1iF/P6p
         vAfQ==
X-Gm-Message-State: AJIora8AxU08lkC2zKIZCr4kJebyhjlE9sUKKCpCUppVKt7QVM8t0RHu
        3iIEgrxBLBW8ivFV9i2Ojat3sg==
X-Google-Smtp-Source: AGRyM1vOGg0pvs4LnyEciJO+TPUUHmAs+pYo6RcfiytLVsjQsd97mE7LsspNSv3sHPd98boEZ+wArw==
X-Received: by 2002:a1c:288:0:b0:3a3:5332:9d16 with SMTP id 130-20020a1c0288000000b003a353329d16mr6107310wmc.168.1658784128850;
        Mon, 25 Jul 2022 14:22:08 -0700 (PDT)
Received: from localhost.localdomain (cpc152649-stkp13-2-0-cust121.10-2.cable.virginm.net. [86.15.83.122])
        by smtp.gmail.com with ESMTPSA id i13-20020a05600011cd00b0021d6924b777sm12656348wrx.115.2022.07.25.14.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 14:22:08 -0700 (PDT)
From:   Ben Dooks <ben.dooks@sifive.com>
To:     linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        Ben Dooks <ben.dooks@sifive.com>
Subject: [[PATCH v2] 5/9] pwm: dwc: add of/platform support
Date:   Mon, 25 Jul 2022 22:21:36 +0100
Message-Id: <20220725212140.741644-5-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220725212140.741644-1-ben.dooks@sifive.com>
References: <20220725212140.741644-1-ben.dooks@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dwc pwm controller can be used in non-PCI systems, so allow
either platform or OF based probing.

Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
---
 drivers/pwm/Kconfig   |  5 ++--
 drivers/pwm/pwm-dwc.c | 53 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 904de8d61828..e1aa645c1084 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -166,9 +166,10 @@ config PWM_CROS_EC
 
 config PWM_DWC
 	tristate "DesignWare PWM Controller"
-	depends on PCI
+	depends on PCI || OF
 	help
-	  PWM driver for Synopsys DWC PWM Controller attached to a PCI bus.
+	  PWM driver for Synopsys DWC PWM Controller attached to either a
+	  PCI or platform bus.
 
 	  To compile this driver as a module, choose M here: the module
 	  will be called pwm-dwc.
diff --git a/drivers/pwm/pwm-dwc.c b/drivers/pwm/pwm-dwc.c
index 61f11e0a9319..235cb730c888 100644
--- a/drivers/pwm/pwm-dwc.c
+++ b/drivers/pwm/pwm-dwc.c
@@ -18,6 +18,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/pci.h>
+#include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/pwm.h>
 
@@ -319,6 +320,58 @@ static struct pci_driver dwc_pwm_driver = {
 
 module_pci_driver(dwc_pwm_driver);
 
+#ifdef CONFIG_OF
+static int dwc_pwm_plat_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct dwc_pwm *dwc;
+	int ret;
+
+	dwc = dwc_pwm_alloc(dev);
+	if (!dwc)
+		return -ENOMEM;
+
+	dwc->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(dwc->base))
+		return dev_err_probe(dev, PTR_ERR(dwc->base),
+				     "failed to map IO\n");
+
+	ret = pwmchip_add(&dwc->chip);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int dwc_pwm_plat_remove(struct platform_device *pdev)
+{
+	struct dwc_pwm *dwc = platform_get_drvdata(pdev);
+
+	pwmchip_remove(&dwc->chip);
+	return 0;
+}
+
+static const struct of_device_id dwc_pwm_dt_ids[] = {
+	{ .compatible = "snps,pwm" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, dwc_pwm_dt_ids);
+
+static struct platform_driver dwc_pwm_plat_driver = {
+	.driver = {
+		.name		= "dwc-pwm",
+		.of_match_table  = dwc_pwm_dt_ids,
+	},
+	.probe	= dwc_pwm_plat_probe,
+	.remove	= dwc_pwm_plat_remove,
+};
+
+module_platform_driver(dwc_pwm_plat_driver);
+
+MODULE_ALIAS("platform:dwc-pwm");
+#endif /* CONFIG_OF */
+
+
 MODULE_AUTHOR("Felipe Balbi (Intel)");
 MODULE_AUTHOR("Jarkko Nikula <jarkko.nikula@linux.intel.com>");
 MODULE_AUTHOR("Raymond Tan <raymond.tan@intel.com>");
-- 
2.35.1

