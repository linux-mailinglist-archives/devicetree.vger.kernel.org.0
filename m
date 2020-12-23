Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72FA82E1F76
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 17:34:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725957AbgLWQeP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 11:34:15 -0500
Received: from esa.microchip.iphmx.com ([68.232.153.233]:62857 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725785AbgLWQeP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 11:34:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1608741254; x=1640277254;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=YwYB+WOtpYKvAv4y2yVoR1fKm+XG11/A71tqgdjHX1A=;
  b=mmNtZy2o6UVot1qOWKHsYcfl6Oi6SvhoB40xIUqBuaqcqtJN1cqxc5VW
   oV/09KMatzntOZymFcfSTVNFvoP6Xctte9DE2mlHBe4P4jdtrYaQ9Y8Zb
   4B9WLdSF8Sj/t0LlKq74f8NTWe6059gTRMy+fWUM8enNbiO0Vuycy7Kt+
   CKFI1ax4etm+8C2munOroRVYepmT80GoX1amne0Us7Fn2ZN5Nt7Phjy2l
   B7EIkKOFsmM2WYdKPUu49OCkyJQEvborY+HTSW7IJrmZ2Sm97TYXL1N7g
   ho6q8lckSUti5RbZp4JKU5QmU7TcHULTwiJk3DuO/+PZCfEVih9cvBnid
   w==;
IronPort-SDR: 14SSg/UVpgo6PP51cEFaFXIwH1I6WRqAcqXtiKgLqvn8rRLnIUH/uZRzOm6iGuy3ZrE+ra879C
 uuqNOyytORxQ8bB3MlhBiXWySxBjHZ0keV+Nv0aX9mpGrKnqtZXaHxCtd9kzrKhsqveEDIKeeX
 s+X/2x20eVZ9zRnXO1lmSmxjzd5OetCFTqu5QMFv8xgKvlgB0PjITtUNJ8B7aVXx/wP/ssBYdS
 1eAmVFxFKtEQ9u5TUk7MfvKY6SZjTbuHdySA4z/gIJKxpqO1IvFMZISr8fpe6GBZFceG+SDaYZ
 cic=
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; 
   d="scan'208";a="103833415"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2020 09:32:58 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 23 Dec 2020 09:32:58 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 23 Dec 2020 09:32:56 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        <j.neuschaefer@gmx.net>, Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/5] mbox: add polarfire soc system controller mailbox
Date:   Wed, 23 Dec 2020 16:32:55 +0000
Message-ID: <20201223163255.28992-1-conor.dooley@microchip.com>
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
 drivers/mailbox/mailbox-mpfs.c | 285 +++++++++++++++++++++++++++++++++
 include/soc/microchip/mpfs.h   |  51 ++++++
 4 files changed, 350 insertions(+)
 create mode 100644 drivers/mailbox/mailbox-mpfs.c
 create mode 100644 include/soc/microchip/mpfs.h

diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
index 05b1009e2820..9aa18631c50b 100644
--- a/drivers/mailbox/Kconfig
+++ b/drivers/mailbox/Kconfig
@@ -153,6 +153,18 @@ config MAILBOX_TEST
 	  Test client to help with testing new Controller driver
 	  implementations.
 
+config POLARFIRE_SOC_MAILBOX
+	tristate "PolarFire SoC (MPFS) Mailbox"
+	depends on HAS_IOMEM
+	depends on SOC_MICROCHIP_POLARFIRE || COMPILE_TEST
+	help
+	  This driver adds support for the PolarFire SoC (MPFS) mailbox controller.
+
+	  To compile this driver as a module, choose M here. the
+	  module will be called mailbox-mpfs.
+
+	  If unsure, say N.
+
 config QCOM_APCS_IPC
 	tristate "Qualcomm APCS IPC driver"
 	depends on ARCH_QCOM || COMPILE_TEST
diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile
index 2e06e02b2e03..77b79a0c384c 100644
--- a/drivers/mailbox/Makefile
+++ b/drivers/mailbox/Makefile
@@ -39,6 +39,8 @@ obj-$(CONFIG_BCM_PDC_MBOX)	+= bcm-pdc-mailbox.o
 
 obj-$(CONFIG_BCM_FLEXRM_MBOX)	+= bcm-flexrm-mailbox.o
 
+obj-$(CONFIG_POLARFIRE_SOC_MAILBOX)	+= mailbox-mpfs.o
+
 obj-$(CONFIG_QCOM_APCS_IPC)	+= qcom-apcs-ipc-mailbox.o
 
 obj-$(CONFIG_TEGRA_HSP_MBOX)	+= tegra-hsp.o
diff --git a/drivers/mailbox/mailbox-mpfs.c b/drivers/mailbox/mailbox-mpfs.c
new file mode 100644
index 000000000000..b31317a8f44e
--- /dev/null
+++ b/drivers/mailbox/mailbox-mpfs.c
@@ -0,0 +1,285 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Microchip PolarFire SoC (MPFS) system controller/mailbox controller driver
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
+#define SERVICES_CR_OFFSET		0x50u
+#define SERVICES_SR_OFFSET		0x54u
+#define MAILBOX_REG_OFFSET		0x800u
+#define MSS_SYS_BUSY			-EBUSY
+#define MSS_SYS_PARAM_ERR		-EINVAL
+#define MSS_SYS_MAILBOX_DATA_OFFSET	0u
+#define SCB_MASK_WIDTH			16u
+
+/* SCBCTRL service control register */
+
+#define SCB_CTRL_REQ (0)
+#define SCB_CTRL_REQ_MASK BIT(SCB_CTRL_REQ)
+
+#define SCB_CTRL_BUSY (1)
+#define SCB_CTRL_BUSY_MASK BIT(SCB_CTRL_BUSY)
+
+#define SCB_CTRL_ABORT (2)
+#define SCB_CTRL_ABORT_MASK BIT(SCB_CTRL_ABORT)
+
+#define SCB_CTRL_NOTIFY (3)
+#define SCB_CTRL_NOTIFY_MASK BIT(SCB_CTRL_NOTIFY)
+
+#define SCB_CTRL_POS (16)
+#define SCB_CTRL_MASK GENMASK(SCB_CTRL_POS + SCB_MASK_WIDTH, SCB_CTRL_POS)
+
+/* SCBCTRL service status registers */
+
+#define SCB_STATUS_REQ (0)
+#define SCB_STATUS_REQ_MASK BIT(SCB_STATUS_REQ)
+
+#define SCB_STATUS_BUSY (1)
+#define SCB_STATUS_BUSY_MASK BIT(SCB_STATUS_BUSY)
+
+#define SCB_STATUS_ABORT (2)
+#define SCB_STATUS_ABORT_MASK BIT(SCB_STATUS_ABORT)
+
+#define SCB_STATUS_NOTIFY (3)
+#define SCB_STATUS_NOTIFY_MASK BIT(SCB_STATUS_NOTIFY)
+
+#define SCB_STATUS_POS (16)
+#define SCB_STATUS_MASK GENMASK(SCB_STATUS_POS + SCB_MASK_WIDTH, SCB_STATUS_POS)
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
+static bool mpfs_mbox_busy(struct mpfs_mbox *mbox)
+{
+	u32 status;
+
+	status = readl_relaxed(mbox->mailbox_base + SERVICES_SR_OFFSET);
+
+	return status & SCB_STATUS_BUSY_MASK;
+}
+
+static struct mpfs_mbox *mbox_chan_to_mpfs_mbox(struct mbox_chan *chan)
+{
+	if (!chan)
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
+	u8 extra_bits;
+	u8 i;
+	u32 mailbox_val = 0u;
+	u16 mbox_offset;
+	u16 mbox_options_select;
+	u32 mbox_tx_trigger;
+	struct mpfs_mss_msg *msg = data;
+	struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
+
+	mbox_offset = msg->mailbox_offset;
+	mbox->response_size = msg->response_size;
+	mbox->response_offset = msg->response_offset;
+
+	if (mpfs_mbox_busy(mbox))
+		return MSS_SYS_BUSY;
+
+	mbox_options_select = ((mbox_offset << 7u) | (msg->cmd_opcode & 0x7fu));
+	mbox_tx_trigger = (((mbox_options_select << SCB_CTRL_POS) &
+		SCB_CTRL_MASK) | SCB_CTRL_REQ_MASK | SCB_STATUS_NOTIFY_MASK);
+
+	/* Code for MSS_SYS_PARAM_ERR is not implemented with this version of driver. */
+
+	writel_relaxed(0, mbox->int_reg);
+
+	if (msg->cmd_data_size) {
+		byte_buf = msg->cmd_data;
+
+		for (index = 0; index < (msg->cmd_data_size / 4); index++)
+			writel_relaxed(word_buf[index],
+				       mbox->mailbox_base + MAILBOX_REG_OFFSET + index);
+		extra_bits = msg->cmd_data_size & 3;
+		if (extra_bits) {
+			byte_off = ALIGN_DOWN(msg->cmd_data_size, 4);
+			byte_buf = msg->cmd_data + byte_off;
+
+			mailbox_val = readl_relaxed(mbox->mailbox_base +
+						    MAILBOX_REG_OFFSET + index);
+
+			for (i = 0u; i < extra_bits; i++) {
+				mailbox_val &= ~(0xffu << (i * 8u));
+				mailbox_val |= (byte_buf[i] << (i * 8u));
+			}
+
+			writel_relaxed(mailbox_val,
+				       mbox->mailbox_base + MAILBOX_REG_OFFSET + index);
+		}
+	}
+
+	writel_relaxed(mbox_tx_trigger, mbox->mailbox_base + SERVICES_CR_OFFSET);
+
+	return 0;
+}
+
+static inline bool mpfs_mbox_pending(struct mpfs_mbox *mbox)
+{
+	u32 status;
+
+	status = readl_relaxed(mbox->mailbox_base + SERVICES_SR_OFFSET);
+
+	return !(status & SCB_STATUS_BUSY_MASK);
+}
+
+static void mpfs_mbox_rx_data(struct mbox_chan *chan)
+{
+	struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
+	u32 *data;
+	u32 i;
+	u32 response_limit;
+
+	data = devm_kzalloc(mbox->dev, sizeof(*data) * mbox->response_size, GFP_ATOMIC);
+	if (!data)
+		dev_err(mbox->dev, "failed to assign memory for response\n", -ENOMEM);
+
+	response_limit = mbox->response_size + mbox->response_offset;
+	if (mpfs_mbox_pending(mbox) && mbox->response_size > 0U) {
+		for (i = mbox->response_offset; i < response_limit; i++) {
+			data[i - mbox->response_offset] =
+				readl_relaxed(mbox->mailbox_base + MAILBOX_REG_OFFSET + i * 0x4);
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
+	writel_relaxed(0, mbox->int_reg);
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
+	ret = devm_request_irq(mbox->dev, mbox->irq, mpfs_mbox_inbox_isr, 0, "mpfs-mailbox", chan);
+	if (ret)
+		dev_err(mbox->dev, "failed to register mailbox interrupt:%d\n", ret);
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
+	if (mbox->irq < 0)
+		return mbox->irq;
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
+		return ret;
+	}
+	dev_info(&pdev->dev, "Registered MPFS mailbox controller driver\n");
+
+	return 0;
+}
+
+static const struct of_device_id mpfs_mbox_of_match[] = {
+	{.compatible = "microchip,polarfire-soc-mailbox", },
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
diff --git a/include/soc/microchip/mpfs.h b/include/soc/microchip/mpfs.h
new file mode 100644
index 000000000000..4a9d335154a1
--- /dev/null
+++ b/include/soc/microchip/mpfs.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *
+ * Microchip PolarFire SoC (MPFS) mailbox
+ *
+ * Copyright (c) 2020 Microchip Corporation. All rights reserved.
+ *
+ * Author: Conor Dooley <conor.dooley@microchip.com>
+ *
+ */
+
+#ifndef __SOC_MPFS_H__
+#define __SOC_MPFS_H__
+
+#include <linux/types.h>
+#include <linux/of_device.h>
+
+struct mpfs_sys_controller;
+
+struct mpfs_mss_msg {
+	u8 cmd_opcode;
+	u16 cmd_data_size;
+	u16 response_size;
+	u8 *cmd_data;
+	u16 mailbox_offset;
+	u16 response_offset;
+};
+
+#if IS_ENABLED(CONFIG_POLARFIRE_SOC_SYS_CTRL)
+
+int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client, void *msg,
+			      void *response, u16 response_size_bytes);
+
+struct mpfs_sys_controller *mpfs_sys_controller_get(struct device_node *mailbox_node);
+
+#else
+
+static int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client, void *msg,
+				     void *response, u16 response_size_bytes)
+{
+	return -ENOSYS;
+}
+
+struct mpfs_sys_controller *mpfs_sys_controller_get(struct device_node *mailbox_node)
+{
+	return NULL;
+}
+
+#endif /* if IS_ENABLED(CONFIG_POLARFIRE_SOC_SYS_CTRL) */
+
+#endif /* __SOC_MPFS_H__ */
-- 
2.17.1

