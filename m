Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5154D6EB4CC
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:32:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233860AbjDUWcA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233857AbjDUWby (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:31:54 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BB8630FE
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:50 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-956ff2399c9so299167766b.3
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116308; x=1684708308;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GM3ex0o7phRkVYpEz3RNOVhx0nnRDZ3E5rWibO8rzvY=;
        b=MVdya2iwMP+Tb9vrJO6Qaq5Kadu1S6rbgf3tM+sKi814OIZke9h3FIkL1sbBUndcw8
         Bg4IJjwu49Sq8xCKa72Gu69/aPYrdVZG+MEQKrpzZgDYmjO/txJqbPNFf0xcjweU/f49
         55z39WWexzh4lSHCq+3szFg4Ab0jTRUYub/D4HiFBlM+qGJ1yHABowLEbh/pNDb8z4f7
         SvVkIbiMAG2RKS2lColNqR9gqUCUS5xDcapSU9oDEJimICE+xLAQq0qfSqnH9kzjXshP
         8bvZwZdKqpa8w6ON2HUQNQRLJ5a4ASD/bLhWYjQ/KpUawBbGPZrKYnr+RSQcNtTHAc1L
         WEgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116308; x=1684708308;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GM3ex0o7phRkVYpEz3RNOVhx0nnRDZ3E5rWibO8rzvY=;
        b=S/5A+4RUzxPqdo6QGTOuFxodCAqd9BG/aKRSddAo4+BVSuWHRls0CYz2VW29FQpc+L
         DlhzctJ/wQcobb3O6fukbFmxVm48xnPiMjhDifWCJbEGE/prIokDE33tu3KIKijt4VuB
         f+dJNa6aGgpc/SHhNYtKmxq4iGStKdNb/p6pPxNGUuvu5xUZmxYbnHPyLWzYv4r3exzg
         KYWaQ1K8T+uNSH5kbdF3vGsZgHTquJBHWOADCL3WXE7Oz79wn798Jp84IESyCunC86Zy
         Vp+ohYK/fH+1piUEJ4hX6r1j2jG4ZgxNF6TLk1nFbt3KCVpahemtqAL9ka2ufCSrYAbq
         3fhg==
X-Gm-Message-State: AAQBX9eS+Zw/019+FdZHRxZoF1CYun+VfTZOcpq8hiX5vwE4cOKUVJlZ
        rH2vWlAagAqv86VPFM0/O82yXg==
X-Google-Smtp-Source: AKy350bUxqLy+nykcJVMKDQWK8ENRYMKDjIoQtQ7q7xl9+crY9FN76esYAOt9D+Gsdg4ZwOyTsaQGA==
X-Received: by 2002:a17:907:98f6:b0:94a:8b35:f15d with SMTP id ke22-20020a17090798f600b0094a8b35f15dmr4281217ejc.45.1682116308667;
        Fri, 21 Apr 2023 15:31:48 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id l7-20020a1709060e0700b0094ee21fe943sm2557098eji.116.2023.04.21.15.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: socionext: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:47 +0200
Message-Id: <20230421223147.115156-1-krzysztof.kozlowski@linaro.org>
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
cache-unified and cache-level properties to fix warnings like:

  uniphier-ld11-ref.dtb: l2-cache: 'cache-level' is a required property
  uniphier-ld11-ref.dtb: l2-cache: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 2 ++
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 4 ++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 2 ++
 3 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index 7bb36b071475..4680571c264d 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -52,6 +52,8 @@ cpu1: cpu@1 {
 
 		l2: l2-cache {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index 4e2171630272..335093da6573 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -86,10 +86,14 @@ cpu3: cpu@101 {
 
 		a72_l2: l2-cache0 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 
 		a53_l2: l2-cache1 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index 38ccfb46ea42..d6e3cc6fdb25 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -83,6 +83,8 @@ cpu3: cpu@3 {
 
 		l2: l2-cache {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
-- 
2.34.1

