Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7153E282405
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 14:07:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725781AbgJCMHG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 08:07:06 -0400
Received: from mail-eopbgr00077.outbound.protection.outlook.com ([40.107.0.77]:47079
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725778AbgJCMHG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 3 Oct 2020 08:07:06 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Akplyae507XE+xeTNIWFbjt0Oyy2p7ESBXMy+LfRK+CswSCJS0kOGxWBLvm192IInrn+HR746MIn/TmO7ST50Oamu65B5Dsus4JY/80xy/uAFuyeWkJvfXhb31w1yc6bkbJzSr/R8FXQ/uiBLLSiK8eMax3aEfD9lu/mkqczdqfLPJoBfFsPTpQbckBOxEEzPutNyqzfwj/ghdfU5BsoLWshUERYGvZscEU9jlFH0qDC3jHjNfwhX7l9WCyCBGbm/gSGnH9WGVdA8cqbttF0xjZv1SF8cIRR55fO4EXLc+tZtHqh15wuJpkTZ5wtVv4ysbMmlAskKQKDwuYDCV4zCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J1ZHb9nKC1jaMU0wzeDCWAt3Wlj7zGMTGS/Y2i2RtTs=;
 b=JLUAqRQzMcsZshJSfGtvaWWTJ7+t8YRBMkcY8YO1TOz12pRMMJ5acxscSOwa4L3qIy1Ag/hIt+SAqTvjB07nbwGB9EQSD4GfWokE6+zk12//tstC3dR5T1HtU2eHCmnnYoSvbt2COQbH6Y51iRrgVmRIGbibqhwy135Fs0ACzKBsjBFuEE64msWGCI23LCrE/p48lkn/wx7KB/8g0JIJTdp1cHOnEok9yXS4NzdtW59yE+BluNlrjU1M6sPwThu5otkgaKzQHsOuwFGPcTfhOVeeV1QSLmHsyhYe/FvVYDgax/D4gCYKMqHSg3fx8xdWRcznUFmgcEceak4LGWVg/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J1ZHb9nKC1jaMU0wzeDCWAt3Wlj7zGMTGS/Y2i2RtTs=;
 b=SiWnGDGTi5ds+pb7FhtA0PPwBFKUdCrvJkuSS5DVhGxJ07wPhG9bGzxWB75IrR9Vo/Imy/VFQpldCYwitPPDdx9qmvC+QiUBCXazBLjylygU5J/lPsqRRkiWuENakJXT29pug+LExWspo7Y3ib0FY+UytQlyMFVxeS10ubT2s5Y=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
 by VI1PR04MB4064.eurprd04.prod.outlook.com (2603:10a6:803:4c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32; Sat, 3 Oct
 2020 12:06:51 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::acd3:d354:3f34:3af7]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::acd3:d354:3f34:3af7%4]) with mapi id 15.20.3433.039; Sat, 3 Oct 2020
 12:06:51 +0000
From:   Li Jun <jun.li@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, balbi@kernel.org
Cc:     krzk@kernel.org, gregkh@linuxfoundation.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, Anson.Huang@nxp.com, jun.li@nxp.com,
        aisheng.dong@nxp.com, peng.fan@nxp.com, fugang.duan@nxp.com,
        horia.geanta@nxp.com, qiangqing.zhang@nxp.com, peter.chen@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 2/4] usb: dwc3: add imx8mp dwc3 glue layer driver
Date:   Sat,  3 Oct 2020 20:02:05 +0800
Message-Id: <1601726527-23326-3-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
References: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28)
 To VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3433.35 via Frontend Transport; Sat, 3 Oct 2020 12:06:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6837dd6f-477f-4070-5114-08d86794cf56
X-MS-TrafficTypeDiagnostic: VI1PR04MB4064:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB4064A2F09C3E25252DA87E45890E0@VI1PR04MB4064.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:605;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tDBjvydwjzcOpTdjQyP9+xxUZTg7l1xsrgOf5FG+/whdkTJwHE/ARqQOfI7h4ypz+jlQLUwpNNSM0uMVDB/Cw0jLOtFJR0G6XME3+AwUprsZwcevDz+TY/vyXlUowsgwuTCII1+8OZn3AfbJ3Fsj1bhzaTZkjfEpvXpf1AK2nDricGdVKceFUzs/dKxZOFoUtcI+yK8LWo62rIBgFn8nftDlnopVsc+3Jl/MSUksZG3Ekpte7Q+V44ke9fzhFZgE0uMqIB7R0ghKr4hf6cvkPmfiHBsSUG1JTg6toh8lqjlxBUHgsEjilOtvyVE+n5rQobmeOjDLX62yHJovA1eZo+HtBKAL9jPjlrXeN9NnO1YRNn2Js34Y3G5qyP0whBtzLRidKDScXI8VM4f0uPxIJg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6528.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(396003)(136003)(376002)(346002)(2906002)(8936002)(16526019)(66946007)(66556008)(66476007)(186003)(6512007)(6486002)(8676002)(7416002)(69590400008)(83380400001)(36756003)(26005)(5660300002)(30864003)(6666004)(52116002)(478600001)(316002)(86362001)(6506007)(956004)(4326008)(2616005)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: hX5kha6EGilULBLnVusQYctF7n2waylbQhwaK1G7wO26i8uswuUiHVEEbRh6SvnHWviktDkZsjIcFVGHF+w6LSGiDLjKQtx6i9woaGzUu5ktT7hWTHaBOvUKtrGYVsjvzJsIsOMmBvHjKxBYmrLPHSzPqADnQ11I5M/5fYxbtAGgFNbLwYd/UibnVOAYVIdF6SJgY0KXt9MXq49heMsO83yZ2ql3E2JCAeVJ5c6Lq4eTORjqKLxg0aRmzXkZS7BS3+4jVnKtDCxYFYvLJdhsG3ChnIY3z7P8M4mB1R12sYdN9xpwF6c7Gt/NPA8bw3jLmYc1EcrHS4aEDcPXrI2EIP0tb+25kdZe98ryb6qt15TgYbvDkBUlhm11fZ0uN1hdNY6mHNRqHsKHi0orH5OH1ywJhFCpMDeBlBGZbvvEqu4jbl3S9TbhMOmQerrNkytOERvkn31SoyV+LTvV4rEkY9jn98rBgDhu48K2gRawb1yTMGqyem2cg2msEc7NSFyBjEVMhW4KeXSLCLeUPODYwF+7AA+k+k3/ru4Ee/qo6TK1s9b0K0MX8+DNyAKUaWW9bp7VJH2G4xpEB1mhGlAPrcxv3JWZj0o/j4/ikzvI1qWLUowokzyT5iFIln6a7ZuPsZa+u31ZWZjsEN92INEPDA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6837dd6f-477f-4070-5114-08d86794cf56
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6528.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2020 12:06:50.8663
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z/CbYxE6MvMVLuiBORmp34bX2iRQ1RGw7dkUt1xf852JmEXuJGtHzGkqUdVnVbK+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4064
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

imx8mp SoC integrate dwc3 3.30b IP and has some customizations to
support low power, which has a seprated wakeup irq and additional
logic to wakeup usb from low power mode both for host mode and
device mode.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 drivers/usb/dwc3/Kconfig       |  10 ++
 drivers/usb/dwc3/Makefile      |   1 +
 drivers/usb/dwc3/dwc3-imx8mp.c | 363 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 374 insertions(+)

diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
index 7a23045..2133acf 100644
--- a/drivers/usb/dwc3/Kconfig
+++ b/drivers/usb/dwc3/Kconfig
@@ -139,4 +139,14 @@ config USB_DWC3_QCOM
 	  for peripheral mode support.
 	  Say 'Y' or 'M' if you have one such device.
 
+config USB_DWC3_IMX8MP
+	tristate "NXP iMX8MP Platform"
+	depends on OF && COMMON_CLK
+	depends on (ARCH_MXC && ARM64) || COMPILE_TEST
+	default USB_DWC3
+	help
+	  NXP iMX8M Plus SoC use DesignWare Core IP for USB2/3
+	  functionality.
+	  Say 'Y' or 'M' if you have one such device.
+
 endif
diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
index ae86da0..2259f88 100644
--- a/drivers/usb/dwc3/Makefile
+++ b/drivers/usb/dwc3/Makefile
@@ -51,3 +51,4 @@ obj-$(CONFIG_USB_DWC3_MESON_G12A)	+= dwc3-meson-g12a.o
 obj-$(CONFIG_USB_DWC3_OF_SIMPLE)	+= dwc3-of-simple.o
 obj-$(CONFIG_USB_DWC3_ST)		+= dwc3-st.o
 obj-$(CONFIG_USB_DWC3_QCOM)		+= dwc3-qcom.o
+obj-$(CONFIG_USB_DWC3_IMX8MP)		+= dwc3-imx8mp.o
diff --git a/drivers/usb/dwc3/dwc3-imx8mp.c b/drivers/usb/dwc3/dwc3-imx8mp.c
new file mode 100644
index 0000000..75f0042
--- /dev/null
+++ b/drivers/usb/dwc3/dwc3-imx8mp.c
@@ -0,0 +1,363 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * dwc3-imx8mp.c - NXP imx8mp Specific Glue layer
+ *
+ * Copyright (c) 2020 NXP.
+ */
+
+#include <linux/clk.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+
+#include "core.h"
+
+/* USB wakeup registers */
+#define USB_WAKEUP_CTRL			0x00
+
+/* Global wakeup interrupt enable, also used to clear interrupt */
+#define USB_WAKEUP_EN			BIT(31)
+/* Wakeup from connect or disconnect, only for superspeed */
+#define USB_WAKEUP_SS_CONN		BIT(5)
+/* 0 select vbus_valid, 1 select sessvld */
+#define USB_WAKEUP_VBUS_SRC_SESS_VAL	BIT(4)
+/* Enable signal for wake up from u3 state */
+#define USB_WAKEUP_U3_EN		BIT(3)
+/* Enable signal for wake up from id change */
+#define USB_WAKEUP_ID_EN		BIT(2)
+/* Enable signal for wake up from vbus change */
+#define	USB_WAKEUP_VBUS_EN		BIT(1)
+/* Enable signal for wake up from dp/dm change */
+#define USB_WAKEUP_DPDM_EN		BIT(0)
+
+#define USB_WAKEUP_EN_MASK		GENMASK(5, 0)
+
+struct dwc3_imx8mp {
+	struct device			*dev;
+	struct platform_device		*dwc3;
+	void __iomem			*glue_base;
+	struct clk			*hsio_clk;
+	struct clk			*suspend_clk;
+	int				irq;
+	bool				pm_suspended;
+	bool				wakeup_pending;
+};
+
+static void dwc3_imx8mp_wakeup_enable(struct dwc3_imx8mp *dwc3_imx)
+{
+	struct dwc3	*dwc3 = platform_get_drvdata(dwc3_imx->dwc3);
+	u32		val;
+
+	if (!dwc3)
+		return;
+
+	val = readl(dwc3_imx->glue_base + USB_WAKEUP_CTRL);
+
+	if ((dwc3->current_dr_role == DWC3_GCTL_PRTCAP_HOST) && dwc3->xhci)
+		val |= USB_WAKEUP_EN | USB_WAKEUP_SS_CONN |
+		       USB_WAKEUP_U3_EN | USB_WAKEUP_DPDM_EN;
+	else if (dwc3->current_dr_role == DWC3_GCTL_PRTCAP_DEVICE)
+		val |= USB_WAKEUP_EN | USB_WAKEUP_VBUS_EN |
+		       USB_WAKEUP_VBUS_SRC_SESS_VAL;
+
+	writel(val, dwc3_imx->glue_base + USB_WAKEUP_CTRL);
+}
+
+static void dwc3_imx8mp_wakeup_disable(struct dwc3_imx8mp *dwc3_imx)
+{
+	u32 val;
+
+	val = readl(dwc3_imx->glue_base + USB_WAKEUP_CTRL);
+	val &= ~(USB_WAKEUP_EN | USB_WAKEUP_EN_MASK);
+	writel(val, dwc3_imx->glue_base + USB_WAKEUP_CTRL);
+}
+
+static irqreturn_t dwc3_imx8mp_interrupt(int irq, void *_dwc3_imx)
+{
+	struct dwc3_imx8mp	*dwc3_imx = _dwc3_imx;
+	struct dwc3		*dwc = platform_get_drvdata(dwc3_imx->dwc3);
+
+	if (!dwc3_imx->pm_suspended)
+		return IRQ_HANDLED;
+
+	disable_irq_nosync(dwc3_imx->irq);
+	dwc3_imx->wakeup_pending = true;
+
+	if ((dwc->current_dr_role == DWC3_GCTL_PRTCAP_HOST) && dwc->xhci)
+		pm_runtime_resume(&dwc->xhci->dev);
+	else if (dwc->current_dr_role == DWC3_GCTL_PRTCAP_DEVICE)
+		pm_runtime_get(dwc->dev);
+
+	return IRQ_HANDLED;
+}
+
+static int dwc3_imx8mp_probe(struct platform_device *pdev)
+{
+	struct device		*dev = &pdev->dev;
+	struct device_node	*dwc3_np, *node = dev->of_node;
+	struct dwc3_imx8mp	*dwc3_imx;
+	int			err, irq;
+
+	if (!node) {
+		dev_err(dev, "device node not found\n");
+		return -EINVAL;
+	}
+
+	dwc3_imx = devm_kzalloc(dev, sizeof(*dwc3_imx), GFP_KERNEL);
+	if (!dwc3_imx)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, dwc3_imx);
+
+	dwc3_imx->dev = dev;
+
+	dwc3_imx->glue_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(dwc3_imx->glue_base))
+		return PTR_ERR(dwc3_imx->glue_base);
+
+	dwc3_imx->hsio_clk = devm_clk_get(dev, "hsio");
+	if (IS_ERR(dwc3_imx->hsio_clk)) {
+		err = PTR_ERR(dwc3_imx->hsio_clk);
+		dev_err(dev, "Failed to get hsio clk, err=%d\n", err);
+		return err;
+	}
+
+	err = clk_prepare_enable(dwc3_imx->hsio_clk);
+	if (err) {
+		dev_err(dev, "Failed to enable hsio clk, err=%d\n", err);
+		return err;
+	}
+
+	dwc3_imx->suspend_clk = devm_clk_get(dev, "suspend");
+	if (IS_ERR(dwc3_imx->suspend_clk)) {
+		err = PTR_ERR(dwc3_imx->suspend_clk);
+		dev_err(dev, "Failed to get suspend clk, err=%d\n", err);
+		goto disable_hsio_clk;
+	}
+
+	err = clk_prepare_enable(dwc3_imx->suspend_clk);
+	if (err) {
+		dev_err(dev, "Failed to enable suspend clk, err=%d\n", err);
+		goto disable_hsio_clk;
+	}
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		err = irq;
+		goto disable_clks;
+	}
+	dwc3_imx->irq = irq;
+
+	err = devm_request_threaded_irq(dev, irq, NULL, dwc3_imx8mp_interrupt,
+					IRQF_ONESHOT, dev_name(dev), dwc3_imx);
+	if (err) {
+		dev_err(dev, "failed to request IRQ #%d --> %d\n", irq, err);
+		goto disable_clks;
+	}
+
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+	err = pm_runtime_get_sync(dev);
+	if (err < 0)
+		goto disable_rpm;
+
+	dwc3_np = of_get_child_by_name(node, "dwc3");
+	if (!dwc3_np) {
+		dev_err(dev, "failed to find dwc3 core child\n");
+		goto disable_rpm;
+	}
+
+	err = of_platform_populate(node, NULL, NULL, dev);
+	if (err) {
+		dev_err(&pdev->dev, "failed to create dwc3 core\n");
+		goto err_node_put;
+	}
+
+	dwc3_imx->dwc3 = of_find_device_by_node(dwc3_np);
+	if (!dwc3_imx->dwc3) {
+		dev_err(dev, "failed to get dwc3 platform device\n");
+		err = -ENODEV;
+		goto depopulate;
+	}
+	of_node_put(dwc3_np);
+
+	device_set_wakeup_capable(dev, true);
+	pm_runtime_put(dev);
+
+	return 0;
+
+depopulate:
+	of_platform_depopulate(dev);
+err_node_put:
+	of_node_put(dwc3_np);
+disable_rpm:
+	pm_runtime_disable(dev);
+	pm_runtime_put_noidle(dev);
+disable_clks:
+	clk_disable_unprepare(dwc3_imx->suspend_clk);
+disable_hsio_clk:
+	clk_disable_unprepare(dwc3_imx->hsio_clk);
+
+	return err;
+}
+
+static int dwc3_imx8mp_remove(struct platform_device *pdev)
+{
+	struct dwc3_imx8mp *dwc3_imx = platform_get_drvdata(pdev);
+	struct device *dev = &pdev->dev;
+
+	pm_runtime_get_sync(dev);
+	of_platform_depopulate(dev);
+
+	clk_disable_unprepare(dwc3_imx->suspend_clk);
+	clk_disable_unprepare(dwc3_imx->hsio_clk);
+
+	pm_runtime_disable(dev);
+	pm_runtime_put_noidle(dev);
+	platform_set_drvdata(pdev, NULL);
+
+	return 0;
+}
+
+static int __maybe_unused dwc3_imx8mp_suspend(struct dwc3_imx8mp *dwc3_imx,
+					      pm_message_t msg)
+{
+	if (dwc3_imx->pm_suspended)
+		return 0;
+
+	/* Wakeup enable */
+	if (PMSG_IS_AUTO(msg) || device_may_wakeup(dwc3_imx->dev))
+		dwc3_imx8mp_wakeup_enable(dwc3_imx);
+
+	dwc3_imx->pm_suspended = true;
+
+	return 0;
+}
+
+static int __maybe_unused dwc3_imx8mp_resume(struct dwc3_imx8mp *dwc3_imx,
+					     pm_message_t msg)
+{
+	struct dwc3	*dwc = platform_get_drvdata(dwc3_imx->dwc3);
+	int ret = 0;
+
+	if (!dwc3_imx->pm_suspended)
+		return 0;
+
+	/* Wakeup disable */
+	dwc3_imx8mp_wakeup_disable(dwc3_imx);
+	dwc3_imx->pm_suspended = false;
+
+	if (dwc3_imx->wakeup_pending) {
+		dwc3_imx->wakeup_pending = false;
+		if (dwc->current_dr_role == DWC3_GCTL_PRTCAP_DEVICE) {
+			pm_runtime_mark_last_busy(dwc->dev);
+			pm_runtime_put_autosuspend(dwc->dev);
+		} else {
+			/*
+			 * Add wait for xhci switch from suspend
+			 * clock to normal clock to detect connection.
+			 */
+			usleep_range(9000, 10000);
+		}
+		enable_irq(dwc3_imx->irq);
+	}
+
+	return ret;
+}
+
+static int __maybe_unused dwc3_imx8mp_pm_suspend(struct device *dev)
+{
+	struct dwc3_imx8mp *dwc3_imx = dev_get_drvdata(dev);
+	int ret;
+
+	ret = dwc3_imx8mp_suspend(dwc3_imx, PMSG_SUSPEND);
+
+	if (device_may_wakeup(dwc3_imx->dev))
+		enable_irq_wake(dwc3_imx->irq);
+	else
+		clk_disable_unprepare(dwc3_imx->suspend_clk);
+
+	clk_disable_unprepare(dwc3_imx->hsio_clk);
+	dev_dbg(dev, "dwc3 imx8mp pm suspend.\n");
+
+	return ret;
+}
+
+static int __maybe_unused dwc3_imx8mp_pm_resume(struct device *dev)
+{
+	struct dwc3_imx8mp *dwc3_imx = dev_get_drvdata(dev);
+	int ret;
+
+	if (device_may_wakeup(dwc3_imx->dev)) {
+		disable_irq_wake(dwc3_imx->irq);
+	} else {
+		ret = clk_prepare_enable(dwc3_imx->suspend_clk);
+		if (ret)
+			return ret;
+	}
+
+	ret = clk_prepare_enable(dwc3_imx->hsio_clk);
+	if (ret)
+		return ret;
+
+	ret = dwc3_imx8mp_resume(dwc3_imx, PMSG_RESUME);
+
+	pm_runtime_disable(dev);
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+
+	dev_dbg(dev, "dwc3 imx8mp pm resume.\n");
+
+	return ret;
+}
+
+static int __maybe_unused dwc3_imx8mp_runtime_suspend(struct device *dev)
+{
+	struct dwc3_imx8mp *dwc3_imx = dev_get_drvdata(dev);
+
+	dev_dbg(dev, "dwc3 imx8mp runtime suspend.\n");
+
+	return dwc3_imx8mp_suspend(dwc3_imx, PMSG_AUTO_SUSPEND);
+}
+
+static int __maybe_unused dwc3_imx8mp_runtime_resume(struct device *dev)
+{
+	struct dwc3_imx8mp *dwc3_imx = dev_get_drvdata(dev);
+
+	dev_dbg(dev, "dwc3 imx8mp runtime resume.\n");
+
+	return dwc3_imx8mp_resume(dwc3_imx, PMSG_AUTO_RESUME);
+}
+
+static const struct dev_pm_ops dwc3_imx8mp_dev_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(dwc3_imx8mp_pm_suspend, dwc3_imx8mp_pm_resume)
+	SET_RUNTIME_PM_OPS(dwc3_imx8mp_runtime_suspend,
+			   dwc3_imx8mp_runtime_resume, NULL)
+};
+
+static const struct of_device_id dwc3_imx8mp_of_match[] = {
+	{ .compatible = "fsl,imx8mp-dwc3", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, dwc3_imx8mp_of_match);
+
+static struct platform_driver dwc3_imx8mp_driver = {
+	.probe		= dwc3_imx8mp_probe,
+	.remove		= dwc3_imx8mp_remove,
+	.driver		= {
+		.name	= "imx8mp-dwc3",
+		.pm	= &dwc3_imx8mp_dev_pm_ops,
+		.of_match_table	= dwc3_imx8mp_of_match,
+	},
+};
+
+module_platform_driver(dwc3_imx8mp_driver);
+
+MODULE_ALIAS("platform:imx8mp-dwc3");
+MODULE_AUTHOR("jun.li@nxp.com");
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("DesignWare USB3 imx8mp Glue Layer");
-- 
2.7.4

