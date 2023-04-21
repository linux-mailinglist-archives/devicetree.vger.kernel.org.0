Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA1C6EB4EA
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:33:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233950AbjDUWdd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:33:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233850AbjDUWcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:32:54 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FB7144A8
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:32:19 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-506bdf29712so16237196a12.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116332; x=1684708332;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w+asJO3lKNpyKewDhntjul2HKZTaQG/ZxnJvEiKtxXc=;
        b=iUypOhzpIKSooSHJrdZ7+29N5xuSi8jpGDsf0mh4IKHSxy9dcHWof8tlwE2rFcTI+D
         DFpns5hbgPcEMJSrAei8O9/hwss05UPguicMCLtAQvMLjJ7y4+ZasYd2JffBbbrNocvy
         ooIdbgk2iS/xI2QczoLoONNdV/gNSQVGqqXQlramZ4X3Q5Ys/llcuePYU4Eoskq0C/8U
         nFt1ir2a/dIvn3BHe257L7JppKYdD2ERkf1SLFqaiet229FAdyEwjGArr+fL+NxkZn9/
         1L3YTPasbI3ztaUt1jR+K5OYlnAJ2FFyblLv7zGm1oOlBqSCpgomp3L3iwua+8fSAAHD
         WZ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116332; x=1684708332;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w+asJO3lKNpyKewDhntjul2HKZTaQG/ZxnJvEiKtxXc=;
        b=jpy0b25yASTJjxqJ8UbyUS3S/+ze+3bfs2gHHzYrGchmTXntknX+a/VnPLE4ECz7Cu
         DJPMGX04B/YW+eAJe7ONnDTC3l9bYsY5JyVDs9Tzt7ndCnIiYRoia+oYkUqScfcFp2Eq
         9+YXqAXS7D1SUYjCY15filS2zh6ZhRxj/rfg06Y9xu1Hq/YSsc3mx/RNGOfr1gT0YrLU
         l9o8U+u8DpxoNHlPrU9yMJc1dGQG01qw9/t9bKtsKBCR/8lNCLd/XCSobuF2atZxHbVs
         zCARW9mgoY+8smNzea9/Ks7WzDmDe6HgsthEe/4W5U0s7lLmIaEPDkeuYBTjeCdQcQgY
         OQCw==
X-Gm-Message-State: AAQBX9cu+ThxBe+HeJcLWm0G0DdSGnUNl/5sIn/zbix91A4kSq10qVNP
        jS/jf6TBjdq5h+q75Kn2T5izS1EGv6Fb1Ps49lUVYw==
X-Google-Smtp-Source: AKy350bgR3ssd8qcJxiCwGuNeiC4063YsIgtI9oaMySRyGQu9S/ZxI+sVcBFW63gvJ012X1SwdtH0g==
X-Received: by 2002:a05:6402:711:b0:4fb:5fe1:bc3b with SMTP id w17-20020a056402071100b004fb5fe1bc3bmr6313735edx.0.1682116332767;
        Fri, 21 Apr 2023 15:32:12 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id g7-20020aa7d1c7000000b005068fe6f3d8sm2233947edp.87.2023.04.21.15.32.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:32:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: amlogic: add missing cache properties
Date:   Sat, 22 Apr 2023 00:32:10 +0200
Message-Id: <20230421223211.115612-1-krzysztof.kozlowski@linaro.org>
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

  meson-a1-ad401.dtb: l2-cache0: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi   | 1 +
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi  | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 1 +
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi   | 1 +
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi  | 1 +
 6 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index eed96f262844..c8f344596285 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -37,6 +37,7 @@ cpu1: cpu@1 {
 		l2: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index b984950591e2..768d0ed78dbe 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -106,6 +106,7 @@ cpu3: cpu@3 {
 		l2: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index f58fd2a6fe61..543e70669df5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -51,6 +51,7 @@ cpu3: cpu@3 {
 		l2: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
index 431572b384db..86e6ceb31d5e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
@@ -106,6 +106,7 @@ cpu103: cpu@103 {
 		l2: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 11f89bfecb56..2673f0dbafe7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -133,6 +133,7 @@ cpu3: cpu@3 {
 		l2: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index 617d322af0df..643f94d9d08e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -89,6 +89,7 @@ cpu3: cpu@3 {
 		l2: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
-- 
2.34.1

