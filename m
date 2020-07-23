Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 203CC22AB41
	for <lists+devicetree@lfdr.de>; Thu, 23 Jul 2020 11:03:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728047AbgGWJCi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jul 2020 05:02:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728144AbgGWJCh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jul 2020 05:02:37 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EFDBC0619DC
        for <devicetree@vger.kernel.org>; Thu, 23 Jul 2020 02:02:37 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id 207so2696332pfu.3
        for <devicetree@vger.kernel.org>; Thu, 23 Jul 2020 02:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nMTCvpA03j/HvhHxdleIon+wdOLzcdNROWHhfNRo/CA=;
        b=rqJG1uSNxj0UjXWnxEL68YJ+e05mYQF9ICkOlWoNcPunoLOl2uMdK3oHAwtPsd8DUZ
         pN9PCxFKIBF2lkbnZnQGnBauHF7ciXcAKLwB6CmgAhES3WlOhR7etuetdUws9aPqTFoS
         t2gJCcYSrVh9vzQoJrR0D0tmtqsZu3+aw8yPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nMTCvpA03j/HvhHxdleIon+wdOLzcdNROWHhfNRo/CA=;
        b=HTJOcbLMpQTHeeDgZSmpt4fnqh2v+fhX7ZR+RG2RM8SQ+a8dNcg0PcpXBqvS0E4S92
         pOp2kuUrUk53XPohOr4+ABaZnaJ+ryE2WGJ+14RPQbwk0jRw/7gY788SYQRFlijH87Uq
         VdxYZ0Q0SnQ3wIL343Rl3oiNGhe8UJr0XD1/1II0/Ho4/Ef+oguWFnt4R6A9kHoA/5af
         QK0EEA8YBejdc9mGqmW1dZg2ugOv6RLZDyYGeBG1XpnZAXft5YirqSQuQoJsqg/ZZTxn
         KdbBsHIVqmfYn0592fp8RK3kVvE38shS7W11Ku/tEpCadPyScHA5kdhWAETdDUPYXOvY
         Uslw==
X-Gm-Message-State: AOAM532UIRFoLVUFhevQrDaYtsDiBZWz/3yr0C2MOV9sVIT6TKJsuC1o
        A6FIOh5G4KyR2tx947FF4mqwZA==
X-Google-Smtp-Source: ABdhPJyfHNFFTGyAF5j1KWFIz0IkCsFsBTp9akMsZqaHx7XnTLlZ6I0ADp+lfFfG8UJW4GhcnF2xVQ==
X-Received: by 2002:a63:a558:: with SMTP id r24mr3446741pgu.70.1595494957109;
        Thu, 23 Jul 2020 02:02:37 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:cbf:ea0:8a30:a3af])
        by smtp.gmail.com with ESMTPSA id k23sm2319383pgb.92.2020.07.23.02.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 02:02:35 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Add Radxa ROCK Pi 4C support
Date:   Thu, 23 Jul 2020 14:32:10 +0530
Message-Id: <20200723090210.41201-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200723090210.41201-1-jagan@amarulasolutions.com>
References: <20200723090210.41201-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rock PI 4C has AP6256 Wifi/BT, PoE, miniDP, USB Host enabled
GPIO pin change compared to 4B, 4C.

So, add or enable difference nodes/properties in 4C dts
by including common dtsi.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none
Changes for v2:
- update commit message
- add radxa,rockpi4c

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3399-rock-pi-4c.dts   | 51 +++++++++++++++++++
 2 files changed, 52 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 8832d05c2571..02cdb3c4a6c1 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -35,6 +35,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
new file mode 100644
index 000000000000..4c7ebb1c5d2d
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Radxa Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "rk3399-rock-pi-4.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi 4C";
+	compatible = "radxa,rockpi4c", "radxa,rockpi4", "rockchip,rk3399";
+};
+
+&sdio0 {
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+	};
+};
+
+&vcc5v0_host {
+	gpio = <&gpio3 RK_PD6 GPIO_ACTIVE_HIGH>;
+};
+
+&vcc5v0_host_en {
+	rockchip,pins = <3 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+};
-- 
2.25.1

