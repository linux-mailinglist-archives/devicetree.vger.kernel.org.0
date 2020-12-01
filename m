Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5AE42CA0D8
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 12:06:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725899AbgLALEI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 06:04:08 -0500
Received: from esa2.microchip.iphmx.com ([68.232.149.84]:26065 "EHLO
        esa2.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727569AbgLALEI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 06:04:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1606820647; x=1638356647;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=BoS/sUtRsDsVazptW1C9NuUYpvVb7rt+lBZV6YSjOrE=;
  b=Un893go5rf/wPqtS6ioFjicNWrtj+4kII683yV4B8cZ/eMWmMSn/HeB4
   pbJrIJb4btMLbs4HP/6xuLxWZYJ5IHXxFFyKhBKWvVPTbfhmBsm/Opjk0
   5aF8x2Uc0PzsfeiRkerfKPXTRTKB8Ta6IBtmC4c6MAVP79sumAKWuKA2v
   JWzdH1ynr7OThGxmroUa+q963wjRCwtrlxz2eaUx9Ndn7FFVB455xzr7f
   ElfBIp0sSxePTr/M2OMzRPIlGe2HpHXk1JXM+z6+muQ1VTsaGkOKd1ict
   3AzbMwRdNA8FhcShMgnEKXNjUTh9D15FY1sqnskSWRqLYo4+tiXPVSOcH
   g==;
IronPort-SDR: oVAAE7anvCS35EzR01DXkPS00NWEu92aX56+jdTITM8WVhfkwYvj+jG1XURFbPgpNW+ZD7UkIt
 NXRxpdBxdKR9490KVsZVJbxzee4xlY3YEJzUugoPbnmSnTiKJ3WoHGjS72C4x4DMmA2qNTwymf
 XnyS9sIvoCYbXXHO/2/vymeGNtfpkdmJy46JwrPUQIlrT+7ERa79NpYc/oFmOEjRo9ucJn+8ap
 +EiHLEEhx+0gsPdHbBfayN6aOzZwLYo3oOoOA+TfldU7RqA1+a9vNORfl+TOov8b1audeOzuqj
 KqE=
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; 
   d="scan'208";a="98113697"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 01 Dec 2020 04:03:01 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 1 Dec 2020 04:03:00 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 1 Dec 2020 04:02:58 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 3/5] soc: add polarfire soc system controller
Date:   Tue, 1 Dec 2020 11:02:57 +0000
Message-ID: <20201201110257.28507-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
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
 drivers/soc/microchip/mpfs_sys_controller.c | 135 ++++++++++++++++++++
 5 files changed, 148 insertions(+)
 create mode 100644 drivers/soc/microchip/Kconfig
 create mode 100644 drivers/soc/microchip/Makefile
 create mode 100644 drivers/soc/microchip/mpfs_sys_controller.c

diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index 425ab6f7e375..22cb097bcbdc 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -9,6 +9,7 @@ source "drivers/soc/bcm/Kconfig"
 source "drivers/soc/fsl/Kconfig"
 source "drivers/soc/imx/Kconfig"
 source "drivers/soc/ixp4xx/Kconfig"
+source "drivers/soc/microchip/Kconfig"
 source "drivers/soc/mediatek/Kconfig"
 source "drivers/soc/qcom/Kconfig"
 source "drivers/soc/renesas/Kconfig"
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 36452bed86ef..fb084cf2d12e 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_ARCH_GEMINI)	+= gemini/
 obj-y				+= imx/
 obj-$(CONFIG_ARCH_IXP4XX)	+= ixp4xx/
 obj-$(CONFIG_SOC_XWAY)		+= lantiq/
+obj-$(CONFIG_SOC_MICROCHIP_POLARFIRE)	+= microchip/
 obj-y				+= mediatek/
 obj-y				+= amlogic/
 obj-y				+= qcom/
diff --git a/drivers/soc/microchip/Kconfig b/drivers/soc/microchip/Kconfig
new file mode 100644
index 000000000000..40e5203c8ba0
--- /dev/null
+++ b/drivers/soc/microchip/Kconfig
@@ -0,0 +1,10 @@
+config MPFS_SYS_CONTROLLER
+	tristate "MPFS_SYS_CONTROLLER"
+	depends on MPFS_MBOX
+	help
+	  This driver adds support for the Polarfire SoC system controller.
+
+	  To compile this driver as a module, choose M here. the
+	  module will be called mpfs_system_controller.
+
+	  If unsure, say N.
diff --git a/drivers/soc/microchip/Makefile b/drivers/soc/microchip/Makefile
new file mode 100644
index 000000000000..23b1f42a37db
--- /dev/null
+++ b/drivers/soc/microchip/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_MPFS_SYS_CONTROLLER)	+= mpfs_sys_controller.o
diff --git a/drivers/soc/microchip/mpfs_sys_controller.c b/drivers/soc/microchip/mpfs_sys_controller.c
new file mode 100644
index 000000000000..875a0671e196
--- /dev/null
+++ b/drivers/soc/microchip/mpfs_sys_controller.c
@@ -0,0 +1,135 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Microchip MPFS system controller driver
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
+	void *response;
+	u16 response_size_bytes;
+};
+
+int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client, void *msg,
+			      void *response, u16 response_size_bytes)
+{
+	int ret;
+
+	mpfs_client->response = response;
+	mpfs_client->response_size_bytes = response_size_bytes;
+
+	mutex_lock_interruptible(&transaction_lock);
+
+	reinit_completion(&mpfs_client->c);
+
+	ret = mbox_send_message(mpfs_client->chan, msg);
+	if (ret >= 0) {
+		if (wait_for_completion_timeout(&mpfs_client->c, HZ)) {
+			ret = 0;
+		} else {
+			ret = -ETIMEDOUT;
+			dev_warn(mpfs_client->client.dev, "MPFS sys controller transaction timeout");
+		}
+	} else {
+		dev_err(mpfs_client->client.dev,
+			"mpfs sys controller transaction returned %d\r\n", ret);
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
+	memcpy(mpfs_client->response, (u8 *)msg,
+	       mpfs_client->response_size_bytes);
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
+	mpfs_client->chan = mbox_request_channel_byname(&mpfs_client->client,
+							"mbox-mpfs");
+	if (IS_ERR(mpfs_client->chan)) {
+		int ret = PTR_ERR(mpfs_client->chan);
+
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get mbox channel: %d\n", ret);
+		return ret;
+	}
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
+	{
+		.compatible = "microchip,polarfire-soc-sys-controller",
+	},
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
2.17.1

