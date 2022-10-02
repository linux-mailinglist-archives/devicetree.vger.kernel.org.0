Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49B1D5F223E
	for <lists+devicetree@lfdr.de>; Sun,  2 Oct 2022 11:20:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbiJBJUF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 05:20:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbiJBJUE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 05:20:04 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D10D23176
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 02:20:02 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 25so2518687lft.9
        for <devicetree@vger.kernel.org>; Sun, 02 Oct 2022 02:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=bn11ROdfdpwm+pLhcHHe/jAlddmxiu8wNOBInX3vz4w=;
        b=GU5T016DesMRb9PWPeNsraKqC6o3gment/4VYhGD58OgdKU09S5jsltpJEvZvLjECx
         2H9vElfbdIhRAOeALFeqbwNUprSnbkHx1VhSQ/dVAeQACQmFI7EthGCLNk11U5eGT7qG
         Co8IYFKnfA7aAbmXfBNdZr6mTpE1ViHMcHSWQAeSX5RNJAkwW1xZIb235UEtIKmOs1XX
         9rJrdXbe9zE2HYGYzo1y1g6lwGny8J0EAdJtrpMEZpz+omhDeZkgQzv51M6IvHAn7cP9
         fmxWU37f8ECDdeTMq/u48LXaYJsIlLQu3e1JZea2HoTLiMnBf/Kp57zRJ/3yzYuK+SFX
         h/7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=bn11ROdfdpwm+pLhcHHe/jAlddmxiu8wNOBInX3vz4w=;
        b=yxW6mpMzALBunaXxIDI2iW7EQ/PP830j7Af0XyFLMdhRiZUDO66VR057KYLbd3Sw+J
         vfL5M291hBv77hzgiiRtn+T2wHhnqCCT3iUAbKePjuN7UyXzQOMGZdTf91kizpU7UWvA
         d8539Hx2phIBBnMmXM6vp7uDPyNAY+ySc/DHUdg9dCk2VePBf7QzHQWaUs5mpgr+xtpX
         i6cNjlrRRIHSl/N6TUP9NuXiy+t0YbOoozH4dDDNHH4PbUY2PCtZjsYYaMa7hrVIuzAD
         Lrkv+/YUbRsFCg/1Ohm0bok7nW9wQU6+t9yIrOOwADznR4DkK1AtfJfxi89Kxis9JNxg
         61uA==
X-Gm-Message-State: ACrzQf1tUNrdBX1uSr5CVsILa2jC4cCNI8PPz4O59cKxFnTh7TEyKIsO
        /YJJfd23PpDhOGpdz4oL5jq57Q==
X-Google-Smtp-Source: AMsMyM4w+lYlLKZZhbkKGhO/XiQI77DNkWVpKV2Sw19tp3osAwXYr/rhRfgU7y37lA5+ODq/z3Ok9w==
X-Received: by 2002:ac2:5384:0:b0:4a2:3a45:520 with SMTP id g4-20020ac25384000000b004a23a450520mr440227lfh.560.1664702400558;
        Sun, 02 Oct 2022 02:20:00 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j2-20020a056512398200b0048ad4c718f3sm1026393lfu.30.2022.10.02.02.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Oct 2022 02:20:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: sunxi: correct indentation
Date:   Sun,  2 Oct 2022 11:19:59 +0200
Message-Id: <20221002091959.68815-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Do not use spaces for indentation.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi b/arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi
index e899d14f38c3..1d1d127cf38f 100644
--- a/arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi
+++ b/arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi
@@ -89,13 +89,13 @@ switch-4 {
 	};
 
 	reg_gmac_3v3: gmac-3v3 {
-		      compatible = "regulator-fixed";
-		      regulator-name = "gmac-3v3";
-		      regulator-min-microvolt = <3300000>;
-		      regulator-max-microvolt = <3300000>;
-		      startup-delay-us = <100000>;
-		      enable-active-high;
-		      gpio = <&pio 3 6 GPIO_ACTIVE_HIGH>;
+		compatible = "regulator-fixed";
+		regulator-name = "gmac-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <100000>;
+		enable-active-high;
+		gpio = <&pio 3 6 GPIO_ACTIVE_HIGH>;
 	};
 
 	wifi_pwrseq: wifi_pwrseq {
-- 
2.34.1

