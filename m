Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3613B6EB4DA
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:32:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233944AbjDUWcw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:32:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233945AbjDUWc1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:32:27 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2BC440DB
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:32:01 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9505214c47fso375068766b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116319; x=1684708319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nTS3BJHQfpV/cAmIYwndGJ4XuY5RhYMBsw8wnrdpZE0=;
        b=hUf60pt9SYsbHNOBCqTdtDAJYGPxwWgJjjpYvXAyCp9Gs/Nh79FGr5ya2k8mA2ZOX/
         wRd5FiNNVnZRtXcrwzS0qNruVrNJF2ksSbj4ZE0rlHlDd1PFjpodCuQ4J38m1kM7E0w3
         Iyu98fQ95p78Oym7Y1BCNO43sA3kAmgRziuGGe8ZL6wqM+sOAyXsU9fBnCtghG6iazke
         3zWJH0s/D1RM9/yPDyHJXs3Y1z/shUn4u4X62loFj4VFfLwBWD3dCRikb2gCtVBREaqI
         pa44cYZwH9RM0DoTvMCaIVvfG4lSEYeeeqHdr36l0SDCg1tZY7RW9IZgDJjIENrerf3h
         kxAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116319; x=1684708319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nTS3BJHQfpV/cAmIYwndGJ4XuY5RhYMBsw8wnrdpZE0=;
        b=UA9qK171VrWdzJRNmQrOJzlWaJbJF5HVmIfv+bQYNIEgQykYh3aJJnAYI0JuQ+1alA
         qpDLLK+jqXP/Zg31Y7MbXUVn5a7ej+Koh//3z00DKvtrN1lyErtjTiLBCWxHv9Gm7tmp
         5CRaAr7Qz0R1/HOEi742MYU1go32Ti9ypJR/McqvmUwYIaORJf0m04lcJu4BK+Xgcder
         iraAeGTPVsG2DEuTGxYidD7noIfpnvWCl6matAdBjsC4W9eq+QPpg3BiefXSVpCdNJbK
         vEXLmOg9Wl/Y7N99qLD6j/vfnp2ryx1SZHEeEcYGuEpHwNNWfANGBybPlSnL2BNESvpU
         6EAw==
X-Gm-Message-State: AAQBX9eXdixjo04efdcWnb5Cewtj5AQTlAHdq/SciFmG/vJ10M70GNiW
        0faTjCcKZXqKRypBE2tQFIgqQw==
X-Google-Smtp-Source: AKy350ahA/i9BjvklpN80iEkUEuB3+ynJvh5flYH+2DE5tgTm7Xoz0w7YWIJ7AKdq0IKk4YEd9Ba6w==
X-Received: by 2002:a17:907:a688:b0:953:4d9e:4dc5 with SMTP id vv8-20020a170907a68800b009534d9e4dc5mr3267106ejc.22.1682116319070;
        Fri, 21 Apr 2023 15:31:59 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id g11-20020a170906394b00b0094f4f2db7e0sm2623765eje.143.2023.04.21.15.31.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: mediatek: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:57 +0200
Message-Id: <20230421223157.115367-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As all level 2 and level 3 caches are unified, add required
cache-unified properties to fix warnings like:

  mt7622-rfb1.dtb: l2-cache: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/mediatek/mt7622.dtsi | 1 +
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 2 ++
 arch/arm64/boot/dts/mediatek/mt8192.dtsi | 2 ++
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 2 ++
 4 files changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622.dtsi b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
index 006cd639059f..36ef2dbe8add 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
@@ -101,6 +101,7 @@ cpu1: cpu@1 {
 		L2: l2-cache {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index 5e83d4e9efa4..d4f9a9b6bca8 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -250,6 +250,7 @@ l2_0: l2-cache0 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			next-level-cache = <&l3_0>;
+			cache-unified;
 		};
 
 		l2_1: l2-cache1 {
@@ -259,6 +260,7 @@ l2_1: l2-cache1 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			next-level-cache = <&l3_0>;
+			cache-unified;
 		};
 
 		l3_0: l3-cache {
diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
index 5c30caf74026..faaff39155dc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
@@ -228,6 +228,7 @@ l2_0: l2-cache0 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			next-level-cache = <&l3_0>;
+			cache-unified;
 		};
 
 		l2_1: l2-cache1 {
@@ -237,6 +238,7 @@ l2_1: l2-cache1 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			next-level-cache = <&l3_0>;
+			cache-unified;
 		};
 
 		l3_0: l3-cache {
diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index a44aae4ab953..eee3160e7901 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -283,6 +283,7 @@ l2_0: l2-cache0 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			next-level-cache = <&l3_0>;
+			cache-unified;
 		};
 
 		l2_1: l2-cache1 {
@@ -292,6 +293,7 @@ l2_1: l2-cache1 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			next-level-cache = <&l3_0>;
+			cache-unified;
 		};
 
 		l3_0: l3-cache {
-- 
2.34.1

