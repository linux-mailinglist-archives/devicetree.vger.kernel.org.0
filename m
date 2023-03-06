Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1A556AC492
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 16:14:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231210AbjCFPOK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 10:14:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230255AbjCFPOJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 10:14:09 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7984222D3
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 07:14:06 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so8412426wmb.5
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 07:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1678115645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vDsVKUJtlRFJ3s7/7Fhta8tnir6GRw1n4iIHe/gNKzU=;
        b=g6TpI3EaF6Mnq6dVosVQi2ooR09TYPHSfAA7xspAY+SO2DiCQRQnuvLzjy4X7arWDm
         ssgDWuQLSngJE6j6CHHvB4Qd+XyXRHBNQbpBSpfnooqBOavpGqw6z13dtSW9W/CLeFSS
         GcPJprT3JEAq4cjsAwxQoV5mlhRe8+jcjRfT9NMlzoaI++FBM2Q97u5pp3F4gmB32/AS
         HovaV+YmPPOaRho60WlIirttF4g+HX6a0NMiTgsGfifQ15X/wQ4lPLiIzFcHqaJs0AyM
         cFT8bvXy30vvqJ8ueVP2Fnm1FtlkJv1CqlwHuv67cYzF+53Agrs47sXr3Dpum/GlRLZ6
         tiCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678115645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vDsVKUJtlRFJ3s7/7Fhta8tnir6GRw1n4iIHe/gNKzU=;
        b=PXlYJ4OtNkL1MlZO+S4z9OLLjXsUPnNYsws90pt25gv9ty/3JB/lgqWfhvxjB0aD/O
         MLRuFcn+jvNfstHMKzEvvsUeWJbn5YwaNK2T5p85LqRSW703R17zSsI2YF9qfVk3iX6O
         5LwVUCaiNDcG1ZoAW/8sA5jeWysAKL8c7ZWXxlYef8O2lO14E/91crTPU/vIsg8/ZJFO
         8yIEPXwZv12pqIJJIr87rWcOWu4q/VB+y9SeVmqlr1Ty4DT9G2pwhU1nnFEEdiJ5yFkT
         EXqveM9LOkjPU1AC/+cOfz0YcxgJTZWnTrMezaV5R5tUYB8oPUZ7/HjAfUVsaoafW0Tu
         hssw==
X-Gm-Message-State: AO0yUKXsnel/jra+EvUOjK3Yd52rX3ZzbAB3tKk0yZMQNkEd9heJjTf9
        8T1uemgtJEuNPsv8CuZtfz4wzA==
X-Google-Smtp-Source: AK7set/P4TgN3KWNiQpuKTiNllOykldbwBd5AH2H1IH7KoOoCIMCopw9mjcunu/lB7pwcErFNQdh/A==
X-Received: by 2002:a05:600c:a47:b0:3eb:2b88:9adc with SMTP id c7-20020a05600c0a4700b003eb2b889adcmr8826948wmq.25.1678115645173;
        Mon, 06 Mar 2023 07:14:05 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id o2-20020a05600c510200b003e208cec49bsm23156746wms.3.2023.03.06.07.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 07:14:04 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: amlogic: gxl: use gxl mdio multiplexer
Date:   Mon,  6 Mar 2023 16:13:54 +0100
Message-Id: <20230306151354.132973-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

So the far, GXL SoCs were using the generic mmio register based mdio
multiplexer. This properly sets one of the glue register but the SoC
actually has 3 of those registers.

One of them sets the ID under which the internal phy will advertise
itself. If nothing sets this register before linux boots (like u-boot), the
internal phy path is broken.

To address this problem, a dedicated MDIO mux driver has been
introduced. Switch to this new driver.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 25 +++++++++++-----------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 6f3c2bc36919..17bcfa4702e1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -773,16 +773,23 @@ mux {
 		};
 	};
 
-	eth-phy-mux@55c {
-		compatible = "mdio-mux-mmioreg", "mdio-mux";
+	eth_phy_mux: mdio@558 {
+		reg = <0x0 0x558 0x0 0xc>;
+		compatible = "amlogic,gxl-mdio-mux";
 		#address-cells = <1>;
 		#size-cells = <0>;
-		reg = <0x0 0x55c 0x0 0x4>;
-		mux-mask = <0xffffffff>;
+		clocks = <&clkc CLKID_FCLK_DIV4>;
+		clock-names = "ref";
 		mdio-parent-bus = <&mdio0>;
 
-		internal_mdio: mdio@e40908ff {
-			reg = <0xe40908ff>;
+		external_mdio: mdio@0 {
+			reg = <0x0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		internal_mdio: mdio@1 {
+			reg = <0x1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 
@@ -793,12 +800,6 @@ internal_phy: ethernet-phy@8 {
 				max-speed = <100>;
 			};
 		};
-
-		external_mdio: mdio@2009087f {
-			reg = <0x2009087f>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
 	};
 };
 
-- 
2.39.2

