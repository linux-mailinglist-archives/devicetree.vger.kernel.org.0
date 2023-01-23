Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF9F5677579
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 08:17:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231287AbjAWHR3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 02:17:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229817AbjAWHR2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 02:17:28 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA7FD1A483
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:17:23 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id jl3so10525193plb.8
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=42R4c843N+9FNQP8hHKQVlyc9l8sQ4OucSn1xsY1hAU=;
        b=iuAO05Cqc7TibS/2AjBK9OF4YSvQ+KYPtV8ecxQLxqC4a8HkbcsftI26XOdtPnlMuH
         fO4ULtQr4lFKylg3kdBp95gvu8W1gAOLFJcTto/KBxiIZAA1fihFu0Z/OUSJtOifBRmY
         0het6htv1U2pwlZPLGIJ7nvODcKRlpQSCD+3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42R4c843N+9FNQP8hHKQVlyc9l8sQ4OucSn1xsY1hAU=;
        b=ROVR6QVGVZERjjAXmrlWpRmNj2aEBeib7FRqxldWXTJnFS6jK7upLJXP/Lcrh8x9ig
         HPBSa5jLbgVuH4Pp4RmcH4jLsgwXp6HPRSc5q4aLEUe7l+gVobVwxwBePSvHl4IRtOEa
         wJzsVEPk8ED8DM/3NfeOIFTtNY4+2o1OlqMiK9wQoxA7OkTKU6N9ottAeEO/lU8GjoW6
         /29Uj2AvIp/zU0iTcmZSzlfkaRnCTnj4uSktu3xsAVFqLXQhOwieTmTFLrinTZ2K7YQ0
         tNKbyuGz4ACWvb1PnLSfUSwECnZFz2YGpI5VUqFybg/2fcYhJJ3H6KEuZNuvsPnbrLWF
         H6AA==
X-Gm-Message-State: AFqh2kribchhLSpEM3rO8Di5VEPdkriyKa/Sgfpw4MXxQx+PMHM9dwCO
        eGuc0YAC3xTGyeinWRgqvOjp7A==
X-Google-Smtp-Source: AMrXdXu0tzRY9cZn2S4ClWD/KYgzUZWc6dop9Wi4ucM2HsK4KYG4LPUt2rWQEYNlTN/xx5CRObK/Hw==
X-Received: by 2002:a17:902:b611:b0:194:8dea:44ed with SMTP id b17-20020a170902b61100b001948dea44edmr23243589pls.30.1674458243141;
        Sun, 22 Jan 2023 23:17:23 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:3847:3e45:1d7:787c])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090301c300b00172cb8b97a8sm17742091plh.5.2023.01.22.23.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 23:17:22 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/4] arm64: dts: rockchip: Fix compatible for Radxa CM3
Date:   Mon, 23 Jan 2023 12:46:50 +0530
Message-Id: <20230123071654.73139-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The compatible string "radxa,radxa-cm3" referring the product name
as "Radxa Radxa CM3" but the actual product name is "Radxa CM3".

Fix the compatible strings.

Fixes: 24a28d3eb07d ("dt-bindings: arm: rockchip: Add Radxa Compute
Module 3")
Fixes: 7469ab529bca ("arm64: dts: rockchip: Add rk3566 based Radxa
Compute Module 3")
Fixes: 096ebfb74b19 ("arm64: dts: rockchip: Add Radxa Compute Module
3 IO board")
Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 Documentation/devicetree/bindings/arm/rockchip.yaml  | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 98afd7c6b8e6..35f74eda30ae 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -624,8 +624,8 @@ properties:
       - description: Radxa Compute Module 3(CM3)
         items:
           - enum:
-              - radxa,radxa-cm3-io
-          - const: radxa,radxa-cm3
+              - radxa,cm3-io
+          - const: radxa,cm3
           - const: rockchip,rk3566
 
       - description: Radxa CM3 Industrial
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index 3e6578f27ec0..4f8ac9fbbf7c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -11,7 +11,7 @@
 
 / {
 	model = "Radxa Compute Module 3(CM3) IO Board";
-	compatible = "radxa,radxa-cm3-io", "radxa,radxa-cm3", "rockchip,rk3566";
+	compatible = "radxa,cm3-io", "radxa,cm3", "rockchip,rk3566";
 
 	aliases {
 		mmc1 = &sdmmc0;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
index 23a85a13311a..0bc747997c14 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -8,7 +8,7 @@
 #include <dt-bindings/leds/common.h>
 
 / {
-	compatible = "radxa,radxa-cm3", "rockchip,rk3566";
+	compatible = "radxa,cm3", "rockchip,rk3566";
 
 	aliases {
 		mmc0 = &sdhci;
-- 
2.25.1

