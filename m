Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02C052B98DA
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 18:08:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727827AbgKSREY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 12:04:24 -0500
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:37961 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727241AbgKSREX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 12:04:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1605805462; x=1637341462;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=vZlbWyDpgzoHaZ8HMsTABxC1nDbsU8otDNnxYR+CtNo=;
  b=l+fzVx+s9leAKpeTDRsbEhG7AWpipTgA3ytcfUbJN5Ti7+K4fyGQuXl0
   iiWabXIv3FkhkE7DmXZjS+ILxSxMBih8rlDwMucmHoTgF9p8T0Z3kHvb/
   w2wNPfzKWaBcN1Q+4EqWNazFOUQpAwR8txng+9q4czInTzEl4Z6+839IC
   IJyvjzFh8GYTx644cfzqFrZOHJ2n0NB/PShv5CNo5HeLDzKatV+3A95zI
   NUd5tZtQuauAjeOWHurr2FTeIjA4FVYw+uJUan0I5SSNQsMoyTVfQfEna
   L654DlHez3JKpOrC+A/oDcpyipHOOLIA1NIxSKM1934zwZir15/pkGIHh
   g==;
IronPort-SDR: pG84uP0HtRhk+gFBQ78CmhPrltYVxcFBdDmUdYAhRegXxHqS1AHrhe4DFJyRus1nrTtE2is/wU
 toyMm85Z0ASh4kiImwu5zhWEJOm2AaqmEbHJ4fCaRmzy7+ZlpSEev+jreICP8gaAHGv1nOiprY
 iT84753RiK4ff5U5r4R+oTtcIKt10oCwSH2/BLlcBvoxTQM+Zo/j0h1afzXyvuCRI96fG9U+ik
 nFucbCVTh28Le9vvKmwHMLk4sa4PgquUpRRLp6NNq1DINpF6YYbsNiCGIeKZAX3CyccD1qSGSN
 OXY=
X-IronPort-AV: E=Sophos;i="5.78,353,1599548400"; 
   d="scan'208";a="34319644"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 19 Nov 2020 10:04:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 19 Nov 2020 10:04:22 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 19 Nov 2020 10:04:19 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <jassisinghbrar@gmail.com>,
        <aou@eecs.berkeley.edu>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH 1/6] mbox: add polarfire soc system controller mailbox
Date:   Thu, 19 Nov 2020 17:04:19 +0000
Message-ID: <20201119170419.18272-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

This driver adds support for the single mailbox channel of the MSS
system controller on the Microchip PolarFire SoC. 

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 drivers/mailbox/Kconfig        |  12 ++
 drivers/mailbox/Makefile       |   2 +
 drivers/mailbox/mailbox-mpfs.c | 296 +++++++++++++++++++++++++++++++++
 3 files changed, 310 insertions(+)
 create mode 100644 drivers/mailbox/mailbox-mpfs.c

diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
index 05b1009e2820..4881a519683a 100644
--- a/drivers/mailbox/Kconfig
+++ b/drivers/mailbox/Kconfig
@@ -153,6 +153,18 @@ config MAILBOX_TEST
 	  Test client to help with testing new Controller driver
 	  implementations.
 
+config MPFS_MBOX
+	tristate "MPFS Mailbox"
+	depends on HAS_IOMEM
+	depends on SOC_MICROCHIP_POLARFIRE
+	help
+	  This driver adds support for the Polarfire SoC mailbox controller.
+
+	  To compile this driver as a module, choose M here. the
+	  module will be called mailbox-mpfs.
+
+	  If unsure, say Y.
+
 config QCOM_APCS_IPC
 	tristate "Qualcomm APCS IPC driver"
 	depends on ARCH_QCOM || COMPILE_TEST
diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile
index 2e06e02b2e03..63f49b5bcc43 100644
--- a/drivers/mailbox/Makefile
+++ b/drivers/mailbox/Makefile
@@ -39,6 +39,8 @@ obj-$(CONFIG_BCM_PDC_MBOX)	+= bcm-pdc-mailbox.o
 
 obj-$(CONFIG_BCM_FLEXRM_MBOX)	+= bcm-flexrm-mailbox.o
 
+obj-$(CONFIG_MPFS_MBOX)	+= mailbox-mpfs.o
+
 obj-$(CONFIG_QCOM_APCS_IPC)	+= qcom-apcs-ipc-mailbox.o
 
 obj-$(CONFIG_TEGRA_HSP_MBOX)	+= tegra-hsp.o
diff --git a/drivers/mailbox/mailbox-mpfs.c b/drivers/mailbox/mailbox-mpfs.c
new file mode 100644
index 000000000000..686ccd3317f9
--- /dev/null
+++ b/drivers/mailbox/mailbox-mpfs.c
@@ -0,0 +1,296 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Microchip MPFS system controller/mailbox controller driver
+ *
+ * Copyright (c) 2020 Microchip Corporation. All rights reserved.
+ *
+ * Author: Conor Dooley <conor.dooley@microchip.com>
+ *
+ */
+
+#include <linux/io.h>
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/interrupt.h>
+#include <linux/platform_device.h>
+#include <linux/mailbox_controller.h>
+#include <soc/microchip/mpfs.h>
+
+#define SERVICES_CR_OFFSET			0x50u
+#define SERVICES_SR_OFFSET			0x54u
+#define MAILBOX_REG_OFFSET			0x800u
+#define MSS_SYS_SUCCESS				0u
+#define MSS_SYS_BUSY				0xefu
+#define MSS_SYS_PARAM_ERR			0xffu
+#define MSS_SYS_MAILBOX_DATA_OFFSET 0u
+
+/***************SCBCTRL  SERVICES_CR register*************************/
+
+#define SCBCTRL_SERVICESCR_REQ (0u)
+#define SCBCTRL_SERVICESCR_REQ_MASK BIT(SCBCTRL_SERVICESCR_REQ)
+
+#define SCBCTRL_SERVICESCR_BUSY (1u)
+#define SCBCTRL_SERVICESCR_BUSY_MASK BIT(SCBCTRL_SERVICESCR_BUSY)
+
+#define SCBCTRL_SERVICESCR_ABORT (2u)
+#define SCBCTRL_SERVICESCR_ABORT_MASK BIT(SCBCTRL_SERVICESCR_ABORT)
+
+#define SCBCTRL_SERVICESCR_NOTIFY (3u)
+#define SCBCTRL_SERVICESCR_NOTIFY_MASK BIT(SCBCTRL_SERVICESCR_NOTIFY)
+
+#define SCBCTRL_SERVICESCR_COMMAND (16u)
+#define SCBCTRL_SERVICESCR_COMMAND_MASK (0xffffu << SCBCTRL_SERVICESCR_COMMAND)
+
+/***************SCBCTRL  SERVICES_SR registers*************************/
+
+#define SCBCTRL_SERVICESSR_REQ (0u)
+#define SCBCTRL_SERVICESSR_REQ_MASK BIT(SCBCTRL_SERVICESSR_REQ)
+
+#define SCBCTRL_SERVICESSR_BUSY (1u)
+#define SCBCTRL_SERVICESSR_BUSY_MASK BIT(SCBCTRL_SERVICESSR_BUSY)
+
+#define SCBCTRL_SERVICESSR_ABORT (2u)
+#define SCBCTRL_SERVICESSR_ABORT_MASK BIT(SCBCTRL_SERVICESSR_ABORT)
+
+#define SCBCTRL_SERVICESSR_NOTIFY (3u)
+#define SCBCTRL_SERVICESSR_NOTIFY_MASK BIT(SCBCTRL_SERVICESSR_NOTIFY)
+
+#define SCBCTRL_SERVICESSR_STATUS (16u)
+#define SCBCTRL_SERVICESSR_STATUS_MASK (0xffffu << SCBCTRL_SERVICESSR_STATUS)
+
+struct mpfs_mbox {
+	struct mbox_controller controller;
+	struct device *dev;
+	int irq;
+	void __iomem *mailbox_base;
+	void __iomem *int_reg;
+	struct mbox_chan *chan;
+	u16 response_size;
+	u16 response_offset;
+};
+
+static int mpfs_mbox_busy(struct mpfs_mbox *mbox)
+{
+	u32 status;
+
+	status = readl_relaxed(mbox->mailbox_base + SERVICES_SR_OFFSET);
+
+	return status & SCBCTRL_SERVICESSR_BUSY_MASK;
+}
+
+static struct mpfs_mbox *mbox_chan_to_mpfs_mbox(struct mbox_chan *chan)
+{
+	if (!chan || !chan->con_priv)
+		return NULL;
+
+	return (struct mpfs_mbox *)chan->con_priv;
+}
+
+static int mpfs_mbox_send_data(struct mbox_chan *chan, void *data)
+{
+	u32 index;
+	u32 *word_buf;
+	u8 *byte_buf;
+	u8 byte_off;
+	u8 byte_index;
+	u32 mailbox_val = 0u;
+	u16 mb_offset;
+	u16 mbox_options_select;
+	u32 mbox_tx_trigger;
+
+	struct mpfs_mss_msg *msg = data;
+
+	struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
+
+	mb_offset = msg->mailbox_offset;
+	mbox->response_size = msg->response_size;
+	mbox->response_offset = msg->response_offset;
+
+	mbox_options_select = ((mb_offset << 7u) | (msg->cmd_opcode & 0x7fu));
+	mbox_tx_trigger = (((mbox_options_select << SCBCTRL_SERVICESCR_COMMAND) &
+		SCBCTRL_SERVICESCR_COMMAND_MASK) |
+		SCBCTRL_SERVICESCR_REQ_MASK | SCBCTRL_SERVICESSR_NOTIFY_MASK);
+
+	if (mpfs_mbox_busy(mbox))
+		return MSS_SYS_BUSY;
+
+	/* Code for MSS_SYS_PARAM_ERR is not implemented with this version of driver. */
+
+	writel_relaxed(0x0U, mbox->int_reg);
+
+	if (msg->cmd_data_size > 0u) {
+		byte_buf = (u8 *)(msg->cmd_data);
+
+		for (index = 0u; index < (msg->cmd_data_size / 4u); index++) {
+			writel_relaxed(word_buf[index],
+				       mbox->mailbox_base + MAILBOX_REG_OFFSET + index);
+		}
+
+		if ((msg->cmd_data_size % 4u) > 0u) {
+			byte_off = (((msg->cmd_data_size / 4u) * 4u));
+			byte_buf = (u8 *)(msg->cmd_data + byte_off);
+
+			mailbox_val = readl_relaxed(mbox->mailbox_base +
+					    MAILBOX_REG_OFFSET + index);
+
+			for (byte_index = 0u;
+			     byte_index < (msg->cmd_data_size % 4u);
+			     byte_index++) {
+				mailbox_val &= ~(0xffu << (byte_index * 8u));
+				mailbox_val |= (byte_buf[byte_index]
+						<< (byte_index * 8u));
+			}
+
+			writel_relaxed(mailbox_val,
+				       mbox->mailbox_base + MAILBOX_REG_OFFSET + index);
+		}
+	}
+
+	writel_relaxed(mbox_tx_trigger, mbox->mailbox_base + SERVICES_CR_OFFSET);
+
+	return MSS_SYS_SUCCESS;
+}
+
+static inline int mpfs_mbox_pending(struct mpfs_mbox *mbox)
+{
+	u32 status;
+
+	status = readl_relaxed(mbox->mailbox_base + SERVICES_SR_OFFSET);
+
+	return !(status & SCBCTRL_SERVICESSR_BUSY_MASK);
+}
+
+static void mpfs_mbox_rx_data(struct mbox_chan *chan)
+{
+	struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
+	u32 *data;
+	u32 index;
+	u32 response_limit;
+
+	data = devm_kzalloc(mbox->dev, sizeof(*data) * mbox->response_size,
+			    GFP_ATOMIC);
+
+	response_limit = (mbox->response_size) + (mbox->response_offset);
+	if (mpfs_mbox_pending(mbox) && mbox->response_size > 0U) {
+		for (index = (mbox->response_offset); index < response_limit;
+		     index++) {
+			data[index - (mbox->response_offset)] =
+				readl_relaxed(mbox->mailbox_base + MAILBOX_REG_OFFSET +
+				      index * 0x4);
+		}
+	}
+
+	mbox_chan_received_data(chan, (void *)data);
+	devm_kfree(mbox->dev, data);
+}
+
+static irqreturn_t mpfs_mbox_inbox_isr(int irq, void *data)
+{
+	struct mbox_chan *chan = (struct mbox_chan *)data;
+	struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
+
+	writel_relaxed(0x0U, mbox->int_reg);
+
+	mpfs_mbox_rx_data(chan);
+
+	mbox_chan_txdone(chan, 0);
+	return IRQ_HANDLED;
+}
+
+static int mpfs_mbox_startup(struct mbox_chan *chan)
+{
+	struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
+	int ret = 0;
+
+	if (!mbox)
+		return -EINVAL;
+	ret = devm_request_irq(mbox->dev, mbox->irq, mpfs_mbox_inbox_isr, 0,
+			       "mpfs-mailbox", chan);
+	if (unlikely(ret)) {
+		dev_err(mbox->dev, "failed to register mailbox interrupt:%d\n",
+			ret);
+		return ret;
+	}
+
+	return ret;
+}
+
+static void mpfs_mbox_shutdown(struct mbox_chan *chan)
+{
+	struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
+
+	devm_free_irq(mbox->dev, mbox->irq, chan);
+}
+
+static const struct mbox_chan_ops mpfs_mbox_ops = {
+	.send_data = mpfs_mbox_send_data,
+	.startup = mpfs_mbox_startup,
+	.shutdown = mpfs_mbox_shutdown,
+};
+
+static int mpfs_mbox_probe(struct platform_device *pdev)
+{
+	struct mpfs_mbox *mbox;
+	struct resource *regs;
+	struct mbox_chan *chans;
+	int ret;
+
+	mbox = devm_kzalloc(&pdev->dev, sizeof(*mbox), GFP_KERNEL);
+	if (!mbox)
+		return -ENOMEM;
+
+	chans = devm_kzalloc(&pdev->dev, sizeof(*chans), GFP_KERNEL);
+	if (!chans)
+		return -ENOMEM;
+
+	mbox->mailbox_base = devm_platform_get_and_ioremap_resource(pdev, 0, &regs);
+	if (IS_ERR(mbox->mailbox_base))
+		return PTR_ERR(mbox->mailbox_base);
+
+	mbox->int_reg = devm_platform_get_and_ioremap_resource(pdev, 1, &regs);
+	if (IS_ERR(mbox->int_reg))
+		return PTR_ERR(mbox->int_reg);
+
+	mbox->irq = platform_get_irq(pdev, 0);
+
+	mbox->dev = &pdev->dev;
+
+	chans[0].con_priv = mbox;
+	mbox->controller.dev = mbox->dev;
+	mbox->controller.num_chans = 1;
+	mbox->controller.chans = chans;
+	mbox->controller.ops = &mpfs_mbox_ops;
+	mbox->controller.txdone_irq = true;
+
+	ret = devm_mbox_controller_register(&pdev->dev, &mbox->controller);
+	if (ret) {
+		dev_err(&pdev->dev, "Registering MPFS mailbox controller failed\n");
+		return -1;
+	}
+	dev_info(&pdev->dev, "Registered MPFS mailbox controller driver\n");
+
+	return 0;
+}
+
+static const struct of_device_id mpfs_mbox_of_match[] = {
+	{
+		.compatible = "microchip,polarfire-soc-mailbox",
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, mpfs_mbox_of_match);
+
+static struct platform_driver mpfs_mbox_driver = {
+	.driver = {
+		.name = "mpfs-mailbox",
+		.of_match_table = mpfs_mbox_of_match,
+	},
+	.probe = mpfs_mbox_probe,
+};
+module_platform_driver(mpfs_mbox_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Conor Dooley <conor.dooley@microchip.com>");
+MODULE_DESCRIPTION("MPFS mailbox controller driver");
-- 
2.17.1

