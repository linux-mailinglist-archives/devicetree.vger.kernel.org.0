Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA2B8535488
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:37:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345618AbiEZUhF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:37:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347285AbiEZUhD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:37:03 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ECDCE15FC
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:37:01 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id n10so5136878ejk.5
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yhybYx5n0lO5V9grC1jVsxMhR7Znm1yB5MDSykYKKbY=;
        b=hcrwQQccoF9BLU7lFaEXA2VBlVmSFfnvxxRcZQC0KstBa5wa+kSVkFZgm1WpGV6Ghp
         DqqiaQVCv65hEHbJbT7qXrNSKeBcNVnZ0m8ozTjXJUHne2CU8A3SaoSX6T4r6MQF/Fbh
         4JNU9pTX7epd2E99kCoIbiMzU76EwhQMLA/026LyfwaF4I2gyK6/G2Xn4TY7CDdMxf/R
         hqMXPBXJYRaoVOoJkm7fiFQsP3cOKHiPLti54Xxk0eU4ahSDQZUVHnA+4tZw2OeRuMAd
         5bLNZuoXKpr8bbphypeC8GzFH7cUuq1CXgHZrQM4SympK7RqCMkL1S+EU4FsrP7H5fXc
         Ut5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yhybYx5n0lO5V9grC1jVsxMhR7Znm1yB5MDSykYKKbY=;
        b=q2SJCJ5OfptB4V1+HiUi0DZwAgtfPOYQYH54imiF+xjshGXpnUnVgx3t9WmUs/q7z7
         jXUOHhd71dCLSZM8m1JlBhlYreRq6Gdowlfv4fOpefn6gIlwIjY67pieFRHpcHeK8vRh
         jbxKmL75cWVWuEK5N5xOJw6306fMiBKRrhBjoZJXTreAX+jc0BZI4eKRZQ7WXOw11aht
         z6fXFp4NZuHZdazYPlHg1eLMSq0ft4/+rq52fAdy26g0lvNjAhvwzzfi0z4rf5wZxC6l
         F+t716Cv8cy5yeK3GJfrWhT15ECTlZfpxtKjsMP15129gBLhmWGleIR+cHFw58xTJe4J
         Gprw==
X-Gm-Message-State: AOAM5335N3tO50PpTySIYVJsipb0b8es0eW+o07GIbMma7XlQkp8xDX0
        fOObuJD52RveIcScQCizd1r3BA==
X-Google-Smtp-Source: ABdhPJz1Y1iWVyjDOS3CTvMsvJoXbj0SMfD4rqv4llBMql5dDKcijlp4Crtc+9p3ETbnZwJYdr8nHw==
X-Received: by 2002:a17:907:7d86:b0:6ff:1598:b049 with SMTP id oz6-20020a1709077d8600b006ff1598b049mr8313316ejc.637.1653597419655;
        Thu, 26 May 2022 13:36:59 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bq8-20020a170906d0c800b006feb71acbb3sm813727ejb.105.2022.05.26.13.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:36:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: ste: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:36:56 +0200
Message-Id: <20220526203656.831126-1-krzysztof.kozlowski@linaro.org>
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

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm/boot/dts/ste-ab8500.dtsi      | 6 +++---
 arch/arm/boot/dts/ste-hrefv60plus.dtsi | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/ste-ab8500.dtsi b/arch/arm/boot/dts/ste-ab8500.dtsi
index 35137c6e52ee..dd30d08ccb9b 100644
--- a/arch/arm/boot/dts/ste-ab8500.dtsi
+++ b/arch/arm/boot/dts/ste-ab8500.dtsi
@@ -195,7 +195,7 @@ ab8500_charger {
 							  "CH_WD_EXP",
 							  "VBUS_CH_DROP_END";
 					monitored-battery = <&battery>;
-					vddadc-supply	= <&ab8500_ldo_tvout_reg>;
+					vddadc-supply = <&ab8500_ldo_tvout_reg>;
 					io-channels = <&gpadc 0x03>,
 						      <&gpadc 0x0a>,
 						      <&gpadc 0x09>,
@@ -207,8 +207,8 @@ ab8500_charger {
 				};
 
 				ab8500_chargalg {
-					compatible	= "stericsson,ab8500-chargalg";
-					monitored-battery	= <&battery>;
+					compatible = "stericsson,ab8500-chargalg";
+					monitored-battery = <&battery>;
 				};
 
 				ab8500_usb: phy {
diff --git a/arch/arm/boot/dts/ste-hrefv60plus.dtsi b/arch/arm/boot/dts/ste-hrefv60plus.dtsi
index 8f504edefd3f..e66fa59c2de6 100644
--- a/arch/arm/boot/dts/ste-hrefv60plus.dtsi
+++ b/arch/arm/boot/dts/ste-hrefv60plus.dtsi
@@ -353,11 +353,11 @@ lcd_hrefv60_mode: lcd_hrefv60 {
 					 * Drive DISP1 reset high (not reset), driver DISP2 reset low (reset)
 					 */
 					hrefv60_cfg1 {
-						pins ="GPIO65_F1";
+						pins = "GPIO65_F1";
 						ste,config = <&gpio_out_hi>;
 					};
 					hrefv60_cfg2 {
-						pins ="GPIO66_G3";
+						pins = "GPIO66_G3";
 						ste,config = <&gpio_out_lo>;
 					};
 				};
-- 
2.34.1

