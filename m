Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFB5662964E
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 11:51:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238082AbiKOKvn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 05:51:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238400AbiKOKvE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 05:51:04 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A28712648C
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 02:50:51 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id c25so16991012ljr.8
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 02:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UGjykOjceH4eYkA7OZEc1299a3XbmJI2Br4/Li5jEVM=;
        b=cBr/yYY16FlBIk3qt3jawqz+aPmJnbY0pIyIaUIaC7Rtk6pnVEY+LQRpkjN/ea2Nz5
         DjWZcwrOEdPVVnXCACMW8wOuTZD+pLY9FTpyDWesS9nyP7p/qwEZMAwmOHWIOcrWz3oF
         yfAqFpVBEpRlY4RVQGQF433onjyEpReK6C1JekAtImZMjYTANSX+QllIPzkEB1u8pbK3
         Jt3EX5gXA42IKRG8/2JKVdT9xiQY4e7Rft60LJZ9z5gUB2Dl3DZ1rRQ1pz+uV9eOBn2P
         kTJi2KE9iw450+Flkg5irVl0qxJlNUfut0KaoR1msv7OqRqjB6b2Eh3D4QIuWuHx56X/
         746g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UGjykOjceH4eYkA7OZEc1299a3XbmJI2Br4/Li5jEVM=;
        b=XMbGdQXLiD1x91UpdKffFzKsWXHcai5PUYWLDUehMi3jY/ZgB+824m8YFrswveiVG8
         QWFPU+nOOmDxNAC4oNtTqaGXAn4/3PIbERqRM8NMUyNwjbODBn1huaV+XmHjt9y/GTNZ
         qoOJQ2XzFewx2c+XPHhuC6S0LEzvW59U1r5AeDKVHCdCDaXRH9Vdhc+rerwtjkHVKhrm
         Cge6ab83QQEI+PqTyotBUvNZgyT/VRaNTYxC7edWRYJjYbTwMskpaJ1SUFRzqyXcOD2c
         PMD/nLEmcl1KAhbU6PsT6yFgG2L/jRrxhlfoFXXXBXdfRpYjWYD2vXAZN/aOpwgKkPad
         HlyQ==
X-Gm-Message-State: ANoB5pnLZV8JNiUEzESAP9DIGS34idRGIn9zR3z92keMsP7FSlWfWJP1
        XcJLNJQ+lXldnp4LJ42a2xtSUw==
X-Google-Smtp-Source: AA0mqf6e3Kr3P7XLgfpzxF2LZl6/IBo6LGm0frKLjBHLqkLntXEDdNgjrK38Vf9CriEVLAdkbdvhlQ==
X-Received: by 2002:a2e:b706:0:b0:277:d75:f1de with SMTP id j6-20020a2eb706000000b002770d75f1demr6035466ljo.272.1668509451209;
        Tue, 15 Nov 2022 02:50:51 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n25-20020a2e86d9000000b0026dcfc2bf4csm2468872ljj.57.2022.11.15.02.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 02:50:50 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vladimir Zapolskiy <vz@mleia.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: lpc32xx: trim addresses to 8 digits
Date:   Tue, 15 Nov 2022 11:50:49 +0100
Message-Id: <20221115105049.95313-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hex numbers in addresses and sizes should be rather eight digits, not
nine.  Drop leading zeros.  No functional change (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/lpc32xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/lpc32xx.dtsi b/arch/arm/boot/dts/lpc32xx.dtsi
index c87066d6c995..974410918f35 100644
--- a/arch/arm/boot/dts/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/lpc32xx.dtsi
@@ -315,7 +315,7 @@ fab {
 			/* System Control Block */
 			scb {
 				compatible = "simple-bus";
-				ranges = <0x0 0x040004000 0x00001000>;
+				ranges = <0x0 0x40004000 0x00001000>;
 				#address-cells = <1>;
 				#size-cells = <1>;
 
-- 
2.34.1

