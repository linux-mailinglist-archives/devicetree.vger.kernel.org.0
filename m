Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E91E212122B
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 18:49:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726445AbfLPRr4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Dec 2019 12:47:56 -0500
Received: from mail-pj1-f68.google.com ([209.85.216.68]:41220 "EHLO
        mail-pj1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726401AbfLPRrz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 12:47:55 -0500
Received: by mail-pj1-f68.google.com with SMTP id ca19so3292600pjb.8
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2019 09:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GsBjNENOsoqT3Ti/q8MjgvfcH88K3hdnCqSY0W84Ii0=;
        b=CZpv7hKhKwM6hd/Scc3APxW6cyON8Wk+eVweQIo7BJwpJlLycjtUkhILWu3EvtocUQ
         1IVcQWu10k6j4vi718yHWUX8oDiS9CclHeARkvFOhA+uOdCPRcA6segAXc52LbA3c7CT
         FVJ8JG6bEMGcFSouHAQ+okgrtBSpbSXD8wk00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GsBjNENOsoqT3Ti/q8MjgvfcH88K3hdnCqSY0W84Ii0=;
        b=c9Y0z9thiJjXzdZ+8IdAJR5b/6wF9dOg3Hg5i3A8wh5+ReRDJtj2X4ktc2G0xuGatO
         JhoHl3dxPe82y/Q/hIopHkDwpDRB4U1dz0SrjJQWRG/qdSDBWQ3L5ZrX0ojkYnMwX1Eh
         6h6gEQjiYFIDOJx+MNYkRNBhE357Xz7auH5K486kkujMjfjtCKVVbQVYCAldU+QnHdiY
         Z6x99fIJk4XwVOb+qI7NaqAaHPRr0pXBoUUlOSkgj8boSn1ZhdLHHF4ct7hyhDAeFVEE
         6207+R3GWQxEA+ExLaROksd1Bd+vJBc2HLOrhD5w5NoJI0bJQI50PEiN6lrWZyLObTaa
         xLZQ==
X-Gm-Message-State: APjAAAXUXRei8G91V9lNZJh8C1KG454Wif1/eGo9ogcD+FA6Rtjwd+d/
        PaLuD1HKt70VFeRAlFXi9LoREtUWvDE=
X-Google-Smtp-Source: APXvYqz+iv3tXMOmQkCoKsp3M01KIIk9WwfIebXGJsP426lmosp/FQUhk+gZEDSH93HQ5lak6qtuYQ==
X-Received: by 2002:a17:902:b78b:: with SMTP id e11mr17804193pls.129.1576518475223;
        Mon, 16 Dec 2019 09:47:55 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6d28:a89:f9e1:1506])
        by smtp.gmail.com with ESMTPSA id a6sm22342924pgg.25.2019.12.16.09.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 09:47:54 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Akash Gajjar <akash@openedev.com>, Tom Cubie <tom@radxa.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 3/4] ARM: dts: rockchip: Add Radxa Dalang Carrier board
Date:   Mon, 16 Dec 2019 23:17:10 +0530
Message-Id: <20191216174711.17856-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191216174711.17856-1-jagan@amarulasolutions.com>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Carrier board often referred as baseboard. For making
complete SBC or any other industrial boards, these
carrier boards will used with associated SOMs.

Radxa has Dalang carrier board which supports on board
peripherals, ports like USB-2.0, USB-3.0, HDMI, MIPI DSI/CSI,
eDP, Ethernet, WiFi, PCIe, USB-C, 40-Pin GPIO header and etc.

Right now Dalang carrier board is using with two variants
SBC, like
Rock Pi N10 => VMARC RK3399Por SOM + Dalang carrier board
Rock Pi N8  => VMARC RK3288 SOM + Dalang carrier board(+codec)

So add this carrier board dtsi as a separate file in
ARM directory, so-that the same can reuse it in both
rk3288, rk3399pro variants of Rockchip SOMs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi

diff --git a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
new file mode 100644
index 000000000000..df3712aedf8a
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Radxa Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+#include <dt-bindings/pwm/pwm.h>
+
+/ {
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&gmac {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+	i2c-scl-rising-time-ns = <140>;
+	i2c-scl-falling-time-ns = <30>;
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <400000>;
+
+	hym8563: hym8563@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <30 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	vqmmc-supply = <&vccio_sd>;
+	max-frequency = <150000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins =
+				<4 RK_PD6 0 &pcfg_pull_up>;
+		};
+	};
+};
-- 
2.18.0.321.gffc6fa0e3

