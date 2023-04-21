Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D80B26EB4D2
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:32:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233941AbjDUWcW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:32:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233847AbjDUWcD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:32:03 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E0742D5B
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:55 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-94f1d0d2e03so299258166b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116314; x=1684708314;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ikgfKWd5j9eJ+n4oOSpchtAyPf2HU4vbB61uGglqV1k=;
        b=AtGAQtK2tuG3D6OZu2TboiKtIaXNzBvBtfo6WL7a779+GIfd/lY3hjY0BVsIQIrKBR
         2Ctgk6cN9N52tW/lRsrS14GgbSRnB7GDCZZB2njO1i5565dh2TOZ+i9vtUH6teakeb/J
         QLm1duysZF8ws5S1hQk1KZvHy12OvEVFRxOIHWZ0qzhmvSyfpa9vR4y1DFuQUFNZN7/w
         BMyQxvzz1KJbIqqfkcsib1h8w+f80bssKo9ca6xcA+Muc0QdMNYK0J0b6hDUMtisFG9u
         O+vA0BoLGb+Vt+Abe6Ugs7ua6u0htfkT/yfJ2GgCz5UecIYM+ApQmmS6KZcdGcgLSNey
         jW5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116314; x=1684708314;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ikgfKWd5j9eJ+n4oOSpchtAyPf2HU4vbB61uGglqV1k=;
        b=cMk8vt/3r3KwBRHz2nmyLZfjRfq8QzoXQjqUj31qyc32qFS8wrT1lBaGQPwC0n7LFQ
         iFpG7B10ntZrIi7Wi3bbYjQ4S53RMZOPzAWk5I3/dcBxZujPAi+4nibpVxMHsE2GZOIS
         xBY9MqrkbVbgVKjs0YMACQIkP8hWdm+SntFpTSm0dsgrHYO2jwMyEUeZhmbtMre6qHOE
         EWr7MWcNJpfZPjQgifxcz9Lz61oz06pfa8g+AL6yBtDJ/tr3WlsIkCHinOavFtOTfp0r
         M9A8pimVX58yPC/ndYZZzXEMvFGe8aaBi+q843dvfRnEWSWVV2ZRsrWnKPo/QnA/3Vgv
         8R6Q==
X-Gm-Message-State: AAQBX9cmWTtc2wbHpFuPX/G054lRCGz7Oj5t++USZGj57m2z2/1AKj3f
        OGEtoUsJj58wHmVAL40CWQgZIA==
X-Google-Smtp-Source: AKy350b2O3rWHFLy6+XzE6dz4ucQ7s0zpqUYq2p/4OGHUudHr3W12BQ0vF5fNXZNuyIXtJZIMv8Jkw==
X-Received: by 2002:a17:906:ecb7:b0:933:3a22:8513 with SMTP id qh23-20020a170906ecb700b009333a228513mr3669254ejb.53.1682116313951;
        Fri, 21 Apr 2023 15:31:53 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id sd22-20020a1709076e1600b009572bd99281sm1077908ejc.224.2023.04.21.15.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: tegra210: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:52 +0200
Message-Id: <20230421223152.115285-1-krzysztof.kozlowski@linaro.org>
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
cache-unified property to fix warnings like:

  tegra210-p2371-0000.dtb: l2-cache: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 0e463b3cbe01..617583ff2736 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -2000,6 +2000,7 @@ CPU_SLEEP: cpu-sleep {
 		L2: l2-cache {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
-- 
2.34.1

