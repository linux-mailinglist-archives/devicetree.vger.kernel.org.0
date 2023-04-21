Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFE7F6EB4EB
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:33:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233952AbjDUWde (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:33:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233958AbjDUWcz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:32:55 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ABE330F5
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:32:21 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-94f1d0d2e03so299325966b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116334; x=1684708334;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I18cjBpk5ZfFfI1SzEbvyX/2O5Hw3fX2a1VPTc+piJY=;
        b=kiDHqk6Uk/ZrFnsgPwqpBAr/m+dRiJ+yPCBc4jp5YzWrEi5fpHf3RV1qLvY3zvsY26
         hhNFQVsjpbUoExxZKbM4cLEUhvX25docH9LLrjoVvwD1uzF99KXWL210EePp3/mf1Jp6
         voZhoS+xJNQBf7o68SQCbIkBMctOYvUap9KKjtMMsr9cyx5Xb79ygZHuxDtVMe1tZIV9
         +y2ZffoR6Of7PkmF+MpXNKHiBigsiEXa0xWRl6LWvL4AficpNMqAYcdBLSIkzd428e/4
         ZLIBfXmQv8boJbAJlq56NfVaoZHBaRK07C7pyf8VhqisA1q+yoIu2tuyV0xHuonE68jJ
         9Z4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116334; x=1684708334;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I18cjBpk5ZfFfI1SzEbvyX/2O5Hw3fX2a1VPTc+piJY=;
        b=OZMDogcBKR/YBdCGy9bhdrpgQYTRufLWUefz/UCOuaxpLcqEGNTYkTYNvudxSmrfCe
         ly+1AHGS2cEv9BnRmcgTAadkHpTbPUwE3i2l/7w8fXF2eXTWV9pjV6EomB8ODAiAK4Td
         Sf9v609t3oAXnnVoef31SN7fJj6I1lBtaEEf+3nCQUVXe7/TImE7ZWOTDeQKzSizS/3U
         mAkt5nCw0bXnno5U4r3unr9in26hlOEQxmr/SBHHzAvdt+IZ7ZUhAhD/09/9V1ph6AwS
         kt183Pt/uYFuySNYOP98HgcueRjYY7HZc7dvpdRglTsHb4eXM0GrHxxtgOg98X9jsuxi
         ISWA==
X-Gm-Message-State: AAQBX9eaaBHhVwFBkJ80gbsCGRyKyNijeL5KX6q+u/0GZggHub3jrxM1
        oCqScqIENbMwLM4HhQ+jMHJOQA==
X-Google-Smtp-Source: AKy350aipkQXzaH3DM2KpBs3lU5iUlHkJhPjlILQ+vUNEKBvdd1vPMxh2J2FONhBD9Mvcrl/O+pXIA==
X-Received: by 2002:a17:906:f1c8:b0:94a:6f0d:38a4 with SMTP id gx8-20020a170906f1c800b0094a6f0d38a4mr3008820ejb.7.1682116334790;
        Fri, 21 Apr 2023 15:32:14 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id d21-20020a17090694d500b0094efe88a037sm2578597ejy.9.2023.04.21.15.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:32:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: arm: add missing cache properties
Date:   Sat, 22 Apr 2023 00:32:12 +0200
Message-Id: <20230421223213.115639-1-krzysztof.kozlowski@linaro.org>
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

  foundation-v8.dtb: l2-cache0: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/arm/foundation-v8.dtsi           | 1 +
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts           | 1 +
 arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index 029578072d8f..7b41537731a6 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -59,6 +59,7 @@ cpu3: cpu@3 {
 		L2_0: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
index ef68f5aae7dd..afdf954206f1 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
@@ -72,6 +72,7 @@ cpu@3 {
 		L2_0: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts b/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
index 796cd7d02eb5..7bdeb965f0a9 100644
--- a/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
+++ b/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
@@ -58,6 +58,7 @@ cpu@1 {
 		L2_0: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
-- 
2.34.1

