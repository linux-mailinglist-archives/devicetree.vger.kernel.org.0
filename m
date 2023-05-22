Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EB1D70BEBF
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 14:51:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233257AbjEVMv4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 08:51:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232856AbjEVMvz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 08:51:55 -0400
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09503AC
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:51:54 -0700 (PDT)
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-555486c9196so184770eaf.0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684759914; x=1687351914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4P84udYyunLJpSMM/Fy+TsLscHs9AVq2BXmY6gDUQhU=;
        b=TNMKsd1aQIL2WeLzwtg5arme2EtDV4KipIcg8twoR81cMYwj/AeuGO0SGCwF3vrEJZ
         sRGNGPIjuueTFFab4D6lA10n9bs1fH+GvzFKYQG4ufoub/IP3SpzTm0YCj4/ndmi087x
         ZEIfFfAHyNHtS/x8AMlalCsL1a6+Nx0tzsalTFBnwQmG0V/0LzALOkWFPO3hPBU3THKH
         UubOiTOdwDLpza8xNsAZ+so7XyFoBqj2eRZ4hHmMN2zQadORZTcLBz98b7VssB/ldQA0
         Jrwa3AY2pQNZ1yD9C3K4ZAjwTOCll3mB1vKB8Su9eXlaYYx6X7/Y53oSEwoTUVqfUG1g
         RpcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684759914; x=1687351914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4P84udYyunLJpSMM/Fy+TsLscHs9AVq2BXmY6gDUQhU=;
        b=gPLh1X5NuLWgcLhoK/WEkpb4c/9yJt+2xZzX27nIajJTzK4SOmt+yNDb1jE+0JDmDn
         m7JyUTOCaW3Ltu89VMldlwEQXqpVuEF6qUZq5OP+cbUPpPLIF/FDJg72fhA1/G0T+dx7
         ypo7hUmb8ormX7GiAkTfml94iBdBzUhyZ0l56xGQ4pWmY6lgL8WWEFr0pJ+JysuzC1c1
         oUTIm/o501oNKtoogiClHm5l3JT78x+3uETa3GhdYDmVFOoBrzTY3Ue4y3YNeD9upz3l
         5IMKRD5+bO6a3vghfI5BiSD9YzVHcqqW13Ag9+LPwxeyaHHxuxrGvfAeDH2LaPE5ezoV
         hQ0Q==
X-Gm-Message-State: AC+VfDyYwQlFGYb21u+XljnZhyvDUNRqGuPfrIrCE3SFTkAdSQzNl2H9
        27Xs9na7n2UQn3AMCa91NsN3PwXkBLk=
X-Google-Smtp-Source: ACHHUZ7bR/1ZHHF+LzMo3YMtaBqGLqp+aWguHo+x5/nouVIuik5oa4EMnEzhuyPLIoxUk1S+0133Ew==
X-Received: by 2002:aca:3287:0:b0:387:1922:2e74 with SMTP id y129-20020aca3287000000b0038719222e74mr4911006oiy.2.1684759914291;
        Mon, 22 May 2023 05:51:54 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:b71d:e403:4337:204f])
        by smtp.gmail.com with ESMTPSA id r126-20020acada84000000b003943e08ee03sm2676408oig.16.2023.05.22.05.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 05:51:53 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v5 4/4] soc: imx: imx6sx-gpr: Introduce a GPR driver
Date:   Mon, 22 May 2023 09:51:29 -0300
Message-Id: <20230522125129.526604-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230522125129.526604-1-festevam@gmail.com>
References: <20230522125129.526604-1-festevam@gmail.com>
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
Changes since v4:
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

