Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB1803DBD3E
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 18:45:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbhG3QqA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 12:46:00 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:52938 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbhG3Qp7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 12:45:59 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id D5FB81F44BEA
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add GPU node for rk3568
Date:   Fri, 30 Jul 2021 13:45:14 -0300
Message-Id: <20210730164515.83044-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210730164515.83044-1-ezequiel@collabora.com>
References: <20210730164515.83044-1-ezequiel@collabora.com>
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
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 47 ++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index bef747fb1fe2..f4f400792659 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -121,6 +121,35 @@ opp-1800000000 {
 		};
 	};
 
+	gpu_opp_table: opp-table2 {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <825000>;
+		};
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <825000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <825000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <825000>;
+		};
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <900000>;
+		};
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1000000>;
+		};
+	};
+
 	firmware {
 		scmi: scmi {
 			compatible = "arm,scmi-smc";
@@ -332,6 +361,24 @@ power-domain@RK3568_PD_RKVENC {
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
+
+		clocks = <&scmi_clk 1>, <&cru CLK_GPU>;
+		clock-names = "core", "bus";
+		operating-points-v2 = <&gpu_opp_table>;
+
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

