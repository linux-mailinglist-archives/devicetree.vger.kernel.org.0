Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34A5B225D12
	for <lists+devicetree@lfdr.de>; Mon, 20 Jul 2020 13:05:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728506AbgGTLD0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jul 2020 07:03:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728504AbgGTLDZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jul 2020 07:03:25 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F6D2C0619D2
        for <devicetree@vger.kernel.org>; Mon, 20 Jul 2020 04:03:25 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id t15so9923397pjq.5
        for <devicetree@vger.kernel.org>; Mon, 20 Jul 2020 04:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TZpfzFnX8WqDOlpA9HEWnI2tpqRJdN7b0nMifIKxRt8=;
        b=fcs+8VbuWGNf1oxNKQwZnvGJPD/QaJ3RhoO4oRPf3vmjd1YMiMzi9vv38Uz6PCNdMe
         m4hJ1A0BkoIQ+teqNgXeCrWysMh9ti4WzwXOEa3ChiW7sBhPqe09KvOf10u6eujhn8U2
         PrCWj+JWfYVBZAlQ2nPP97mbMTLHVHIkSM4BA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TZpfzFnX8WqDOlpA9HEWnI2tpqRJdN7b0nMifIKxRt8=;
        b=TcXHu8S9ZtXL3v8/Frp6sC2D3OvRFSqGeeBdRyo1IHiIm5nGlCexfTYaV4F6vx2yPw
         57eWa76jmj/iPrCZcEUaGBKhBhNwBrEiJ6Hlw8ZlUfEdifjSqp50N6rRq/ecv55QxNMT
         jTxjdFk40qFN9ZvqIvDaGdNlWkC0utO5QiarFqQROFyFeZ+68IYZPqPuj9/RisLxTK00
         cQ86r12plO3bSX9/R0LT2jmeciBtQ/mh3o4GxJhPm4Ah2VKOncoMrU8kp33VOiiA3L2T
         kw7WGl3hoHL6yDTLB0DXQwVfYWR4AWi/3OXEw0k8i45c6OUscEzc11jtQQmNPRQJ/vaJ
         Milg==
X-Gm-Message-State: AOAM532ARIz4UBvMQ7oppudLR1CwciK65/qAe+5bCXZSAdJGKUHrYNS9
        A6M40ip3g6k5OcQZb9GlZu8cWQ==
X-Google-Smtp-Source: ABdhPJyYuFoGgRbx+53KR1oquEeqgi7QbPMQVW0P5UXinT7PjM14QfPFT1Gj7VUjePEdDQaAndVrug==
X-Received: by 2002:a17:902:a708:: with SMTP id w8mr18141835plq.128.1595243004882;
        Mon, 20 Jul 2020 04:03:24 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:8c21:db7b:4558:fba3])
        by smtp.gmail.com with ESMTPSA id o10sm11445876pjs.27.2020.07.20.04.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 04:03:23 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add PCIe for RockPI N10
Date:   Mon, 20 Jul 2020 16:32:30 +0530
Message-Id: <20200720110230.367985-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200720110230.367985-1-jagan@amarulasolutions.com>
References: <20200720110230.367985-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support to enable PCIe for RockPI N10.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 41 ++++++++++++++++++-
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index ebccc4a153a2..b415b8a16c78 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -11,6 +11,19 @@
 
 / {
 	compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
+
+
+	vcc3v3_pcie: vcc-pcie-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_pwr>;
+		regulator-name = "vcc3v3_pcie";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &cpu_l0 {
@@ -142,7 +155,8 @@ vcca_0v9: LDO_REG1 {
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <900000>;
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
 				};
 			};
 
@@ -177,7 +191,8 @@ vcca_1v8: LDO_REG4 {
 				regulator-min-microvolt = <1850000>;
 				regulator-max-microvolt = <1850000>;
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1850000>;
 				};
 			};
 
@@ -304,6 +319,22 @@ &io_domains {
 	sdmmc-supply = <&vccio_sd>;
 };
 
+&pcie_phy {
+	status = "okay";
+};
+
+&pcie0 {
+	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+	max-link-speed = <2>;
+	num-lanes = <4>;
+	pinctrl-0 = <&pcie_clkreqnb_cpm>;
+	pinctrl-names = "default";
+	vpcie0v9-supply = <&vcca_0v9>;	/* VCC_0V9_S0 */
+	vpcie1v8-supply = <&vcca_1v8>;	/* VCC_1V8_S0 */
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
 &pinctrl {
 	hym8563 {
 		hym8563_int: hym8563-int {
@@ -311,6 +342,12 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	pcie {
+		pcie_pwr: pcie-pwr {
+			rockchip,pins =	<4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC2 0 &pcfg_pull_up>;
-- 
2.25.1

