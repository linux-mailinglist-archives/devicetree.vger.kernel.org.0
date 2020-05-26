Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97A811E04A5
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2020 04:20:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388297AbgEYCUk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 May 2020 22:20:40 -0400
Received: from gateway20.websitewelcome.com ([192.185.52.45]:12082 "EHLO
        gateway20.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2388151AbgEYCUk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 24 May 2020 22:20:40 -0400
X-Greylist: delayed 1500 seconds by postgrey-1.27 at vger.kernel.org; Sun, 24 May 2020 22:20:39 EDT
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
        by gateway20.websitewelcome.com (Postfix) with ESMTP id D0D24400C4F10
        for <devicetree@vger.kernel.org>; Sun, 24 May 2020 19:11:58 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180])
        by cmsmtp with SMTP
        id d1x5jZnyWAGTXd1x5jmmOy; Sun, 24 May 2020 20:30:51 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
        MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
        :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=GGgwQdUzcMvoWgVO5XpDUhAIz3Dc4bq2gIMPXKAwu6Q=; b=oSd547Lp5+yjbuv5glgUXMfsHW
        imgAgCdvx+URlUr80e/AdzA9ScPC63TS0p4b1buTdpekBz8Qd8aoNztQ64oPsWob8rnW93C4Q8coF
        fy2APo1zMgXnyawFDQT5srjpnKWTRxPOWPzaDH4p2elIRcQ8GPITr7ibVKsjB6G0XOdNQSPdX7LnD
        dTsLoZYu/AticXVmQ0l+aFjBE8pH4vgsLCYz/bnUhBIgIGmYn9fYXMWvS7X/TdS54srKXXPa+C0If
        WRAaybkajm9EmWbSfE3Lnkl/XlhacM4iEqnO34PbREIdKU0yw2bx7oKBhf0yoHgXFLFGBExWCNunZ
        W30bZQ1w==;
Received: from [191.31.196.240] (port=34284 helo=castello.castello)
        by br164.hostgator.com.br with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92)
        (envelope-from <matheus@castello.eng.br>)
        id 1jd1x5-004Dik-CJ; Sun, 24 May 2020 22:30:51 -0300
From:   Matheus Castello <matheus@castello.eng.br>
To:     afaerber@suse.de, manivannan.sadhasivam@linaro.org,
        mark.rutland@arm.com, robh+dt@kernel.org
Cc:     edgar.righi@lsitec.org.br, igor.lima@lsitec.org.br,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
        Matheus Castello <matheus@castello.eng.br>
Subject: [PATCH v5 3/3] ARM: dts: Add Caninos Loucos Labrador
Date:   Sun, 24 May 2020 22:30:08 -0300
Message-Id: <20200525013008.108750-4-matheus@castello.eng.br>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200525013008.108750-1-matheus@castello.eng.br>
References: <20200525013008.108750-1-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.196.240
X-Source-L: No
X-Exim-ID: 1jd1x5-004Dik-CJ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.196.240]:34284
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 38
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Device Trees for Caninos Loucos Labrador CoM and base board.
Based on the work of Andreas Färber on Lemaker Guitar device tree.

Signed-off-by: Matheus Castello <matheus@castello.eng.br>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Andreas Färber <afaerber@suse.de>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 .../arm/boot/dts/owl-s500-labrador-base-m.dts | 34 +++++++++++++++++++
 arch/arm/boot/dts/owl-s500-labrador-v2.dtsi   | 22 ++++++++++++
 3 files changed, 57 insertions(+)
 create mode 100644 arch/arm/boot/dts/owl-s500-labrador-base-m.dts
 create mode 100644 arch/arm/boot/dts/owl-s500-labrador-v2.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e8dd99201397..0f8c1f255574 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -856,6 +856,7 @@ dtb-$(CONFIG_ARCH_ORION5X) += \
 dtb-$(CONFIG_ARCH_ACTIONS) += \
 	owl-s500-cubieboard6.dtb \
 	owl-s500-guitar-bb-rev-b.dtb \
+	owl-s500-labrador-base-m.dtb \
 	owl-s500-sparky.dtb
 dtb-$(CONFIG_ARCH_PRIMA2) += \
 	prima2-evb.dtb
diff --git a/arch/arm/boot/dts/owl-s500-labrador-base-m.dts b/arch/arm/boot/dts/owl-s500-labrador-base-m.dts
new file mode 100644
index 000000000000..044568fec25e
--- /dev/null
+++ b/arch/arm/boot/dts/owl-s500-labrador-base-m.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Caninos Labrador Base Board
+ *
+ * Copyright (c) 2019-2020 Matheus Castello
+ */
+
+/dts-v1/;
+
+#include "owl-s500-labrador-v2.dtsi"
+
+/ {
+	model = "Caninos Labrador Base-M v1.0a";
+	compatible = "caninos,labrador-base-m", "actions,s500";
+
+	aliases {
+		serial3 = &uart3;
+	};
+
+	chosen {
+		stdout-path = "serial3:115200n8";
+	};
+
+	uart3_clk: uart3-clk {
+		compatible = "fixed-clock";
+		clock-frequency = <921600>;
+		#clock-cells = <0>;
+	};
+};
+
+&uart3 {
+	status = "okay";
+	clocks = <&uart3_clk>;
+};
diff --git a/arch/arm/boot/dts/owl-s500-labrador-v2.dtsi b/arch/arm/boot/dts/owl-s500-labrador-v2.dtsi
new file mode 100644
index 000000000000..883ff2f9886d
--- /dev/null
+++ b/arch/arm/boot/dts/owl-s500-labrador-v2.dtsi
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Caninos Labrador SoM V2
+ *
+ * Copyright (c) 2019-2020 Matheus Castello
+ */
+
+#include "owl-s500.dtsi"
+
+/ {
+	model = "Caninos Labrador Core V2.1";
+	compatible = "caninos,labrador-v2", "actions,s500";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x80000000>;
+	};
+};
+
+&timer {
+	clocks = <&hosc>;
+};
--
2.26.2

