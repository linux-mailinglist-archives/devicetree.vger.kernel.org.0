Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 788D74FFECD
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 21:12:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233705AbiDMTOW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 15:14:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238160AbiDMTMA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 15:12:00 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 446A971A02
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 12:07:53 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id r13so3972399wrr.9
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 12:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X4PiWPA2z+YwiPjwmkViEPpFlveGzLMoVQh4AfeqXKE=;
        b=C/qAk6G4NiYUU7imkWzxTVcy+jWPhtrMBcEY1VpgYiGNTigN76B5hrAraH9OPjkCng
         uvTk1YM8YQYAAOm9cswIf1PZigEi5Qs9c4VbSgt0zJ3Npdp4bWVuJtuJVtkbnozJRHhc
         furNtTN582R6tzoy1Zi6VEOpZcX2UAkjdPLNV10bhyMLcCg27jSnOrXkQRniA5hjJ5ow
         FwZMl2tyx/p3dRk0KhkbG6Wlbe2pQ+xwcJNyJ2EcnY62vGx+zxEaSAqvi0veVtTRXo0v
         hGfR1Oh7y4IzLJsu8o/KPbSqWD60CR2nQsoq1FCWxyuX37f30XxFAb84NVmaKjICKldE
         IIwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X4PiWPA2z+YwiPjwmkViEPpFlveGzLMoVQh4AfeqXKE=;
        b=dYP6apDG3qLbE8f4JoqUZ8596+J4keljbPrf4YsKoYwxHQY8+R6KSNbms+fcj2OQJr
         IzLPBLpY9f2lspafTCFg3YRl0fQA255Y8tun6NRBuEwgsa54cQS5Bpd/MGEcywua0Erp
         47x0/4GE2bE/xzatkn0MT+fNi7eFtYEIgZAdZ2zETZb6EfxFN9wHUNaxEL7P8e36NmJu
         6ApKc531bsLzyD1fGxpxPUrfwPJNaZwEeQkekl/YSGPcDErHI4sB0SX2wgo42z1Ej2t9
         vmgnuv8cDVRZgB3s8Dcde+t9EXfzeOJDbKLkJo3slB3xlJRaYtcS9mJsLafOUv5dUWlW
         WtdQ==
X-Gm-Message-State: AOAM530KT+Ly2y1mNHi+C5zSMvRRtzTXl25HvOIWel28tauJz2IUp6xe
        Lg4N6u4YHm1RHpidKC1l++ym7Q==
X-Google-Smtp-Source: ABdhPJx54Vb7E9c+Pkar02daKFssprFjEyOoa3rUt+CZLrNTNtjjYYLGhb1I73t8K4nwcQ+4ixZSKg==
X-Received: by 2002:adf:f152:0:b0:207:b0fb:b332 with SMTP id y18-20020adff152000000b00207b0fbb332mr232332wro.17.1649876871988;
        Wed, 13 Apr 2022 12:07:51 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 12:07:51 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 28/33] arm64: dts: rockchip: rk3399: add crypto node
Date:   Wed, 13 Apr 2022 19:07:08 +0000
Message-Id: <20220413190713.1427956-29-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The rk3399 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index a90beec50f6a..b9b16008813e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -582,6 +582,26 @@ saradc: saradc@ff100000 {
 		status = "disabled";
 	};
 
+	crypto0: crypto@ff8b0000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>, <&cru SCLK_CRYPTO0>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO0_M>;
+		reset-names = "rst_master", "rst_slave", "crypto-rst";
+	};
+
+	crypto1: crypto@ff8b8000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b8000 0x0 0x4000>;
+		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>, <&cru SCLK_CRYPTO1>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
+		reset-names = "rst_master", "rst_slave", "crypto-rst";
+	};
+
 	i2c1: i2c@ff110000 {
 		compatible = "rockchip,rk3399-i2c";
 		reg = <0x0 0xff110000 0x0 0x1000>;
-- 
2.35.1

