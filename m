Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5766663185D
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 02:55:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbiKUBzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 20:55:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229913AbiKUBzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 20:55:14 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 189073136B
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:12 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id f27so25438854eje.1
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NoxTVndE6utEsycgOunzP3TlGL6F5OaVH50FoV3RT0w=;
        b=c8RklIxEnH+bwi8XLTfM85hE6aBFPgxxuk5SRbLV4GnTAc9I1o66ZPMCRqd5G44t8S
         FFLLsr7cdGMGO+muPHBrsAcDZcTy0X3y0UR7DV7gl3ExGa7m3mzUX0GzJz1qfZFMvxNV
         Hti/gyCQ6giO7W0G4LOdzuNyq7BDC4HdLLdaEUCCwA00SGOMgwbGxe8ouBJvXmI22iR8
         w7dDQbDWshTUDS75xIZlGmgBeSrQhdphVUO4efjj0X0G605d3tX/6MVCi1/a8qbymqi0
         fgmJSKJQKrixDOyuPPWCHYRIHLuZZCdJGWDa9cxy89rPTTMv2hU3Zyodk45jBvrhkK5E
         nvmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NoxTVndE6utEsycgOunzP3TlGL6F5OaVH50FoV3RT0w=;
        b=rHegwKTdoXQiCH6F0zDZGanSvcbDgIhaMIs1lA+L0H35M/bcSv38z1Btr3nbrdDWK4
         mkcoJbZm4ANkQjlOM0XIjwCabJ+ELVFKYjHuah7SYZ+9K6EIKtU0hsfFrshElWyLXBYx
         ZDP6hma0n7nj0kN7hSioJZdg/EhqeLFyiFYniQzQC523PhmCUHt41Kz6+OYA8ZpNDVJq
         RyEF0p4cGgj2Q6DPVfHkBrpkXDwEBeGfkW16FTJJahLEJLDwBKLnkdyq1MXmt14Zq5Zx
         45UyFRbBafIiFCO36zV9h8ieC32q/8C5OrXn+ddVecFGsVmVXxUYR3k/vAZrUtxhfZao
         NsOQ==
X-Gm-Message-State: ANoB5plQLXezIAZvcmBWajb/nQ+FH3vhC4WdbD4SLxySpAWBsgEGK1QB
        lWFzLt5AF9D3UQLGxYo6cFjEI3rkOqD4PNMK
X-Google-Smtp-Source: AA0mqf5Iqh1KYyEXUYiziJt2kTgwKqDfHW88f2Xpo6/pLRnXD2QGrPnKm2FyiFj0g7dD6P3SWqd7zQ==
X-Received: by 2002:a17:906:35c8:b0:78d:3a04:e41d with SMTP id p8-20020a17090635c800b0078d3a04e41dmr14088753ejb.39.1668995711474;
        Sun, 20 Nov 2022 17:55:11 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id g2-20020a170906538200b00782e3cf7277sm4415513ejo.120.2022.11.20.17.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Nov 2022 17:55:11 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
Subject: [PATCH 6/9] ARM: dts: mediatek: Remove pins-are-numbered property
Date:   Mon, 21 Nov 2022 02:54:48 +0100
Message-Id: <20221121015451.2471196-7-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221121015451.2471196-1-bero@baylibre.com>
References: <20221121015451.2471196-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove the unnecessary pins-are-numbered property from
Mediatek ARM DeviceTrees

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 arch/arm/boot/dts/mt2701.dtsi | 1 -
 arch/arm/boot/dts/mt7623.dtsi | 1 -
 arch/arm/boot/dts/mt8135.dtsi | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/mt2701.dtsi b/arch/arm/boot/dts/mt2701.dtsi
index b8eba3ba153c2..0a0fe8c5a4059 100644
--- a/arch/arm/boot/dts/mt2701.dtsi
+++ b/arch/arm/boot/dts/mt2701.dtsi
@@ -178,7 +178,6 @@ pio: pinctrl@1000b000 {
 		compatible = "mediatek,mt2701-pinctrl";
 		reg = <0 0x1000b000 0 0x1000>;
 		mediatek,pctl-regmap = <&syscfg_pctl_a>;
-		pins-are-numbered;
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-controller;
diff --git a/arch/arm/boot/dts/mt7623.dtsi b/arch/arm/boot/dts/mt7623.dtsi
index 25d31e40a5535..11379c3e6b4ca 100644
--- a/arch/arm/boot/dts/mt7623.dtsi
+++ b/arch/arm/boot/dts/mt7623.dtsi
@@ -253,7 +253,6 @@ pio: pinctrl@10005000 {
 		compatible = "mediatek,mt7623-pinctrl";
 		reg = <0 0x1000b000 0 0x1000>;
 		mediatek,pctl-regmap = <&syscfg_pctl_a>;
-		pins-are-numbered;
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-controller;
diff --git a/arch/arm/boot/dts/mt8135.dtsi b/arch/arm/boot/dts/mt8135.dtsi
index a031b36363187..0f291ad22d3af 100644
--- a/arch/arm/boot/dts/mt8135.dtsi
+++ b/arch/arm/boot/dts/mt8135.dtsi
@@ -152,7 +152,6 @@ pio: pinctrl@10005000 {
 			compatible = "mediatek,mt8135-pinctrl";
 			reg = <0 0x1000b000 0 0x1000>;
 			mediatek,pctl-regmap = <&syscfg_pctl_a &syscfg_pctl_b>;
-			pins-are-numbered;
 			gpio-controller;
 			#gpio-cells = <2>;
 			interrupt-controller;
-- 
2.38.1

