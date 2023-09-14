Return-Path: <devicetree+bounces-95-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8CD79FC37
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:40:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 363811C2086B
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D81EA3FED;
	Thu, 14 Sep 2023 06:40:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3B13FEC
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:40:26 +0000 (UTC)
Received: from mail-sh.amlogic.com (mail-sh.amlogic.com [58.32.228.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92F5CD8;
	Wed, 13 Sep 2023 23:40:25 -0700 (PDT)
Received: from droid10-sz.amlogic.com (10.28.11.69) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.2507.13; Thu, 14 Sep 2023
 14:40:23 +0800
From: zelong dong <zelong.dong@amlogic.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Kevin Hilman <khilman@baylibre.com>, Rob Herring
	<robh+dt@kernel.org>, Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>, Jerome Brunet <jbrunet@baylibre.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: <linux-kernel@vger.kernel.org>, <linux-amlogic@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<yonghui.yu@amlogic.com>, <kelvin.zhang@amlogic.com>, Zelong Dong
	<zelong.dong@amlogic.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>, Dmitry Rokosov <ddrokosov@sberdevices.ru>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/3] dt-bindings: reset: Add compatible and DT bindings for Amlogic C3 Reset Controller
Date: Thu, 14 Sep 2023 14:40:16 +0800
Message-ID: <20230914064018.18790-2-zelong.dong@amlogic.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230914064018.18790-1-zelong.dong@amlogic.com>
References: <20230914064018.18790-1-zelong.dong@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.28.11.69]

From: Zelong Dong <zelong.dong@amlogic.com>

Add new compatible and DT bindings for Amlogic C3 Reset Controller

Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Dmitry Rokosov <ddrokosov@sberdevices.ru>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/reset/amlogic,meson-reset.yaml   |   1 +
 include/dt-bindings/reset/amlogic,c3-reset.h  | 119 ++++++++++++++++++
 2 files changed, 120 insertions(+)
 create mode 100644 include/dt-bindings/reset/amlogic,c3-reset.h

diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
index d3fdee89d4f8..f0c6c0df0ce3 100644
--- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
@@ -18,6 +18,7 @@ properties:
       - amlogic,meson-axg-reset # Reset Controller on AXG and compatible SoCs
       - amlogic,meson-a1-reset # Reset Controller on A1 and compatible SoCs
       - amlogic,meson-s4-reset # Reset Controller on S4 and compatible SoCs
+      - amlogic,c3-reset # Reset Controller on C3 and compatible SoCs
 
   reg:
     maxItems: 1
diff --git a/include/dt-bindings/reset/amlogic,c3-reset.h b/include/dt-bindings/reset/amlogic,c3-reset.h
new file mode 100644
index 000000000000..d9127863f603
--- /dev/null
+++ b/include/dt-bindings/reset/amlogic,c3-reset.h
@@ -0,0 +1,119 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Copyright (c) 2023 Amlogic, Inc. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_AMLOGIC_C3_RESET_H
+#define _DT_BINDINGS_AMLOGIC_C3_RESET_H
+
+/* RESET0 */
+/*						0-3 */
+#define RESET_USBCTRL				4
+/*						5-7 */
+#define RESET_USBPHY20				8
+/*						9 */
+#define RESET_USB2DRD				10
+#define RESET_MIPI_DSI_HOST			11
+#define RESET_MIPI_DSI_PHY			12
+/*						13-20 */
+#define RESET_GE2D				21
+#define RESET_DWAP				22
+/*						23-31 */
+
+/* RESET1 */
+#define RESET_AUDIO				32
+/*						33-34 */
+#define RESET_DDRAPB				35
+#define RESET_DDR				36
+#define RESET_DOS_CAPB3				37
+#define RESET_DOS				38
+/*						39-46 */
+#define RESET_NNA				47
+#define RESET_ETHERNET				48
+#define RESET_ISP				49
+#define RESET_VC9000E_APB			50
+#define RESET_VC9000E_A				51
+/*						52 */
+#define RESET_VC9000E_CORE			53
+/*						54-63 */
+
+/* RESET2 */
+#define RESET_ABUS_ARB				64
+#define RESET_IRCTRL				65
+/*						66 */
+#define RESET_TEMP_PII				67
+/*						68-72 */
+#define RESET_SPICC_0				73
+#define RESET_SPICC_1				74
+#define RESET_RSA				75
+
+/*						76-79 */
+#define RESET_MSR_CLK				80
+#define RESET_SPIFC				81
+#define RESET_SAR_ADC				82
+/*						83-87 */
+#define RESET_ACODEC				88
+/*						89-90 */
+#define RESET_WATCHDOG				91
+/*						92-95 */
+
+/* RESET3 */
+#define RESET_ISP_NIC_GPV			96
+#define RESET_ISP_NIC_MAIN			97
+#define RESET_ISP_NIC_VCLK			98
+#define RESET_ISP_NIC_VOUT			99
+#define RESET_ISP_NIC_ALL			100
+#define RESET_VOUT				101
+#define RESET_VOUT_VENC				102
+/*						103 */
+#define RESET_CVE_NIC_GPV			104
+#define RESET_CVE_NIC_MAIN			105
+#define RESET_CVE_NIC_GE2D			106
+#define RESET_CVE_NIC_DW			106
+#define RESET_CVE_NIC_CVE			108
+#define RESET_CVE_NIC_ALL			109
+#define RESET_CVE				110
+/*						112-127 */
+
+/* RESET4 */
+#define RESET_RTC				128
+#define RESET_PWM_AB				129
+#define RESET_PWM_CD				130
+#define RESET_PWM_EF				131
+#define RESET_PWM_GH				132
+#define RESET_PWM_IJ				133
+#define RESET_PWM_KL				134
+#define RESET_PWM_MN				135
+/*						136-137 */
+#define RESET_UART_A				138
+#define RESET_UART_B				139
+#define RESET_UART_C				140
+#define RESET_UART_D				141
+#define RESET_UART_E				142
+#define RESET_UART_F				143
+#define RESET_I2C_S_A				144
+#define RESET_I2C_M_A				145
+#define RESET_I2C_M_B				146
+#define RESET_I2C_M_C				147
+#define RESET_I2C_M_D				148
+/*						149-151 */
+#define RESET_SD_EMMC_A				152
+#define RESET_SD_EMMC_B				153
+#define RESET_SD_EMMC_C				154
+
+/* RESET5 */
+/*						160-172 */
+#define RESET_BRG_NIC_NNA			173
+#define RESET_BRG_MUX_NIC_MAIN			174
+#define RESET_BRG_AO_NIC_ALL			175
+/*						176-183 */
+#define RESET_BRG_NIC_VAPB			184
+#define RESET_BRG_NIC_SDIO_B			185
+#define RESET_BRG_NIC_SDIO_A			186
+#define RESET_BRG_NIC_EMMC			187
+#define RESET_BRG_NIC_DSU			188
+#define RESET_BRG_NIC_SYSCLK			189
+#define RESET_BRG_NIC_MAIN			190
+#define RESET_BRG_NIC_ALL			191
+
+#endif
-- 
2.35.1


