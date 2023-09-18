Return-Path: <devicetree+bounces-1121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C352B7A4CB8
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C0C728130A
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 236A11F5F9;
	Mon, 18 Sep 2023 15:39:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE30B1F5EA
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 15:39:01 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2570B1728;
	Mon, 18 Sep 2023 08:36:38 -0700 (PDT)
Received: from jupiter.universe (dyndsl-091-248-188-252.ewe-ip-backbone.de [91.248.188.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 848E86607197;
	Mon, 18 Sep 2023 15:13:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695046419;
	bh=LXDsfmpgz/S+OdLyVgEiEXXE5p+Ro4TcKEscm/IBY6w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Id8Dl4YTEa5H93pJEpd+uJPplow+uowCumBASpPTzsAbKUX+M3rgF+CmAoM38z5h3
	 6lHCkUlvir10SCy3MOqEk5bkUwqSiSwIQCCbqn7bWqppr0rRcNXWnM2jkMHWuxyatC
	 OWQrc7RveiVCuTfjr4cOaR0hlbM5UKBBErJvlaYkXA5tu7iaSHCBn0gVZHZIYGYuyG
	 ikxhy0DrvSDQN10IykYg/zHPypjSOLRusoO+FHsWlS6NUBkFhbsNsd/w3trABCQisz
	 pm4GlyS4tS8BGTVEhpeRfnuwruEIVfk+kTQDnpVZZ1Sjp2g2iSp56VO5wz4nPsw6ek
	 cTgfrc27scQ5g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 834554800D0; Mon, 18 Sep 2023 16:13:37 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3588-evb1: add PCIe3 bus
Date: Mon, 18 Sep 2023 16:13:27 +0200
Message-Id: <20230918141327.131108-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230918141327.131108-1-sebastian.reichel@collabora.com>
References: <20230918141327.131108-1-sebastian.reichel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable PCIe3 support, which is exposed via a PCIe3 connector.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 23bef9faa690..c3fe58e39e99 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -49,6 +49,26 @@ pcie20_avdd1v8: pcie20-avdd1v8-regulator {
 		vin-supply = <&avcc_1v8_s0>;
 	};
 
+	pcie30_avdd0v75: pcie30-avdd0v75-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd0v75";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <750000>;
+		regulator-max-microvolt = <750000>;
+		vin-supply = <&avdd_0v75_s0>;
+	};
+
+	pcie30_avdd1v8: pcie30-avdd1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&avcc_1v8_s0>;
+	};
+
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -58,6 +78,19 @@ vcc12v_dcin: vcc12v-dcin-regulator {
 		regulator-max-microvolt = <12000000>;
 	};
 
+	vcc3v3_pcie30: vcc3v3-pcie30-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie30";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc12v_dcin>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v3_pcie30_en>;
+	};
+
 	vcc5v0_host: vcc5v0-host-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_host";
@@ -194,6 +227,18 @@ &pcie2x1l1 {
 	status = "okay";
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie3_reset>;
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie30>;
+	status = "okay";
+};
+
 &pinctrl {
 	rtl8111 {
 		rtl8111_isolate: rtl8111-isolate {
@@ -220,6 +265,16 @@ pcie2_1_rst: pcie2-1-rst {
 		};
 	};
 
+	pcie3 {
+		pcie3_reset: pcie3-reset {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc3v3_pcie30_en: vcc3v3-pcie30-en {
+			rockchip,pins = <3 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.40.1


