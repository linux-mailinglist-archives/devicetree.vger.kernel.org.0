Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46340568294
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 11:09:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232994AbiGFJHw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 05:07:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232807AbiGFJGT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 05:06:19 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA9724F35
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 02:05:01 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id o16-20020a05600c379000b003a02eaea815so8883044wmr.0
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 02:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
        b=2KH0c9i5pRILecSD4cAr1i5IG81/CljsGJebd4GrlEu87GGF+p4iLvgg69UypD4DGA
         l545no2gU5djMfQXCkQ13fkRA6JgbOl04rIrM6ABTL0bmmCnR1jciczP2obeGis+6VaG
         v3YHDgcdTBNvuLmF7cDwpiCUQHw2E/SyNMjbz6/BHLG0R1x71jyIulfD0jboY1YyPPIM
         k9BAZp0vE4EF8p5/Xeho4rFX51MilcYI0SEO6UF+eTxIihL0BCZ5GdVEBIFl9mZV70m0
         m3hNv+FivGSRxvIYos1Wgq1x6JMp3lx9XVdmv+NO6xxmbgGCXd+0QaoI5xzy42DkYErn
         qIqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
        b=UX93LBjIgB2ZvueiDzY2CsXL2K2w8rNl0QWii/rSCaJYWAUeWdGDVrP3LQ1NpTW8xT
         TqcTzh78Ssm9cPzMLfEevTpvE3jM3LElhzpZXPdqKY+WnQOtSQWnAt1xHI+CmkWpijl0
         TS7dfNkUWD6AVPqcnPhxD8lVr7FLjrjEZOPhgSIU5GvjAxFxqnrijBJyBPpY2Du9EHsw
         u4k5hjdXWmIRDmf3royXKtwHS2OAC0/jV74cApsJ5EH8ElZsJdbl2Yw8yG4K2OoyZ/2Y
         4FmJMvKEd3/BXLf4fjk4mTSVfTKc47/mzmMDj06OR9ZslG95OcXZpEOVRcwKHmCuFDCZ
         TVTg==
X-Gm-Message-State: AJIora/ApK6R0P+6uq1PukKx7Vqhd5cWr7nT8KB4T8nLiIQU/lPkc2Pr
        pZ9NoroaXF7yevp9WaAMWbd6EA==
X-Google-Smtp-Source: AGRyM1toIJ3bBwvAdPj3WgU9vUOPQT1BAvlEHJ5810B7GsO/4J25yaE+bYN0O90J2JbxvuU5axmchw==
X-Received: by 2002:a05:600c:3788:b0:3a0:4279:5142 with SMTP id o8-20020a05600c378800b003a042795142mr38248606wmr.21.1657098301075;
        Wed, 06 Jul 2022 02:05:01 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:05:00 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        john@metanate.com, didi.debian@cknow.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 27/33] arm64: dts: rockchip: add rk3328 crypto node
Date:   Wed,  6 Jul 2022 09:04:06 +0000
Message-Id: <20220706090412.806101-28-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

rk3328 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 49ae15708a0b..96a7a777bae8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1025,6 +1025,17 @@ gic: interrupt-controller@ff811000 {
 		      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	crypto: crypto@ff060000 {
+		compatible = "rockchip,rk3328-crypto";
+		reg = <0x0 0xff060000 0x0 0x4000>;
+		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO>;
+		reset-names = "crypto-rst";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3328-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.35.1

