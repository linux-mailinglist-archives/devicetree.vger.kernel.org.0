Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AA1B769286
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:59:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232050AbjGaJ7B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:59:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232579AbjGaJ6d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:58:33 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6736E10C7
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:57:35 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-98377c5d53eso612330866b.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690797454; x=1691402254;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ge5Y7e80bFTSfkAsJqtzum36Yq9ImlNuV8r4LpCez9Q=;
        b=iF7H4X5LMK2f9JBc7gEO1OHfCB2DE0uzwiR3fLL3hC3P0P7He8K+uJhUKT6O7qvg4J
         hisqSpRSyLdr1sZfkEDCiWtKset4HpCUul75BrBxg5qqgaJHB0hkANumnlHXu63Bnznq
         Qv42a/7bGRyjiqXVXnyXwUNpS+AHlzvhJYYFYq64g5UFQCE6031+EaWJ3ek7V44eyOe9
         8ngDibUCNh+ysNYoQsogznIZEXqPfeXRcbOGp7qTZO9rOGts0al6r9iF++dXGfe0SNQk
         Okh2HEcXRWW3fyWg4yFTUjdi1yo4/LEWNxFPFNVEHeG67O2/MfMSyK3suorDrh6pjcIe
         vy/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690797454; x=1691402254;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ge5Y7e80bFTSfkAsJqtzum36Yq9ImlNuV8r4LpCez9Q=;
        b=HpkOAqiJZ10gMlIZBOzJ+bSWSZDC8Ux3mIqwM1sfvuCu7Klz9BMJL2aa8tFTt2JiHD
         e1kQZE8W79tePeLUgQPBDjYb8Hg+MEpStRRsTbZX/yuKz0PZNh437UKbabmFixDWybcs
         Q79KS1rSESLX4EAAHzrCNvHGT1UVslSNCyuzk8akg+6ZVaP6ooEgSHg1CnnuTWJ8lY8r
         4NuGSx9BxpgmPmBAxN8UKyAuwEH0MFbIV6xlgDV19+vGxcLiCGCH5W3JPggZw7RGweYo
         +ajOxAs8A+HuiR4DBgZPnhLNzwQMT7FxHoPh2NyDFWWBO+Jv+0tOApB/dcJEOss3RuV0
         XGqA==
X-Gm-Message-State: ABy/qLau0F/T4QY1Wa7QsdXBaTYD6cWiFmLamUBXNv35kRP99hg/53FD
        Cl1uCZ5VASIQTfTi9AbOgworxQ==
X-Google-Smtp-Source: APBJJlEjATbEhOL4PmJ/hRm1ugmxVneNd5jaJ1KdIV7BKfcULd2kVvlLBr+9XK92p3JR8op4koslyg==
X-Received: by 2002:a17:907:b13:b0:99b:5574:7d0f with SMTP id h19-20020a1709070b1300b0099b55747d0fmr5889800ejl.23.1690797453930;
        Mon, 31 Jul 2023 02:57:33 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id kq6-20020a170906abc600b009828e26e519sm5860678ejb.122.2023.07.31.02.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 02:57:33 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/8] arm64: dts: exynos: exynos5433-tm2: switch sound card to audio-routing
Date:   Mon, 31 Jul 2023 11:57:23 +0200
Message-Id: <20230731095730.204567-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"samsung,audio-routing" property is being deprecated, so switch to
generic "audio-routing".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Change depends on ASoC:
https://lore.kernel.org/linux-devicetree/20230731094303.185067-1-krzysztof.kozlowski@linaro.org/T/#t
---
 .../dts/exynos/exynos5433-tm2-common.dtsi     | 21 +++++++++----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index d163891cd399..2a4dc560252e 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -124,19 +124,18 @@ sound {
 		audio-amplifier = <&max98504>;
 		mic-bias-gpios = <&gpr3 2 GPIO_ACTIVE_HIGH>;
 		model = "wm5110";
-		samsung,audio-routing =
-			/* Headphone */
-			"HP", "HPOUT1L",
-			"HP", "HPOUT1R",
+		audio-routing = /* Headphone */
+				"HP", "HPOUT1L",
+				"HP", "HPOUT1R",
 
-			/* Speaker */
-			"SPK", "SPKOUT",
-			"SPKOUT", "HPOUT2L",
-			"SPKOUT", "HPOUT2R",
+				/* Speaker */
+				"SPK", "SPKOUT",
+				"SPKOUT", "HPOUT2L",
+				"SPKOUT", "HPOUT2R",
 
-			/* Receiver */
-			"RCV", "HPOUT3L",
-			"RCV", "HPOUT3R";
+				/* Receiver */
+				"RCV", "HPOUT3L",
+				"RCV", "HPOUT3R";
 	};
 };
 
-- 
2.34.1

