Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C682770968B
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 13:29:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231460AbjESL3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 07:29:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229929AbjESL3g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 07:29:36 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11A8B180
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 04:29:35 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-19a498e6c7aso159552fac.0
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 04:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684495774; x=1687087774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h5jOz9GqDO0KJYsyRHy4DW8Mcq383K9trAtwF3q01V8=;
        b=glFVwK6PywemTdJqDbe6Kz9RGom4br6AysaRmaenZoJjPJ+167CSyTcm3g287yQyqz
         V06YwSkL9uq++k1UuO9QFaXTDp/Z2VWZhdE3YKtLVZXyqo7veNF5lfaqHm2x47i9DvCP
         Et0bIURnx6i9HqwhMori7LWf1hLQBY2ZLfxP5QsGznybSnEUV3wU2L6uIeq0G0PkbSbe
         S3Um3e3mpdfj+bHqSF3tNnnx43N1Zfca+HRqpp0JuHxrcgjPoZFpZwxArAQw1aldhk5O
         seZd86c/UCKfmQdNMkiul69Tqj/H87KYYI0wtZ7Dgmacb7/3Dq5f2mbVy/Eqg18s+GLd
         W0Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684495774; x=1687087774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h5jOz9GqDO0KJYsyRHy4DW8Mcq383K9trAtwF3q01V8=;
        b=a+vBJam62IHEB+Oq4o8KFhm3e582rtAiq9Jh/9paF5ozGWdofZycHegPnefauqGVlD
         o7OJbjXIIawaw/Au6lKPnVuKamO4uCB6Jft2jK52kHrW38DrG5mpXQ2h8kzSx650GrLk
         rUWif6tuF3C6nBuzroAhMR34H7wBLuuFtFlb5FPtvJ+6SzaQN5mxmet3ffTMGECQt+2T
         GKJHMqjMjjJ8a7w4xse0JRvrHoK8e8oMJdex9AcMU+l/1Ccfc1qYNYjxfznZ5VLHo8hJ
         rDWcTmiHzv8M8OsaqjqrrVnn2b2/Vhxdq3XNNWT69ygMS3XuzriWxeVXaTSY2b+FqHcl
         mvKg==
X-Gm-Message-State: AC+VfDwP6XPAc844H3FVucvanMsgi3OQP96A0sY09Tzb90GuoJdtXSSc
        viXt21fq+Ri/eflCN2h7zgPx24cGLX4=
X-Google-Smtp-Source: ACHHUZ74AD+Yed5cmsPbLg6/tlT/KpxTCGSu0UwTl1RgCBI48ApO1/TB3TX3CwXH6dqe7P6/Krm56A==
X-Received: by 2002:aca:a808:0:b0:394:66dd:cb47 with SMTP id r8-20020acaa808000000b0039466ddcb47mr816882oie.0.1684495774317;
        Fri, 19 May 2023 04:29:34 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:3a54:c40b:8f0c:b968])
        by smtp.gmail.com with ESMTPSA id u1-20020a4ae681000000b00549f4d87eecsm1327679oot.30.2023.05.19.04.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 04:29:33 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 4/4] soc: imx: imx6sx-gpr: Introduce a GPR driver
Date:   Fri, 19 May 2023 08:29:14 -0300
Message-Id: <20230519112914.309669-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230519112914.309669-1-festevam@gmail.com>
References: <20230519112914.309669-1-festevam@gmail.com>
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

From: Fabio Estevam <festevam@denx.de>

The motivation for this imx6sx-gpr driver is to allow describing
the LVDS LDB bridge as a GPR subnode.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v2:
- None.

 drivers/soc/imx/Makefile     |  1 +
 drivers/soc/imx/imx6sx-gpr.c | 29 +++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+)
 create mode 100644 drivers/soc/imx/imx6sx-gpr.c

diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index a28c44a1f16a..9840d4c41015 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_ARCH_MXC) += soc-imx.o
 endif
 obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
+obj-$(CONFIG_SOC_IMX6SX) += imx6sx-gpr.o
 obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
 obj-$(CONFIG_IMX8M_BLK_CTRL) += imx8m-blk-ctrl.o
 obj-$(CONFIG_IMX8M_BLK_CTRL) += imx8mp-blk-ctrl.o
diff --git a/drivers/soc/imx/imx6sx-gpr.c b/drivers/soc/imx/imx6sx-gpr.c
new file mode 100644
index 000000000000..7684acbe43ff
--- /dev/null
+++ b/drivers/soc/imx/imx6sx-gpr.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+
+static int imx6sx_gpr_probe(struct platform_device *pdev)
+{
+	return devm_of_platform_populate(&pdev->dev);
+}
+
+static const struct of_device_id imx6sx_gpr_ids[] = {
+	{ .compatible = "fsl,imx6sx-iomuxc-gpr" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, imx6sx_gpr_ids);
+
+static struct platform_driver imx6sx_gpr_driver = {
+	.driver = {
+		.name	= "imx6sx_gpr",
+		.of_match_table = imx6sx_gpr_ids,
+	},
+	.probe = imx6sx_gpr_probe,
+};
+module_platform_driver(imx6sx_gpr_driver);
+
+MODULE_AUTHOR("Fabio Estevam <festevam@denx.de>");
+MODULE_DESCRIPTION("NXP i.MX6SX GPR driver");
+MODULE_LICENSE("GPL");
-- 
2.34.1

