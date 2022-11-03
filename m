Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AABF0617B35
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 12:00:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230153AbiKCLA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 07:00:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230394AbiKCLAY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 07:00:24 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A514260F8
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 04:00:20 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id t10so1771488ljj.0
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 04:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Icfy7/ajkmyLk6hMvKQbC30yuWAmXdJyXwjuviZ2GXw=;
        b=Qt1zlwOAovCXwa/B4/Fe/j9Ye55DSXpeRUsJeyiSTmhZxPmcs4ahZosMu8zrUMUW5Y
         M4i0VjcRVEJQP8PWHgqYBNcZJKlLoABDt0Km5EyECYB8RKxOgBTq5imhajDBZAKOEAmW
         mw8HW2x41abqC8zBmrk8unqx+htDcygL/2zpomCQsz3Xa1UiMCXXpi2ZIIxD3o4y8HB3
         0NwXAMQEVTaP/sr0TzRkivbmCtrZAh2fPoep/fo8WM9qs/fzla+1mi71U+ckDe1yH2PR
         s9kaQJZQRhCeUzwCQRsHKAuLM7YCoWLpiK4qgV/Kkjdb5oxG4BaXpJwDGvHYoDXnE0IF
         +PMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Icfy7/ajkmyLk6hMvKQbC30yuWAmXdJyXwjuviZ2GXw=;
        b=uuVBa5U7h8xrVmNRBL2TOPEP57ubqmK3yEWtNUYuFy3U10nrgtP3Q1Mdqhj6VOqkO6
         EK16CW4PXuzmzjMcmiEL0n40veej9eybBpeICC3bXgOAM1zRklFqw4bSH0jyLYwQKRhG
         cA/ZLv6s22IWm9y+0MxB3reu3MstGVNx6lCfW/cAzuBzXHuZglJLrvX4BUVgFvcWSKV/
         1Zrq7+eLBYvBPCjTvhcLbqxkBXOMcZiGi76GLMQcAOl7bCouYAGR+105xd8NzYJKqOhy
         eGHNva4TkHpQG0fxiLA7yyxJoScBZ/Soed9nyNEMEZ90C9xDc++P10JkqoiSfUQdBQHc
         ZUvA==
X-Gm-Message-State: ACrzQf1ln8o4HqH81VknZ/I4Qu+1wDjKXRqelESEBXDnKOGNZtXMQSoE
        XotnbcURIbuPY6uZdLp5OsE=
X-Google-Smtp-Source: AMsMyM7ZMo5kzOOsPJKzGNiSaXUODvFOpvyXG9xG4Pf8YCk/wfEncm7uWLjYfGtFb0S6fu1r3p+EKg==
X-Received: by 2002:a2e:a548:0:b0:277:10ed:e12f with SMTP id e8-20020a2ea548000000b0027710ede12fmr10642906ljn.11.1667473218858;
        Thu, 03 Nov 2022 04:00:18 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id x9-20020a056512046900b004b0317a1035sm88823lfd.109.2022.11.03.04.00.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 04:00:18 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcmbca: bcm6858: add TWD block
Date:   Thu,  3 Nov 2022 12:00:15 +0100
Message-Id: <20221103110015.21761-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM6858 contains TWD block with timers, watchdog, and reset subblocks.
Describe it.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../boot/dts/broadcom/bcmbca/bcm6858.dtsi     | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm6858.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm6858.dtsi
index 29a880c6c858..d8b23be14210 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm6858.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm6858.dtsi
@@ -109,6 +109,25 @@ bus@ff800000 {
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0xff800000 0x62000>;
 
+		twd: timer-mfd@400 {
+			compatible = "brcm,bcm4908-twd", "simple-mfd", "syscon";
+			reg = <0x400 0x4c>;
+			ranges = <0x0 0x400 0x4c>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			timer@0 {
+				compatible = "brcm,bcm63138-timer";
+				reg = <0x0 0x28>;
+			};
+
+			watchdog@28 {
+				compatible = "brcm,bcm6345-wdt";
+				reg = <0x28 0x8>;
+			};
+		};
+
 		uart0: serial@640 {
 			compatible = "brcm,bcm6345-uart";
 			reg = <0x640 0x18>;
-- 
2.34.1

