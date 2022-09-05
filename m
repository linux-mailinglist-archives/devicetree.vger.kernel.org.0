Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C6E95AD069
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 12:44:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237017AbiIEKni (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 06:43:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237596AbiIEKne (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 06:43:34 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE6EB5244F
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 03:43:31 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id k22so8814824ljg.2
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 03:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Uu1nHIg7+HLTwkcMDXoVH92xOgBLJoR9KxDtzyrNN3I=;
        b=Oiqu5w1Jboa75JrJ45HBZTMrKw4qTEmTch8h/huyPD1AN4J/lUkubmiX26kr2fBlxq
         3KhzFnAv8mujBMi8LCfI6BCWIwnqR4rvlMIv6A+6r0/nezs8JRbWPy6i4JmVB1or7fm0
         gGrikWKv6biKJYg77jZfzmpXjCDC1sjW1ykMOYc3EFU2NLkbfcsEBpT5l62g+lujF9eH
         lJaCtwG5PHc4nnZA8cNpiOWHwKIgQyb2Rh66FstfT8PoXMF6ZZrTOHPHtDQKm5gtDyxp
         chZDyDEI/K5IGN1dSKxEjZA2KHvUhkj/z/Ty31vkiaDDJvQYvKcu+9r3H91AlkRcx5pe
         xOyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Uu1nHIg7+HLTwkcMDXoVH92xOgBLJoR9KxDtzyrNN3I=;
        b=VtzRBxTXC96rCdtvRaOg7vcTY4JFoJbyau6+MErOqaf8kTUg64sVm+6TIl/4CjkoEb
         S+g2yY0ehYdy/act9GJ2TqQbQ9WzVxJV4EUIa9UqNM/Nng8CCmzldSAQPqF9FBSOHyZ1
         GN2g+x4v4BPeanPBkJTXcYy8xRHr1Se3X/qZyf0Gaba77tCEKMiaSCtXQShl7vznpSkt
         kRk5f1BE02emuI+qsxjR4LoZD6/wxTaUm/n4EM8hly7diZF55n0ZZjF3xoJ+AA1YXaBq
         cgrTH4MU8B4wktlTm0mlPYOFdz5/KXGVbIkgsB7EPwl0jzVX7oJUKdQzJbks4066s3xH
         EvPQ==
X-Gm-Message-State: ACgBeo0fxbiuwrUqZFyJvqF+/BcEUQ+GJUGj76U5LHs/LyYKAX81mf3h
        1jjk/urTBcJtHWE3aSIkJplhIUsAF4qobjTx
X-Google-Smtp-Source: AA6agR6KByJ0uqc1vjwMF+LXUvvVm/EvvzR1xvHdSMmWU68PHZkI6s1e8GFhVTWTF/NzVVnrhpfxzg==
X-Received: by 2002:a05:651c:4cf:b0:265:3ba8:92f7 with SMTP id e15-20020a05651c04cf00b002653ba892f7mr9634762lji.105.1662374609981;
        Mon, 05 Sep 2022 03:43:29 -0700 (PDT)
Received: from saproj-Latitude-5501.yandex.net ([2a02:6b8:0:40c:f551:88af:a09e:6f21])
        by smtp.gmail.com with ESMTPSA id t16-20020a056512209000b0048aef1abb08sm1144830lfr.297.2022.09.05.03.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Sep 2022 03:43:29 -0700 (PDT)
From:   Sergei Antonov <saproj@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Sergei Antonov <saproj@gmail.com>,
        Jonas Jensen <jonas.jensen@gmail.com>
Subject: [PATCH] ARM: dts: sync Moxa SDIO 'compatible' name with moxart-mmc.c
Date:   Mon,  5 Sep 2022 13:43:17 +0300
Message-Id: <20220905104317.2740661-1-saproj@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Driver moxart-mmc.c has .compatible = "moxa,moxart-mmc".

But moxart.dtsi and the documentation file moxa,moxart-dma.txt
contain another name: compatible = "moxa,moxart-sdhci".

Change name in moxart.dtsi and moxa,moxart-dma.txt to that from the driver.

Signed-off-by: Sergei Antonov <saproj@gmail.com>
Cc: Jonas Jensen <jonas.jensen@gmail.com>
---
 Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt | 2 +-
 arch/arm/boot/dts/moxart.dtsi                             | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt b/Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt
index 8a9f3559335b..20247827f35a 100644
--- a/Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt
+++ b/Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt
@@ -35,7 +35,7 @@ Use specific request line passing from dma
 For example, MMC request line is 5
 
 	sdhci: sdhci@98e00000 {
-		compatible = "moxa,moxart-sdhci";
+		compatible = "moxa,moxart-mmc";
 		reg = <0x98e00000 0x5C>;
 		interrupts = <5 0>;
 		clocks = <&clk_apb>;
diff --git a/arch/arm/boot/dts/moxart.dtsi b/arch/arm/boot/dts/moxart.dtsi
index f5f070a87482..d69d73930ebe 100644
--- a/arch/arm/boot/dts/moxart.dtsi
+++ b/arch/arm/boot/dts/moxart.dtsi
@@ -94,7 +94,7 @@ watchdog: watchdog@98500000 {
 		};
 
 		sdhci: sdhci@98e00000 {
-			compatible = "moxa,moxart-sdhci";
+			compatible = "moxa,moxart-mmc";
 			reg = <0x98e00000 0x5C>;
 			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk_apb>;
-- 
2.34.1

