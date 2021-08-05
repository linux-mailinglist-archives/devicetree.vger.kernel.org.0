Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 516923E0C9B
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 05:01:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238369AbhHEDB1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 23:01:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235958AbhHEDB0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 23:01:26 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 408DFC061765
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 20:01:13 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id ADE851F43B3C
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Johan Jonker <jbx6244@gmail.com>,
        Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 3/4] arm64: dts: rockchip: Add GPU node for rk3568
Date:   Wed,  4 Aug 2021 23:59:47 -0300
Message-Id: <20210805025948.10900-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805025948.10900-1-ezequiel@collabora.com>
References: <20210805025948.10900-1-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rockchip SoCs RK3566 and RK3568 have a Mali Gondul core
which is based on the Bifrost architecture. It has
one shader core and two execution engines.

Quoting the datasheet:

Mali-G52 1-Core-2EE
* Support 1600Mpix/s fill rate when 800MHz clock frequency
* Support 38.4GLOPs when 800MHz clock frequency

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 50 ++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index bef747fb1fe2..f8173ba63be0 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -121,6 +121,40 @@ opp-1800000000 {
 		};
 	};
 
+	gpu_opp_table: gpu-opp-table {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <825000>;
+		};
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <825000>;
+		};
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <825000>;
+		};
+
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <825000>;
+		};
+
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <900000>;
+		};
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1000000>;
+		};
+	};
+
 	firmware {
 		scmi: scmi {
 			compatible = "arm,scmi-smc";
@@ -332,6 +366,22 @@ power-domain@RK3568_PD_RKVENC {
 		};
 	};
 
+	gpu: gpu@fde60000 {
+		compatible = "rockchip,rk3568-mali", "arm,mali-bifrost";
+		reg = <0x0 0xfde60000 0x0 0x4000>;
+
+		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "job", "mmu", "gpu";
+		clocks = <&scmi_clk 1>, <&cru CLK_GPU>;
+		clock-names = "core", "bus";
+		operating-points-v2 = <&gpu_opp_table>;
+		#cooling-cells = <2>;
+		power-domains = <&power RK3568_PD_GPU>;
+		status = "disabled";
+	};
+
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
-- 
2.32.0

