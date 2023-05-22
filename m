Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ECC170CA91
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 22:14:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232345AbjEVUOm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 16:14:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233689AbjEVUOl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 16:14:41 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26FAEB6
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:14:40 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6aaf9180636so539196a34.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684786479; x=1687378479;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sRVsIZ0p/4bqtXIep6Qg9LG2TZliQ0Lclemvbvz32TY=;
        b=nU0lO0vd0n55hfPYFSu01qUaw3IeCdpI4AzhHsgPEZ5EDjHvPyOaxg/cdikem6wexe
         AYcqRYb8Dp+o35QspEAdaf/A35a+oSnPwHdhR8jBJKLByUdjFZwJNJq5aNI7dN2Kucfs
         ayphY35NrVKovg2NbYw9P9AWnputz+ZCR67Lt8zvdwg3xw4hvBZhYJzPRM0CNu33S/0F
         s8YfjK54P3vco40cuVxazpsBTD4Asnj/qoYiIJRhKlPQAn96zNZi6yczLNw7b0h7iN/d
         /WybOQcdiFUcfo/RWaqKVtFMnyiD+l6+ROQaq2fmucz59mLjgUFxR4477KCr9f7jfx8z
         xwQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684786479; x=1687378479;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sRVsIZ0p/4bqtXIep6Qg9LG2TZliQ0Lclemvbvz32TY=;
        b=UfXxHDUk8XdWQn3PNVTBi4Wiy+CgyiXNJc/xhvM08fWKTWr94Spz7M1WDntgG+hJrV
         zH970o2Ya/doSosxAqWxzg8LYLeDs+pJYHZpinZj5WSvWeozaReFhYkk4vErC8AmvS9K
         mxSpkaHeVCzJu1XaGQsjlVjYUgASb2i4UDR4clJlLeUzwY7Hss2wKVi9hwdj3o+xuS1K
         a/6EAoM06yDdcySDFZWUchLtDCNTVDrwFbdS+qd9tctPM4QL8gMQgkGMjEcVsXgYHZlR
         IvXQRMZtscKhPllULvN9zObNlMz2r657ng4L7ACrb1ZVza3PfHKTQGdINV81HB55hpvB
         yzXQ==
X-Gm-Message-State: AC+VfDwFmu8jxb4awo3ABHhFGxzXICYfcnKkayxlpaoHO6O+zL8AVdhp
        vFn3obNi5ULSb6pCzrz/fI8=
X-Google-Smtp-Source: ACHHUZ7fcYRV5PtMwltMppwc7xHRdM9LNYSuRt7L6DuQk9Ve7kr+8aW0x6P+uelrtUHiR6spOlArbQ==
X-Received: by 2002:a05:6830:6419:b0:6aa:ea92:6c40 with SMTP id cj25-20020a056830641900b006aaea926c40mr6594435otb.0.1684786479395;
        Mon, 22 May 2023 13:14:39 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:9a57:1c6:1c2e:4047])
        by smtp.gmail.com with ESMTPSA id q11-20020a056830018b00b006aaff32ac36sm2692857ota.66.2023.05.22.13.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 13:14:39 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v6 5/5] soc: imx: imx6sx-gpr: Introduce a GPR driver
Date:   Mon, 22 May 2023 17:14:04 -0300
Message-Id: <20230522201404.660242-5-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230522201404.660242-1-festevam@gmail.com>
References: <20230522201404.660242-1-festevam@gmail.com>
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
Changes since v5:
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

