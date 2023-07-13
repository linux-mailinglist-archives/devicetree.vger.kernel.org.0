Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43D1E752705
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 17:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233984AbjGMP3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 11:29:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234854AbjGMP3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 11:29:25 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E7CC271C
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:29:20 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fbf1b82dc7so7840305e9.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689262158; x=1691854158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bvorNFqMSX8ACtoTn3BNxYt1T0LQ1+7ZO8SCvDuABRw=;
        b=HMKOIRayek2v4Eor/fh9F0UbWg2v63hgHmIILsZLb24m5aJ+xqVOFnco/KTttsBl58
         HybGnfrxz5SJBLG8Nm7zmZBirggzS53jnFMUC+dJGpQznuKHfh6Z4GvlmKtloULiIqPW
         j3FlNEyoVP4zi4uSy4thl8IdcoAoOfxmymfqM07CNXh+5uDO8aeNpGZdzSE3eh6C3qpO
         irvAAghUf4oYBEtu5vSLGGQL6bGqW9Gcmp2rNPs9EwkNq9Y+wMAY9q28i+vDKgz0o4NP
         qXxbWsp7TCJRiIQL9GMOvTJdJs5qIdRkTLHejS+JJSR/5OPV9Z6oh/+AI7ugXSf0uZsU
         lhtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689262158; x=1691854158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bvorNFqMSX8ACtoTn3BNxYt1T0LQ1+7ZO8SCvDuABRw=;
        b=UoUpWXf9zmcMaxlmI9cadZfY01KIf2Z+zR2Bc0mggifkfbAFn96PPwzeMIqDTPdgom
         Z+wa/P0RfqOhRBFUxawKfXrAlwkxSMwm/epeGlpt+p/Qsto0jUOCLhhjFk2ZA/46A79w
         YcVkwMHfDv/ZmLJrPuKqf95dPzGsjXvLkv3dkSgsJwFOvPlhFWkOBSaXBSdDOkopDdrd
         sRlGkNDgHCLi6EHIRNev0onTIsHij1IhXjWVhAPeuPmUg4JGQutwPJefhczaz001WiuY
         KWqwzvy4E5zQhXTFeGVfguFsbjQTh0L1kF0BnpO9BgRoR4NCo2FxmEdWULYTL38Va2Y7
         iRZA==
X-Gm-Message-State: ABy/qLZAgYDvG9gf7wDrdDRTlbfBBj9rKt2J6MURshMTD4OTvLZaS64q
        CjkWfJD86BgJU893GlE1nvQf6g==
X-Google-Smtp-Source: APBJJlF9fzD6f+m7q5e2ZIPud12RUS44xuHF0k0gGsym8H22KUv9ey00hO3qQ3WQX7c34HDnpA3CxA==
X-Received: by 2002:a7b:cd96:0:b0:3fc:10:b25b with SMTP id y22-20020a7bcd96000000b003fc0010b25bmr1705589wmj.21.1689262158634;
        Thu, 13 Jul 2023 08:29:18 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id l10-20020adffe8a000000b00315995837aesm8226597wrr.36.2023.07.13.08.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 08:29:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: omap3-devkit8000: correct ethernet reg addresses (split)
Date:   Thu, 13 Jul 2023 17:29:13 +0200
Message-Id: <20230713152913.82846-1-krzysztof.kozlowski@linaro.org>
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

The davicom,dm9000 Ethernet Controller accepts two reg addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/ti/omap/omap3-devkit8000-common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/omap3-devkit8000-common.dtsi b/arch/arm/boot/dts/ti/omap/omap3-devkit8000-common.dtsi
index 3b9838f1bb6b..07d5894ebb74 100644
--- a/arch/arm/boot/dts/ti/omap/omap3-devkit8000-common.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap3-devkit8000-common.dtsi
@@ -275,8 +275,8 @@ filesystem@680000 {
 
 	ethernet@6,0 {
 		compatible = "davicom,dm9000";
-		reg =  <6 0x000 2
-			6 0x400 2>; /* CS6, offset 0 and 0x400, IO size 2 */
+		reg =  <6 0x000 2>,
+		       <6 0x400 2>; /* CS6, offset 0 and 0x400, IO size 2 */
 		bank-width = <2>;
 		interrupt-parent = <&gpio1>;
 		interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
-- 
2.34.1

