Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 68993387C3
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 12:16:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727843AbfFGKQL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 06:16:11 -0400
Received: from mail.kernel.org ([198.145.29.99]:40920 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727143AbfFGKQK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 7 Jun 2019 06:16:10 -0400
Received: from localhost.localdomain (unknown [106.200.230.232])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 5BE712133D;
        Fri,  7 Jun 2019 10:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1559902564;
        bh=+dNP5pexx09qNnIkmHr+vsD+T5o/nCDJBzPPPFlj4gQ=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=QtMKRbEX6Q5R7NE2nOkMkon5wMpiE/yLWsXJBq9WxPcjI9ey7kuXlYS29ashBB/O+
         4h0LiH+Qx3mc/VhkSXB0+jS7AuiUobAJ26Ls39wxLB09tyK8tcmA7InSpln/fzbWpy
         ekp2h4NQ8+xBMQmrTKM6npamJ07IzyK04KsFZzqI=
From:   Vinod Koul <vkoul@kernel.org>
To:     Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Deepak Katragadda <dkatraga@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Mark Rutland <mark.rutland@arm.com>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, Taniya Das <tdas@codeaurora.org>,
        Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 2/2] clk: qcom: gcc: Add global clock controller driver for SM8150
Date:   Fri,  7 Jun 2019 15:42:34 +0530
Message-Id: <20190607101234.30449-2-vkoul@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607101234.30449-1-vkoul@kernel.org>
References: <20190607101234.30449-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Deepak Katragadda <dkatraga@codeaurora.org>

Add the clocks supported in global clock controller which clock the
peripherals like BLSPs, SDCC, USB, MDSS etc. Register all the clocks
to the clock framework for the clients to be able to request for them.

Signed-off-by: Deepak Katragadda <dkatraga@codeaurora.org>
Signed-off-by: Taniya Das <tdas@codeaurora.org>
[vkoul: port to upstream and tidy-up]
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 .../devicetree/bindings/clock/qcom,gcc.txt    |    1 +
 drivers/clk/qcom/Kconfig                      |    7 +
 drivers/clk/qcom/Makefile                     |    1 +
 drivers/clk/qcom/gcc-sm8150.c                 | 3649 +++++++++++++++++
 include/dt-bindings/clock/qcom,gcc-sm8150.h   |  243 ++
 5 files changed, 3901 insertions(+)
 create mode 100644 drivers/clk/qcom/gcc-sm8150.c
 create mode 100644 include/dt-bindings/clock/qcom,gcc-sm8150.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc.txt b/Documentation/devicetree/bindings/clock/qcom,gcc.txt
index 8661c3cd3ccf..1b39d949e63d 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc.txt
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc.txt
@@ -23,6 +23,7 @@ Required properties :
 			"qcom,gcc-sdm630"
 			"qcom,gcc-sdm660"
 			"qcom,gcc-sdm845"
+			"qcom,gcc-sm8150"
 
 - reg : shall contain base register location and length
 - #clock-cells : shall contain 1
diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index 18bdf34d5e64..076872d195fd 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -291,6 +291,13 @@ config SDM_LPASSCC_845
 	  Say Y if you want to use the LPASS branch clocks of the LPASS clock
 	  controller to reset the LPASS subsystem.
 
+config SM_GCC_8150
+	tristate "SM8150 Global Clock Controller"
+	help
+	  Support for the global clock controller on SM8150 devices.
+	  Say Y if you want to use peripheral devices such as UART,
+	  SPI, I2C, USB, SD/eMMC, PCIe etc.
+
 config SPMI_PMIC_CLKDIV
 	tristate "SPMI PMIC clkdiv Support"
 	depends on SPMI || COMPILE_TEST
diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
index f0768fb1f037..4a813b4055d0 100644
--- a/drivers/clk/qcom/Makefile
+++ b/drivers/clk/qcom/Makefile
@@ -50,6 +50,7 @@ obj-$(CONFIG_SDM_GCC_845) += gcc-sdm845.o
 obj-$(CONFIG_SDM_GPUCC_845) += gpucc-sdm845.o
 obj-$(CONFIG_SDM_LPASSCC_845) += lpasscc-sdm845.o
 obj-$(CONFIG_SDM_VIDEOCC_845) += videocc-sdm845.o
+obj-$(CONFIG_SM_GCC_8150) += gcc-sm8150.o
 obj-$(CONFIG_SPMI_PMIC_CLKDIV) += clk-spmi-pmic-div.o
 obj-$(CONFIG_KPSS_XCC) += kpss-xcc.o
 obj-$(CONFIG_QCOM_HFPLL) += hfpll.o
diff --git a/drivers/clk/qcom/gcc-sm8150.c b/drivers/clk/qcom/gcc-sm8150.c
new file mode 100644
index 000000000000..1cbc884444c9
--- /dev/null
+++ b/drivers/clk/qcom/gcc-sm8150.c
@@ -0,0 +1,3649 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2017-19, The Linux Foundation. All rights reserved.
+ */
+
+#include <linux/kernel.h>
+#include <linux/bitops.h>
+#include <linux/err.h>
+#include <linux/platform_device.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/regmap.h>
+#include <linux/reset-controller.h>
+
+#include <dt-bindings/clock/qcom,gcc-sm8150.h>
+
+#include "common.h"
+#include "clk-alpha-pll.h"
+#include "clk-branch.h"
+#include "clk-pll.h"
+#include "clk-rcg.h"
+#include "clk-regmap.h"
+#include "reset.h"
+
+#define F(f, s, h, m, n) { (f), (s), (2 * (h) - 1), (m), (n) }
+
+#define GCC_NPU_MISC				0x4d110
+#define GCC_GPU_MISC				0x71028
+
+enum {
+	P_BI_TCXO,
+	P_AUD_REF_CLK,
+	P_CORE_BI_PLL_TEST_SE,
+	P_GPLL0_OUT_EVEN,
+	P_GPLL0_OUT_MAIN,
+	P_GPLL4_OUT_MAIN,
+	P_GPLL7_OUT_MAIN,
+	P_GPLL9_OUT_MAIN,
+	P_SLEEP_CLK,
+};
+
+static const struct parent_map gcc_parent_map_0[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_GPLL0_OUT_MAIN, 1 },
+	{ P_GPLL0_OUT_EVEN, 6 },
+	{ P_CORE_BI_PLL_TEST_SE, 7 },
+};
+
+static const char * const gcc_parent_names_0[] = {
+	"bi_tcxo",
+	"gpll0",
+	"gpll0_out_even",
+	"core_bi_pll_test_se",
+};
+
+static const char * const gcc_parent_names_0_ao[] = {
+	"bi_tcxo_ao",
+	"gpll0",
+	"gpll0_out_even",
+	"core_bi_pll_test_se",
+};
+
+static const struct parent_map gcc_parent_map_1[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_GPLL0_OUT_MAIN, 1 },
+	{ P_SLEEP_CLK, 5 },
+	{ P_GPLL0_OUT_EVEN, 6 },
+	{ P_CORE_BI_PLL_TEST_SE, 7 },
+};
+
+static const char * const gcc_parent_names_1[] = {
+	"bi_tcxo",
+	"gpll0",
+	"sleep_clk",
+	"gpll0_out_even",
+	"core_bi_pll_test_se",
+};
+
+static const struct parent_map gcc_parent_map_2[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_SLEEP_CLK, 5 },
+	{ P_CORE_BI_PLL_TEST_SE, 7 },
+};
+
+static const char * const gcc_parent_names_2[] = {
+	"bi_tcxo",
+	"sleep_clk",
+	"core_bi_pll_test_se",
+};
+
+static const struct parent_map gcc_parent_map_3[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_GPLL0_OUT_MAIN, 1 },
+	{ P_CORE_BI_PLL_TEST_SE, 7 },
+};
+
+static const char * const gcc_parent_names_3[] = {
+	"bi_tcxo",
+	"gpll0",
+	"core_bi_pll_test_se",
+};
+
+static const struct parent_map gcc_parent_map_4[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CORE_BI_PLL_TEST_SE, 7 },
+};
+
+static const char * const gcc_parent_names_4[] = {
+	"bi_tcxo",
+	"core_bi_pll_test_se",
+};
+
+static const struct parent_map gcc_parent_map_5[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_GPLL0_OUT_MAIN, 1 },
+	{ P_GPLL7_OUT_MAIN, 3 },
+	{ P_GPLL0_OUT_EVEN, 6 },
+	{ P_CORE_BI_PLL_TEST_SE, 7 },
+};
+
+static const char * const gcc_parent_names_5[] = {
+	"bi_tcxo",
+	"gpll0",
+	"gpll7",
+	"gpll0_out_even",
+	"core_bi_pll_test_se",
+};
+
+static const struct parent_map gcc_parent_map_6[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_GPLL0_OUT_MAIN, 1 },
+	{ P_GPLL9_OUT_MAIN, 2 },
+	{ P_GPLL4_OUT_MAIN, 5 },
+	{ P_GPLL0_OUT_EVEN, 6 },
+	{ P_CORE_BI_PLL_TEST_SE, 7 },
+};
+
+static const char * const gcc_parent_names_6[] = {
+	"bi_tcxo",
+	"gpll0",
+	"gpll9",
+	"gpll4",
+	"gpll0_out_even",
+	"core_bi_pll_test_se",
+};
+
+static const struct parent_map gcc_parent_map_7[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_GPLL0_OUT_MAIN, 1 },
+	{ P_AUD_REF_CLK, 2 },
+	{ P_GPLL0_OUT_EVEN, 6 },
+	{ P_CORE_BI_PLL_TEST_SE, 7 },
+};
+
+static const char * const gcc_parent_names_7[] = {
+	"bi_tcxo",
+	"gpll0",
+	"aud_ref_clk",
+	"gpll0_out_even",
+	"core_bi_pll_test_se",
+};
+
+static struct pll_vco trion_vco[] = {
+	{ 249600000, 2000000000, 0 },
+};
+
+static struct clk_alpha_pll gpll0 = {
+	.offset = 0x0,
+	.vco_table = trion_vco,
+	.num_vco = ARRAY_SIZE(trion_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_TRION],
+	.clkr = {
+		.enable_reg = 0x52000,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpll0",
+			.parent_names = (const char *[]){ "bi_tcxo" },
+			.num_parents = 1,
+			.ops = &clk_trion_fixed_pll_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_trion_even[] = {
+	{ 0x0, 1 },
+	{ 0x1, 2 },
+	{ 0x3, 4 },
+	{ 0x7, 8 },
+	{ }
+};
+
+static struct clk_alpha_pll_postdiv gpll0_out_even = {
+	.offset = 0x0,
+	.post_div_shift = 8,
+	.post_div_table = post_div_table_trion_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_trion_even),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_TRION],
+	.width = 4,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gpll0_out_even",
+		.parent_names = (const char *[]){ "gpll0" },
+		.num_parents = 1,
+		.ops = &clk_trion_pll_postdiv_ops,
+	},
+};
+
+static struct clk_alpha_pll gpll7 = {
+	.offset = 0x1a000,
+	.vco_table = trion_vco,
+	.num_vco = ARRAY_SIZE(trion_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_TRION],
+	.clkr = {
+		.enable_reg = 0x52000,
+		.enable_mask = BIT(7),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpll7",
+			.parent_names = (const char *[]){ "bi_tcxo" },
+			.num_parents = 1,
+			.ops = &clk_trion_fixed_pll_ops,
+		},
+	},
+};
+
+static struct clk_alpha_pll gpll9 = {
+	.offset = 0x1c000,
+	.vco_table = trion_vco,
+	.num_vco = ARRAY_SIZE(trion_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_TRION],
+	.clkr = {
+		.enable_reg = 0x52000,
+		.enable_mask = BIT(9),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpll9",
+			.parent_names = (const char *[]){ "bi_tcxo" },
+			.num_parents = 1,
+			.ops = &clk_trion_fixed_pll_ops,
+		},
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_cpuss_ahb_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(50000000, P_GPLL0_OUT_MAIN, 12, 0, 0),
+	F(100000000, P_GPLL0_OUT_MAIN, 6, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_cpuss_ahb_clk_src = {
+	.cmd_rcgr = 0x48014,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_cpuss_ahb_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_cpuss_ahb_clk_src",
+		.parent_names = gcc_parent_names_0_ao,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_emac_ptp_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(50000000, P_GPLL0_OUT_EVEN, 6, 0, 0),
+	F(125000000, P_GPLL7_OUT_MAIN, 4, 0, 0),
+	F(250000000, P_GPLL7_OUT_MAIN, 2, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_emac_ptp_clk_src = {
+	.cmd_rcgr = 0x6038,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_5,
+	.freq_tbl = ftbl_gcc_emac_ptp_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_emac_ptp_clk_src",
+		.parent_names = gcc_parent_names_5,
+		.num_parents = 5,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_emac_rgmii_clk_src[] = {
+	F(2500000, P_BI_TCXO, 1, 25, 192),
+	F(5000000, P_BI_TCXO, 1, 25, 96),
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(25000000, P_GPLL0_OUT_EVEN, 12, 0, 0),
+	F(50000000, P_GPLL0_OUT_EVEN, 6, 0, 0),
+	F(125000000, P_GPLL7_OUT_MAIN, 4, 0, 0),
+	F(250000000, P_GPLL7_OUT_MAIN, 2, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_emac_rgmii_clk_src = {
+	.cmd_rcgr = 0x601c,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_5,
+	.freq_tbl = ftbl_gcc_emac_rgmii_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_emac_rgmii_clk_src",
+		.parent_names = gcc_parent_names_5,
+		.num_parents = 5,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_gp1_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(25000000, P_GPLL0_OUT_EVEN, 12, 0, 0),
+	F(50000000, P_GPLL0_OUT_EVEN, 6, 0, 0),
+	F(100000000, P_GPLL0_OUT_MAIN, 6, 0, 0),
+	F(200000000, P_GPLL0_OUT_MAIN, 3, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_gp1_clk_src = {
+	.cmd_rcgr = 0x64004,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_1,
+	.freq_tbl = ftbl_gcc_gp1_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_gp1_clk_src",
+		.parent_names = gcc_parent_names_1,
+		.num_parents = 5,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_gp2_clk_src = {
+	.cmd_rcgr = 0x65004,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_1,
+	.freq_tbl = ftbl_gcc_gp1_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_gp2_clk_src",
+		.parent_names = gcc_parent_names_1,
+		.num_parents = 5,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_gp3_clk_src = {
+	.cmd_rcgr = 0x66004,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_1,
+	.freq_tbl = ftbl_gcc_gp1_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_gp3_clk_src",
+		.parent_names = gcc_parent_names_1,
+		.num_parents = 5,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_pcie_0_aux_clk_src[] = {
+	F(9600000, P_BI_TCXO, 2, 0, 0),
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_pcie_0_aux_clk_src = {
+	.cmd_rcgr = 0x6b02c,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_2,
+	.freq_tbl = ftbl_gcc_pcie_0_aux_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_pcie_0_aux_clk_src",
+		.parent_names = gcc_parent_names_2,
+		.num_parents = 3,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_pcie_1_aux_clk_src = {
+	.cmd_rcgr = 0x8d02c,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_2,
+	.freq_tbl = ftbl_gcc_pcie_0_aux_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_pcie_1_aux_clk_src",
+		.parent_names = gcc_parent_names_2,
+		.num_parents = 3,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_pcie_phy_refgen_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(100000000, P_GPLL0_OUT_MAIN, 6, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_pcie_phy_refgen_clk_src = {
+	.cmd_rcgr = 0x6f014,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_pcie_phy_refgen_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_pcie_phy_refgen_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_pdm2_clk_src[] = {
+	F(9600000, P_BI_TCXO, 2, 0, 0),
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(60000000, P_GPLL0_OUT_MAIN, 10, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_pdm2_clk_src = {
+	.cmd_rcgr = 0x33010,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_pdm2_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_pdm2_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_qspi_core_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(75000000, P_GPLL0_OUT_EVEN, 4, 0, 0),
+	F(150000000, P_GPLL0_OUT_MAIN, 4, 0, 0),
+	F(300000000, P_GPLL0_OUT_MAIN, 2, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_qspi_core_clk_src = {
+	.cmd_rcgr = 0x4b008,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qspi_core_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qspi_core_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_qupv3_wrap0_s0_clk_src[] = {
+	F(7372800, P_GPLL0_OUT_EVEN, 1, 384, 15625),
+	F(14745600, P_GPLL0_OUT_EVEN, 1, 768, 15625),
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(29491200, P_GPLL0_OUT_EVEN, 1, 1536, 15625),
+	F(32000000, P_GPLL0_OUT_EVEN, 1, 8, 75),
+	F(48000000, P_GPLL0_OUT_EVEN, 1, 4, 25),
+	F(64000000, P_GPLL0_OUT_EVEN, 1, 16, 75),
+	F(80000000, P_GPLL0_OUT_EVEN, 1, 4, 15),
+	F(96000000, P_GPLL0_OUT_EVEN, 1, 8, 25),
+	F(100000000, P_GPLL0_OUT_EVEN, 3, 0, 0),
+	F(102400000, P_GPLL0_OUT_EVEN, 1, 128, 375),
+	F(112000000, P_GPLL0_OUT_EVEN, 1, 28, 75),
+	F(117964800, P_GPLL0_OUT_EVEN, 1, 6144, 15625),
+	F(120000000, P_GPLL0_OUT_EVEN, 2.5, 0, 0),
+	F(128000000, P_GPLL0_OUT_MAIN, 1, 16, 75),
+	{ }
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap0_s0_clk_src = {
+	.cmd_rcgr = 0x17148,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap0_s0_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap0_s1_clk_src = {
+	.cmd_rcgr = 0x17278,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap0_s1_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap0_s2_clk_src = {
+	.cmd_rcgr = 0x173a8,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap0_s2_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap0_s3_clk_src = {
+	.cmd_rcgr = 0x174d8,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap0_s3_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap0_s4_clk_src = {
+	.cmd_rcgr = 0x17608,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap0_s4_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap0_s5_clk_src = {
+	.cmd_rcgr = 0x17738,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap0_s5_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap0_s6_clk_src = {
+	.cmd_rcgr = 0x17868,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap0_s6_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap0_s7_clk_src = {
+	.cmd_rcgr = 0x17998,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap0_s7_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap1_s0_clk_src = {
+	.cmd_rcgr = 0x18148,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap1_s0_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap1_s1_clk_src = {
+	.cmd_rcgr = 0x18278,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap1_s1_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap1_s2_clk_src = {
+	.cmd_rcgr = 0x183a8,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap1_s2_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap1_s3_clk_src = {
+	.cmd_rcgr = 0x184d8,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap1_s3_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap1_s4_clk_src = {
+	.cmd_rcgr = 0x18608,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap1_s4_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap1_s5_clk_src = {
+	.cmd_rcgr = 0x18738,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap1_s5_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap2_s0_clk_src = {
+	.cmd_rcgr = 0x1e148,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap2_s0_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap2_s1_clk_src = {
+	.cmd_rcgr = 0x1e278,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap2_s1_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap2_s2_clk_src = {
+	.cmd_rcgr = 0x1e3a8,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap2_s2_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap2_s3_clk_src = {
+	.cmd_rcgr = 0x1e4d8,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap2_s3_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap2_s4_clk_src = {
+	.cmd_rcgr = 0x1e608,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap2_s4_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_qupv3_wrap2_s5_clk_src = {
+	.cmd_rcgr = 0x1e738,
+	.mnd_width = 16,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_qupv3_wrap0_s0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_qupv3_wrap2_s5_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_sdcc2_apps_clk_src[] = {
+	F(400000, P_BI_TCXO, 12, 1, 4),
+	F(9600000, P_BI_TCXO, 2, 0, 0),
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(25000000, P_GPLL0_OUT_MAIN, 12, 1, 2),
+	F(50000000, P_GPLL0_OUT_MAIN, 12, 0, 0),
+	F(100000000, P_GPLL0_OUT_MAIN, 6, 0, 0),
+	F(202000000, P_GPLL9_OUT_MAIN, 4, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_sdcc2_apps_clk_src = {
+	.cmd_rcgr = 0x1400c,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_6,
+	.freq_tbl = ftbl_gcc_sdcc2_apps_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_sdcc2_apps_clk_src",
+		.parent_names = gcc_parent_names_6,
+		.num_parents = 6,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_sdcc4_apps_clk_src[] = {
+	F(400000, P_BI_TCXO, 12, 1, 4),
+	F(9600000, P_BI_TCXO, 2, 0, 0),
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(25000000, P_GPLL0_OUT_MAIN, 12, 1, 2),
+	F(50000000, P_GPLL0_OUT_MAIN, 12, 0, 0),
+	F(100000000, P_GPLL0_OUT_MAIN, 6, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_sdcc4_apps_clk_src = {
+	.cmd_rcgr = 0x1600c,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_3,
+	.freq_tbl = ftbl_gcc_sdcc4_apps_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_sdcc4_apps_clk_src",
+		.parent_names = gcc_parent_names_3,
+		.num_parents = 3,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_tsif_ref_clk_src[] = {
+	F(105495, P_BI_TCXO, 2, 1, 91),
+	{ }
+};
+
+static struct clk_rcg2 gcc_tsif_ref_clk_src = {
+	.cmd_rcgr = 0x36010,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_7,
+	.freq_tbl = ftbl_gcc_tsif_ref_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_tsif_ref_clk_src",
+		.parent_names = gcc_parent_names_7,
+		.num_parents = 5,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_ufs_card_axi_clk_src[] = {
+	F(25000000, P_GPLL0_OUT_EVEN, 12, 0, 0),
+	F(50000000, P_GPLL0_OUT_EVEN, 6, 0, 0),
+	F(100000000, P_GPLL0_OUT_MAIN, 6, 0, 0),
+	F(200000000, P_GPLL0_OUT_MAIN, 3, 0, 0),
+	F(240000000, P_GPLL0_OUT_MAIN, 2.5, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_ufs_card_axi_clk_src = {
+	.cmd_rcgr = 0x75020,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_ufs_card_axi_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_ufs_card_axi_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_ufs_card_ice_core_clk_src[] = {
+	F(37500000, P_GPLL0_OUT_EVEN, 8, 0, 0),
+	F(75000000, P_GPLL0_OUT_EVEN, 4, 0, 0),
+	F(150000000, P_GPLL0_OUT_MAIN, 4, 0, 0),
+	F(300000000, P_GPLL0_OUT_MAIN, 2, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_ufs_card_ice_core_clk_src = {
+	.cmd_rcgr = 0x75060,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_ufs_card_ice_core_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_ufs_card_ice_core_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_ufs_card_phy_aux_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_ufs_card_phy_aux_clk_src = {
+	.cmd_rcgr = 0x75094,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_4,
+	.freq_tbl = ftbl_gcc_ufs_card_phy_aux_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_ufs_card_phy_aux_clk_src",
+		.parent_names = gcc_parent_names_4,
+		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_ufs_card_unipro_core_clk_src[] = {
+	F(37500000, P_GPLL0_OUT_EVEN, 8, 0, 0),
+	F(75000000, P_GPLL0_OUT_MAIN, 8, 0, 0),
+	F(150000000, P_GPLL0_OUT_MAIN, 4, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_ufs_card_unipro_core_clk_src = {
+	.cmd_rcgr = 0x75078,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_ufs_card_unipro_core_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_ufs_card_unipro_core_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_ufs_phy_axi_clk_src[] = {
+	F(25000000, P_GPLL0_OUT_EVEN, 12, 0, 0),
+	F(37500000, P_GPLL0_OUT_EVEN, 8, 0, 0),
+	F(75000000, P_GPLL0_OUT_EVEN, 4, 0, 0),
+	F(150000000, P_GPLL0_OUT_MAIN, 4, 0, 0),
+	F(300000000, P_GPLL0_OUT_MAIN, 2, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_ufs_phy_axi_clk_src = {
+	.cmd_rcgr = 0x77020,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_ufs_phy_axi_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_ufs_phy_axi_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_ufs_phy_ice_core_clk_src = {
+	.cmd_rcgr = 0x77060,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_ufs_card_ice_core_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_ufs_phy_ice_core_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_ufs_phy_phy_aux_clk_src = {
+	.cmd_rcgr = 0x77094,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_4,
+	.freq_tbl = ftbl_gcc_pcie_0_aux_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_ufs_phy_phy_aux_clk_src",
+		.parent_names = gcc_parent_names_4,
+		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_ufs_phy_unipro_core_clk_src = {
+	.cmd_rcgr = 0x77078,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_ufs_card_ice_core_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_ufs_phy_unipro_core_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_usb30_prim_master_clk_src[] = {
+	F(33333333, P_GPLL0_OUT_EVEN, 9, 0, 0),
+	F(66666667, P_GPLL0_OUT_EVEN, 4.5, 0, 0),
+	F(133333333, P_GPLL0_OUT_MAIN, 4.5, 0, 0),
+	F(200000000, P_GPLL0_OUT_MAIN, 3, 0, 0),
+	F(240000000, P_GPLL0_OUT_MAIN, 2.5, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_usb30_prim_master_clk_src = {
+	.cmd_rcgr = 0xf01c,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_usb30_prim_master_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_usb30_prim_master_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gcc_usb30_prim_mock_utmi_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(20000000, P_GPLL0_OUT_EVEN, 15, 0, 0),
+	F(60000000, P_GPLL0_OUT_EVEN, 5, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gcc_usb30_prim_mock_utmi_clk_src = {
+	.cmd_rcgr = 0xf034,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_usb30_prim_mock_utmi_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_usb30_prim_mock_utmi_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_usb30_sec_master_clk_src = {
+	.cmd_rcgr = 0x1001c,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_usb30_prim_master_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_usb30_sec_master_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_usb30_sec_mock_utmi_clk_src = {
+	.cmd_rcgr = 0x10034,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_0,
+	.freq_tbl = ftbl_gcc_usb30_prim_mock_utmi_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_usb30_sec_mock_utmi_clk_src",
+		.parent_names = gcc_parent_names_0,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_usb3_prim_phy_aux_clk_src = {
+	.cmd_rcgr = 0xf060,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_2,
+	.freq_tbl = ftbl_gcc_ufs_card_phy_aux_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_usb3_prim_phy_aux_clk_src",
+		.parent_names = gcc_parent_names_2,
+		.num_parents = 3,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 gcc_usb3_sec_phy_aux_clk_src = {
+	.cmd_rcgr = 0x10060,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gcc_parent_map_2,
+	.freq_tbl = ftbl_gcc_ufs_card_phy_aux_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gcc_usb3_sec_phy_aux_clk_src",
+		.parent_names = gcc_parent_names_2,
+		.num_parents = 3,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_branch gcc_aggre_noc_pcie_tbu_clk = {
+	.halt_reg = 0x90018,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x90018,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_aggre_noc_pcie_tbu_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_aggre_ufs_card_axi_clk = {
+	.halt_reg = 0x750c0,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x750c0,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x750c0,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_aggre_ufs_card_axi_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_card_axi_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_aggre_ufs_card_axi_hw_ctl_clk = {
+	.halt_reg = 0x750c0,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x750c0,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x750c0,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_aggre_ufs_card_axi_hw_ctl_clk",
+			.parent_names = (const char *[]){
+				"gcc_aggre_ufs_card_axi_clk",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch_simple_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_aggre_ufs_phy_axi_clk = {
+	.halt_reg = 0x770c0,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x770c0,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x770c0,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_aggre_ufs_phy_axi_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_phy_axi_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_aggre_ufs_phy_axi_hw_ctl_clk = {
+	.halt_reg = 0x770c0,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x770c0,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x770c0,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_aggre_ufs_phy_axi_hw_ctl_clk",
+			.parent_names = (const char *[]){
+				"gcc_aggre_ufs_phy_axi_clk",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch_simple_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_aggre_usb3_prim_axi_clk = {
+	.halt_reg = 0xf07c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf07c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_aggre_usb3_prim_axi_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb30_prim_master_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_aggre_usb3_sec_axi_clk = {
+	.halt_reg = 0x1007c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x1007c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_aggre_usb3_sec_axi_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb30_sec_master_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_boot_rom_ahb_clk = {
+	.halt_reg = 0x38004,
+	.halt_check = BRANCH_HALT_VOTED,
+	.hwcg_reg = 0x38004,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(10),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_boot_rom_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_camera_ahb_clk = {
+	.halt_reg = 0xb008,
+	.halt_check = BRANCH_HALT_DELAY,
+	.hwcg_reg = 0xb008,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0xb008,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_camera_ahb_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_camera_hf_axi_clk = {
+	.halt_reg = 0xb030,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb030,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_camera_hf_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_camera_sf_axi_clk = {
+	.halt_reg = 0xb034,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb034,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_camera_sf_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_camera_xo_clk = {
+	.halt_reg = 0xb044,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0xb044,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_camera_xo_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_cfg_noc_usb3_prim_axi_clk = {
+	.halt_reg = 0xf078,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf078,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_cfg_noc_usb3_prim_axi_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb30_prim_master_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_cfg_noc_usb3_sec_axi_clk = {
+	.halt_reg = 0x10078,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10078,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_cfg_noc_usb3_sec_axi_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb30_sec_master_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_cpuss_ahb_clk = {
+	.halt_reg = 0x48000,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(21),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_cpuss_ahb_clk",
+			.parent_names = (const char *[]){
+				"gcc_cpuss_ahb_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_cpuss_dvm_bus_clk = {
+	.halt_reg = 0x48190,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x48190,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_cpuss_dvm_bus_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_cpuss_gnoc_clk = {
+	.halt_reg = 0x48004,
+	.halt_check = BRANCH_HALT_VOTED,
+	.hwcg_reg = 0x48004,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(22),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_cpuss_gnoc_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_cpuss_rbcpr_clk = {
+	.halt_reg = 0x48008,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x48008,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_cpuss_rbcpr_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ddrss_gpu_axi_clk = {
+	.halt_reg = 0x71154,
+	.halt_check = BRANCH_VOTED,
+	.clkr = {
+		.enable_reg = 0x71154,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ddrss_gpu_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_disp_ahb_clk = {
+	.halt_reg = 0xb00c,
+	.halt_check = BRANCH_HALT_DELAY,
+	.hwcg_reg = 0xb00c,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0xb00c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_disp_ahb_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_disp_hf_axi_clk = {
+	.halt_reg = 0xb038,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb038,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_disp_hf_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_disp_sf_axi_clk = {
+	.halt_reg = 0xb03c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb03c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_disp_sf_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_disp_xo_clk = {
+	.halt_reg = 0xb048,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0xb048,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_disp_xo_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_emac_axi_clk = {
+	.halt_reg = 0x6010,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6010,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_emac_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_emac_ptp_clk = {
+	.halt_reg = 0x6034,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6034,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_emac_ptp_clk",
+			.parent_names = (const char *[]){
+				"gcc_emac_ptp_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_emac_rgmii_clk = {
+	.halt_reg = 0x6018,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6018,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_emac_rgmii_clk",
+			.parent_names = (const char *[]){
+				"gcc_emac_rgmii_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_emac_slv_ahb_clk = {
+	.halt_reg = 0x6014,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x6014,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x6014,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_emac_slv_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_gp1_clk = {
+	.halt_reg = 0x64000,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x64000,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_gp1_clk",
+			.parent_names = (const char *[]){
+				"gcc_gp1_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_gp2_clk = {
+	.halt_reg = 0x65000,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x65000,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_gp2_clk",
+			.parent_names = (const char *[]){
+				"gcc_gp2_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_gp3_clk = {
+	.halt_reg = 0x66000,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x66000,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_gp3_clk",
+			.parent_names = (const char *[]){
+				"gcc_gp3_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_gpu_cfg_ahb_clk = {
+	.halt_reg = 0x71004,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x71004,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x71004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_gpu_cfg_ahb_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_gpu_iref_clk = {
+	.halt_reg = 0x8c010,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c010,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_gpu_iref_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_gpu_memnoc_gfx_clk = {
+	.halt_reg = 0x7100c,
+	.halt_check = BRANCH_VOTED,
+	.clkr = {
+		.enable_reg = 0x7100c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_gpu_memnoc_gfx_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_gpu_snoc_dvm_gfx_clk = {
+	.halt_reg = 0x71018,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x71018,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_gpu_snoc_dvm_gfx_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_npu_at_clk = {
+	.halt_reg = 0x4d010,
+	.halt_check = BRANCH_VOTED,
+	.clkr = {
+		.enable_reg = 0x4d010,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_npu_at_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_npu_axi_clk = {
+	.halt_reg = 0x4d008,
+	.halt_check = BRANCH_VOTED,
+	.clkr = {
+		.enable_reg = 0x4d008,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_npu_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_npu_cfg_ahb_clk = {
+	.halt_reg = 0x4d004,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x4d004,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x4d004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_npu_cfg_ahb_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_npu_trig_clk = {
+	.halt_reg = 0x4d00c,
+	.halt_check = BRANCH_VOTED,
+	.clkr = {
+		.enable_reg = 0x4d00c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_npu_trig_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie0_phy_refgen_clk = {
+	.halt_reg = 0x6f02c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6f02c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie0_phy_refgen_clk",
+			.parent_names = (const char *[]){
+				"gcc_pcie_phy_refgen_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie1_phy_refgen_clk = {
+	.halt_reg = 0x6f030,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6f030,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie1_phy_refgen_clk",
+			.parent_names = (const char *[]){
+				"gcc_pcie_phy_refgen_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_0_aux_clk = {
+	.halt_reg = 0x6b020,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(3),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_0_aux_clk",
+			.parent_names = (const char *[]){
+				"gcc_pcie_0_aux_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_0_cfg_ahb_clk = {
+	.halt_reg = 0x6b01c,
+	.halt_check = BRANCH_HALT_VOTED,
+	.hwcg_reg = 0x6b01c,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(2),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_0_cfg_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_0_clkref_clk = {
+	.halt_reg = 0x8c00c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c00c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_0_clkref_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_0_mstr_axi_clk = {
+	.halt_reg = 0x6b018,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_0_mstr_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_0_pipe_clk = {
+	.halt_reg = 0x6b024,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(4),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_0_pipe_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_0_slv_axi_clk = {
+	.halt_reg = 0x6b014,
+	.halt_check = BRANCH_HALT_VOTED,
+	.hwcg_reg = 0x6b014,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_0_slv_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_0_slv_q2a_axi_clk = {
+	.halt_reg = 0x6b010,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(5),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_0_slv_q2a_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_1_aux_clk = {
+	.halt_reg = 0x8d020,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(29),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_1_aux_clk",
+			.parent_names = (const char *[]){
+				"gcc_pcie_1_aux_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_1_cfg_ahb_clk = {
+	.halt_reg = 0x8d01c,
+	.halt_check = BRANCH_HALT_VOTED,
+	.hwcg_reg = 0x8d01c,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(28),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_1_cfg_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_1_clkref_clk = {
+	.halt_reg = 0x8c02c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c02c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_1_clkref_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_1_mstr_axi_clk = {
+	.halt_reg = 0x8d018,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(27),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_1_mstr_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_1_pipe_clk = {
+	.halt_reg = 0x8d024,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(30),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_1_pipe_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_1_slv_axi_clk = {
+	.halt_reg = 0x8d014,
+	.halt_check = BRANCH_HALT_VOTED,
+	.hwcg_reg = 0x8d014,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(26),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_1_slv_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_1_slv_q2a_axi_clk = {
+	.halt_reg = 0x8d010,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(25),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_1_slv_q2a_axi_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pcie_phy_aux_clk = {
+	.halt_reg = 0x6f004,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6f004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pcie_phy_aux_clk",
+			.parent_names = (const char *[]){
+				"gcc_pcie_0_aux_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pdm2_clk = {
+	.halt_reg = 0x3300c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x3300c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pdm2_clk",
+			.parent_names = (const char *[]){
+				"gcc_pdm2_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pdm_ahb_clk = {
+	.halt_reg = 0x33004,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x33004,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x33004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pdm_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_pdm_xo4_clk = {
+	.halt_reg = 0x33008,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x33008,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_pdm_xo4_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_prng_ahb_clk = {
+	.halt_reg = 0x34004,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(13),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_prng_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qmip_camera_nrt_ahb_clk = {
+	.halt_reg = 0xb018,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0xb018,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0xb018,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qmip_camera_nrt_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qmip_camera_rt_ahb_clk = {
+	.halt_reg = 0xb01c,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0xb01c,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0xb01c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qmip_camera_rt_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qmip_disp_ahb_clk = {
+	.halt_reg = 0xb020,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0xb020,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0xb020,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qmip_disp_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qmip_video_cvp_ahb_clk = {
+	.halt_reg = 0xb010,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0xb010,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0xb010,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qmip_video_cvp_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qmip_video_vcodec_ahb_clk = {
+	.halt_reg = 0xb014,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0xb014,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0xb014,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qmip_video_vcodec_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qspi_cnoc_periph_ahb_clk = {
+	.halt_reg = 0x4b000,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x4b000,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qspi_cnoc_periph_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qspi_core_clk = {
+	.halt_reg = 0x4b004,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x4b004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qspi_core_clk",
+			.parent_names = (const char *[]){
+				"gcc_qspi_core_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap0_s0_clk = {
+	.halt_reg = 0x17144,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(10),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap0_s0_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap0_s0_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap0_s1_clk = {
+	.halt_reg = 0x17274,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(11),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap0_s1_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap0_s1_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap0_s2_clk = {
+	.halt_reg = 0x173a4,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(12),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap0_s2_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap0_s2_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap0_s3_clk = {
+	.halt_reg = 0x174d4,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(13),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap0_s3_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap0_s3_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap0_s4_clk = {
+	.halt_reg = 0x17604,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(14),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap0_s4_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap0_s4_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap0_s5_clk = {
+	.halt_reg = 0x17734,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(15),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap0_s5_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap0_s5_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap0_s6_clk = {
+	.halt_reg = 0x17864,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(16),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap0_s6_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap0_s6_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap0_s7_clk = {
+	.halt_reg = 0x17994,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(17),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap0_s7_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap0_s7_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap1_s0_clk = {
+	.halt_reg = 0x18144,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(22),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap1_s0_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap1_s0_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap1_s1_clk = {
+	.halt_reg = 0x18274,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(23),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap1_s1_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap1_s1_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap1_s2_clk = {
+	.halt_reg = 0x183a4,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(24),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap1_s2_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap1_s2_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap1_s3_clk = {
+	.halt_reg = 0x184d4,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(25),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap1_s3_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap1_s3_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap1_s4_clk = {
+	.halt_reg = 0x18604,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(26),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap1_s4_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap1_s4_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap1_s5_clk = {
+	.halt_reg = 0x18734,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(27),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap1_s5_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap1_s5_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap2_s0_clk = {
+	.halt_reg = 0x1e144,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52014,
+		.enable_mask = BIT(4),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap2_s0_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap2_s0_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap2_s1_clk = {
+	.halt_reg = 0x1e274,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52014,
+		.enable_mask = BIT(5),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap2_s1_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap2_s1_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap2_s2_clk = {
+	.halt_reg = 0x1e3a4,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52014,
+		.enable_mask = BIT(6),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap2_s2_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap2_s2_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap2_s3_clk = {
+	.halt_reg = 0x1e4d4,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52014,
+		.enable_mask = BIT(7),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap2_s3_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap2_s3_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap2_s4_clk = {
+	.halt_reg = 0x1e604,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52014,
+		.enable_mask = BIT(8),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap2_s4_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap2_s4_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap2_s5_clk = {
+	.halt_reg = 0x1e734,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52014,
+		.enable_mask = BIT(9),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap2_s5_clk",
+			.parent_names = (const char *[]){
+				"gcc_qupv3_wrap2_s5_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap_0_m_ahb_clk = {
+	.halt_reg = 0x17004,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(6),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap_0_m_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap_0_s_ahb_clk = {
+	.halt_reg = 0x17008,
+	.halt_check = BRANCH_HALT_VOTED,
+	.hwcg_reg = 0x17008,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(7),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap_0_s_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap_1_m_ahb_clk = {
+	.halt_reg = 0x18004,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(20),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap_1_m_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap_1_s_ahb_clk = {
+	.halt_reg = 0x18008,
+	.halt_check = BRANCH_HALT_VOTED,
+	.hwcg_reg = 0x18008,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x5200c,
+		.enable_mask = BIT(21),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap_1_s_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap_2_m_ahb_clk = {
+	.halt_reg = 0x1e004,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52014,
+		.enable_mask = BIT(2),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap_2_m_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_qupv3_wrap_2_s_ahb_clk = {
+	.halt_reg = 0x1e008,
+	.halt_check = BRANCH_HALT_VOTED,
+	.hwcg_reg = 0x1e008,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x52014,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_qupv3_wrap_2_s_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_sdcc2_ahb_clk = {
+	.halt_reg = 0x14008,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x14008,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_sdcc2_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_sdcc2_apps_clk = {
+	.halt_reg = 0x14004,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x14004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_sdcc2_apps_clk",
+			.parent_names = (const char *[]){
+				"gcc_sdcc2_apps_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_sdcc4_ahb_clk = {
+	.halt_reg = 0x16008,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x16008,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_sdcc4_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_sdcc4_apps_clk = {
+	.halt_reg = 0x16004,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x16004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_sdcc4_apps_clk",
+			.parent_names = (const char *[]){
+				"gcc_sdcc4_apps_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_sys_noc_cpuss_ahb_clk = {
+	.halt_reg = 0x4819c,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x52004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_sys_noc_cpuss_ahb_clk",
+			.parent_names = (const char *[]){
+				"gcc_cpuss_ahb_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_tsif_ahb_clk = {
+	.halt_reg = 0x36004,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x36004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_tsif_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_tsif_inactivity_timers_clk = {
+	.halt_reg = 0x3600c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x3600c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_tsif_inactivity_timers_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_tsif_ref_clk = {
+	.halt_reg = 0x36008,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x36008,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_tsif_ref_clk",
+			.parent_names = (const char *[]){
+				"gcc_tsif_ref_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_card_ahb_clk = {
+	.halt_reg = 0x75014,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x75014,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x75014,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_card_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_card_axi_clk = {
+	.halt_reg = 0x75010,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x75010,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x75010,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_card_axi_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_card_axi_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_card_axi_hw_ctl_clk = {
+	.halt_reg = 0x75010,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x75010,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x75010,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_card_axi_hw_ctl_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_card_axi_clk",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch_simple_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_card_clkref_clk = {
+	.halt_reg = 0x8c004,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_card_clkref_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_card_ice_core_clk = {
+	.halt_reg = 0x7505c,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x7505c,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x7505c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_card_ice_core_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_card_ice_core_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_card_ice_core_hw_ctl_clk = {
+	.halt_reg = 0x7505c,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x7505c,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x7505c,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_card_ice_core_hw_ctl_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_card_ice_core_clk",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch_simple_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_card_phy_aux_clk = {
+	.halt_reg = 0x75090,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x75090,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x75090,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_card_phy_aux_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_card_phy_aux_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_card_phy_aux_hw_ctl_clk = {
+	.halt_reg = 0x75090,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x75090,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x75090,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_card_phy_aux_hw_ctl_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_card_phy_aux_clk",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch_simple_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_card_unipro_core_clk = {
+	.halt_reg = 0x75058,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x75058,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x75058,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_card_unipro_core_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_card_unipro_core_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_card_unipro_core_hw_ctl_clk = {
+	.halt_reg = 0x75058,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x75058,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x75058,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_card_unipro_core_hw_ctl_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_card_unipro_core_clk",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch_simple_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_mem_clkref_clk = {
+	.halt_reg = 0x8c000,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c000,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_mem_clkref_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_phy_ahb_clk = {
+	.halt_reg = 0x77014,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x77014,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x77014,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_phy_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_phy_axi_clk = {
+	.halt_reg = 0x77010,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x77010,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x77010,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_phy_axi_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_phy_axi_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_phy_axi_hw_ctl_clk = {
+	.halt_reg = 0x77010,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x77010,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x77010,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_phy_axi_hw_ctl_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_phy_axi_clk",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch_simple_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_phy_ice_core_clk = {
+	.halt_reg = 0x7705c,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x7705c,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x7705c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_phy_ice_core_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_phy_ice_core_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_phy_ice_core_hw_ctl_clk = {
+	.halt_reg = 0x7705c,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x7705c,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x7705c,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_phy_ice_core_hw_ctl_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_phy_ice_core_clk",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch_simple_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_phy_phy_aux_clk = {
+	.halt_reg = 0x77090,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x77090,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x77090,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_phy_phy_aux_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_phy_phy_aux_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_phy_phy_aux_hw_ctl_clk = {
+	.halt_reg = 0x77090,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x77090,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x77090,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_phy_phy_aux_hw_ctl_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_phy_phy_aux_clk",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch_simple_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_phy_unipro_core_clk = {
+	.halt_reg = 0x77058,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x77058,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x77058,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_phy_unipro_core_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_phy_unipro_core_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_ufs_phy_unipro_core_hw_ctl_clk = {
+	.halt_reg = 0x77058,
+	.halt_check = BRANCH_HALT,
+	.hwcg_reg = 0x77058,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0x77058,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_ufs_phy_unipro_core_hw_ctl_clk",
+			.parent_names = (const char *[]){
+				"gcc_ufs_phy_unipro_core_clk",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch_simple_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb30_prim_master_clk = {
+	.halt_reg = 0xf010,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf010,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb30_prim_master_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb30_prim_master_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb30_prim_mock_utmi_clk = {
+	.halt_reg = 0xf018,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf018,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb30_prim_mock_utmi_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb30_prim_mock_utmi_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb30_prim_sleep_clk = {
+	.halt_reg = 0xf014,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf014,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb30_prim_sleep_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb30_sec_master_clk = {
+	.halt_reg = 0x10010,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10010,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb30_sec_master_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb30_sec_master_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb30_sec_mock_utmi_clk = {
+	.halt_reg = 0x10018,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10018,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb30_sec_mock_utmi_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb30_sec_mock_utmi_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb30_sec_sleep_clk = {
+	.halt_reg = 0x10014,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10014,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb30_sec_sleep_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb3_prim_clkref_clk = {
+	.halt_reg = 0x8c008,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c008,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb3_prim_clkref_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb3_prim_phy_aux_clk = {
+	.halt_reg = 0xf050,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf050,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb3_prim_phy_aux_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb3_prim_phy_aux_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb3_prim_phy_com_aux_clk = {
+	.halt_reg = 0xf054,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf054,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb3_prim_phy_com_aux_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb3_prim_phy_aux_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb3_sec_clkref_clk = {
+	.halt_reg = 0x8c028,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c028,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb3_sec_clkref_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb3_sec_phy_aux_clk = {
+	.halt_reg = 0x10050,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10050,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb3_sec_phy_aux_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb3_sec_phy_aux_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb3_sec_phy_com_aux_clk = {
+	.halt_reg = 0x10054,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10054,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb3_sec_phy_com_aux_clk",
+			.parent_names = (const char *[]){
+				"gcc_usb3_sec_phy_aux_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_video_ahb_clk = {
+	.halt_reg = 0xb004,
+	.halt_check = BRANCH_HALT_DELAY,
+	.hwcg_reg = 0xb004,
+	.hwcg_bit = 1,
+	.clkr = {
+		.enable_reg = 0xb004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_video_ahb_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_video_axi0_clk = {
+	.halt_reg = 0xb024,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb024,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_video_axi0_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_video_axi1_clk = {
+	.halt_reg = 0xb028,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb028,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_video_axi1_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_video_axic_clk = {
+	.halt_reg = 0xb02c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb02c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_video_axic_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_video_xo_clk = {
+	.halt_reg = 0xb040,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0xb040,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_video_xo_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_regmap *gcc_sm8150_clocks[] = {
+	[GCC_AGGRE_NOC_PCIE_TBU_CLK] = &gcc_aggre_noc_pcie_tbu_clk.clkr,
+	[GCC_AGGRE_UFS_CARD_AXI_CLK] = &gcc_aggre_ufs_card_axi_clk.clkr,
+	[GCC_AGGRE_UFS_CARD_AXI_HW_CTL_CLK] =
+		&gcc_aggre_ufs_card_axi_hw_ctl_clk.clkr,
+	[GCC_AGGRE_UFS_PHY_AXI_CLK] = &gcc_aggre_ufs_phy_axi_clk.clkr,
+	[GCC_AGGRE_UFS_PHY_AXI_HW_CTL_CLK] =
+		&gcc_aggre_ufs_phy_axi_hw_ctl_clk.clkr,
+	[GCC_AGGRE_USB3_PRIM_AXI_CLK] = &gcc_aggre_usb3_prim_axi_clk.clkr,
+	[GCC_AGGRE_USB3_SEC_AXI_CLK] = &gcc_aggre_usb3_sec_axi_clk.clkr,
+	[GCC_BOOT_ROM_AHB_CLK] = &gcc_boot_rom_ahb_clk.clkr,
+	[GCC_CAMERA_AHB_CLK] = &gcc_camera_ahb_clk.clkr,
+	[GCC_CAMERA_HF_AXI_CLK] = &gcc_camera_hf_axi_clk.clkr,
+	[GCC_CAMERA_SF_AXI_CLK] = &gcc_camera_sf_axi_clk.clkr,
+	[GCC_CAMERA_XO_CLK] = &gcc_camera_xo_clk.clkr,
+	[GCC_CFG_NOC_USB3_PRIM_AXI_CLK] = &gcc_cfg_noc_usb3_prim_axi_clk.clkr,
+	[GCC_CFG_NOC_USB3_SEC_AXI_CLK] = &gcc_cfg_noc_usb3_sec_axi_clk.clkr,
+	[GCC_CPUSS_AHB_CLK] = &gcc_cpuss_ahb_clk.clkr,
+	[GCC_CPUSS_AHB_CLK_SRC] = &gcc_cpuss_ahb_clk_src.clkr,
+	[GCC_CPUSS_DVM_BUS_CLK] = &gcc_cpuss_dvm_bus_clk.clkr,
+	[GCC_CPUSS_GNOC_CLK] = &gcc_cpuss_gnoc_clk.clkr,
+	[GCC_CPUSS_RBCPR_CLK] = &gcc_cpuss_rbcpr_clk.clkr,
+	[GCC_DDRSS_GPU_AXI_CLK] = &gcc_ddrss_gpu_axi_clk.clkr,
+	[GCC_DISP_AHB_CLK] = &gcc_disp_ahb_clk.clkr,
+	[GCC_DISP_HF_AXI_CLK] = &gcc_disp_hf_axi_clk.clkr,
+	[GCC_DISP_SF_AXI_CLK] = &gcc_disp_sf_axi_clk.clkr,
+	[GCC_DISP_XO_CLK] = &gcc_disp_xo_clk.clkr,
+	[GCC_EMAC_AXI_CLK] = &gcc_emac_axi_clk.clkr,
+	[GCC_EMAC_PTP_CLK] = &gcc_emac_ptp_clk.clkr,
+	[GCC_EMAC_PTP_CLK_SRC] = &gcc_emac_ptp_clk_src.clkr,
+	[GCC_EMAC_RGMII_CLK] = &gcc_emac_rgmii_clk.clkr,
+	[GCC_EMAC_RGMII_CLK_SRC] = &gcc_emac_rgmii_clk_src.clkr,
+	[GCC_EMAC_SLV_AHB_CLK] = &gcc_emac_slv_ahb_clk.clkr,
+	[GCC_GP1_CLK] = &gcc_gp1_clk.clkr,
+	[GCC_GP1_CLK_SRC] = &gcc_gp1_clk_src.clkr,
+	[GCC_GP2_CLK] = &gcc_gp2_clk.clkr,
+	[GCC_GP2_CLK_SRC] = &gcc_gp2_clk_src.clkr,
+	[GCC_GP3_CLK] = &gcc_gp3_clk.clkr,
+	[GCC_GP3_CLK_SRC] = &gcc_gp3_clk_src.clkr,
+	[GCC_GPU_CFG_AHB_CLK] = &gcc_gpu_cfg_ahb_clk.clkr,
+	[GCC_GPU_IREF_CLK] = &gcc_gpu_iref_clk.clkr,
+	[GCC_GPU_MEMNOC_GFX_CLK] = &gcc_gpu_memnoc_gfx_clk.clkr,
+	[GCC_GPU_SNOC_DVM_GFX_CLK] = &gcc_gpu_snoc_dvm_gfx_clk.clkr,
+	[GCC_NPU_AT_CLK] = &gcc_npu_at_clk.clkr,
+	[GCC_NPU_AXI_CLK] = &gcc_npu_axi_clk.clkr,
+	[GCC_NPU_CFG_AHB_CLK] = &gcc_npu_cfg_ahb_clk.clkr,
+	[GCC_NPU_TRIG_CLK] = &gcc_npu_trig_clk.clkr,
+	[GCC_PCIE0_PHY_REFGEN_CLK] = &gcc_pcie0_phy_refgen_clk.clkr,
+	[GCC_PCIE1_PHY_REFGEN_CLK] = &gcc_pcie1_phy_refgen_clk.clkr,
+	[GCC_PCIE_0_AUX_CLK] = &gcc_pcie_0_aux_clk.clkr,
+	[GCC_PCIE_0_AUX_CLK_SRC] = &gcc_pcie_0_aux_clk_src.clkr,
+	[GCC_PCIE_0_CFG_AHB_CLK] = &gcc_pcie_0_cfg_ahb_clk.clkr,
+	[GCC_PCIE_0_CLKREF_CLK] = &gcc_pcie_0_clkref_clk.clkr,
+	[GCC_PCIE_0_MSTR_AXI_CLK] = &gcc_pcie_0_mstr_axi_clk.clkr,
+	[GCC_PCIE_0_PIPE_CLK] = &gcc_pcie_0_pipe_clk.clkr,
+	[GCC_PCIE_0_SLV_AXI_CLK] = &gcc_pcie_0_slv_axi_clk.clkr,
+	[GCC_PCIE_0_SLV_Q2A_AXI_CLK] = &gcc_pcie_0_slv_q2a_axi_clk.clkr,
+	[GCC_PCIE_1_AUX_CLK] = &gcc_pcie_1_aux_clk.clkr,
+	[GCC_PCIE_1_AUX_CLK_SRC] = &gcc_pcie_1_aux_clk_src.clkr,
+	[GCC_PCIE_1_CFG_AHB_CLK] = &gcc_pcie_1_cfg_ahb_clk.clkr,
+	[GCC_PCIE_1_CLKREF_CLK] = &gcc_pcie_1_clkref_clk.clkr,
+	[GCC_PCIE_1_MSTR_AXI_CLK] = &gcc_pcie_1_mstr_axi_clk.clkr,
+	[GCC_PCIE_1_PIPE_CLK] = &gcc_pcie_1_pipe_clk.clkr,
+	[GCC_PCIE_1_SLV_AXI_CLK] = &gcc_pcie_1_slv_axi_clk.clkr,
+	[GCC_PCIE_1_SLV_Q2A_AXI_CLK] = &gcc_pcie_1_slv_q2a_axi_clk.clkr,
+	[GCC_PCIE_PHY_AUX_CLK] = &gcc_pcie_phy_aux_clk.clkr,
+	[GCC_PCIE_PHY_REFGEN_CLK_SRC] = &gcc_pcie_phy_refgen_clk_src.clkr,
+	[GCC_PDM2_CLK] = &gcc_pdm2_clk.clkr,
+	[GCC_PDM2_CLK_SRC] = &gcc_pdm2_clk_src.clkr,
+	[GCC_PDM_AHB_CLK] = &gcc_pdm_ahb_clk.clkr,
+	[GCC_PDM_XO4_CLK] = &gcc_pdm_xo4_clk.clkr,
+	[GCC_PRNG_AHB_CLK] = &gcc_prng_ahb_clk.clkr,
+	[GCC_QMIP_CAMERA_NRT_AHB_CLK] = &gcc_qmip_camera_nrt_ahb_clk.clkr,
+	[GCC_QMIP_CAMERA_RT_AHB_CLK] = &gcc_qmip_camera_rt_ahb_clk.clkr,
+	[GCC_QMIP_DISP_AHB_CLK] = &gcc_qmip_disp_ahb_clk.clkr,
+	[GCC_QMIP_VIDEO_CVP_AHB_CLK] = &gcc_qmip_video_cvp_ahb_clk.clkr,
+	[GCC_QMIP_VIDEO_VCODEC_AHB_CLK] = &gcc_qmip_video_vcodec_ahb_clk.clkr,
+	[GCC_QSPI_CNOC_PERIPH_AHB_CLK] = &gcc_qspi_cnoc_periph_ahb_clk.clkr,
+	[GCC_QSPI_CORE_CLK] = &gcc_qspi_core_clk.clkr,
+	[GCC_QSPI_CORE_CLK_SRC] = &gcc_qspi_core_clk_src.clkr,
+	[GCC_QUPV3_WRAP0_S0_CLK] = &gcc_qupv3_wrap0_s0_clk.clkr,
+	[GCC_QUPV3_WRAP0_S0_CLK_SRC] = &gcc_qupv3_wrap0_s0_clk_src.clkr,
+	[GCC_QUPV3_WRAP0_S1_CLK] = &gcc_qupv3_wrap0_s1_clk.clkr,
+	[GCC_QUPV3_WRAP0_S1_CLK_SRC] = &gcc_qupv3_wrap0_s1_clk_src.clkr,
+	[GCC_QUPV3_WRAP0_S2_CLK] = &gcc_qupv3_wrap0_s2_clk.clkr,
+	[GCC_QUPV3_WRAP0_S2_CLK_SRC] = &gcc_qupv3_wrap0_s2_clk_src.clkr,
+	[GCC_QUPV3_WRAP0_S3_CLK] = &gcc_qupv3_wrap0_s3_clk.clkr,
+	[GCC_QUPV3_WRAP0_S3_CLK_SRC] = &gcc_qupv3_wrap0_s3_clk_src.clkr,
+	[GCC_QUPV3_WRAP0_S4_CLK] = &gcc_qupv3_wrap0_s4_clk.clkr,
+	[GCC_QUPV3_WRAP0_S4_CLK_SRC] = &gcc_qupv3_wrap0_s4_clk_src.clkr,
+	[GCC_QUPV3_WRAP0_S5_CLK] = &gcc_qupv3_wrap0_s5_clk.clkr,
+	[GCC_QUPV3_WRAP0_S5_CLK_SRC] = &gcc_qupv3_wrap0_s5_clk_src.clkr,
+	[GCC_QUPV3_WRAP0_S6_CLK] = &gcc_qupv3_wrap0_s6_clk.clkr,
+	[GCC_QUPV3_WRAP0_S6_CLK_SRC] = &gcc_qupv3_wrap0_s6_clk_src.clkr,
+	[GCC_QUPV3_WRAP0_S7_CLK] = &gcc_qupv3_wrap0_s7_clk.clkr,
+	[GCC_QUPV3_WRAP0_S7_CLK_SRC] = &gcc_qupv3_wrap0_s7_clk_src.clkr,
+	[GCC_QUPV3_WRAP1_S0_CLK] = &gcc_qupv3_wrap1_s0_clk.clkr,
+	[GCC_QUPV3_WRAP1_S0_CLK_SRC] = &gcc_qupv3_wrap1_s0_clk_src.clkr,
+	[GCC_QUPV3_WRAP1_S1_CLK] = &gcc_qupv3_wrap1_s1_clk.clkr,
+	[GCC_QUPV3_WRAP1_S1_CLK_SRC] = &gcc_qupv3_wrap1_s1_clk_src.clkr,
+	[GCC_QUPV3_WRAP1_S2_CLK] = &gcc_qupv3_wrap1_s2_clk.clkr,
+	[GCC_QUPV3_WRAP1_S2_CLK_SRC] = &gcc_qupv3_wrap1_s2_clk_src.clkr,
+	[GCC_QUPV3_WRAP1_S3_CLK] = &gcc_qupv3_wrap1_s3_clk.clkr,
+	[GCC_QUPV3_WRAP1_S3_CLK_SRC] = &gcc_qupv3_wrap1_s3_clk_src.clkr,
+	[GCC_QUPV3_WRAP1_S4_CLK] = &gcc_qupv3_wrap1_s4_clk.clkr,
+	[GCC_QUPV3_WRAP1_S4_CLK_SRC] = &gcc_qupv3_wrap1_s4_clk_src.clkr,
+	[GCC_QUPV3_WRAP1_S5_CLK] = &gcc_qupv3_wrap1_s5_clk.clkr,
+	[GCC_QUPV3_WRAP1_S5_CLK_SRC] = &gcc_qupv3_wrap1_s5_clk_src.clkr,
+	[GCC_QUPV3_WRAP2_S0_CLK] = &gcc_qupv3_wrap2_s0_clk.clkr,
+	[GCC_QUPV3_WRAP2_S0_CLK_SRC] = &gcc_qupv3_wrap2_s0_clk_src.clkr,
+	[GCC_QUPV3_WRAP2_S1_CLK] = &gcc_qupv3_wrap2_s1_clk.clkr,
+	[GCC_QUPV3_WRAP2_S1_CLK_SRC] = &gcc_qupv3_wrap2_s1_clk_src.clkr,
+	[GCC_QUPV3_WRAP2_S2_CLK] = &gcc_qupv3_wrap2_s2_clk.clkr,
+	[GCC_QUPV3_WRAP2_S2_CLK_SRC] = &gcc_qupv3_wrap2_s2_clk_src.clkr,
+	[GCC_QUPV3_WRAP2_S3_CLK] = &gcc_qupv3_wrap2_s3_clk.clkr,
+	[GCC_QUPV3_WRAP2_S3_CLK_SRC] = &gcc_qupv3_wrap2_s3_clk_src.clkr,
+	[GCC_QUPV3_WRAP2_S4_CLK] = &gcc_qupv3_wrap2_s4_clk.clkr,
+	[GCC_QUPV3_WRAP2_S4_CLK_SRC] = &gcc_qupv3_wrap2_s4_clk_src.clkr,
+	[GCC_QUPV3_WRAP2_S5_CLK] = &gcc_qupv3_wrap2_s5_clk.clkr,
+	[GCC_QUPV3_WRAP2_S5_CLK_SRC] = &gcc_qupv3_wrap2_s5_clk_src.clkr,
+	[GCC_QUPV3_WRAP_0_M_AHB_CLK] = &gcc_qupv3_wrap_0_m_ahb_clk.clkr,
+	[GCC_QUPV3_WRAP_0_S_AHB_CLK] = &gcc_qupv3_wrap_0_s_ahb_clk.clkr,
+	[GCC_QUPV3_WRAP_1_M_AHB_CLK] = &gcc_qupv3_wrap_1_m_ahb_clk.clkr,
+	[GCC_QUPV3_WRAP_1_S_AHB_CLK] = &gcc_qupv3_wrap_1_s_ahb_clk.clkr,
+	[GCC_QUPV3_WRAP_2_M_AHB_CLK] = &gcc_qupv3_wrap_2_m_ahb_clk.clkr,
+	[GCC_QUPV3_WRAP_2_S_AHB_CLK] = &gcc_qupv3_wrap_2_s_ahb_clk.clkr,
+	[GCC_SDCC2_AHB_CLK] = &gcc_sdcc2_ahb_clk.clkr,
+	[GCC_SDCC2_APPS_CLK] = &gcc_sdcc2_apps_clk.clkr,
+	[GCC_SDCC2_APPS_CLK_SRC] = &gcc_sdcc2_apps_clk_src.clkr,
+	[GCC_SDCC4_AHB_CLK] = &gcc_sdcc4_ahb_clk.clkr,
+	[GCC_SDCC4_APPS_CLK] = &gcc_sdcc4_apps_clk.clkr,
+	[GCC_SDCC4_APPS_CLK_SRC] = &gcc_sdcc4_apps_clk_src.clkr,
+	[GCC_SYS_NOC_CPUSS_AHB_CLK] = &gcc_sys_noc_cpuss_ahb_clk.clkr,
+	[GCC_TSIF_AHB_CLK] = &gcc_tsif_ahb_clk.clkr,
+	[GCC_TSIF_INACTIVITY_TIMERS_CLK] = &gcc_tsif_inactivity_timers_clk.clkr,
+	[GCC_TSIF_REF_CLK] = &gcc_tsif_ref_clk.clkr,
+	[GCC_TSIF_REF_CLK_SRC] = &gcc_tsif_ref_clk_src.clkr,
+	[GCC_UFS_CARD_AHB_CLK] = &gcc_ufs_card_ahb_clk.clkr,
+	[GCC_UFS_CARD_AXI_CLK] = &gcc_ufs_card_axi_clk.clkr,
+	[GCC_UFS_CARD_AXI_CLK_SRC] = &gcc_ufs_card_axi_clk_src.clkr,
+	[GCC_UFS_CARD_AXI_HW_CTL_CLK] = &gcc_ufs_card_axi_hw_ctl_clk.clkr,
+	[GCC_UFS_CARD_CLKREF_CLK] = &gcc_ufs_card_clkref_clk.clkr,
+	[GCC_UFS_CARD_ICE_CORE_CLK] = &gcc_ufs_card_ice_core_clk.clkr,
+	[GCC_UFS_CARD_ICE_CORE_CLK_SRC] = &gcc_ufs_card_ice_core_clk_src.clkr,
+	[GCC_UFS_CARD_ICE_CORE_HW_CTL_CLK] =
+		&gcc_ufs_card_ice_core_hw_ctl_clk.clkr,
+	[GCC_UFS_CARD_PHY_AUX_CLK] = &gcc_ufs_card_phy_aux_clk.clkr,
+	[GCC_UFS_CARD_PHY_AUX_CLK_SRC] = &gcc_ufs_card_phy_aux_clk_src.clkr,
+	[GCC_UFS_CARD_PHY_AUX_HW_CTL_CLK] =
+		&gcc_ufs_card_phy_aux_hw_ctl_clk.clkr,
+	[GCC_UFS_CARD_UNIPRO_CORE_CLK] = &gcc_ufs_card_unipro_core_clk.clkr,
+	[GCC_UFS_CARD_UNIPRO_CORE_CLK_SRC] =
+		&gcc_ufs_card_unipro_core_clk_src.clkr,
+	[GCC_UFS_CARD_UNIPRO_CORE_HW_CTL_CLK] =
+		&gcc_ufs_card_unipro_core_hw_ctl_clk.clkr,
+	[GCC_UFS_MEM_CLKREF_CLK] = &gcc_ufs_mem_clkref_clk.clkr,
+	[GCC_UFS_PHY_AHB_CLK] = &gcc_ufs_phy_ahb_clk.clkr,
+	[GCC_UFS_PHY_AXI_CLK] = &gcc_ufs_phy_axi_clk.clkr,
+	[GCC_UFS_PHY_AXI_CLK_SRC] = &gcc_ufs_phy_axi_clk_src.clkr,
+	[GCC_UFS_PHY_AXI_HW_CTL_CLK] = &gcc_ufs_phy_axi_hw_ctl_clk.clkr,
+	[GCC_UFS_PHY_ICE_CORE_CLK] = &gcc_ufs_phy_ice_core_clk.clkr,
+	[GCC_UFS_PHY_ICE_CORE_CLK_SRC] = &gcc_ufs_phy_ice_core_clk_src.clkr,
+	[GCC_UFS_PHY_ICE_CORE_HW_CTL_CLK] =
+		&gcc_ufs_phy_ice_core_hw_ctl_clk.clkr,
+	[GCC_UFS_PHY_PHY_AUX_CLK] = &gcc_ufs_phy_phy_aux_clk.clkr,
+	[GCC_UFS_PHY_PHY_AUX_CLK_SRC] = &gcc_ufs_phy_phy_aux_clk_src.clkr,
+	[GCC_UFS_PHY_PHY_AUX_HW_CTL_CLK] = &gcc_ufs_phy_phy_aux_hw_ctl_clk.clkr,
+	[GCC_UFS_PHY_UNIPRO_CORE_CLK] = &gcc_ufs_phy_unipro_core_clk.clkr,
+	[GCC_UFS_PHY_UNIPRO_CORE_CLK_SRC] =
+		&gcc_ufs_phy_unipro_core_clk_src.clkr,
+	[GCC_UFS_PHY_UNIPRO_CORE_HW_CTL_CLK] =
+		&gcc_ufs_phy_unipro_core_hw_ctl_clk.clkr,
+	[GCC_USB30_PRIM_MASTER_CLK] = &gcc_usb30_prim_master_clk.clkr,
+	[GCC_USB30_PRIM_MASTER_CLK_SRC] = &gcc_usb30_prim_master_clk_src.clkr,
+	[GCC_USB30_PRIM_MOCK_UTMI_CLK] = &gcc_usb30_prim_mock_utmi_clk.clkr,
+	[GCC_USB30_PRIM_MOCK_UTMI_CLK_SRC] =
+		&gcc_usb30_prim_mock_utmi_clk_src.clkr,
+	[GCC_USB30_PRIM_SLEEP_CLK] = &gcc_usb30_prim_sleep_clk.clkr,
+	[GCC_USB30_SEC_MASTER_CLK] = &gcc_usb30_sec_master_clk.clkr,
+	[GCC_USB30_SEC_MASTER_CLK_SRC] = &gcc_usb30_sec_master_clk_src.clkr,
+	[GCC_USB30_SEC_MOCK_UTMI_CLK] = &gcc_usb30_sec_mock_utmi_clk.clkr,
+	[GCC_USB30_SEC_MOCK_UTMI_CLK_SRC] =
+		&gcc_usb30_sec_mock_utmi_clk_src.clkr,
+	[GCC_USB30_SEC_SLEEP_CLK] = &gcc_usb30_sec_sleep_clk.clkr,
+	[GCC_USB3_PRIM_CLKREF_CLK] = &gcc_usb3_prim_clkref_clk.clkr,
+	[GCC_USB3_PRIM_PHY_AUX_CLK] = &gcc_usb3_prim_phy_aux_clk.clkr,
+	[GCC_USB3_PRIM_PHY_AUX_CLK_SRC] = &gcc_usb3_prim_phy_aux_clk_src.clkr,
+	[GCC_USB3_PRIM_PHY_COM_AUX_CLK] = &gcc_usb3_prim_phy_com_aux_clk.clkr,
+	[GCC_USB3_SEC_CLKREF_CLK] = &gcc_usb3_sec_clkref_clk.clkr,
+	[GCC_USB3_SEC_PHY_AUX_CLK] = &gcc_usb3_sec_phy_aux_clk.clkr,
+	[GCC_USB3_SEC_PHY_AUX_CLK_SRC] = &gcc_usb3_sec_phy_aux_clk_src.clkr,
+	[GCC_USB3_SEC_PHY_COM_AUX_CLK] = &gcc_usb3_sec_phy_com_aux_clk.clkr,
+	[GCC_VIDEO_AHB_CLK] = &gcc_video_ahb_clk.clkr,
+	[GCC_VIDEO_AXI0_CLK] = &gcc_video_axi0_clk.clkr,
+	[GCC_VIDEO_AXI1_CLK] = &gcc_video_axi1_clk.clkr,
+	[GCC_VIDEO_AXIC_CLK] = &gcc_video_axic_clk.clkr,
+	[GCC_VIDEO_XO_CLK] = &gcc_video_xo_clk.clkr,
+	[GPLL0] = &gpll0.clkr,
+	[GPLL0_OUT_EVEN] = &gpll0_out_even.clkr,
+	[GPLL7] = &gpll7.clkr,
+	[GPLL9] = &gpll9.clkr,
+};
+
+static const struct qcom_reset_map gcc_sm8150_resets[] = {
+	[GCC_EMAC_BCR] = { 0x6000 },
+	[GCC_GPU_BCR] = { 0x71000 },
+	[GCC_MMSS_BCR] = { 0xb000 },
+	[GCC_NPU_BCR] = { 0x4d000 },
+	[GCC_PCIE_0_BCR] = { 0x6b000 },
+	[GCC_PCIE_0_PHY_BCR] = { 0x6c01c },
+	[GCC_PCIE_1_BCR] = { 0x8d000 },
+	[GCC_PCIE_1_PHY_BCR] = { 0x8e01c },
+	[GCC_PCIE_PHY_BCR] = { 0x6f000 },
+	[GCC_PDM_BCR] = { 0x33000 },
+	[GCC_PRNG_BCR] = { 0x34000 },
+	[GCC_QSPI_BCR] = { 0x24008 },
+	[GCC_QUPV3_WRAPPER_0_BCR] = { 0x17000 },
+	[GCC_QUPV3_WRAPPER_1_BCR] = { 0x18000 },
+	[GCC_QUPV3_WRAPPER_2_BCR] = { 0x1e000 },
+	[GCC_QUSB2PHY_PRIM_BCR] = { 0x12000 },
+	[GCC_QUSB2PHY_SEC_BCR] = { 0x12004 },
+	[GCC_USB3_PHY_PRIM_BCR] = { 0x50000 },
+	[GCC_USB3_DP_PHY_PRIM_BCR] = { 0x50008 },
+	[GCC_USB3_PHY_SEC_BCR] = { 0x5000c },
+	[GCC_USB3PHY_PHY_SEC_BCR] = { 0x50010 },
+	[GCC_SDCC2_BCR] = { 0x14000 },
+	[GCC_SDCC4_BCR] = { 0x16000 },
+	[GCC_TSIF_BCR] = { 0x36000 },
+	[GCC_UFS_CARD_BCR] = { 0x75000 },
+	[GCC_UFS_PHY_BCR] = { 0x77000 },
+	[GCC_USB30_PRIM_BCR] = { 0xf000 },
+	[GCC_USB30_SEC_BCR] = { 0x10000 },
+	[GCC_USB_PHY_CFG_AHB2PHY_BCR] = { 0x6a000 },
+};
+
+static const struct regmap_config gcc_sm8150_regmap_config = {
+	.reg_bits	= 32,
+	.reg_stride	= 4,
+	.val_bits	= 32,
+	.max_register	= 0x9c040,
+	.fast_io	= true,
+};
+
+static const struct qcom_cc_desc gcc_sm8150_desc = {
+	.config = &gcc_sm8150_regmap_config,
+	.clks = gcc_sm8150_clocks,
+	.num_clks = ARRAY_SIZE(gcc_sm8150_clocks),
+	.resets = gcc_sm8150_resets,
+	.num_resets = ARRAY_SIZE(gcc_sm8150_resets),
+};
+
+static const struct of_device_id gcc_sm8150_match_table[] = {
+	{ .compatible = "qcom,gcc-sm8150" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, gcc_sm8150_match_table);
+
+static int gcc_sm8150_probe(struct platform_device *pdev)
+{
+	struct regmap *regmap;
+	int ret;
+
+	regmap = qcom_cc_map(pdev, &gcc_sm8150_desc);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	/* Disable the GPLL0 active input to NPU and GPU via MISC registers */
+	regmap_update_bits(regmap, GCC_NPU_MISC, 0x3, 0x3);
+	regmap_update_bits(regmap, GCC_GPU_MISC, 0x3, 0x3);
+
+	ret = qcom_cc_really_probe(pdev, &gcc_sm8150_desc, regmap);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to register GCC clocks\n");
+		return ret;
+	}
+
+	dev_info(&pdev->dev, "Registered GCC clocks\n");
+	return ret;
+}
+
+static struct platform_driver gcc_sm8150_driver = {
+	.probe		= gcc_sm8150_probe,
+	.driver		= {
+		.name	= "gcc-sm8150",
+		.of_match_table = gcc_sm8150_match_table,
+	},
+};
+
+static int __init gcc_sm8150_init(void)
+{
+	return platform_driver_register(&gcc_sm8150_driver);
+}
+subsys_initcall(gcc_sm8150_init);
+
+static void __exit gcc_sm8150_exit(void)
+{
+	platform_driver_unregister(&gcc_sm8150_driver);
+}
+module_exit(gcc_sm8150_exit);
+
+MODULE_DESCRIPTION("QTI GCC SM8150 Driver");
+MODULE_LICENSE("GPL v2");
+MODULE_ALIAS("platform:gcc-sm8150");
diff --git a/include/dt-bindings/clock/qcom,gcc-sm8150.h b/include/dt-bindings/clock/qcom,gcc-sm8150.h
new file mode 100644
index 000000000000..90d60ef94c64
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,gcc-sm8150.h
@@ -0,0 +1,243 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_GCC_SM8150_H
+#define _DT_BINDINGS_CLK_QCOM_GCC_SM8150_H
+
+/* GCC clocks */
+#define GCC_AGGRE_NOC_PCIE_TBU_CLK				0
+#define GCC_AGGRE_UFS_CARD_AXI_CLK				1
+#define GCC_AGGRE_UFS_CARD_AXI_HW_CTL_CLK			2
+#define GCC_AGGRE_UFS_PHY_AXI_CLK				3
+#define GCC_AGGRE_UFS_PHY_AXI_HW_CTL_CLK			4
+#define GCC_AGGRE_USB3_PRIM_AXI_CLK				5
+#define GCC_AGGRE_USB3_SEC_AXI_CLK				6
+#define GCC_BOOT_ROM_AHB_CLK					7
+#define GCC_CAMERA_AHB_CLK					8
+#define GCC_CAMERA_HF_AXI_CLK					9
+#define GCC_CAMERA_SF_AXI_CLK					10
+#define GCC_CAMERA_XO_CLK					11
+#define GCC_CFG_NOC_USB3_PRIM_AXI_CLK				12
+#define GCC_CFG_NOC_USB3_SEC_AXI_CLK				13
+#define GCC_CPUSS_AHB_CLK					14
+#define GCC_CPUSS_AHB_CLK_SRC					15
+#define GCC_CPUSS_DVM_BUS_CLK					16
+#define GCC_CPUSS_GNOC_CLK					17
+#define GCC_CPUSS_RBCPR_CLK					18
+#define GCC_DDRSS_GPU_AXI_CLK					19
+#define GCC_DISP_AHB_CLK					20
+#define GCC_DISP_HF_AXI_CLK					21
+#define GCC_DISP_SF_AXI_CLK					22
+#define GCC_DISP_XO_CLK						23
+#define GCC_EMAC_AXI_CLK					24
+#define GCC_EMAC_PTP_CLK					25
+#define GCC_EMAC_PTP_CLK_SRC					26
+#define GCC_EMAC_RGMII_CLK					27
+#define GCC_EMAC_RGMII_CLK_SRC					28
+#define GCC_EMAC_SLV_AHB_CLK					29
+#define GCC_GP1_CLK						30
+#define GCC_GP1_CLK_SRC						31
+#define GCC_GP2_CLK						32
+#define GCC_GP2_CLK_SRC						33
+#define GCC_GP3_CLK						34
+#define GCC_GP3_CLK_SRC						35
+#define GCC_GPU_CFG_AHB_CLK					36
+#define GCC_GPU_GPLL0_CLK_SRC					37
+#define GCC_GPU_GPLL0_DIV_CLK_SRC				38
+#define GCC_GPU_IREF_CLK					39
+#define GCC_GPU_MEMNOC_GFX_CLK					40
+#define GCC_GPU_SNOC_DVM_GFX_CLK				41
+#define GCC_NPU_AT_CLK						42
+#define GCC_NPU_AXI_CLK						43
+#define GCC_NPU_CFG_AHB_CLK					44
+#define GCC_NPU_GPLL0_CLK_SRC					45
+#define GCC_NPU_GPLL0_DIV_CLK_SRC				46
+#define GCC_NPU_TRIG_CLK					47
+#define GCC_PCIE0_PHY_REFGEN_CLK				48
+#define GCC_PCIE1_PHY_REFGEN_CLK				49
+#define GCC_PCIE_0_AUX_CLK					50
+#define GCC_PCIE_0_AUX_CLK_SRC					51
+#define GCC_PCIE_0_CFG_AHB_CLK					52
+#define GCC_PCIE_0_CLKREF_CLK					53
+#define GCC_PCIE_0_MSTR_AXI_CLK					54
+#define GCC_PCIE_0_PIPE_CLK					55
+#define GCC_PCIE_0_SLV_AXI_CLK					56
+#define GCC_PCIE_0_SLV_Q2A_AXI_CLK				57
+#define GCC_PCIE_1_AUX_CLK					58
+#define GCC_PCIE_1_AUX_CLK_SRC					59
+#define GCC_PCIE_1_CFG_AHB_CLK					60
+#define GCC_PCIE_1_CLKREF_CLK					61
+#define GCC_PCIE_1_MSTR_AXI_CLK					62
+#define GCC_PCIE_1_PIPE_CLK					63
+#define GCC_PCIE_1_SLV_AXI_CLK					64
+#define GCC_PCIE_1_SLV_Q2A_AXI_CLK				65
+#define GCC_PCIE_PHY_AUX_CLK					66
+#define GCC_PCIE_PHY_REFGEN_CLK_SRC				67
+#define GCC_PDM2_CLK						68
+#define GCC_PDM2_CLK_SRC					69
+#define GCC_PDM_AHB_CLK						70
+#define GCC_PDM_XO4_CLK						71
+#define GCC_PRNG_AHB_CLK					72
+#define GCC_QMIP_CAMERA_NRT_AHB_CLK				73
+#define GCC_QMIP_CAMERA_RT_AHB_CLK				74
+#define GCC_QMIP_DISP_AHB_CLK					75
+#define GCC_QMIP_VIDEO_CVP_AHB_CLK				76
+#define GCC_QMIP_VIDEO_VCODEC_AHB_CLK				77
+#define GCC_QSPI_CNOC_PERIPH_AHB_CLK				78
+#define GCC_QSPI_CORE_CLK					79
+#define GCC_QSPI_CORE_CLK_SRC					80
+#define GCC_QUPV3_WRAP0_S0_CLK					81
+#define GCC_QUPV3_WRAP0_S0_CLK_SRC				82
+#define GCC_QUPV3_WRAP0_S1_CLK					83
+#define GCC_QUPV3_WRAP0_S1_CLK_SRC				84
+#define GCC_QUPV3_WRAP0_S2_CLK					85
+#define GCC_QUPV3_WRAP0_S2_CLK_SRC				86
+#define GCC_QUPV3_WRAP0_S3_CLK					87
+#define GCC_QUPV3_WRAP0_S3_CLK_SRC				88
+#define GCC_QUPV3_WRAP0_S4_CLK					89
+#define GCC_QUPV3_WRAP0_S4_CLK_SRC				90
+#define GCC_QUPV3_WRAP0_S5_CLK					91
+#define GCC_QUPV3_WRAP0_S5_CLK_SRC				92
+#define GCC_QUPV3_WRAP0_S6_CLK					93
+#define GCC_QUPV3_WRAP0_S6_CLK_SRC				94
+#define GCC_QUPV3_WRAP0_S7_CLK					95
+#define GCC_QUPV3_WRAP0_S7_CLK_SRC				96
+#define GCC_QUPV3_WRAP1_S0_CLK					97
+#define GCC_QUPV3_WRAP1_S0_CLK_SRC				98
+#define GCC_QUPV3_WRAP1_S1_CLK					99
+#define GCC_QUPV3_WRAP1_S1_CLK_SRC				100
+#define GCC_QUPV3_WRAP1_S2_CLK					101
+#define GCC_QUPV3_WRAP1_S2_CLK_SRC				102
+#define GCC_QUPV3_WRAP1_S3_CLK					103
+#define GCC_QUPV3_WRAP1_S3_CLK_SRC				104
+#define GCC_QUPV3_WRAP1_S4_CLK					105
+#define GCC_QUPV3_WRAP1_S4_CLK_SRC				106
+#define GCC_QUPV3_WRAP1_S5_CLK					107
+#define GCC_QUPV3_WRAP1_S5_CLK_SRC				108
+#define GCC_QUPV3_WRAP2_S0_CLK					109
+#define GCC_QUPV3_WRAP2_S0_CLK_SRC				110
+#define GCC_QUPV3_WRAP2_S1_CLK					111
+#define GCC_QUPV3_WRAP2_S1_CLK_SRC				112
+#define GCC_QUPV3_WRAP2_S2_CLK					113
+#define GCC_QUPV3_WRAP2_S2_CLK_SRC				114
+#define GCC_QUPV3_WRAP2_S3_CLK					115
+#define GCC_QUPV3_WRAP2_S3_CLK_SRC				116
+#define GCC_QUPV3_WRAP2_S4_CLK					117
+#define GCC_QUPV3_WRAP2_S4_CLK_SRC				118
+#define GCC_QUPV3_WRAP2_S5_CLK					119
+#define GCC_QUPV3_WRAP2_S5_CLK_SRC				120
+#define GCC_QUPV3_WRAP_0_M_AHB_CLK				121
+#define GCC_QUPV3_WRAP_0_S_AHB_CLK				122
+#define GCC_QUPV3_WRAP_1_M_AHB_CLK				123
+#define GCC_QUPV3_WRAP_1_S_AHB_CLK				124
+#define GCC_QUPV3_WRAP_2_M_AHB_CLK				125
+#define GCC_QUPV3_WRAP_2_S_AHB_CLK				126
+#define GCC_SDCC2_AHB_CLK					127
+#define GCC_SDCC2_APPS_CLK					128
+#define GCC_SDCC2_APPS_CLK_SRC					129
+#define GCC_SDCC4_AHB_CLK					130
+#define GCC_SDCC4_APPS_CLK					131
+#define GCC_SDCC4_APPS_CLK_SRC					132
+#define GCC_SYS_NOC_CPUSS_AHB_CLK				133
+#define GCC_TSIF_AHB_CLK					134
+#define GCC_TSIF_INACTIVITY_TIMERS_CLK				135
+#define GCC_TSIF_REF_CLK					136
+#define GCC_TSIF_REF_CLK_SRC					137
+#define GCC_UFS_CARD_AHB_CLK					138
+#define GCC_UFS_CARD_AXI_CLK					139
+#define GCC_UFS_CARD_AXI_CLK_SRC				140
+#define GCC_UFS_CARD_AXI_HW_CTL_CLK				141
+#define GCC_UFS_CARD_CLKREF_CLK					142
+#define GCC_UFS_CARD_ICE_CORE_CLK				143
+#define GCC_UFS_CARD_ICE_CORE_CLK_SRC				144
+#define GCC_UFS_CARD_ICE_CORE_HW_CTL_CLK			145
+#define GCC_UFS_CARD_PHY_AUX_CLK				146
+#define GCC_UFS_CARD_PHY_AUX_CLK_SRC				147
+#define GCC_UFS_CARD_PHY_AUX_HW_CTL_CLK				148
+#define GCC_UFS_CARD_RX_SYMBOL_0_CLK				149
+#define GCC_UFS_CARD_RX_SYMBOL_1_CLK				150
+#define GCC_UFS_CARD_TX_SYMBOL_0_CLK				151
+#define GCC_UFS_CARD_UNIPRO_CORE_CLK				152
+#define GCC_UFS_CARD_UNIPRO_CORE_CLK_SRC			153
+#define GCC_UFS_CARD_UNIPRO_CORE_HW_CTL_CLK			154
+#define GCC_UFS_MEM_CLKREF_CLK					155
+#define GCC_UFS_PHY_AHB_CLK					156
+#define GCC_UFS_PHY_AXI_CLK					157
+#define GCC_UFS_PHY_AXI_CLK_SRC					158
+#define GCC_UFS_PHY_AXI_HW_CTL_CLK				159
+#define GCC_UFS_PHY_ICE_CORE_CLK				160
+#define GCC_UFS_PHY_ICE_CORE_CLK_SRC				161
+#define GCC_UFS_PHY_ICE_CORE_HW_CTL_CLK				162
+#define GCC_UFS_PHY_PHY_AUX_CLK					163
+#define GCC_UFS_PHY_PHY_AUX_CLK_SRC				164
+#define GCC_UFS_PHY_PHY_AUX_HW_CTL_CLK				165
+#define GCC_UFS_PHY_RX_SYMBOL_0_CLK				166
+#define GCC_UFS_PHY_RX_SYMBOL_1_CLK				167
+#define GCC_UFS_PHY_TX_SYMBOL_0_CLK				168
+#define GCC_UFS_PHY_UNIPRO_CORE_CLK				169
+#define GCC_UFS_PHY_UNIPRO_CORE_CLK_SRC				170
+#define GCC_UFS_PHY_UNIPRO_CORE_HW_CTL_CLK			171
+#define GCC_USB30_PRIM_MASTER_CLK				172
+#define GCC_USB30_PRIM_MASTER_CLK_SRC				173
+#define GCC_USB30_PRIM_MOCK_UTMI_CLK				174
+#define GCC_USB30_PRIM_MOCK_UTMI_CLK_SRC			175
+#define GCC_USB30_PRIM_SLEEP_CLK				176
+#define GCC_USB30_SEC_MASTER_CLK				177
+#define GCC_USB30_SEC_MASTER_CLK_SRC				178
+#define GCC_USB30_SEC_MOCK_UTMI_CLK				179
+#define GCC_USB30_SEC_MOCK_UTMI_CLK_SRC				180
+#define GCC_USB30_SEC_SLEEP_CLK					181
+#define GCC_USB3_PRIM_CLKREF_CLK				182
+#define GCC_USB3_PRIM_PHY_AUX_CLK				183
+#define GCC_USB3_PRIM_PHY_AUX_CLK_SRC				184
+#define GCC_USB3_PRIM_PHY_COM_AUX_CLK				185
+#define GCC_USB3_PRIM_PHY_PIPE_CLK				186
+#define GCC_USB3_SEC_CLKREF_CLK					187
+#define GCC_USB3_SEC_PHY_AUX_CLK				188
+#define GCC_USB3_SEC_PHY_AUX_CLK_SRC				189
+#define GCC_USB3_SEC_PHY_COM_AUX_CLK				190
+#define GCC_USB3_SEC_PHY_PIPE_CLK				191
+#define GCC_VIDEO_AHB_CLK					192
+#define GCC_VIDEO_AXI0_CLK					193
+#define GCC_VIDEO_AXI1_CLK					194
+#define GCC_VIDEO_AXIC_CLK					195
+#define GCC_VIDEO_XO_CLK					196
+#define GPLL0							197
+#define GPLL0_OUT_EVEN						198
+#define GPLL7							199
+#define GPLL9							200
+
+/* Reset clocks */
+#define GCC_EMAC_BCR						0
+#define GCC_GPU_BCR						1
+#define GCC_MMSS_BCR						2
+#define GCC_NPU_BCR						3
+#define GCC_PCIE_0_BCR						4
+#define GCC_PCIE_0_PHY_BCR					5
+#define GCC_PCIE_1_BCR						6
+#define GCC_PCIE_1_PHY_BCR					7
+#define GCC_PCIE_PHY_BCR					8
+#define GCC_PDM_BCR						9
+#define GCC_PRNG_BCR						10
+#define GCC_QSPI_BCR						11
+#define GCC_QUPV3_WRAPPER_0_BCR					12
+#define GCC_QUPV3_WRAPPER_1_BCR					13
+#define GCC_QUPV3_WRAPPER_2_BCR					14
+#define GCC_QUSB2PHY_PRIM_BCR					15
+#define GCC_QUSB2PHY_SEC_BCR					16
+#define GCC_USB3_PHY_PRIM_BCR					17
+#define GCC_USB3_DP_PHY_PRIM_BCR				18
+#define GCC_USB3_PHY_SEC_BCR					19
+#define GCC_USB3PHY_PHY_SEC_BCR					20
+#define GCC_SDCC2_BCR						21
+#define GCC_SDCC4_BCR						22
+#define GCC_TSIF_BCR						23
+#define GCC_UFS_CARD_BCR					24
+#define GCC_UFS_PHY_BCR						25
+#define GCC_USB30_PRIM_BCR					26
+#define GCC_USB30_SEC_BCR					27
+#define GCC_USB_PHY_CFG_AHB2PHY_BCR				28
+
+#endif
-- 
2.20.1

