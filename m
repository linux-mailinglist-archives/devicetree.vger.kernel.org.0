Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 172E35EBC8E
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 10:00:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231403AbiI0IAt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 04:00:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231587AbiI0H7r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 03:59:47 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10303B0B00
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 00:56:44 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id n35-20020a05600c502300b003b4924c6868so390744wmr.1
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 00:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
        b=7Z4Ya4FJF8izdlJJi0KOSJdYA3ci49E1lmr+MVg9ExH4Yw/daGRLYbHqoztQ0FZdrB
         xjpJNLPVkg8W/HiFxbqgE0IQ/1BunOKYfekMEtWIdLWIwIBjtUTfe/vgxqC5nFi+xuAu
         aXyUoidd6XaoadwuPJc3YLUowY1Peid71VpJrjEOXtRpFEZlUizKBE3WVKBUBKrFrVLE
         ZNjMBcMAwfFieUMKtd6iHcF4174GELX3ZRIO3E4sBpnn5mB1Qxhl+u2HpPBA39mgJsw7
         e7QvfbTXN6jVQgsXQkvuGx3HwCtUHeEIIUZjFE0WNR7tK8Vfoi4E9D0/tCaFaqWeH+gJ
         70Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
        b=6jIL5+AQiat13OjvSSMqlSbHbJEQzWVnAe58a6BQtaZwqr7MYAbO6fkbENeX5EHNkI
         BgxsOyjKpcY1QJNnlH8melj+Ol17DOZIr2Xlt++hVo/6Y5kkbPn6/0APjmg6sgqxGgYH
         yE5Wn6hQcdE4Dcs079+LLMdgUKw5lnql7ar0LDkB6sHncvthHGzqtS8f93xyoQlP9MVQ
         bU9P6gzgZvuM8KDW+uknw6G8XKF5eJOIBCObcV7MMDDZGEOeBklphgERug1l04hNPRnk
         pij99y5LphVCxCY+yat8eY7XSpX5/Je1OUKsd9JYKRk8XZzUSNWLvu6SIDC7WotTpX+R
         Hv/w==
X-Gm-Message-State: ACrzQf38sIG3Gn1skudb0OMDGehnNg2nO9hSKmVMTtA6ptFUTolQRuti
        hhaP9kwEhVCzfR5ALfO7CKogPQ==
X-Google-Smtp-Source: AMsMyM5nnhYhQwme3zvGgjZnP57vTakH5++Ar9MdcosaQ773rvsfR+o2LAUTSt89rn6+lT118m1cGA==
X-Received: by 2002:a05:600c:3591:b0:3b4:bf48:9f10 with SMTP id p17-20020a05600c359100b003b4bf489f10mr1721441wmq.76.1664265363834;
        Tue, 27 Sep 2022 00:56:03 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:56:03 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, ardb@kernel.org, davem@davemloft.net,
        herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v10 27/33] arm64: dts: rockchip: add rk3328 crypto node
Date:   Tue, 27 Sep 2022 07:55:05 +0000
Message-Id: <20220927075511.3147847-28-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
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

