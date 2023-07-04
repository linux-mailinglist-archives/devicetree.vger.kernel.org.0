Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 122737477E5
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 19:34:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231453AbjGDRed (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 13:34:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231455AbjGDRec (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 13:34:32 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECC5F1BCB
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 10:34:13 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-992e22c09edso397629666b.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 10:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1688492051; x=1691084051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+K05sBMM6p7NXDAV8Ux9b1t0k5cRXekoIV2P3Kh76Xw=;
        b=Ny43sP8+pJbMIBVttTOGYImqIAYLCMNJ2B/VwNih8hYxbkGpM+IGUdRmD/s4oLy608
         XgkaiY+R7INN+vBcqqUix+k+vLt+OMHkqVem/7N6yk1fVeuoXnkONc+6YwA62gPov+xa
         8gbmZSuTuWxsFLiU51KL/CuL3wU3GuzCxE1lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688492051; x=1691084051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+K05sBMM6p7NXDAV8Ux9b1t0k5cRXekoIV2P3Kh76Xw=;
        b=iISxcERlznYha6nHmoQftp61ePMVnz4EMvtBwXNxZ+PbikVZutJpyT5XoQdtS2hvT+
         Grix9I7EbJuhZQjeb8vQF5Jn/Q6kqB0yvsqCFzIOfgsqpv48K6jSozeFMvxPLq7uBupn
         oIRytuq92h9aI1LcvPsjeU8k2YblW4ELUiR60sJhY9ffhbpLMfdFSGZxp9vS6qn2fqSj
         SWWo6BJxuD7EzQGB08hg05WS3HP/+3Es+yZ54+ZLdO7zcFoBPRf1x4c6mU4rd0h1dI/M
         pcmOCifQ2xFFmMfPqvPKFKBWVH/mBsI5m5NmFl4g8MLw5tXMnfXNpo8k/yy4FK6Qd8Fw
         vrZg==
X-Gm-Message-State: ABy/qLatHLaFHM2F5a00Cg8Zec93cQ1e1xkG1Cka8jBLRqjrDSUzxIiW
        XACDr4aoiFErJ+bo5U03a5mQgA==
X-Google-Smtp-Source: APBJJlFK3NsyL3nVNojHW421KP10BF589AScgGhWC+ZxmPL0fSDLBXw5Ct7ujEtvQomfAxBlUF/3lw==
X-Received: by 2002:a17:906:35d5:b0:96f:7b4a:2904 with SMTP id p21-20020a17090635d500b0096f7b4a2904mr10921853ejb.3.1688492051452;
        Tue, 04 Jul 2023 10:34:11 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-58-49-236.retail.telecomitalia.it. [82.58.49.236])
        by smtp.gmail.com with ESMTPSA id v24-20020a1709064e9800b00992ca779f42sm6724645eju.97.2023.07.04.10.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jul 2023 10:34:11 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/2] ARM: dts: stm32: add pin map for i2c3 controller on stm32f7
Date:   Tue,  4 Jul 2023 19:34:06 +0200
Message-Id: <20230704173407.590544-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pin configurations for using i2c3 controller on stm32f7.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
index 9f65403295ca..c8dfda7bd04f 100644
--- a/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
@@ -171,6 +171,16 @@ pins {
 				};
 			};
 
+			i2c3_pins_a: i2c3-0 {
+				pins {
+					pinmux = <STM32_PINMUX('H', 8, AF4)>, /* I2C3_SDA */
+						 <STM32_PINMUX('H', 7, AF4)>; /* I2C3_SCL */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <0>;
+				};
+			};
+
 			usbotg_hs_pins_a: usbotg-hs-0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 4, AF10)>, /* OTG_HS_ULPI_NXT */
-- 
2.32.0

