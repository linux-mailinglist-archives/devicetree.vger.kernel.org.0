Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15622544AE1
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:46:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235413AbiFILpZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:45:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244514AbiFILmg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:42:36 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C24141F1295
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:40:59 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id x62so30801793ede.10
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QPYY8cZvI30w8ER/fK+cOf14ZzGBA9BCHkD+gscMWkQ=;
        b=ba9tS/9yDx6p3YctOfdOomzEOyFpkCTwCXlVq0NRt81wXewc1jKS5ajKfPid1M4iPA
         f0bRz2+goebpQ9JpwqlNmkBvRJB7jj5PKZnuyKgZCKOrFPO11bJD08rjnJajtTG82Kr1
         9+/a50S9k9hX8nY5V/RPuxknmTRSTMZpDOYnlym30cZ6f6dSOZqcboNVKHqOBYlBKBBS
         wHXzXlwwo5guqKlI0LzZgeKO07x2IxAm4SRz8/nN+vLCm2DZtXuGJ28n+7CPPcqd8DLJ
         tgdS2Dte0d9q9H4HFx1W5q3kIqT6P4l5saj1WjNH+h1a1msGx8F8tnWJehzKsc2tcnv7
         J5YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QPYY8cZvI30w8ER/fK+cOf14ZzGBA9BCHkD+gscMWkQ=;
        b=CBXUid2TYSxqj6ZoKi69CDwkqwlgEngGQRtqoMiSoABeMkOn8GRFGmZoExbGpjmDRn
         dA/wR8EpfrYRdUAb7pY0/96/VKSujWxWPUroIlji/7jZI/vzrvsqLyE1ScMfNRHmVrNd
         cK/RbO6lhrBF00Zk/2v03YEx5CZT6xZB+56AyEtS+akjqgKUHuneyjdS4OpXiH/3PZOz
         i1ll+uFaVR3gxB5VQcewU8Ui0qwix7j7bHxBJ0pTxXA+ANuVs3r/B7P5PXA3inwqTmmj
         8EGEMZxAq7PXdzwuJssLocE0X5uAj49EhvvkDzBy6AsFF7R7dTluiZJkrXJU0HebLVsB
         nTNw==
X-Gm-Message-State: AOAM530ZSzE1BXT3AcMZUZguxl0AiRk9FLHmPL7BRhhu/EeEz7l7pDBL
        LyTiYgcgLYnP3VRuT5nzPx6X1Q==
X-Google-Smtp-Source: ABdhPJw68zqypVGGfQ1a4rssxPK/TfiBKSa4tSC0UkP1YZyhup+4T8pJBHl+SQ0ffRoqFi/7DjvqiQ==
X-Received: by 2002:aa7:c54b:0:b0:42d:be18:c261 with SMTP id s11-20020aa7c54b000000b0042dbe18c261mr44708606edr.267.1654774856916;
        Thu, 09 Jun 2022 04:40:56 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bk2-20020a170906b0c200b006fef557bb7asm10498662ejb.80.2022.06.09.04.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:40:56 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 43/48] ARM: dts: aspeed: correct gpio-keys properties
Date:   Thu,  9 Jun 2022 13:40:42 +0200
Message-Id: <20220609114047.380793-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
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

gpio-keys children do not use unit addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts | 2 --
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 2 --
 arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts  | 2 --
 3 files changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
index afad8d732cc3..a6a2bc3b855c 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
@@ -189,8 +189,6 @@ vga_memory: region@bf000000 {
 
 	gpio-keys-polled {
 		compatible = "gpio-keys-polled";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		poll-interval = <1000>;
 
 		event-fan0-presence {
diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index fc8222ea2dd0..bf59a9962379 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -179,8 +179,6 @@ pcieslot-power {
 
 	gpio-keys-polled {
 		compatible = "gpio-keys-polled";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		poll-interval = <1000>;
 
 		event-fan0-presence {
diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts b/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
index 6f6a35fe2caf..3f6010ef2b86 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
@@ -65,8 +65,6 @@ event-ps1-presence {
 
 	gpio-keys-polled {
 		compatible = "gpio-keys-polled";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		poll-interval = <1000>;
 
 		event-fan0-presence {
-- 
2.34.1

