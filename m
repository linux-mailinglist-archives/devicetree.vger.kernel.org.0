Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6E4054D675
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349093AbiFPAyM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:54:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349596AbiFPAyJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:54:09 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDA865716D
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:07 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id t2so20579pld.4
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aAhmJJMLt+dZsJwSy+3+Zt2MW08hnmRQ8CsVMDcBXk8=;
        b=XpJypG1PqVJijPFXMhshyEGhFTjzLT1zr9/dt9OPg/kf7Mz0onmMT6LzlId/BPek0v
         SNCWb22y8I8WkTMjojQ9bzUKWsylwLq3qifRwDEZUHtcFrDzflSAQMp6wgG8+NY+BBCc
         V769tA+Nd9fzR7EQyIJbvnIBEQeU1eE12qs80oTTaasuiuNdVWQvcn3fxtPR6jcPXiDr
         MVgYNB4oW6mXrz+QS+uK2Kix6DErvBuSGQuJbxrbexCofV3hZScjIXGEkv961JbbNvPC
         +6TiBL+iK/mxHyr513xRcWwtwmBW8S2MpBercg901WImFJlhGd0d1V9pftNPB3TqKmKe
         XcLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aAhmJJMLt+dZsJwSy+3+Zt2MW08hnmRQ8CsVMDcBXk8=;
        b=P+A4ChaKHK+GG/83EsiKStd321+mUWrCQqcsdil/SVU9ywIKp9IIrJuHEjh+Sp5NwC
         ITEwHmjFMccYK3Y3Yj8gL2cAHZM9puUsDPRi6uxEwZ/6gybkx0NwOw4XitRT87us0mpR
         niGeNZYxdJybF9QVk7MaouPnjnJtjcRVXslf1OQaWxEc3pTr5+57WWkGYy4rmDQliC6i
         0XocnwXPQNFdQAZMT1hhIx79UJW/88t7fZVyhqCG46bhVvv4sf9TKXMltQ+lIMzAVfrH
         NmdaME57QNDHTbCcyxnjvcDIYob5y7SAWQR6m3XbMdM3oyWfJsbMmVqL2ybvKMisIX1J
         iFfQ==
X-Gm-Message-State: AJIora8WzBXzGW4NLGkyLw0i2hO9Y6gdSIiBM9Fw1v/a3UjJKhk9vKeM
        Lgl8le42hCDnft6Ua6cp6PH5KQ==
X-Google-Smtp-Source: AGRyM1tlfUjwzSCWhGKQW3q+Dq56sqBcx82ObxjiMPph4KVF0w1gBdY62NGgyTxYpOcuu7KoVT1CrQ==
X-Received: by 2002:a17:90a:a22:b0:1ea:e934:3079 with SMTP id o31-20020a17090a0a2200b001eae9343079mr1337262pjo.46.1655340847110;
        Wed, 15 Jun 2022 17:54:07 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, Wei Xu <xuwei5@hisilicon.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 09/40] arm64: dts: hisilicon: align gpio-key node names with dtschema
Date:   Wed, 15 Jun 2022 17:53:02 -0700
Message-Id: <20220616005333.18491-9-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern
(e.g. with key/button/switch).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts | 2 +-
 arch/arm64/boot/dts/hisilicon/hip05-d02.dts       | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts b/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
index f68580dc87d8..0fe0542bf40e 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
+++ b/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
@@ -74,7 +74,7 @@ keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwr_key_pmx_func &pwr_key_cfg_func>;
 
-		power {
+		key-power {
 			wakeup-source;
 			gpios = <&gpio4 2 GPIO_ACTIVE_LOW>;
 			label = "GPIO Power";
diff --git a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
index 40f3e00ac832..ad53066ac495 100644
--- a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
@@ -27,12 +27,12 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	gpio_keys {
+	gpio-keys {
 		compatible = "gpio-keys";
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pwrbutton {
+		pwr-button {
 			label = "Power Button";
 			gpios = <&porta 8 GPIO_ACTIVE_LOW>;
 			linux,code = <116>;
-- 
2.34.1

