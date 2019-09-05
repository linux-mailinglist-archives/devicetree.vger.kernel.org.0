Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BB819A9CB5
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 10:16:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732483AbfIEIQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 04:16:16 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:36894 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732466AbfIEIQP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 04:16:15 -0400
Received: by mail-pf1-f196.google.com with SMTP id y9so1238309pfl.4
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 01:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9n12LoDC4iyQEQhSfvrYLmsN/jTJxbwGE2x1rInuHng=;
        b=mfvDNzvUA14ba5ndLu6rEnyLMfdTvutWp7jgl4Uz8Tj0KkXdvQ9mepDv3Q0JZLqj5g
         tdaPQnTm+CiDSzL/6duSkVkKy5bimCc2bgP+lFjNet2erbTdwN6NwrxDezk/NAZeDRft
         htSU/TxkBZT5c7zo/xpFicxxPFnpxtb3O1VGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9n12LoDC4iyQEQhSfvrYLmsN/jTJxbwGE2x1rInuHng=;
        b=FasXKLO2kiz6NaGmJUcaXGPTOP8OTvIxUgP1Zi8WWPN9JgYi83ZZ/Iq0zqCm49bGyC
         yRPuC6uhDYEoUrAR/lZy7rAgwwHBL00jldM5DwAaosMfq0Pip8ATytwEhaDBO0gjjv+O
         hmHpBgrD3uFP8tckGF95OKwmRBaMSVi8VV0q0k6xB2bz7tCtu8u/fB8YSgeAIwvEiwR0
         WldpOKyaDVth9nyf1A6J+aHrEx/k62hBhAYx5L6IspUSL7hdOhlXlzyj5Vqkgg0xwuaB
         1sUkz/fXdeYtEirFuOPn4zFoT5X5aKK6IJx+1rmfbOOzyvA+Lj7Q5J3nB8AZHSQGN3/k
         uiBQ==
X-Gm-Message-State: APjAAAUxuPD8dcYdQ760S9snULJqykQvpygG5QGOHgnsjQ/71P11GLh8
        GtuJjyaLexIKFz37wAWpmfDxog==
X-Google-Smtp-Source: APXvYqxegqPyfGwrsPeKCe2Fc5b+coPbLD+CyOyetuPlandyNKc5R4rscY0tB/vIdMYg0qC49XRILQ==
X-Received: by 2002:a63:6d8d:: with SMTP id i135mr2003284pgc.303.1567671374527;
        Thu, 05 Sep 2019 01:16:14 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:d8b7:33af:adcb:b648])
        by smtp.gmail.com with ESMTPSA id h186sm3490145pfb.63.2019.09.05.01.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 01:16:13 -0700 (PDT)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Nick Fan <nick.fan@mediatek.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Boris Brezillon <boris.brezillon@collabora.com>
Subject: [PATCH] arm64: dts: mt8183: Add node for the Mali GPU
Date:   Thu,  5 Sep 2019 16:15:46 +0800
Message-Id: <20190905081546.42716-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a basic GPU node and opp table for mt8183.

The binding we use with out-of-tree Mali drivers includes more
clocks, I assume this would be required eventually if we have an
in-tree driver:
clocks =
        <&topckgen CLK_TOP_MFGPLL_CK>,
        <&topckgen CLK_TOP_MUX_MFG>,
        <&clk26m>,
        <&mfgcfg CLK_MFG_BG3D>;
clock-names =
        "clk_main_parent",
        "clk_mux",
        "clk_sub_parent",
        "subsys_mfg_cg";

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---
Upstreaming what matches existing bindings from our Chromium OS tree:
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.19/arch/arm64/boot/dts/mediatek/mt8183.dtsi#1348

The evb part of this change depends on this patch to add PMIC dtsi:
https://patchwork.kernel.org/patch/10928161/

 arch/arm64/boot/dts/mediatek/mt8183-evb.dts |   7 ++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 103 ++++++++++++++++++++
 2 files changed, 110 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 1fb195c683c3d01..200d8e65a6368a1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -7,6 +7,7 @@
 
 /dts-v1/;
 #include "mt8183.dtsi"
+#include "mt6358.dtsi"
 
 / {
 	model = "MediaTek MT8183 evaluation board";
@@ -30,6 +31,12 @@
 	status = "okay";
 };
 
+&gpu {
+	supply-names = "mali", "mali_sram";
+	mali-supply = <&mt6358_vgpu_reg>;
+	mali_sram-supply = <&mt6358_vsram_gpu_reg>;
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c_pins_0>;
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 97f84aa9fc6e1c1..8ea548a762ea252 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -579,6 +579,109 @@
 			#clock-cells = <1>;
 		};
 
+		gpu: mali@13040000 {
+			compatible = "mediatek,mt8183-mali", "arm,mali-bifrost";
+			reg = <0 0x13040000 0 0x4000>;
+			interrupts =
+				<GIC_SPI 280 IRQ_TYPE_LEVEL_LOW>,
+				<GIC_SPI 279 IRQ_TYPE_LEVEL_LOW>,
+				<GIC_SPI 278 IRQ_TYPE_LEVEL_LOW>;
+			interrupt-names = "job", "mmu", "gpu";
+
+			clocks = <&topckgen CLK_TOP_MFGPLL_CK>;
+			power-domains =
+				<&scpsys MT8183_POWER_DOMAIN_MFG_CORE0>,
+				<&scpsys MT8183_POWER_DOMAIN_MFG_CORE1>,
+				<&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
+
+			operating-points-v2 = <&gpu_opp_table>;
+		};
+
+		gpu_opp_table: opp_table0 {
+			compatible = "operating-points-v2";
+			opp-shared;
+
+			opp-300000000 {
+				opp-hz = /bits/ 64 <300000000>;
+				opp-microvolt = <625000>, <850000>;
+			};
+
+			opp-320000000 {
+				opp-hz = /bits/ 64 <320000000>;
+				opp-microvolt = <631250>, <850000>;
+			};
+
+			opp-340000000 {
+				opp-hz = /bits/ 64 <340000000>;
+				opp-microvolt = <637500>, <850000>;
+			};
+
+			opp-360000000 {
+				opp-hz = /bits/ 64 <360000000>;
+				opp-microvolt = <643750>, <850000>;
+			};
+
+			opp-380000000 {
+				opp-hz = /bits/ 64 <380000000>;
+				opp-microvolt = <650000>, <850000>;
+			};
+
+			opp-400000000 {
+				opp-hz = /bits/ 64 <400000000>;
+				opp-microvolt = <656250>, <850000>;
+			};
+
+			opp-420000000 {
+				opp-hz = /bits/ 64 <420000000>;
+				opp-microvolt = <662500>, <850000>;
+			};
+
+			opp-460000000 {
+				opp-hz = /bits/ 64 <460000000>;
+				opp-microvolt = <675000>, <850000>;
+			};
+
+			opp-500000000 {
+				opp-hz = /bits/ 64 <500000000>;
+				opp-microvolt = <687500>, <850000>;
+			};
+
+			opp-540000000 {
+				opp-hz = /bits/ 64 <540000000>;
+				opp-microvolt = <700000>, <850000>;
+			};
+
+			opp-580000000 {
+				opp-hz = /bits/ 64 <580000000>;
+				opp-microvolt = <712500>, <850000>;
+			};
+
+			opp-620000000 {
+				opp-hz = /bits/ 64 <620000000>;
+				opp-microvolt = <725000>, <850000>;
+			};
+
+			opp-653000000 {
+				opp-hz = /bits/ 64 <653000000>;
+				opp-microvolt = <743750>, <850000>;
+			};
+
+			opp-698000000 {
+				opp-hz = /bits/ 64 <698000000>;
+				opp-microvolt = <768750>, <868750>;
+			};
+
+			opp-743000000 {
+				opp-hz = /bits/ 64 <743000000>;
+				opp-microvolt = <793750>, <893750>;
+			};
+
+			opp-800000000 {
+				opp-hz = /bits/ 64 <800000000>;
+				opp-microvolt = <825000>, <925000>;
+			};
+		};
+
 		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8183-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
-- 
2.23.0.187.g17f5b7556c-goog

