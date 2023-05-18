Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71124708854
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 21:26:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbjERT0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 15:26:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbjERT0i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 15:26:38 -0400
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC2BFE51
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 12:26:37 -0700 (PDT)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-199e2e85212so287566fac.1
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 12:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684437997; x=1687029997;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wjpxP8+xqN8IGpkkBYSjeVQ16z0BQyUdfEfeND4sVus=;
        b=n+FWgUD5g4ss2FySMlttnD0K9eA5FhTLRNnLPF8K75b3d5fhwl/XBeEBi6tBzXwUax
         s773yt710vXU++O1pgCPGJFsQwP3IwJoyBmwNCB8IHHgzKk6KUbJXC56sMkZoqOymTlh
         QG0h1mwdHc0HxqHT4TpEdNAPeS7jWHuHmja97idWFOn8iEAc4JrAExi7M/DIbxxNyUHm
         FRScuGqp/JTZR4He97IUiUTcYo0DmGzIFfEE57A6OZcdRDM6Z3kb/Gg2KVSM8sSAStF3
         qhSD6uRpsCnWF0gWDZFw4LJvxw9whZOcR38CS1S9KA743ILXzcTyCt6b9h4Jt8CEMdY3
         PVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684437997; x=1687029997;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wjpxP8+xqN8IGpkkBYSjeVQ16z0BQyUdfEfeND4sVus=;
        b=NGmHPXaXUHas8ONkZ1UEhl+IgKmMjlhbrlVRFRDJEGFWquKRqDLY1jVSccJinybTU5
         wWGgcXsJrzpWjHDUFc/M/wGXuTRnvfh3+Ebd0nawTxcybHsIPDYmGqvzF8UrNn4p90Q+
         hk9zT6qIbpiET1uo2ZRAEvvaqYoHEunaX7Zvw7viQd5azXv1VdxKaFcIYyIpO1uGxENh
         H0MiMafhbfeDvE6v7/KmU35LZcg9WrkhTTJKwY0a13tLB4qIJXJKqI+hzbUCZkGfILfs
         lJBHU7L/SEtx+n2fB7zDYqGuyGleuSH/VEAJ3Sg8ungLPKiKv+sQUtlv2cckqyWceUkI
         IedA==
X-Gm-Message-State: AC+VfDw7ppuwpcenmoxALCj3A733cyMdRYw0p4H7HGpRHKfm6luE8tAr
        hW8YLecWun6rA92DWiJF5zh6Ew2ChUI=
X-Google-Smtp-Source: ACHHUZ6w7YdpP8pmL/DeR2d8ykT3J7XA2hUd9ajzOI/RhmMGUVZQ2f0SxvA62FY4KEzrthsMfdyzYw==
X-Received: by 2002:a05:6870:c1cc:b0:199:c25b:f966 with SMTP id i12-20020a056870c1cc00b00199c25bf966mr4662120oad.2.1684437997064;
        Thu, 18 May 2023 12:26:37 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:e366:77e8:4ae8:a240])
        by smtp.gmail.com with ESMTPSA id q14-20020a9d654e000000b006ac87b54ca4sm956609otl.34.2023.05.18.12.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 May 2023 12:26:36 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/2] soc: imx: imx6sx-gpr: Introduce a GPR driver
Date:   Thu, 18 May 2023 16:26:28 -0300
Message-Id: <20230518192628.151462-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230518192628.151462-1-festevam@gmail.com>
References: <20230518192628.151462-1-festevam@gmail.com>
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
Changes since v1:
- Newly introduced.

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

