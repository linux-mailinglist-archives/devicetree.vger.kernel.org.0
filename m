Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E41554D6AA
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350420AbiFPAzu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:55:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350393AbiFPAzP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:55:15 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CC0058392
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:40 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id x138so88876pfc.12
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=itsEy92F8LgvkoK7MoKZ9B/GZxw2SAC9YAvwl0r5wg8=;
        b=z5mXx8sye4HKPIB7GYHCqOmGAGj5X42fg9fh791Lw1DXhV5zcZncP75cSXTXhLmtq4
         g7lrX/EsU75RaPEGf5B5G1LkIlaX4z9WqBVCWdYV3NN27afzgqvw16AH9OKxJNmBTI2m
         XTDqrwImsp+HwpXvH5JaGdLGEAu+TZO0/v34UfNt4ZZA45u4YGMymWhC/aBPrG0ASGVG
         hsX/qyXqmismIyIMdc0A5XjYmziMgoCcf19URCMHJwhvGapnII2ctHcbpH3j7geIyCiQ
         xS+DWBIbMyt2NXaLdJSFA9QX4Sp/Wr1fLXKOQnkCYfh0v1mwUsly2UpmfRNpv8frmavd
         UHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=itsEy92F8LgvkoK7MoKZ9B/GZxw2SAC9YAvwl0r5wg8=;
        b=8DHO5HcVs++NSqUpB7LrYtp+GplrwC0qeGJ5R1s5lOpOVJM3APiJBpAzRVTUEjN0SM
         cYpKqRM1DiI4yf7qklWu0PlJMkAXfnO+tz7qCeWE0AEOmCMlRA7fFa0GqveyLpLwk/rJ
         GjKBdnQvcV8G95GWyCXdrICARyz6XaOP9TKE7MAQbCx63wEvfScMWY+IKSYN/TxX/kQ2
         QXSDUL8Pm4um6rO1HzrP9G2vF7ZWVPmh0nATl7Qi06nmSEpk1KUYtXqm5XYIyYLQyJqr
         SnmZ62OoZIIwqfP9RO2igZeA+eV/ipmnjuAluhxJZsRazMAieXNNXqvf8l/IpmxCbdmC
         VuLg==
X-Gm-Message-State: AJIora/znRmOMUwzYSs9wp0roRI04EaRyKqAfm1SuHOVRnx5ZOY5UXZE
        oOK5VeFrY/3wTZwYvyBw/DWHuuHVxvruVg==
X-Google-Smtp-Source: AGRyM1szTLtkES0t0cjWcjNlUNx3yfAdHRv1dieHB+qKOWjH/ekzn2LDX9kEaCAIRz7t5icSAt9ApA==
X-Received: by 2002:a63:f415:0:b0:408:808b:238f with SMTP id g21-20020a63f415000000b00408808b238fmr2093682pgi.469.1655340880158;
        Wed, 15 Jun 2022 17:54:40 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michal Simek <michal.simek@xilinx.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 31/40] ARM: dts: xilinx: align gpio-key node names with dtschema
Date:   Wed, 15 Jun 2022 17:53:24 -0700
Message-Id: <20220616005333.18491-31-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
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
 arch/arm/boot/dts/zynq-zc702.dts         | 4 ++--
 arch/arm/boot/dts/zynq-zturn-common.dtsi | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/zynq-zc702.dts b/arch/arm/boot/dts/zynq-zc702.dts
index cf70aff26c66..d23201ba8cd7 100644
--- a/arch/arm/boot/dts/zynq-zc702.dts
+++ b/arch/arm/boot/dts/zynq-zc702.dts
@@ -30,14 +30,14 @@ chosen {
 	gpio-keys {
 		compatible = "gpio-keys";
 		autorepeat;
-		sw14 {
+		switch-14 {
 			label = "sw14";
 			gpios = <&gpio0 12 0>;
 			linux,code = <108>; /* down */
 			wakeup-source;
 			autorepeat;
 		};
-		sw13 {
+		switch-13 {
 			label = "sw13";
 			gpios = <&gpio0 14 0>;
 			linux,code = <103>; /* up */
diff --git a/arch/arm/boot/dts/zynq-zturn-common.dtsi b/arch/arm/boot/dts/zynq-zturn-common.dtsi
index bf5d1c4568b0..dfb1fbafe3aa 100644
--- a/arch/arm/boot/dts/zynq-zturn-common.dtsi
+++ b/arch/arm/boot/dts/zynq-zturn-common.dtsi
@@ -49,7 +49,7 @@ usr-led2 {
 	gpio-keys {
 		compatible = "gpio-keys";
 		autorepeat;
-		K1 {
+		key {
 			label = "K1";
 			gpios = <&gpio0 0x32 0x1>;
 			linux,code = <0x66>;
-- 
2.34.1

