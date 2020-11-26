Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0BAB2C522F
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 11:39:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730850AbgKZKhy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 05:37:54 -0500
Received: from mga03.intel.com ([134.134.136.65]:15770 "EHLO mga03.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730546AbgKZKhy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Nov 2020 05:37:54 -0500
IronPort-SDR: 18BwMHGT5kuWGSSjE63qmZCMTk+IFmDVpIj70jDqV4qHQB/ZV0/9+3rm1HzoRp8nVRYwQoMZei
 e4YQ/NWSySeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172366545"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; 
   d="scan'208";a="172366545"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2020 02:37:53 -0800
IronPort-SDR: 1dMTm4mFsksw4N65UZxrIeqMksOzBKKfeHT1DJ52x6JXHMl3W3/LYJfeElnB1Kp0wYwHmuagFQ
 iMyBR7PFSn1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; 
   d="scan'208";a="313341786"
Received: from ubuntu18.png.intel.com ([10.88.229.38])
  by fmsmga008.fm.intel.com with ESMTP; 26 Nov 2020 02:37:50 -0800
From:   vijayakannan.ayyathurai@intel.com
To:     daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, andriy.shevchenko@linux.intel.com,
        mgross@linux.intel.com, wan.ahmad.zainie.wan.mohamad@intel.com,
        lakshmi.bai.raja.subramanian@intel.com,
        vijayakannan.ayyathurai@intel.com
Subject: [PATCH v1 2/2] clocksource: Add Intel Keem Bay Timer Support
Date:   Thu, 26 Nov 2020 18:34:09 +0800
Message-Id: <cf19c720505c5388ae1b73398a65ee8a5f447c38.1606377035.git.vijayakannan.ayyathurai@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
References: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
In-Reply-To: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
References: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>

Add generic clocksource and clockevent driver for the timer IP
used in Intel Keem Bay SoC.

One free running Counter used as a clocksource device and one Timer
used as a clockevent device. Both are enabled through TIM_GEN_CONFIG
register. This register is in the DT resource index 1.

Timer/Counter base register is in the DT resource index 0
and it's map/unmap handled by TIMER OF api.

Signed-off-by: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
Acked-by: Mark Gross <mgross@linux.intel.com>
Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/clocksource/Kconfig         |  10 ++
 drivers/clocksource/Makefile        |   1 +
 drivers/clocksource/timer-keembay.c | 221 ++++++++++++++++++++++++++++
 3 files changed, 232 insertions(+)
 create mode 100644 drivers/clocksource/timer-keembay.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 68b087bff59c..b1f29e12c571 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -738,4 +738,14 @@ config MICROCHIP_PIT64B
 	  modes and high resolution. It is used as a clocksource
 	  and a clockevent.
 
+config KEEMBAY_TIMER
+	bool "Intel Keem Bay timer driver"
+	depends on ARCH_KEEMBAY || (ARM64 && COMPILE_TEST)
+	select TIMER_OF
+	help
+	  This option enables the support for the Intel Keem Bay general
+	  purpose timer and free running counter driver. Each timer can
+	  generate an individual interrupt and the 64 bit counter can also
+	  be used as one of the clock source.
+
 endmenu
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 1c444cc3bb44..f6cfc362b406 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -94,3 +94,4 @@ obj-$(CONFIG_CSKY_MP_TIMER)		+= timer-mp-csky.o
 obj-$(CONFIG_GX6605S_TIMER)		+= timer-gx6605s.o
 obj-$(CONFIG_HYPERV_TIMER)		+= hyperv_timer.o
 obj-$(CONFIG_MICROCHIP_PIT64B)		+= timer-microchip-pit64b.o
+obj-$(CONFIG_KEEMBAY_TIMER)		+= timer-keembay.o
diff --git a/drivers/clocksource/timer-keembay.c b/drivers/clocksource/timer-keembay.c
new file mode 100644
index 000000000000..41b9bbb3382d
--- /dev/null
+++ b/drivers/clocksource/timer-keembay.c
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Intel Keem Bay Timer driver
+ *
+ * Copyright (C) 2020 Intel Corporation
+ */
+
+#include <linux/bits.h>
+#include <linux/interrupt.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/sizes.h>
+
+#include "timer-of.h"
+
+/* Registers offset */
+#define TIM_CNT_VAL_OFFSET		0
+#define TIM_RELOAD_VAL_OFFSET		SZ_4
+#define TIM_CONFIG_OFFSET		SZ_8
+
+/* Bit fields of TIM_GEN_CONFIG register */
+#define TIM_CONFIG_PRESCALER_ENABLE	BIT(2)
+
+/* Bit fields of TIM_CONFIG registers */
+#define TIM_CONFIG_INTERRUPT_PENDING	BIT(4)
+#define TIM_CONFIG_INTERRUPT_ENABLE	BIT(2)
+#define TIM_CONFIG_RESTART		BIT(1)
+#define TIM_CONFIG_ENABLE		BIT(0)
+
+#define TIM_RATING			200
+#define TIM_CLKSRC_BITS			SZ_64
+
+struct keembay_init_data {
+	struct timer_of	*cfg;
+	void __iomem	*base;
+	u32		mask;
+};
+
+static inline void keembay_timer_disable(void __iomem *base)
+{
+	writel(0, base + TIM_CONFIG_OFFSET);
+}
+
+static inline void keembay_timer_enable(void __iomem *base, u32 flags)
+{
+	writel(TIM_CONFIG_ENABLE | flags, base + TIM_CONFIG_OFFSET);
+}
+
+static inline void keembay_timer_update_counter(void __iomem *base, u32 val)
+{
+	writel(val, base + TIM_CNT_VAL_OFFSET);
+	writel(val, base + TIM_RELOAD_VAL_OFFSET);
+}
+
+static int keembay_timer_set_next_event(unsigned long evt,
+					struct clock_event_device *ce)
+{
+	u32 flags = TIM_CONFIG_INTERRUPT_ENABLE;
+	struct timer_of *to = to_timer_of(ce);
+
+	/* setup and enable oneshot timer */
+	keembay_timer_disable(timer_of_base(to));
+	keembay_timer_update_counter(timer_of_base(to), evt);
+	keembay_timer_enable(timer_of_base(to), flags);
+
+	return 0;
+}
+
+static int keembay_timer_periodic(struct clock_event_device *ce)
+{
+	u32 flags = TIM_CONFIG_INTERRUPT_ENABLE | TIM_CONFIG_RESTART;
+	struct timer_of *to = to_timer_of(ce);
+
+	/* setup and enable periodic timer */
+	keembay_timer_disable(timer_of_base(to));
+	keembay_timer_update_counter(timer_of_base(to), timer_of_period(to));
+	keembay_timer_enable(timer_of_base(to), flags);
+
+	return 0;
+}
+
+static int keembay_timer_shutdown(struct clock_event_device *ce)
+{
+	struct timer_of *to = to_timer_of(ce);
+
+	keembay_timer_disable(timer_of_base(to));
+
+	return 0;
+}
+
+static irqreturn_t keembay_timer_isr(int irq, void *dev_id)
+{
+	struct clock_event_device *evt = dev_id;
+	struct timer_of *to = to_timer_of(evt);
+	u32 val;
+
+	val = readl(timer_of_base(to) + TIM_CONFIG_OFFSET);
+	val &= ~TIM_CONFIG_INTERRUPT_PENDING;
+	writel(val, timer_of_base(to) + TIM_CONFIG_OFFSET);
+
+	if (clockevent_state_oneshot(evt))
+		keembay_timer_disable(timer_of_base(to));
+
+	evt->event_handler(evt);
+
+	return IRQ_HANDLED;
+}
+
+static int __init keembay_init_pre(struct device_node *np,
+				   struct keembay_init_data *data)
+{
+	struct timer_of *to = data->cfg;
+	u32 val;
+	int ret;
+
+	data->base = of_iomap(np, 1);
+	if (!data->base)
+		return -ENXIO;
+
+	val = readl(data->base + TIM_CONFIG_OFFSET);
+	if (!(val & data->mask)) {
+		iounmap(data->base);
+		return -ENODEV;
+	}
+
+	ret = timer_of_init(np, to);
+	if (ret)
+		iounmap(data->base);
+
+	return ret;
+}
+
+static void keembay_init_post(struct device_node *np,
+			      struct keembay_init_data *data)
+{
+	iounmap(data->base);
+}
+
+static struct timer_of keembay_ce_to = {
+	.flags	= TIMER_OF_IRQ | TIMER_OF_BASE | TIMER_OF_CLOCK,
+	.clkevt = {
+		.name			= "keembay_timer",
+		.features		= CLOCK_EVT_FEAT_PERIODIC |
+					  CLOCK_EVT_FEAT_ONESHOT,
+		.rating			= TIM_RATING,
+		.set_next_event		= keembay_timer_set_next_event,
+		.set_state_periodic	= keembay_timer_periodic,
+		.set_state_shutdown	= keembay_timer_shutdown,
+	},
+	.of_irq = {
+		.handler = keembay_timer_isr,
+		.flags = IRQF_TIMER | IRQF_IRQPOLL,
+	},
+};
+
+static int __init keembay_timer_init(struct device_node *np)
+{
+	struct keembay_init_data data;
+	u32 val;
+	int ret;
+
+	data.mask = TIM_CONFIG_PRESCALER_ENABLE;
+	data.cfg = &keembay_ce_to;
+	ret = keembay_init_pre(np, &data);
+	if (ret)
+		return ret;
+
+	val = readl(data.base + TIM_RELOAD_VAL_OFFSET);
+
+	keembay_ce_to.clkevt.cpumask = cpumask_of(0);
+	keembay_ce_to.of_clk.rate = keembay_ce_to.of_clk.rate / (val + 1);
+
+	keembay_timer_disable(timer_of_base(&keembay_ce_to));
+
+	keembay_init_post(np, &data);
+
+	clockevents_config_and_register(&keembay_ce_to.clkevt,
+					timer_of_rate(&keembay_ce_to), 1,
+					U32_MAX);
+	return 0;
+}
+
+static struct timer_of keembay_cs_to = {
+	.flags	= TIMER_OF_BASE | TIMER_OF_CLOCK,
+};
+
+static u64 notrace keembay_clocksource_read(struct clocksource *cs)
+{
+	return lo_hi_readq(timer_of_base(&keembay_cs_to));
+}
+
+static struct clocksource keembay_counter = {
+	.name			= "keembay_sys_counter",
+	.rating			= TIM_RATING,
+	.read			= keembay_clocksource_read,
+	.mask			= CLOCKSOURCE_MASK(TIM_CLKSRC_BITS),
+	.flags			= CLOCK_SOURCE_IS_CONTINUOUS |
+				  CLOCK_SOURCE_SUSPEND_NONSTOP,
+};
+
+static int __init keembay_counter_init(struct device_node *np)
+{
+	struct keembay_init_data data;
+	int ret;
+
+	data.mask = TIM_CONFIG_ENABLE;
+	data.cfg = &keembay_cs_to;
+	ret = keembay_init_pre(np, &data);
+	if (ret)
+		return ret;
+
+	keembay_init_post(np, &data);
+
+	return clocksource_register_hz(&keembay_counter,
+				       timer_of_rate(&keembay_cs_to));
+}
+
+TIMER_OF_DECLARE(keembay_timer, "intel,keembay-timer", keembay_timer_init);
+TIMER_OF_DECLARE(keembay_sys_counter, "intel,keembay-counter",
+		 keembay_counter_init);
-- 
2.17.1

