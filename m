Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7899535480
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:35:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239129AbiEZUf4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:35:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237986AbiEZUfz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:35:55 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A980AE15EF
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:35:54 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id f21so5015219ejh.11
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g/SCC9DI4NqSSW7S/NUXkqtiUZch9ON7hJPhwPKitPQ=;
        b=tIaDNjPAhNPsJ43tXLVCNZIivpqGDhqstWZA9iDSu2T40KGEgEljzp6Zy4S/Xhs2H0
         lRK/uMH62oMNOFTOdiwRKGJ8T2RUPylfyw1vk/DZTx4WpQxfOoHx5mx60kUlDCSQjdPP
         zC4DcR8j49DWqi5Zwq+tM60N27rRRdbQ1bgg+B5LEq/SUzrNrTh8ofqAA17pn2iQvXcn
         R7Sc7kAMttVR12JfEjxf7sz+DjOzL3XevhG3o/BvAZ75GM3i7bjTWKvW37knhyZsA3Ow
         itzhBYhSH8eei6TBX9IE+jJzghx/tYuPHs6zCFkvgdasSe944cZrbuQDP/JMpffso76a
         OrQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g/SCC9DI4NqSSW7S/NUXkqtiUZch9ON7hJPhwPKitPQ=;
        b=huYSMdj6r8bmVuNveIbkedc1wdGcXU3VSxhoWDdsmtQ7/8DRwIYUDljnQGUBEk02uA
         8NC/fbImM9F+bCKsADM8LsiEgDQ1khm0FawcG1MyAJfMpCOJrPay0Iu2e+lebDRZS9jj
         Drt5iJnDs+NQ2VCnnCiCkQ90iI18qy6qYmnIVNO5gdmyxJyFPA0xxR3it+fIgGW99M6d
         UfhQJUgGkh3Je9xRw5jT0h0GXI8WL7jzU5n0aBfusT20Pce47rD67x7ZJHZ5TOrbP94e
         vsbssqiehrVa2iOUCCUuEfM8xfP9+peBnOMIQNsgdiWyvUh/IhlxtHgZGlTnLA3i5ENF
         qrug==
X-Gm-Message-State: AOAM530dr/jqBXoFnUR57oa0STqxQFJOrzjGiLtv19sXMev8ZFz61hVg
        ZGeiozxOhu1Y/tZIOyTvvNiUsw==
X-Google-Smtp-Source: ABdhPJyHNl4pZZppIHg8EzNwgODTRV3IGY7nIC/Ip5fUERyopxZ5Oi+VGZrX3rjj0cMC/hCEOnFGEw==
X-Received: by 2002:a17:906:25d8:b0:6fe:9f11:3906 with SMTP id n24-20020a17090625d800b006fe9f113906mr31337266ejb.538.1653597353195;
        Thu, 26 May 2022 13:35:53 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w15-20020a17090652cf00b006fed8dfcf78sm807631ejn.225.2022.05.26.13.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:35:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: sun5i: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:35:46 +0200
Message-Id: <20220526203547.830848-1-krzysztof.kozlowski@linaro.org>
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

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm/boot/dts/sun5i-a13-licheepi-one.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sun5i-a13-licheepi-one.dts b/arch/arm/boot/dts/sun5i-a13-licheepi-one.dts
index 2ce361f8fede..3a6c4bd0a44f 100644
--- a/arch/arm/boot/dts/sun5i-a13-licheepi-one.dts
+++ b/arch/arm/boot/dts/sun5i-a13-licheepi-one.dts
@@ -67,18 +67,18 @@ leds {
 		compatible = "gpio-leds";
 
 		led-0 {
-			label ="licheepi:red:usr";
+			label = "licheepi:red:usr";
 			gpios = <&pio 2 5 GPIO_ACTIVE_LOW>;
 		};
 
 		led-1 {
-			label ="licheepi:green:usr";
+			label = "licheepi:green:usr";
 			gpios = <&pio 2 19 GPIO_ACTIVE_LOW>;
 			default-state = "on";
 		};
 
 		led-2 {
-			label ="licheepi:blue:usr";
+			label = "licheepi:blue:usr";
 			gpios = <&pio 2 4 GPIO_ACTIVE_LOW>;
 		};
 
-- 
2.34.1

