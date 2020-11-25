Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 795902C386C
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 06:21:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725838AbgKYFUO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 00:20:14 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:39632 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725835AbgKYFUO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 00:20:14 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AP5K8JH110634;
        Tue, 24 Nov 2020 23:20:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606281608;
        bh=vDEuL9+qzQEUbAXrRO1++pJAYFnz7giF1Uyg+ZIiZ1Y=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=Hdi9TeXizgF8O+L3VUepv607mK1sR4fPXipgMconba1uEUIkVzLYdOzUClC+j6cfn
         2RamJqnU6+QoptrP5e1xE0/CZhQ2EnwMhTk0N8JB5pR1R00ctC2CDDW07ejTE/a2sI
         DT5pScBqQVkoZgPuel1EhivIYP87dgptBaE+N+GI=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AP5K8DO002931
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 24 Nov 2020 23:20:08 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 24
 Nov 2020 23:20:07 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 24 Nov 2020 23:20:08 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AP5K8N9117116;
        Tue, 24 Nov 2020 23:20:08 -0600
From:   Dave Gerlach <d-gerlach@ti.com>
To:     Rob Herring <robh+dt@kernel.org>, Nishanth Menon <nm@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH 3/3] arm64: dts: ti: Add support for AM642 EVM
Date:   Tue, 24 Nov 2020 23:20:04 -0600
Message-ID: <20201125052004.17823-4-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201125052004.17823-1-d-gerlach@ti.com>
References: <20201125052004.17823-1-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AM642 EValuation Module (EVM) is a board that provides access to
various peripherals available on the AM642 SoC, such as PCIe, USB 2.0,
CPSW Ethernet, ADC, and more.

Introduce basic support for the AM642 EVM to enable minimal
ramdisk boot.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile         |  2 +
 arch/arm64/boot/dts/ti/k3-am642-evm.dts | 61 +++++++++++++++++++++++++
 2 files changed, 63 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm.dts

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 65506f21ba30..c687739e2bca 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -11,3 +11,5 @@ dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
 
 dtb-$(CONFIG_ARCH_K3) += k3-j7200-common-proc-board.dtb
+
+dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
new file mode 100644
index 000000000000..8caa012382df
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+
+#include "k3-am642.dtsi"
+
+/ {
+	compatible =  "ti,am642-evm", "ti,am642";
+	model = "Texas Instruments AM642 EVM";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+		bootargs = "console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* 2G RAM */
+		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
+
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure_ddr: optee@9e800000 {
+			reg = <0x00 0x9e800000 0x00 0x01800000>; /* for OP-TEE */
+			alignment = <0x1000>;
+			no-map;
+		};
+	};
+};
+
+&main_uart1 {
+	status = "disabled";
+};
+
+&main_uart2 {
+	status = "disabled";
+};
+
+&main_uart3 {
+	status = "disabled";
+};
+
+&main_uart4 {
+	status = "disabled";
+};
+
+&main_uart5 {
+	status = "disabled";
+};
+
+&main_uart6 {
+	status = "disabled";
+};
-- 
2.28.0

