Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2715155B1B4
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 14:04:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234371AbiFZMDx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Jun 2022 08:03:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234264AbiFZMDw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Jun 2022 08:03:52 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC9ABDF35
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 05:03:50 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id r18so1557982edb.9
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 05:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rAhlAFe2ABh6/g/xW+LBv7hM+j8A+2tS21OjYfiHjwY=;
        b=zgJHEkmT/IxrbmKLY5EbqWjcWhpr/cfaGI6yzUkrqFNFeliY1Ub7eunxejNVzdz2Nc
         6wu+gh7U/7+Oopg9nc5TlLWY3L1UoGR5wx1ZjhGOY5NoszVYYrqwSjydUUkBoDCaWquE
         cV7dFaml4aeYXj7YOOz7IzGTsL83kZCm3m3pI36D3GCHLbwupG5qm8y3OXpB4PiJ/Fki
         iLl6ozak94qZe5dxjBqNpaYpwjOxPPVkDNLeradeg77qI0AUkDTqxHQA8gLnsNCfwk6p
         uG+PLxok2otLi3ddXYyMmAzlMTLP5Gryq6/YIuM1d028KnYYcZHBTqaVyhNvNo/U4J4t
         HsLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rAhlAFe2ABh6/g/xW+LBv7hM+j8A+2tS21OjYfiHjwY=;
        b=lhiWmYpYFSxd/mqlxnohF+5BwrzH4sSPRq6PjVXmDGZjY6VfEtWQaOOSRQt77WrLDz
         cGkLLegEGNNPTCvloucSKiS6Te39tFMys+oyDsONB0yHGQgJEsRroCwyKYnUNHRPne9k
         2MyebDX6OYlrPkzJH/8W32bXIDNPFmAzO5XBRuX11wrR+4hiSq6jjgZF9sxxu2RVbXl3
         aQSBC9LynYYQpCEiUtb0UAO+mkHwEdR9CGK1JIhYWPFmCuX9AbiTJIPf4L+45th190Ar
         OGH7WpMQm72kE0Kr782CELqXMCjk9vqzi/afrzWuPRINbteNCjTqK/vfxRL2ZZpCz4Qc
         SZ+Q==
X-Gm-Message-State: AJIora9VjxLe851lKw6s7O1w+yk5JDuX9eJKSkOFMONOSV1PKE8L+N/n
        O+pi2EV2l4OJJbRlua72soDCIA==
X-Google-Smtp-Source: AGRyM1tkL08L+E2VIeptJellhvnsGxRi769WL4DPPqu2XW8w15E+iTSsASxP8X5/9kkrcNVJXynwFA==
X-Received: by 2002:a05:6402:1943:b0:437:6e67:c224 with SMTP id f3-20020a056402194300b004376e67c224mr8951087edz.182.1656245029323;
        Sun, 26 Jun 2022 05:03:49 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id q24-20020a170906b29800b0072629374590sm3751585ejz.120.2022.06.26.05.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jun 2022 05:03:48 -0700 (PDT)
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
Subject: [PATCH 4/5] ARM: dts: s5pv210: align SDHCI node name with dtschema
Date:   Sun, 26 Jun 2022 14:03:41 +0200
Message-Id: <20220626120342.38851-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220626120342.38851-1-krzysztof.kozlowski@linaro.org>
References: <20220626120342.38851-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects "mmc".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/s5pv210.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
index f1b85aae8842..12e90a1cc6a1 100644
--- a/arch/arm/boot/dts/s5pv210.dtsi
+++ b/arch/arm/boot/dts/s5pv210.dtsi
@@ -357,7 +357,7 @@ uart3: serial@e2900c00 {
 			status = "disabled";
 		};
 
-		sdhci0: sdhci@eb000000 {
+		sdhci0: mmc@eb000000 {
 			compatible = "samsung,s3c6410-sdhci";
 			reg = <0xeb000000 0x100000>;
 			interrupt-parent = <&vic1>;
@@ -368,7 +368,7 @@ sdhci0: sdhci@eb000000 {
 			status = "disabled";
 		};
 
-		sdhci1: sdhci@eb100000 {
+		sdhci1: mmc@eb100000 {
 			compatible = "samsung,s3c6410-sdhci";
 			reg = <0xeb100000 0x100000>;
 			interrupt-parent = <&vic1>;
@@ -379,7 +379,7 @@ sdhci1: sdhci@eb100000 {
 			status = "disabled";
 		};
 
-		sdhci2: sdhci@eb200000 {
+		sdhci2: mmc@eb200000 {
 			compatible = "samsung,s3c6410-sdhci";
 			reg = <0xeb200000 0x100000>;
 			interrupt-parent = <&vic1>;
@@ -390,7 +390,7 @@ sdhci2: sdhci@eb200000 {
 			status = "disabled";
 		};
 
-		sdhci3: sdhci@eb300000 {
+		sdhci3: mmc@eb300000 {
 			compatible = "samsung,s3c6410-sdhci";
 			reg = <0xeb300000 0x100000>;
 			interrupt-parent = <&vic3>;
-- 
2.34.1

