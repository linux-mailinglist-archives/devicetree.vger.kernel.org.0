Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 328A6770F16
	for <lists+devicetree@lfdr.de>; Sat,  5 Aug 2023 11:32:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbjHEJcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Aug 2023 05:32:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbjHEJcM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Aug 2023 05:32:12 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC45B10CA
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 02:32:11 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id a640c23a62f3a-99bf3f59905so406920266b.3
        for <devicetree@vger.kernel.org>; Sat, 05 Aug 2023 02:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1691227930; x=1691832730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PU0Mm1LqR6Sd23PVyNdW/l5iyuu7GETQ6ileDMCjS3c=;
        b=ShcmEtOxOcxh8Ra+ZrnyCXiLvGdvy66Qe834X+l4o4ColTafa2s7FQabcHJ7pd41Z8
         VGEoZnsZ61WcwOZKPnLPgk8jvK1iLvsPQ1zOjMCoMSstdNV+HLwb17RY/mzywp4uQqdp
         yKr/gEnh19hjxdorHA0mImP/vuS4UH8QguKvE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691227930; x=1691832730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PU0Mm1LqR6Sd23PVyNdW/l5iyuu7GETQ6ileDMCjS3c=;
        b=gD5PDf7xfasPAG8sQFH0OvaVjEdgBYwpR8CTQ6Gbc64YWivWbtwGh3e1jC/l6ATAqZ
         +giB0ubi65kQ11m2iwvKfVdN7bXkX0CHUMU3MJ88nUTlMZ6IR1wPAhjBJtBsJt/thM9g
         S6tzJMNAMWnRVsEYIg28N6fX3HgnYll7PwhDz45sYTm0zWbzV+FrI62squsnmll6merU
         q/xOuDkVAojh2JKHPiGexCFPMHTPCQKkVoaCtQiE6vAksaDn+iZtM366k2a8DopJBpGk
         Hz/bKKkAMDfhplWEy5lsc9yCMDijZ9roe5qaUjgD10IDS742t1uiZlB/ZXnb99AcTMVZ
         SWBw==
X-Gm-Message-State: AOJu0YyA0cUr23K6copg7WiZVLkyRixFluXQlkRazqSqfT7tuYQo1uAR
        Yr+nlLmJ99EQPilIB3OjlkB9Ig==
X-Google-Smtp-Source: AGHT+IFLw4j0bbGPR63vRSuWnCt7hC5dc52zhDYTamFBTkW3DJ+duJwVXTNgwXIKssTfvn9FsO3ZeA==
X-Received: by 2002:a17:906:3f1e:b0:975:63f4:4b with SMTP id c30-20020a1709063f1e00b0097563f4004bmr3566000ejj.36.1691227930254;
        Sat, 05 Aug 2023 02:32:10 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-52-12-96.retail.telecomitalia.it. [82.52.12.96])
        by smtp.gmail.com with ESMTPSA id j15-20020a170906430f00b0099b76c3041csm2491083ejm.7.2023.08.05.02.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Aug 2023 02:32:09 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        michael@amarulasolutions.com,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v7 2/3] ARM: dts: stm32: add pin map for LTDC on stm32f7
Date:   Sat,  5 Aug 2023 11:32:01 +0200
Message-Id: <20230805093203.3988194-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230805093203.3988194-1-dario.binacchi@amarulasolutions.com>
References: <20230805093203.3988194-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pin configurations for using LTDC (LCD-tft Display Controller) on
stm32f746-disco board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Raphaël Gallais-Pou <raphael.gallais-pou@foss.st.com>

---

Changes in v7:
- Add 'Reviewed-by' tag I forgot in v6.
  https://lore.kernel.org/linux-arm-kernel/20230629083726.84910-1-dario.binacchi@amarulasolutions.com/T/

Changes in v3:
- rename ltdc-pins-a-0 to ltdc-0.

 arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi | 35 +++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
index 9f65403295ca..36dad40dd0c7 100644
--- a/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
@@ -365,6 +365,41 @@ pins2 {
 					bias-pull-up;
 				};
 			};
+
+
+			ltdc_pins_a: ltdc-0 {
+				pins {
+					pinmux = <STM32_PINMUX('E', 4, AF14)>, /* LCD_B0 */
+						 <STM32_PINMUX('G',12, AF9)>,  /* LCD_B4 */
+						 <STM32_PINMUX('I', 9, AF14)>, /* LCD_VSYNC */
+						 <STM32_PINMUX('I',10, AF14)>, /* LCD_HSYNC */
+						 <STM32_PINMUX('I',14, AF14)>, /* LCD_CLK */
+						 <STM32_PINMUX('I',15, AF14)>, /* LCD_R0 */
+						 <STM32_PINMUX('J', 0, AF14)>, /* LCD_R1 */
+						 <STM32_PINMUX('J', 1, AF14)>, /* LCD_R2 */
+						 <STM32_PINMUX('J', 2, AF14)>, /* LCD_R3 */
+						 <STM32_PINMUX('J', 3, AF14)>, /* LCD_R4 */
+						 <STM32_PINMUX('J', 4, AF14)>, /* LCD_R5 */
+						 <STM32_PINMUX('J', 5, AF14)>, /* LCD_R6 */
+						 <STM32_PINMUX('J', 6, AF14)>, /* LCD_R7 */
+						 <STM32_PINMUX('J', 7, AF14)>, /* LCD_G0 */
+						 <STM32_PINMUX('J', 8, AF14)>, /* LCD_G1 */
+						 <STM32_PINMUX('J', 9, AF14)>, /* LCD_G2 */
+						 <STM32_PINMUX('J',10, AF14)>, /* LCD_G3 */
+						 <STM32_PINMUX('J',11, AF14)>, /* LCD_G4 */
+						 <STM32_PINMUX('J',13, AF14)>, /* LCD_B1 */
+						 <STM32_PINMUX('J',14, AF14)>, /* LCD_B2 */
+						 <STM32_PINMUX('J',15, AF14)>, /* LCD_B3 */
+						 <STM32_PINMUX('K', 0, AF14)>, /* LCD_G5 */
+						 <STM32_PINMUX('K', 1, AF14)>, /* LCD_G6 */
+						 <STM32_PINMUX('K', 2, AF14)>, /* LCD_G7 */
+						 <STM32_PINMUX('K', 4, AF14)>, /* LCD_B5 */
+						 <STM32_PINMUX('K', 5, AF14)>, /* LCD_B6 */
+						 <STM32_PINMUX('K', 6, AF14)>, /* LCD_B7 */
+						 <STM32_PINMUX('K', 7, AF14)>; /* LCD_DE */
+					slew-rate = <2>;
+				};
+			};
 		};
 	};
 };
-- 
2.34.1

