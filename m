Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D51C6EB4DB
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:32:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233988AbjDUWcz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:32:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233959AbjDUWc2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:32:28 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9100230E1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:32:02 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-94f109b1808so373614566b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116321; x=1684708321;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zCePvdnLU0te/9Tm6QAFiM5IfMZSAV41EI2HfPUxIUQ=;
        b=HQPozStfhRckNhvd+Zk7CSSLU8GLScruHZBsPRXQLC18+xjzOs1ZuBlVtaVKN4Di3S
         zWsCAvNHk6a+OzOe12ASoYGHUlJK8bv1ZIzZIGvmCLHkl8TdD/XH6IAHa9VCvT4KxZPC
         jZl3gJIIaa02p6415zgt8P45ZAHAeUnvdkJWNE8rQD211nle44bQeqgDYqPSgBWMjjfu
         iVMRMlgUyPoe6jVNYtZvswpWJRALzAnZMJ3f2lh1p8xAf8o04GYSRUC9nd2Sgujm8PQ7
         xjs0PpIM2kq2nl0u2gD2dIPueLypRCwaHpjdLjuEIje1avGoXrLHPCNodCsgOxQATMsm
         mK3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116321; x=1684708321;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zCePvdnLU0te/9Tm6QAFiM5IfMZSAV41EI2HfPUxIUQ=;
        b=NKs2BJX6q4WevbIepOh9DS/5piYO6+X00quxsblyoOq0cFO+/6xQN/RfdibgumL0aW
         lxuMccX3GL5NF88Yi3MM8wFCLlhIGPKYCfUU1wdyDVU0xqHAD/j+Cr58mscrSVGKXcHW
         ffUvvJnbOiiUD+SEtDxWLmRoL5DNU1jlm9qZ8bK+7QPC4OV0TWWMWcKQJ/BE3yKKbvWb
         0eUTvUkcA9bXlMGGzU+D6G8B+fAMtTHV7+ukGgAVbfodIn+tdJLf51763JAp3OPsvQqS
         e/nlDcVzC/NcqrGRY9MrBJtYKQskRLWhNGjoOjw4ZAMa+7iK0zn9a1B1TV4jtfNVuC6A
         pWfw==
X-Gm-Message-State: AAQBX9f79LZMqpgPiD0psVNsrBqvEQtyXqOIKxGAopmzCF0M7a5ajRLt
        +sM8kaXQGsp5XPfO+Jfjd2fvMA==
X-Google-Smtp-Source: AKy350bOjYNYC8Sb9loGXUWprWsnyDGJ0IoQXDUcY9NaiN1Tfi2RrbByzmxVL2zFdzZLywVAGs5Plw==
X-Received: by 2002:a17:906:3805:b0:94f:7486:85a9 with SMTP id v5-20020a170906380500b0094f748685a9mr2862136ejc.39.1682116320863;
        Fri, 21 Apr 2023 15:32:00 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id bj1-20020a170906b04100b0094f7acbafe0sm1528708ejb.177.2023.04.21.15.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:32:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: marvell: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:59 +0200
Message-Id: <20230421223159.115412-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As all level 2 and level 3 caches are unified, add required
cache-unified properties to fix warnings like:

  ac5-98dx35xx-rd.dtb: l2-cache: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi      | 1 +
 arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi | 1 +
 arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi | 2 ++
 arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi | 2 ++
 4 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi b/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
index 8bce64069138..c9ce1010c415 100644
--- a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
@@ -50,6 +50,7 @@ cpu1: cpu@1 {
 		l2: l2-cache {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
index 990f70303fe6..3ed6fba1f438 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
@@ -52,6 +52,7 @@ l2: l2-cache {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi
index a7b8e001cc9c..cf6a96ddcf40 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi
@@ -82,6 +82,7 @@ l2_0: l2-cache0 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			cache-level = <2>;
+			cache-unified;
 		};
 
 		l2_1: l2-cache1 {
@@ -90,6 +91,7 @@ l2_1: l2-cache1 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
index 7740098fd108..8848238f9565 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
@@ -82,6 +82,7 @@ l2_0: l2-cache0 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			cache-level = <2>;
+			cache-unified;
 		};
 
 		l2_1: l2-cache1 {
@@ -90,6 +91,7 @@ l2_1: l2-cache1 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 };
-- 
2.34.1

