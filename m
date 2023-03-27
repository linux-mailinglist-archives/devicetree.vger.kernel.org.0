Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 201AF6CA921
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 17:35:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232489AbjC0Pfy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 11:35:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232572AbjC0Pfx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 11:35:53 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC5C210F5
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 08:35:52 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id x8-20020a9d3788000000b0069f922cd5ceso4743115otb.12
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 08:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679931351;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lvH2wwh5ilVKrGxPTUn0cBva2EIuEqu2IvcB3AtAx+o=;
        b=jb52HQakdyH6iclqcMk1O0LY26oENvXN4HUJpHYe2Y/zRlshuUMAKyDkJPp64aG16M
         2030GJyCQ7jg03WUEE2+6HOvxSSnaj7Nsn8ysYnIS/+j8QPWLw5/mn4psEHVP0gHY/0Z
         /fuidn07JEkvLqPaq3LlJB6+vT0OzPf4iEGnOHsCWZrO08QrkDBjfKYwOa9o3uflkGZL
         0K4KV5p/5jQrQuz0a8Iv12rTKawzYU8eP6ZZrm1s04v/WPZAUjP+KdX5BnHGTfwdwSIk
         rO0ZyCVfyxJJNXcg7RYKKDcTyzmsJ1/UQyGf/UGwg17DcYRSZY9f+jMG/sMFO4Oa0zj5
         Xv6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679931351;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lvH2wwh5ilVKrGxPTUn0cBva2EIuEqu2IvcB3AtAx+o=;
        b=x6mcBijG0YiJcPAMl8uCfsxIgrFxm4+njEja/IxoOQx8ME2PZe2fzeYgmtx5xHiuq1
         edBMWJQSlPN+4xx+7d2ANnE3e9UAHloPA/HIgFmrnUb1bQabY/VknX/46HExWbG+lwex
         E3Ml6EYLxI230l08wOFC0V0j8GL1UPhA3KQ7RVr2IOoIhiiual+FfiXDp08DQxC928HL
         cAv3WeSzwOJyVT+zyYxaxN1JVpb9H8k/MX4xe0xxE6wlpgGIUz+2j6PfN81moQ6khrUk
         FVCj1tgtJxU/pxghSITzW7B17HEdCKyPKIAv05mHxIGBr7SXzGhoS8Q9FeBAHyILH+qK
         r9xA==
X-Gm-Message-State: AO0yUKV3cuNoyV8aEP8472IoJea7E58WLE+MYifO//MMrs00oqr0Q8JF
        e1xP59L4Z6EZ3srmZZolDLg=
X-Google-Smtp-Source: AK7set+cj08VsQuilXZ3ti0UfuXnFbiatsG1Zk3ryzbwhkzyi0UQ3WfdUkBWC6F4SC0NyX7sle7PJw==
X-Received: by 2002:a9d:63c8:0:b0:69d:27e8:998d with SMTP id e8-20020a9d63c8000000b0069d27e8998dmr6732126otl.2.1679931351662;
        Mon, 27 Mar 2023 08:35:51 -0700 (PDT)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id n12-20020a9d740c000000b006a0ae1c4263sm3908913otk.48.2023.03.27.08.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 08:35:51 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, jonas@kwiboo.se,
        maccraft123mc@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add clk_rtc_32k to Anbernic xx3 Devices
Date:   Mon, 27 Mar 2023 10:35:47 -0500
Message-Id: <20230327153547.821822-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

For the Anbernic devices to display properly, we need to specify the
clock frequency of the PLL_VPLL. Adding the parent clock in the
rk356x.dtsi requires us to update our clock definitions to accomplish
this.

Fixes: 64b69474edf3 ("arm64: dts: rockchip: assign rate to clk_rtc_32k on rk356x")

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi | 6 ++++--
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts   | 6 ++++--
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
index 65a80d1f6d91..9a0e217f069f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
@@ -16,8 +16,10 @@ backlight: backlight {
 };
 
 &cru {
-	assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
-	assigned-clock-rates = <1200000000>, <200000000>, <241500000>;
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <241500000>;
 };
 
 &gpio_keys_control {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index b4b2df821cba..c763c7f3b1b3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -105,8 +105,10 @@ spk_amp: audio-amplifier {
 };
 
 &cru {
-	assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
-	assigned-clock-rates = <1200000000>, <200000000>, <500000000>;
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <500000000>;
 };
 
 &dsi_dphy0 {
-- 
2.34.1

