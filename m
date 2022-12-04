Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E74D4641C59
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 11:42:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230022AbiLDKmt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 05:42:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiLDKms (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 05:42:48 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B969DE84
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 02:42:47 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id z4so10378766ljq.6
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 02:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wIYmumdV6gF7dGwolIurE0WSvXTzLO3ZVkYOJH7esYo=;
        b=gaoyEdeCSpXIkrztrskMmFzKZd+uKAC02WjdIn4Xxuc9BR2vWmKAQWMNsGBCF3AB3v
         Qgszu/gsbChP24xLYUK7O2LSLbvxXYZuRbrf8tEUJ+NSFxW9ebpgjMV0dSllrstC8iBa
         u+dLBEc7E3IvTBRuO6Vm7u+kApHQO8ensK4VphpQBAwj7LkhLl1VKff+J1J2fuQLAWLK
         d96YTcWt4HPipDxIP9UFrFk+1lHweC/phnhqZ5O4TcE3NTg4qHg6HU65+3dBgUVQCxEF
         rBEWGm0HtlecCdu/apd2u+DaDYxvuG4SCIBH5qnZogziN0yRvVuJsS7W325TBDj1qcBY
         qISQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wIYmumdV6gF7dGwolIurE0WSvXTzLO3ZVkYOJH7esYo=;
        b=Rd898Y+sW/KP1hu5l0MFShzzVqX2/Io71RD+gDyVbTlYwBAtjYHbXRmmXIe4ut6tiW
         SPDrHFaHuceec9EFCFZMiJQYVbUJ/oq1sGZh0ZNjMJ+iMrMoks7LMp4zS/l8/d/bJxdc
         CJGAaW9vk2isi4h6HZMv5KqvGAFOhqBK7ZW5Ayt27ibsNrAN2MKlsVHmQZOtcqdSpDv8
         UcSyk+P2oVmE6NUVMNg38e6lcxrCSdVrHmPTfRx3AXFHZWZr4nnO4IiegK3VXSGMELpE
         RnqhkuXP419+ziItFUZxj2c6sFZoCYk5kE/m6kP+JeHcWedWne8Og1ILotzn/9eYQ4dn
         OtWA==
X-Gm-Message-State: ANoB5plOSbu07kMOFDQDeXnXu+Pgpf1snvKm/louubhTOsiVtJLAJr8J
        etVww82+KgLWxQNnpR0D1urU+w==
X-Google-Smtp-Source: AA0mqf5jbzbV2Z96L1gL7GUlH/q5OZ2ofi46akDEv9/ZqWeiTjVTCgL4WLyT21ULbLWJ/re3wyLCZQ==
X-Received: by 2002:a2e:a37c:0:b0:26e:93:980d with SMTP id i28-20020a2ea37c000000b0026e0093980dmr26233053ljn.488.1670150565638;
        Sun, 04 Dec 2022 02:42:45 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k4-20020ac257c4000000b004afac783b5esm1715433lfo.238.2022.12.04.02.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Dec 2022 02:42:45 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: exynos: use 8-bit for SPI IR LED duty-cycle in TM2
Date:   Sun,  4 Dec 2022 11:42:42 +0100
Message-Id: <20221204104242.117558-1-krzysztof.kozlowski@linaro.org>
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

The 'duty-cycle' of SPI IR LED property is u8:

  exynos/exynos5433-tm2e.dtb: irled@0: duty-cycle:0: [0, 0, 0, 60] is too long

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index bde6a6bb8dfc..5b002a85b792 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -1315,7 +1315,7 @@ irled@0 {
 		reg = <0x0>;
 		spi-max-frequency = <5000000>;
 		power-supply = <&irda_regulator>;
-		duty-cycle = <60>;
+		duty-cycle = /bits/ 8 <60>;
 		led-active-low;
 
 		controller-data {
-- 
2.34.1

