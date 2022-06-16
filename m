Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A59454D66A
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354878AbiFPA4F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:56:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355614AbiFPAzk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:55:40 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE4E258E40
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:48 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id g186so12931938pgc.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QPYY8cZvI30w8ER/fK+cOf14ZzGBA9BCHkD+gscMWkQ=;
        b=fAHr1q19jOvEfXjfJCwZZ4/weAqlt59BmiKJ21gmjZpttPLpDWSBub46saR0/kU8p2
         mordBF/8pL175BqG1XfItzcvqQK8qJhrtftqdrawzBwS4vfrhkHozzDKgXpFaF6kRmKQ
         OISl6nq60X09yYuuHrNOBKsysg16jauFtiXRhmVNJNu96t+Pj2MHbQT++qUeIPfB0DPD
         7ZG8jIcQ/hdJBLKqE/3QentP50DVxY6KmGTbr8KEQ6DHspUra4SwuMi/efIglpbIvUem
         DWgrMzn2e+JnFsCnvL/KqO5oQ9g77F4tHIj//uueN8PPALYxV5D1aKPzfLey0pWS43ny
         7o6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QPYY8cZvI30w8ER/fK+cOf14ZzGBA9BCHkD+gscMWkQ=;
        b=eIy53tjSZtW4pp/NfVHj1TLTkeNmOee+1jgn5g2J8ygBI+oy9sL2e0XAbaFau99Dg5
         4NXZwrGbOHAvRN+zhdJ/E9PIMQ9YCG08v4u4zj/rXwQr9gv/SByayfSRSRVq6weIdzJD
         VWkl1KrFrR89yNBfG/0z8nuD3g0wvoFu6ceeltZv67WMhf79yVG1sVT2NvuEJyg1llV/
         R74R4CiDMbfiit3Ijj/G0qFpOGhmcqm96EV6V9kRvvBvJ7L4H2EgxE5XwA0n+6jC+EpI
         1evhTRBSHvEbpPbWsmM6woSul+LJ4gxjl+NHDWSxpGEDuZcC9LFQ14HaZ4abqP6iGyIW
         f5DA==
X-Gm-Message-State: AJIora80J5uP0pSZQRrFbweUlnwF9SdccdXxIRSOkxLI1lBFBZxYxNmP
        a7VTwQf4lMAKpyaX0U0xKBPjEw==
X-Google-Smtp-Source: AGRyM1uvnLQUsVDSNQItG0K+yTguO+3RwCf4ArljnhzBEJnGMwmVLMrD7RgOmrRUPYMg1g+HCG89zw==
X-Received: by 2002:a05:6a00:4515:b0:522:cc82:79d2 with SMTP id cw21-20020a056a00451500b00522cc8279d2mr2118618pfb.61.1655340888304;
        Wed, 15 Jun 2022 17:54:48 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 37/40] ARM: dts: aspeed: correct gpio-keys properties
Date:   Wed, 15 Jun 2022 17:53:30 -0700
Message-Id: <20220616005333.18491-37-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
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

