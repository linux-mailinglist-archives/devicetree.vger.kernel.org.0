Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA1216EB4C7
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:31:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233704AbjDUWby (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:31:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233822AbjDUWbw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:31:52 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDE3F2123
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:46 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-50847469a7fso3165672a12.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116305; x=1684708305;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9ALmBOttYoca8460sKpV7CvSBuIjYGk3zbNz3G0vG8o=;
        b=b3JtXZ+SbpL3mQfzICPTbCQ3RV1CygRG2G6eGI8GCZL5Y/9viiq8weF7qcekQLIDjG
         DWhyayj0Q0KwRoLa7yU3nQerFMrKyiyKhIKvZZk2gf9ab+4dDU44OsJUdJ040XbBQU/Q
         onG0cVnNb/RKJDCgkIP95hXWIO57+/sCtzj1anaeuEBcC/bKmifzHz7h/wPQjuv90O8T
         JU4hQ0BS7TaPTK4HQAgfyDpgFwF7b13BzbbC+gJSoF04Zugfd6DHjeu1r9+O55QMuQSW
         iWUp+endarUIxopfuKXwFVFSlA+ckRHeCvIv7OZ5Ht878wUSvmEZslmyQdh1F+kqb/z2
         cWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116305; x=1684708305;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ALmBOttYoca8460sKpV7CvSBuIjYGk3zbNz3G0vG8o=;
        b=Ui6dtTnZRmQLFDZiCVO1jGVDIeWfn4YK4GQaDtTdLvuGchfiz//3o4OqVvlsiBPJfM
         hw9s/bhFGbnEmMmOI6hCUGgapv6tXkmj7kbBJ1xIpBTZ061pEsYC9qxLy2eHU3gLMCU9
         e87demcQg399s+uMFVa1CdgRpcv0avlD9yPer1IfsNGwXlcJh8+MwsDnIc3dRW0LR192
         CxvOjJA2L64rOrQPX7sSKzevjzDBcXU/K1dETb1m0VCp/5D/9tihqfb1mA0RsMLxFa7F
         hqgmz81TCn+zbHRVZIIxMBE3BNtFcYSlQ48teS8qsLWxu/jJCNOUvEm1dNCjxoqeaSV6
         5cTg==
X-Gm-Message-State: AAQBX9fBIjZH2JPL2+Ppo55R2L+ZBclqBCmlxGm9RBjcDfLZFD9EzKMI
        4zwmXbwKJLhuWwa4sASfn2WBoEYhdG8lbpDMk1p5kQ==
X-Google-Smtp-Source: AKy350ZeWdJeG/fURaYdqJY4HnHiQ2n6cAfTRFUu9gTnC8HVveWqTDLNp/jqZfetILHcb3JZ2YwS2w==
X-Received: by 2002:a50:fb8f:0:b0:506:c3c8:59cc with SMTP id e15-20020a50fb8f000000b00506c3c859ccmr6770122edq.27.1682116305203;
        Fri, 21 Apr 2023 15:31:45 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id v5-20020a056402184500b0050687f06aacsm2217539edy.12.2023.04.21.15.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:44 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: ti: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:43 +0200
Message-Id: <20230421223143.115099-1-krzysztof.kozlowski@linaro.org>
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

  k3-am6528-iot2050-basic-pg2.dtb: l3-cache0: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/ti/k3-am654.dtsi  | 1 +
 arch/arm64/boot/dts/ti/k3-j7200.dtsi  | 1 +
 arch/arm64/boot/dts/ti/k3-j721e.dtsi  | 1 +
 arch/arm64/boot/dts/ti/k3-j721s2.dtsi | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654.dtsi b/arch/arm64/boot/dts/ti/k3-am654.dtsi
index 4cc329b271ac..888567b921f0 100644
--- a/arch/arm64/boot/dts/ti/k3-am654.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am654.dtsi
@@ -113,6 +113,7 @@ L2_1: l2-cache1 {
 	msmc_l3: l3-cache0 {
 		compatible = "cache";
 		cache-level = <3>;
+		cache-unified;
 	};
 
 	thermal_zones: thermal-zones {
diff --git a/arch/arm64/boot/dts/ti/k3-j7200.dtsi b/arch/arm64/boot/dts/ti/k3-j7200.dtsi
index bbe380c72a7e..f1836ec8e934 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200.dtsi
@@ -95,6 +95,7 @@ L2_0: l2-cache0 {
 	msmc_l3: l3-cache0 {
 		compatible = "cache";
 		cache-level = <3>;
+		cache-unified;
 	};
 
 	firmware {
diff --git a/arch/arm64/boot/dts/ti/k3-j721e.dtsi b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
index b912143b6a11..c577f3739407 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
@@ -97,6 +97,7 @@ L2_0: l2-cache0 {
 	msmc_l3: l3-cache0 {
 		compatible = "cache";
 		cache-level = <3>;
+		cache-unified;
 	};
 
 	firmware {
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2.dtsi
index 376924726f1f..f3db277628cd 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2.dtsi
@@ -81,6 +81,7 @@ L2_0: l2-cache0 {
 	msmc_l3: l3-cache0 {
 		compatible = "cache";
 		cache-level = <3>;
+		cache-unified;
 	};
 
 	firmware {
-- 
2.34.1

