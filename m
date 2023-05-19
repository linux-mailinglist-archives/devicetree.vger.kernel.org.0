Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24A35709799
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 14:53:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbjESMxL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 08:53:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbjESMxK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 08:53:10 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EEA3D2
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 05:53:09 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-19a336df959so255675fac.0
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 05:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684500789; x=1687092789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Il5DRlRPuMlIjXwPJt48hBwo1AcGYTlYi9q3sQQHXVQ=;
        b=PJkRfq/iJOeeKNHopGkcoD+8HR88hsfFRXxUQssKM6ZMvF3LnaZ4/RKXCMUfdEw0bp
         6F0mZSSRSO9DL4gm24Z1UW+bq2bNHNtttmpyYs/ljRJ09ApUZQD6mPuqFSWae/wWH4DH
         AXZ0pYk4n2YWiax1u6nkTSwChSJ0WU00h+nWxU2PNnNl/zYns1DI5ujtc4NI4b/G/KYm
         D9ElcZJqNgH/62yUw+nIFNRlEZvA0tx5CoIb38rpRwo/tOy6DhR71fEO+kNwKuhgzNCp
         KeAmqbnkCvCltdixFJ+sN1PROwenJzUuVvs0MrF49u7n28WyiGPY99aagT2l7TcaoxUa
         tSsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684500789; x=1687092789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Il5DRlRPuMlIjXwPJt48hBwo1AcGYTlYi9q3sQQHXVQ=;
        b=ZXq0/Af2mSkl7ykyWGMhevh8yLZCogMdDU3qpmBe+cje7TRIOnPZnTV+9NUX3pI024
         dliiEmeCqRL4kyZK0miz0MExEx2/J4qIG1cjNKQVYy7yTIEaJ2Pry69FLIadk6BHNHtl
         sY9ZkwFgVzVLynszilumrfLC9mew6IM6Ifwx2DLtTbU/FTlfYmpHEDo3+V8N1oAIHegz
         EYMBsNxqnxxf5Z1xSjx/SyEiLWVYIkRcDVXPMgBjUYLYb0SMDsoOSySAlq9oGUPrGWYw
         D27wHJPgVCjys6eSI3v2DayAhjAPK2X8FqlA6PEvSn/GTQWUZAwz0oY0d2uMrG2Jpt8X
         X7Pg==
X-Gm-Message-State: AC+VfDyHDMgRDVOME6S860yv7PQjkdZYwC5glO+rxffzWpDdXVvuYbEP
        8sBtySuofKwQsXF4enMkxjc=
X-Google-Smtp-Source: ACHHUZ7g3noS+CdLZmJEodM1r/EUd/+A6w+iZTuFbYaajWUaThENkpJfFg6hSLJy7qX7glP3oFFSuQ==
X-Received: by 2002:a05:6870:e0ce:b0:18b:15df:a3a1 with SMTP id a14-20020a056870e0ce00b0018b15dfa3a1mr1051102oab.0.1684500789032;
        Fri, 19 May 2023 05:53:09 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:3a54:c40b:8f0c:b968])
        by smtp.gmail.com with ESMTPSA id i19-20020a4ad093000000b0055278f297f8sm1375321oor.33.2023.05.19.05.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 05:53:08 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v4 4/4] soc: imx: imx6sx-gpr: Introduce a GPR driver
Date:   Fri, 19 May 2023 09:52:36 -0300
Message-Id: <20230519125236.352050-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230519125236.352050-1-festevam@gmail.com>
References: <20230519125236.352050-1-festevam@gmail.com>
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
Changes since v3:
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

