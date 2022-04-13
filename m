Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23D334FFEC6
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 21:12:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237695AbiDMTOU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 15:14:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238135AbiDMTLt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 15:11:49 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9109B716F7
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 12:07:52 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso4580347wme.5
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 12:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7MLyGA4WUDMi+Qf8y5tCaEOv26U6HFRODkGLHS/fFC8=;
        b=0fnXMottDMHawO/G08dPtjRNELO7Z6wbMXWUyV9JBCKEbxGl1L07CPdlG/u469u6Ci
         dSYaA4Njd/hnbpaK3oWB6U3dgyhTTeMWN2izBvw70jPVaP9wDh1R0OLzzCpC+zJ3hnSu
         DkcIZIDycX4jt626uaocz4P6s0zTE0IFFFcU4SOLCz0mJVQHU1KkWvxHV66paQzR5ePE
         sgkwi6gGtR3bUFS/lcnQaJZtCOSV7gWHpQSBMw2FWB4/fxLocvman8Y8CvOD7J0lOOjr
         veu6RoNI9R3QFqF0jAO/ghChMFf9dnBdVnjEwHrgqnBs9BGXVCwud70/OlvTTJdxhAmW
         +hiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7MLyGA4WUDMi+Qf8y5tCaEOv26U6HFRODkGLHS/fFC8=;
        b=zg/QxNYV2yxX1ulxOM6gWsQrRTgg04+Et0z0RBpMJYhVvKOvuPPrIHBevMSxCRVoGy
         ULCaXXTkrr1kKun6wBs3BPoQb/Bw0+5O4/3jUvWFGOpVSUdnhQ1W+RSdJ/lpcWfMA1hG
         NpcNNH0zUb7V0Hv1bUdhXC6WExPhoTLUrUhxJB70J3KhBkJoySktuQKmVuxtFzQ54Kp7
         Zf9iR3ATy8seFrtKt+DCnmah+KugULyhBr1oa+YgKvKoYa11NiImGYfnwGTQMimSppEN
         Jc5bdORGQMShTK+86FAMHsJPCkhAuZyapodlyKymooTie9zxyrSNgQhlLxDxV/hZ+n0F
         GIIA==
X-Gm-Message-State: AOAM533fAMJeunIPPSyeMCgIgknWvaNUrumktpsM8pR4PowzY1hdqhg7
        alPxPAv/HLKo/CsL+XPZKCIpbA==
X-Google-Smtp-Source: ABdhPJz9DDjuscrfaJJ0xJ53yOFv+BYcHWFfJFxuo2CFhEIbsRQ6tHN5Qx+X/5f1JsOmdn8U5tUH9A==
X-Received: by 2002:a1c:f604:0:b0:38c:8ffd:dbb6 with SMTP id w4-20020a1cf604000000b0038c8ffddbb6mr154513wmc.43.1649876870996;
        Wed, 13 Apr 2022 12:07:50 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 12:07:50 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 27/33] arm64: dts: rockchip: add rk3328 crypto node
Date:   Wed, 13 Apr 2022 19:07:07 +0000
Message-Id: <20220413190713.1427956-28-clabbe@baylibre.com>
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

rk3328 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc7f1..c23fa985e66d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1007,6 +1007,17 @@ gic: interrupt-controller@ff811000 {
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

