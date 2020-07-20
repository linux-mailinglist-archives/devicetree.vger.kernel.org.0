Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CFDC225CFA
	for <lists+devicetree@lfdr.de>; Mon, 20 Jul 2020 12:56:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728477AbgGTK40 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jul 2020 06:56:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728475AbgGTK4Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jul 2020 06:56:25 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA8A9C061794
        for <devicetree@vger.kernel.org>; Mon, 20 Jul 2020 03:56:25 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id b92so9910680pjc.4
        for <devicetree@vger.kernel.org>; Mon, 20 Jul 2020 03:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nSOMoYdoeN3ixxkr9HyJ0ziUQqzOG9TSyjql14cVs8g=;
        b=Ly3MetxYtUoLy7ynvT0emxlziJSTT/D0jOHRm5pDALE3DZJaM8QzJ2qCR3ODASwLZY
         u67HLCCTU4JjwUIKlm7QI6xbux4D0bYILmWDp7keoxSrJ5TEwIQzu4n5reDvv8ehElJn
         0VCESqXe1wWf+PEz5fnyZhjm3g3ze4X0aMeb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nSOMoYdoeN3ixxkr9HyJ0ziUQqzOG9TSyjql14cVs8g=;
        b=SBKUBkhe9gmdjFRuyeztMgbNaObWeff3SnhhTdNOin1VW1LEMwr5dgp0Dbox6O/U7s
         f3e3rh3k2blvT5Z/DOREv9BZFuT1yJiqV7Q7bKO6DoDlmzFrCiVXO3UL0FqDcFL681FX
         5qkMZ+/8kW+wahrkI42GjxuLWCCCMsaIRKXHbQRdhpnDmx0RsiAC2UM9mW+v5BwPCZEb
         Y26dHBN31/cHAwVMQHKv9bwMmokJh3t8PGIItzH2cU1quatChmbLB/rRqxLH8jPW4vTe
         uLV/jhGYIHkHJegI9jzMRh5DIQIANiZxR9aPB533FtVJa+/1qIT2DihDDoxm7+XjM1hZ
         F2wg==
X-Gm-Message-State: AOAM533Pv0ZMTSIH15l0HzKAbVpQffLNmvXcAJyaK8YEkxO4BtFSW5Ca
        lX9fb6Cu81XjDadEaao/sNTK3g==
X-Google-Smtp-Source: ABdhPJxtpGiGl5nfJ/WlbO97twEDAKENawlViepi1t92UU+FBph92dN8QPL/JfxxH5UeJmFl+YUKrg==
X-Received: by 2002:a17:90b:2350:: with SMTP id ms16mr14056450pjb.127.1595242585402;
        Mon, 20 Jul 2020 03:56:25 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:8c21:db7b:4558:fba3])
        by smtp.gmail.com with ESMTPSA id j5sm13984721pgi.42.2020.07.20.03.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 03:56:24 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add Radxa ROCK Pi 4C support
Date:   Mon, 20 Jul 2020 16:25:31 +0530
Message-Id: <20200720105531.367671-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200720105531.367671-1-jagan@amarulasolutions.com>
References: <20200720105531.367671-1-jagan@amarulasolutions.com>
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
index 000000000000..9d07ebd1ec82
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
+	compatible = "radxa,rockpi4", "rockchip,rk3399";
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

