Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 811D33B322B
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 17:02:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230267AbhFXPEX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 11:04:23 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:10332 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230249AbhFXPEX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 11:04:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1624546925; x=1656082925;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=+hysN7uppNBxXU4G8gz4qACDyd+5MZH9w/le/rKF1kk=;
  b=XJOuv/fRfZ01faM/s24arWvbL43fGyAEBFVhjdy1CnYShmC6OIJKoKXz
   W6rXPaDlv1QRLQmsfx0KbQPzvDwbuLcdQsoIsQOFXIyO4ylApSZ6nniq8
   CfPzuYN2MAEsSzgigEoneAM9FEKnyMIDpZ+2s3X2WwR/Wu7KOV1s2tjKX
   0Y4a8SnFNBDxyyETMupLD4zjWyMvZfMb7q3dZ+Gqy+Xy8gqdZWb6hyqNc
   J6nYXqpgfdostBW1PZ7PKf+C1yycv+ql7yUAJln84jd9OHS9E+fy4gcTr
   8lXBckdzMntM8/cwjJwdCZRZ0siK5bKHtRya7TfrnHMlWMJbiEyeP/5pi
   A==;
IronPort-SDR: 3BF/SN3lAw5xFX05E8DTgYrKS9pQFhVk1GYPsBSWQ+NwVrMJb5H2pxgn87I8HcSGsYVwO1JUP3
 sUpK9I95P++rYRBORHUl06W93Olqze4YGdHRnysVIEy1bki+Is4/CSIeonetl8gXR9WS+Lx83p
 0x68mIHJzCg7SE8ttEwGZQnNHcUUstnffWblGnLvzdx2LR9p5Uf0Ht21WgGZwtjAB+n+ARF+l1
 Rqg/w1RF/Z7Q1Rlw2lyK1muTZKMF+XUHzu8sGsoOcpKTF4rKYWhIsrvUDmSIZ2mzLe+PuBvNFd
 bUs=
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; 
   d="scan'208";a="125939057"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 24 Jun 2021 08:01:48 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 24 Jun 2021 08:01:47 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 24 Jun 2021 08:01:44 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <j.neuschaefer@gmx.net>, <sfr@canb.auug.org.au>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v9 4/5] soc: add polarfire soc system controller
Date:   Thu, 24 Jun 2021 16:01:44 +0100
Message-ID: <20210624150144.11590-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

This driver provides an interface for other drivers to access the
functions of the system controller on the Microchip PolarFire SoC.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 drivers/soc/Kconfig                         |   1 +
 drivers/soc/Makefile                        |   1 +
 drivers/soc/microchip/Kconfig               |  10 ++
 drivers/soc/microchip/Makefile              |   1 +
 drivers/soc/microchip/mpfs-sys-controller.c | 121 ++++++++++++++++++++
 5 files changed, 134 insertions(+)
 create mode 100644 drivers/soc/microchip/Kconfig
 create mode 100644 drivers/soc/microchip/Makefile
 create mode 100644 drivers/soc/microchip/mpfs-sys-controller.c

diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index e8a30c4c5aec..b33142e020e0 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -12,6 +12,7 @@ source "drivers/soc/imx/Kconfig"
 source "drivers/soc/ixp4xx/Kconfig"
 source "drivers/soc/litex/Kconfig"
 source "drivers/soc/mediatek/Kconfig"
+source "drivers/soc/microchip/Kconfig"
 source "drivers/soc/qcom/Kconfig"
 source "drivers/soc/renesas/Kconfig"
 source "drivers/soc/rockchip/Kconfig"
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index f678e4d9e585..10cfdcd972c7 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_ARCH_IXP4XX)	+= ixp4xx/
 obj-$(CONFIG_SOC_XWAY)		+= lantiq/
 obj-$(CONFIG_LITEX_SOC_CONTROLLER) += litex/
 obj-y				+= mediatek/
+obj-y				+= microchip/
 obj-y				+= amlogic/
 obj-y				+= qcom/
 obj-y				+= renesas/
diff --git a/drivers/soc/microchip/Kconfig b/drivers/soc/microchip/Kconfig
new file mode 100644
index 000000000000..eb656b33156b
--- /dev/null
+++ b/drivers/soc/microchip/Kconfig
@@ -0,0 +1,10 @@
+config POLARFIRE_SOC_SYS_CTRL
+	tristate "POLARFIRE_SOC_SYS_CTRL"
+	depends on POLARFIRE_SOC_MAILBOX
+	help
+	  This driver adds support for the PolarFire SoC (MPFS) system controller.
+
+	  To compile this driver as a module, choose M here. the
+	  module will be called mpfs_system_controller.
+
+	  If unsure, say N.
diff --git a/drivers/soc/microchip/Makefile b/drivers/soc/microchip/Makefile
new file mode 100644
index 000000000000..14489919fe4b
--- /dev/null
+++ b/drivers/soc/microchip/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_POLARFIRE_SOC_SYS_CTRL)	+= mpfs-sys-controller.o
diff --git a/drivers/soc/microchip/mpfs-sys-controller.c b/drivers/soc/microchip/mpfs-sys-controller.c
new file mode 100644
index 000000000000..b5c23cb5df2c
--- /dev/null
+++ b/drivers/soc/microchip/mpfs-sys-controller.c
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Microchip PolarFire SoC (MPFS) system controller driver
+ *
+ * Copyright (c) 2020 Microchip Corporation. All rights reserved.
+ *
+ * Author: Conor Dooley <conor.dooley@microchip.com>
+ *
+ */
+
+#include <linux/slab.h>
+#include <linux/module.h>
+#include <linux/interrupt.h>
+#include <linux/of_platform.h>
+#include <linux/mailbox_client.h>
+#include <linux/platform_device.h>
+#include <soc/microchip/mpfs.h>
+
+static DEFINE_MUTEX(transaction_lock);
+
+struct mpfs_sys_controller {
+	struct mbox_client client;
+	struct mbox_chan *chan;
+	struct completion c;
+	u32 enabled;
+};
+
+int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client, void *msg)
+{
+	int ret;
+
+	ret = mutex_lock_interruptible(&transaction_lock);
+	if (ret)
+		return ret;
+
+	reinit_completion(&mpfs_client->c);
+
+	ret = mbox_send_message(mpfs_client->chan, msg);
+	if (ret >= 0) {
+		if (wait_for_completion_timeout(&mpfs_client->c, HZ)) {
+			ret = 0;
+		} else {
+			ret = -ETIMEDOUT;
+			dev_warn(mpfs_client->client.dev, "MPFS sys controller transaction timeout\n");
+		}
+	} else {
+		dev_err(mpfs_client->client.dev,
+			"mpfs sys controller transaction returned %d\n", ret);
+	}
+
+	mutex_unlock(&transaction_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL(mpfs_blocking_transaction);
+
+static void rx_callback(struct mbox_client *client, void *msg)
+{
+	struct mpfs_sys_controller *mpfs_client =
+		container_of(client, struct mpfs_sys_controller, client);
+
+	complete(&mpfs_client->c);
+}
+
+static int mpfs_sys_controller_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mpfs_sys_controller *mpfs_client;
+
+	mpfs_client = devm_kzalloc(dev, sizeof(*mpfs_client), GFP_KERNEL);
+	if (!mpfs_client)
+		return -ENOMEM;
+
+	mpfs_client->client.dev = dev;
+	mpfs_client->client.rx_callback = rx_callback;
+	mpfs_client->client.tx_block = 1U;
+
+	mpfs_client->chan = mbox_request_channel(&mpfs_client->client, 0);
+	if (IS_ERR(mpfs_client->chan))
+		return dev_err_probe(dev, PTR_ERR(mpfs_client->chan),
+				     "Failed to get mbox channel\n");
+
+	init_completion(&mpfs_client->c);
+
+	platform_set_drvdata(pdev, mpfs_client);
+
+	dev_info(&pdev->dev, "Registered MPFS system controller driver\n");
+
+	return 0;
+}
+
+struct mpfs_sys_controller *
+mpfs_sys_controller_get(struct device_node *mss_node)
+{
+	struct platform_device *pdev = of_find_device_by_node(mss_node);
+
+	if (!pdev)
+		return NULL;
+
+	return platform_get_drvdata(pdev);
+}
+EXPORT_SYMBOL(mpfs_sys_controller_get);
+
+static const struct of_device_id mpfs_sys_controller_of_match[] = {
+	{.compatible = "microchip,polarfire-soc-sys-controller", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, mpfs_sys_controller_of_match);
+
+static struct platform_driver mpfs_sys_controller_driver = {
+	.driver = {
+		.name = "mpfs-sys-controller",
+		.of_match_table = mpfs_sys_controller_of_match,
+	},
+	.probe = mpfs_sys_controller_probe,
+};
+module_platform_driver(mpfs_sys_controller_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Conor Dooley <conor.dooley@microchip.com>");
+MODULE_DESCRIPTION("MPFS system controller driver");
-- 
2.31.1

