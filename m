Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 162AA63EB58
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 09:42:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229755AbiLAImr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 03:42:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229774AbiLAImo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 03:42:44 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AD0DE0B4
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 00:42:39 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id b11so1237888pjp.2
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 00:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WOeFuUzcolWHnZuc7pdP9VxPOXM1oDwP4XAacQirfk=;
        b=Db38O9+lHRZcLVg6Gbmwkz4xrvTz6HETUHmq8LkST7DxaWmHW8hiFgaJcnDpokbDcd
         HkWqdpu6rZKau4iS4Tj0gu2ffXPotKHe3uk3GmiiO7OK+GCSwDXx1EqCZ5ZovhHk8GSU
         HIsmrI4RclhucCrtNGW8OWPxuNtI3F4nE08vY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/WOeFuUzcolWHnZuc7pdP9VxPOXM1oDwP4XAacQirfk=;
        b=jLN/NbZm236VbJsSjZk+QtE2G9kdua2edwK8VoNqnkn1SdTWHKPAlLkooRgKrhb5ks
         bzyQ6S3Cpen4Wz8INn/YpW2yrnheia57cR5bCL6GTsFb2/pnYr7TcYdlw6UgS74VjegO
         o7FM/G2kXAfvbLsqQYSe0SF6uKn68sYeUJCGBuq9/KvhdiWrfKD2DrQC8hzcnBq1lQbJ
         yPu20L6z/uOA5mUIiZ+DDh4dcvSnB1R0JyQaRz3jfpFtB3flVM9n/8gQXAGOwEm4xh5M
         BUSKpoQFq/rF4VjC/MgppCkSze7hh85lPwO23xW0U1EJ44NejVOxgLmMNj76vIeUJUeC
         DAdQ==
X-Gm-Message-State: ANoB5plGg4eq/QmILtaw3WNCcg8flKJr0ugVRrbiel1qg6JUKpYxy3Sy
        SO5574k4Q4mhBiVXr5qK0zAsxQ==
X-Google-Smtp-Source: AA0mqf41cigCeKSKmoN4bvphHgVPZ/wH2bU7xeJPntvphumOR1EcxVdeLfSSCX1ZL+sef2jSk8zT0g==
X-Received: by 2002:a17:903:4051:b0:170:f343:ba14 with SMTP id n17-20020a170903405100b00170f343ba14mr46469201pla.70.1669884159302;
        Thu, 01 Dec 2022 00:42:39 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2416:fa4e:4eeb:fcde])
        by smtp.gmail.com with ESMTPSA id j5-20020a170902690500b001708c4ebbaesm2932293plk.309.2022.12.01.00.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 00:42:38 -0800 (PST)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>
Subject: [PATCH 2/4] arm64: dts: mediatek: mt8192: Fix systimer 13 MHz clock description
Date:   Thu,  1 Dec 2022 16:42:27 +0800
Message-Id: <20221201084229.3464449-3-wenst@chromium.org>
X-Mailer: git-send-email 2.38.1.584.g0f3c55d4c2-goog
In-Reply-To: <20221201084229.3464449-1-wenst@chromium.org>
References: <20221201084229.3464449-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The systimer block derives its 13 MHz clock by dividing the main 26 MHz
oscillator clock by 2 internally, not through the TOPCKGEN clock
controller.

On the MT8192 this divider is fixed to /2 and is not configurable.

Making the systimer block take the 26 MHz clock directly requires
changing the implementations. As an ABI compatible fix, change the
input clock of the systimer block a fixed factor divide-by-2 clock
that takes the 26 MHz oscillator as its input.

Fixes: 48489980e27e ("arm64: dts: Add Mediatek SoC MT8192 and evaluation board dts and Makefile")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8192.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
index fc39ccc0d4bf..ab4d4f605493 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
@@ -29,6 +29,15 @@ aliases {
 		rdma4 = &rdma4;
 	};
 
+	clk13m: fixed-factor-clock-13m {
+		compatible = "fixed-factor-clock";
+		#clock-cells = <0>;
+		clocks = <&clk26m>;
+		clock-div = <2>;
+		clock-mult = <1>;
+		clock-output-names = "clk13m";
+	};
+
 	clk26m: oscillator0 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -534,8 +543,7 @@ systimer: timer@10017000 {
 				     "mediatek,mt6765-timer";
 			reg = <0 0x10017000 0 0x1000>;
 			interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH 0>;
-			clocks = <&topckgen CLK_TOP_CSW_F26M_D2>;
-			clock-names = "clk13m";
+			clocks = <&clk13m>;
 		};
 
 		pwrap: pwrap@10026000 {
-- 
2.38.1.584.g0f3c55d4c2-goog

