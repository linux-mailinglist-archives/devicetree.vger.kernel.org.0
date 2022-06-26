Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AC7155B1A5
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 14:04:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234304AbiFZMDy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Jun 2022 08:03:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234345AbiFZMDv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Jun 2022 08:03:51 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0A47FD07
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 05:03:49 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id h23so13515369ejj.12
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 05:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3yjkgvEiJ4GrRJrHNAHcvts5jioX9D/GIh99TWRnRa0=;
        b=A6xk36Vh/mThrY6yGG3ZUgY1Ng1muWPAoE/bEJ91XSdE3UG8Mi9UTVVZzfRgVkTFwp
         EQg33gTqux0JduDhefjV1rfCJmoJepRYm7ueqZPo60V46sRoXxquIrDWogcb5oo2kcU7
         lW6Iz6vc2PuA/yFsmwwcQ3UvjfsZF8MsGAB1vK577/5cj1gaz4HmMIlzDUIhwcSItZH3
         uMmBStzJZb2ExHB5qINHXiwWJzabz+scFjAgxoZKdvMNoth89SX7KouuPTTY0pdYdYzk
         vfnoBYLc4jKXzg4rHqhEzYSP0G20oP8XwZCSdZCr7BIAgEn2UM+AnE6Eh6f44+OH35jb
         UbFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3yjkgvEiJ4GrRJrHNAHcvts5jioX9D/GIh99TWRnRa0=;
        b=p451sLuUKq69uFDiBRjPB0toSi5CS6NTLDvh0cuR0sbmojoKXL3up0ngI55zBVMw5E
         v9NupuP5ccoGLWPkj6V9uI9McjzTfSDR9IuGP2aYo7P1SjhRl/uKI5O+qQ53P8BRQ1qY
         O+6fOrZv7vrOX/HGpncv3XYw6Ttp3w3vHx2jXIy9WrvQwuppH5gcgjYva8F9FsZhLH3M
         F8FKRUBsCY7lO5QvdMg6zM+gph1+gvllzAvtSzRilFtA07ofK/2aGQTtov9Cv25bvs8t
         mQkVTfDe4koD4rOwcyJgXU9KaDOu69MpikeHfANnzV8sCHjqnu/9QkSi2KEcM7L6navj
         CG3Q==
X-Gm-Message-State: AJIora9lv5JhKhsO4/naUcaiorkMYfC40U5YRvSQzQBC1OjUy70POSiy
        57PbUXMdrzwBge5SYVw8OzOXEQ==
X-Google-Smtp-Source: AGRyM1sCPXT2h1HtpFnOqOWfck5y567fVV8puBnBUED9+Vxuk+jQ6+6AvNxkHTBLpiio6VY27A1hiA==
X-Received: by 2002:a17:907:9958:b0:6e7:f67a:a1e7 with SMTP id kl24-20020a170907995800b006e7f67aa1e7mr7869317ejc.400.1656245028362;
        Sun, 26 Jun 2022 05:03:48 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id q24-20020a170906b29800b0072629374590sm3751585ejz.120.2022.06.26.05.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jun 2022 05:03:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/5] ARM: dts: s3c64xx: align SDHCI node name with dtschema
Date:   Sun, 26 Jun 2022 14:03:40 +0200
Message-Id: <20220626120342.38851-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220626120342.38851-1-krzysztof.kozlowski@linaro.org>
References: <20220626120342.38851-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects "mmc".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/s3c64xx.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/s3c64xx.dtsi b/arch/arm/boot/dts/s3c64xx.dtsi
index 67a7a66e11d5..c03df6355500 100644
--- a/arch/arm/boot/dts/s3c64xx.dtsi
+++ b/arch/arm/boot/dts/s3c64xx.dtsi
@@ -59,7 +59,7 @@ vic1: interrupt-controller@71300000 {
 			#interrupt-cells = <1>;
 		};
 
-		sdhci0: sdhci@7c200000 {
+		sdhci0: mmc@7c200000 {
 			compatible = "samsung,s3c6410-sdhci";
 			reg = <0x7c200000 0x100>;
 			interrupt-parent = <&vic1>;
@@ -70,7 +70,7 @@ sdhci0: sdhci@7c200000 {
 			status = "disabled";
 		};
 
-		sdhci1: sdhci@7c300000 {
+		sdhci1: mmc@7c300000 {
 			compatible = "samsung,s3c6410-sdhci";
 			reg = <0x7c300000 0x100>;
 			interrupt-parent = <&vic1>;
@@ -81,7 +81,7 @@ sdhci1: sdhci@7c300000 {
 			status = "disabled";
 		};
 
-		sdhci2: sdhci@7c400000 {
+		sdhci2: mmc@7c400000 {
 			compatible = "samsung,s3c6410-sdhci";
 			reg = <0x7c400000 0x100>;
 			interrupt-parent = <&vic1>;
-- 
2.34.1

