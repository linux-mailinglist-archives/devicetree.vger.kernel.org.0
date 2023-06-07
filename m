Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11B9D72598F
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 11:08:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239458AbjFGJId (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 05:08:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239750AbjFGJH4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 05:07:56 -0400
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 933A22111
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 02:07:09 -0700 (PDT)
Received: by mail-io1-xd34.google.com with SMTP id ca18e2360f4ac-77ac59135ebso788139f.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 02:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686128828; x=1688720828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=56q05UsuazQ3l9IlZm8IljgHBiGaLsgNecYNIgR23ec=;
        b=Pbg94OW6ek039a4YB9fBJOxqVm+c0gaM+NU3BtgP5wjdxHtmeqiTua5bs0no0CzVLD
         NTtR6cd3xEdCHngH4Od25Yaad1QfhRKp6dzXsWp8a8B27Yuznc7YnpifNu/2Jfh8CVT6
         LGfEPy0OjxPUv4lrbBwjjmBYevQSsE9bZIFvo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686128828; x=1688720828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=56q05UsuazQ3l9IlZm8IljgHBiGaLsgNecYNIgR23ec=;
        b=glRk0VzwiyyykFjS7bra9zwTS2ZagNXFi/Y0LOo86Q9E0Q/AcMYi0jb84VH40NKY7x
         s3uP18JLrAp108+tiWO/x6Qb2dahfc+sUAMMmFppi+vV/LFxvdLmeglhB54nczGrayA2
         ixWkzSDZD2wl1X7vyn9mU5mypCrfWDNCPv/u/JTJwTq6fOm2kAtCRPkUt7+QfS2m+zSZ
         A50ucVYDUB0YZJ8pACyB9MwmmaELizJ0p/nh1rigLpjXKS/qZAuG8YquQqLAECSfweS0
         hzo8fXm9/c6S7wfwEgqOYb4RcNpKl9hQaMlxu2s98sj+ur5IFFqm5LE4u0iy2URRh2w3
         YuZA==
X-Gm-Message-State: AC+VfDzEEaKOtx7AjJ/5DzNyazO5t780wt5cbqAO9FY0A3UOt8tq7VIX
        TlTI8XHRl9XApPW3fahrqTLNLw==
X-Google-Smtp-Source: ACHHUZ4J+NGvRiWFsYnVvU8HZ+cJ1PTzOi6W8RcxMQCnO35ocFrm/rLAAwyedcTfixlvTCB6sxETLA==
X-Received: by 2002:a6b:e31a:0:b0:777:b409:fb67 with SMTP id u26-20020a6be31a000000b00777b409fb67mr5631749ioc.4.1686128828683;
        Wed, 07 Jun 2023 02:07:08 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:443b:29bb:b677:185d])
        by smtp.gmail.com with ESMTPSA id b38-20020a631b66000000b0051eff0a70d7sm8505732pgm.94.2023.06.07.02.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 02:07:08 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 4/4] arm64: dts: mediatek: mt8186: Wire up GPU voltage/frequency scaling
Date:   Wed,  7 Jun 2023 17:06:52 +0800
Message-ID: <20230607090653.2468317-5-wenst@chromium.org>
X-Mailer: git-send-email 2.41.0.rc0.172.g3f132b7071-goog
In-Reply-To: <20230607090653.2468317-1-wenst@chromium.org>
References: <20230607090653.2468317-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the GPU's OPP table. This is from the downstream ChromeOS kernel,
adapted to the new upstream opp-supported-hw binning format. Also add
dynamic-power-coefficient for the GPU.

Also add label for mfg1 power domain. This is to be used at the board
level to add a regulator supply for the power domain.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 140 ++++++++++++++++++++++-
 1 file changed, 139 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index c58d7eb87b1d..a34489e27cd4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -695,6 +695,142 @@ clk32k: oscillator-32k {
 		clock-output-names = "clk32k";
 	};
 
+	gpu_opp_table: opp-table-gpu {
+		compatible = "operating-points-v2";
+
+		opp-299000000 {
+			opp-hz = /bits/ 64 <299000000>;
+			opp-microvolt = <612500>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-332000000 {
+			opp-hz = /bits/ 64 <332000000>;
+			opp-microvolt = <625000>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-366000000 {
+			opp-hz = /bits/ 64 <366000000>;
+			opp-microvolt = <637500>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <643750>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-434000000 {
+			opp-hz = /bits/ 64 <434000000>;
+			opp-microvolt = <656250>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-484000000 {
+			opp-hz = /bits/ 64 <484000000>;
+			opp-microvolt = <668750>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-535000000 {
+			opp-hz = /bits/ 64 <535000000>;
+			opp-microvolt = <687500>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-586000000 {
+			opp-hz = /bits/ 64 <586000000>;
+			opp-microvolt = <700000>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-637000000 {
+			opp-hz = /bits/ 64 <637000000>;
+			opp-microvolt = <712500>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-690000000 {
+			opp-hz = /bits/ 64 <690000000>;
+			opp-microvolt = <737500>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-743000000 {
+			opp-hz = /bits/ 64 <743000000>;
+			opp-microvolt = <756250>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-796000000 {
+			opp-hz = /bits/ 64 <796000000>;
+			opp-microvolt = <781250>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-850000000 {
+			opp-hz = /bits/ 64 <850000000>;
+			opp-microvolt = <800000>;
+			opp-supported-hw = <0x38>;
+		};
+
+		opp-900000000-3 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = <850000>;
+			opp-supported-hw = <0x8>;
+		};
+
+		opp-900000000-4 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = <837500>;
+			opp-supported-hw = <0x10>;
+		};
+
+		opp-900000000-5 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = <825000>;
+			opp-supported-hw = <0x30>;
+		};
+
+		opp-950000000-3 {
+			opp-hz = /bits/ 64 <950000000>;
+			opp-microvolt = <900000>;
+			opp-supported-hw = <0x8>;
+		};
+
+		opp-950000000-4 {
+			opp-hz = /bits/ 64 <950000000>;
+			opp-microvolt = <875000>;
+			opp-supported-hw = <0x10>;
+		};
+
+		opp-950000000-5 {
+			opp-hz = /bits/ 64 <950000000>;
+			opp-microvolt = <850000>;
+			opp-supported-hw = <0x30>;
+		};
+
+		opp-1000000000-3 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <950000>;
+			opp-supported-hw = <0x8>;
+		};
+
+		opp-1000000000-4 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <912500>;
+			opp-supported-hw = <0x10>;
+		};
+
+		opp-1000000000-5 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <875000>;
+			opp-supported-hw = <0x30>;
+		};
+	};
+
 	pmu-a55 {
 		compatible = "arm,cortex-a55-pmu";
 		interrupt-parent = <&gic>;
@@ -813,7 +949,7 @@ mfg0: power-domain@MT8186_POWER_DOMAIN_MFG0 {
 					#size-cells = <0>;
 					#power-domain-cells = <1>;
 
-					power-domain@MT8186_POWER_DOMAIN_MFG1 {
+					mfg1: power-domain@MT8186_POWER_DOMAIN_MFG1 {
 						reg = <MT8186_POWER_DOMAIN_MFG1>;
 						mediatek,infracfg = <&infracfg_ao>;
 						#address-cells = <1>;
@@ -1606,6 +1742,8 @@ gpu: gpu@13040000 {
 			#cooling-cells = <2>;
 			nvmem-cells = <&gpu_speedbin>;
 			nvmem-cell-names = "speed-bin";
+			operating-points-v2 = <&gpu_opp_table>;
+			dynamic-power-coefficient = <4687>;
 			status = "disabled";
 		};
 
-- 
2.41.0.rc0.172.g3f132b7071-goog

