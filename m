Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51A1E5AD350
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 14:59:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237857AbiIEMx5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 08:53:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237845AbiIEMx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 08:53:57 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 839491C11A
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 05:53:55 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id v26so12979848lfd.10
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 05:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=zYU9e6+rW3YlNt9/cxNc1/gsizy2sZMh8xlX3YWM9ak=;
        b=n7mt9D8ttS5RP4YtIaDwFlxQSSCWUjHFE9l9NwBFN7zEad6exLyhv71OzjE4dWeAvR
         XGktfcfNCBlj1H1MuUMdHagAsRRSWJ719aebfcvWPBmynN84OC0DejkPNMDQmH6oKnDZ
         sq2zQw9dxUU81JTYVb7e+rKn6b+CWA+MFAalFEGNfAOiR09hlqcMiurq1UflT355/49e
         w5ntt3AZApXDKGjjprNjO9kN7nFNmfMOnp4z8KUhh5+u5Dga/kH7fAQ4SHy4LDhOyT5C
         n2kfqBpDA5c1XmlZDBDG/Xx9CjyZ82rKcJzzfzMk3uV4q12d8qerspZl5tim3XW5dYTd
         ScAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=zYU9e6+rW3YlNt9/cxNc1/gsizy2sZMh8xlX3YWM9ak=;
        b=sDzTJ3cMf73mpsH8vifpohLVXFWyObV8+TggpwB9MdYY9RGGFvYaDK48Uo5CNwj3Wv
         aKPFRR3QiTNMjcgxpIRkzVC/CEGrH52IxfqApfFXLk8veg5N4OXO7MCxPsrUF9/COwSs
         wNL30FIGBDcvOnYFoGd9pgJXhOooL5pb/0GxFykZetyGoyJM9LOeaE/nT3G1cc1X/6I5
         hKDqHQezxaY3FMCfNcSVNnSKJmipSNUS6y3VLjpzyj/C6fTGOUcz8XPyBt3mD91KcaF1
         xWcUhluf4Ij7UuzPAf/zE1COgznU3WL6qo/W8Mok43KyLXqQguNsV5LdPtnH8giu6vwp
         ujjw==
X-Gm-Message-State: ACgBeo28XsnzhCr5+AzUObQHb3PN3NofpEeJSyboQyCf+M10wyBPgHaC
        pyVwtWsBw28bQuiJX3oUG12L1vWwIpBtly0g
X-Google-Smtp-Source: AA6agR6uVEmCQKgA+h7vXdoFPsN07s8gPo5vWd/tA28yeHBjUWOw/moZ04zmo65AX/xwJXV+z79u3w==
X-Received: by 2002:a05:6512:3e1:b0:494:64c5:5b52 with SMTP id n1-20020a05651203e100b0049464c55b52mr11884434lfq.420.1662382433882;
        Mon, 05 Sep 2022 05:53:53 -0700 (PDT)
Received: from saproj-Latitude-5501.yandex.net ([2a02:6b8:0:40c:f551:88af:a09e:6f21])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b00492b1ee7489sm1178583lfr.300.2022.09.05.05.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Sep 2022 05:53:53 -0700 (PDT)
From:   Sergei Antonov <saproj@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Sergei Antonov <saproj@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Jonas Jensen <jonas.jensen@gmail.com>
Subject: [PATCH v2] ARM: dts: fix Moxa SDIO 'compatible', remove 'sdhci' misnomer
Date:   Mon,  5 Sep 2022 15:53:43 +0300
Message-Id: <20220905125343.2769117-1-saproj@gmail.com>
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

But moxart .dts/.dtsi and the documentation file moxa,moxart-dma.txt
contain compatible = "moxa,moxart-sdhci".

Change moxart .dts/.dtsi files and moxa,moxart-dma.txt to match the driver.

Replace 'sdhci' with 'mmc' in names too, since SDHCI is a different
controller from FTSDC010.

Signed-off-by: Sergei Antonov <saproj@gmail.com>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Cc: Jonas Jensen <jonas.jensen@gmail.com>
---
v1 -> v2:
Per Arnd Bergmann's suggestion, replaced sdhci with mmc in names too.

 Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt | 4 ++--
 arch/arm/boot/dts/moxart-uc7112lx.dts                     | 2 +-
 arch/arm/boot/dts/moxart.dtsi                             | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt b/Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt
index 8a9f3559335b..7e14e26676ec 100644
--- a/Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt
+++ b/Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt
@@ -34,8 +34,8 @@ Example:
 Use specific request line passing from dma
 For example, MMC request line is 5
 
-	sdhci: sdhci@98e00000 {
-		compatible = "moxa,moxart-sdhci";
+	mmc: mmc@98e00000 {
+		compatible = "moxa,moxart-mmc";
 		reg = <0x98e00000 0x5C>;
 		interrupts = <5 0>;
 		clocks = <&clk_apb>;
diff --git a/arch/arm/boot/dts/moxart-uc7112lx.dts b/arch/arm/boot/dts/moxart-uc7112lx.dts
index eb5291b0ee3a..e07b807b4cec 100644
--- a/arch/arm/boot/dts/moxart-uc7112lx.dts
+++ b/arch/arm/boot/dts/moxart-uc7112lx.dts
@@ -79,7 +79,7 @@ &clk_pll {
 	clocks = <&ref12>;
 };
 
-&sdhci {
+&mmc {
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/moxart.dtsi b/arch/arm/boot/dts/moxart.dtsi
index f5f070a87482..764832ddfa78 100644
--- a/arch/arm/boot/dts/moxart.dtsi
+++ b/arch/arm/boot/dts/moxart.dtsi
@@ -93,8 +93,8 @@ watchdog: watchdog@98500000 {
 			clock-names = "PCLK";
 		};
 
-		sdhci: sdhci@98e00000 {
-			compatible = "moxa,moxart-sdhci";
+		mmc: mmc@98e00000 {
+			compatible = "moxa,moxart-mmc";
 			reg = <0x98e00000 0x5C>;
 			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk_apb>;
-- 
2.34.1

