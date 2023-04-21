Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 837416EB4C4
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:31:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232770AbjDUWbo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:31:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232808AbjDUWbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:31:43 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32ECB1BF5
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:42 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9505214c47fso375015266b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116300; x=1684708300;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C2g3U63nRIt+0pZO4KBKXppHA/6UeQmjuddRYWTRF7E=;
        b=F6upLZwIvvNvwwzJXLj+OvRpi6fNfxlbXVIpY81r7ZwWu/nf/ydLHW87vk+kwodkSm
         lZKObOzLcmWD/TEax62R60QIqt23aunSUl2/aiNAYAscyLTXDH1flZSO8sLSfyf4yp8M
         9q0YJZPCGyj5lcHLWzTdPlP1QfGCMrZfGvmjXL0Obazfr8CKEY9xrqxIj2lPlzVXBS/V
         e3VRs6a0Pf4csuYVRrZQ4HIcBWPaWAUDmuyA5iFG0wPlpdHkbVP9ScxPQXYa0I2EnfkD
         I0nbm6PcD1n7YnHSG1h7mowsTtdvf2eEJNSr2vUTD5WQtT1IfJNQkRqPB9CsWyKNLAnl
         PWwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116300; x=1684708300;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C2g3U63nRIt+0pZO4KBKXppHA/6UeQmjuddRYWTRF7E=;
        b=Nu4XkzHzjDyqeD4Wolu+kHec1EAk9Xy47O3fq+EF7GNeGFElkmY6eSxZ+DZzlHC+rV
         hHr2UVLmI9GQ718s0gfcmX7NBHLTPRY3uxfgE8Pot6wd9o68JsjO0nHgnTr0gt+gvBRd
         TfSQZgLTH/UquYp8NZeLNZqIWx0OMm8XemqiKVa5C8dXoSjuzN8BqyYR8a7tvxxPSxUq
         NOtpVKgUqSo8aSNhDCyH+zlOSsjU55DQDfc7X0DHlQMIlc3FY1zVuU7vrlLIFUNIW1Vy
         jnTOBxejNcP4ITFYJGWJyNSKnJyvPQplM+0ZjHXttaAtl6Wsn5ikSG9uERc8cMvGIhVW
         kVWQ==
X-Gm-Message-State: AAQBX9fAy3ZZo69633znVGiWupLwKwmGtlYziJ8WtpzK+lJjLqXSwKWD
        jCiZDDtie+pal4B6A+8zh78icg==
X-Google-Smtp-Source: AKy350YX4OiqSAW2vhECCVWVlHSJArUAJhNXSTm+C+pQdqSci6dlw9nXkZA9D9scqFJHk8F1NLEYcg==
X-Received: by 2002:a17:907:d29:b0:94a:6953:602d with SMTP id gn41-20020a1709070d2900b0094a6953602dmr3911628ejc.37.1682116300670;
        Fri, 21 Apr 2023 15:31:40 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id x4-20020a1709064a8400b0094ecf61289esm2576710eju.152.2023.04.21.15.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Khuong Dinh <khuong@os.amperecomputing.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: apm: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:39 +0200
Message-Id: <20230421223139.115044-1-krzysztof.kozlowski@linaro.org>
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
cache-unified and cache-level properties to fix warnings like:

  apm-mustang.dtb: l2-cache-0: 'cache-level' is a required property
  apm-mustang.dtb: l2-cache-0: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/apm/apm-shadowcat.dtsi | 8 ++++++++
 arch/arm64/boot/dts/apm/apm-storm.dtsi     | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi b/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
index 70a10bcafcff..377660d705d1 100644
--- a/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
@@ -97,15 +97,23 @@ cpu@301 {
 		};
 		xgene_L2_0: l2-cache-0 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 		xgene_L2_1: l2-cache-1 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 		xgene_L2_2: l2-cache-2 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 		xgene_L2_3: l2-cache-3 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/apm/apm-storm.dtsi b/arch/arm64/boot/dts/apm/apm-storm.dtsi
index d73e809fe41a..efa79209f4b2 100644
--- a/arch/arm64/boot/dts/apm/apm-storm.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-storm.dtsi
@@ -81,15 +81,23 @@ cpu@301 {
 		};
 		xgene_L2_0: l2-cache-0 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 		xgene_L2_1: l2-cache-1 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 		xgene_L2_2: l2-cache-2 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 		xgene_L2_3: l2-cache-3 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
-- 
2.34.1

