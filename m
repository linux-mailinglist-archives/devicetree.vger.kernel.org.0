Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5599A68D580
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 12:30:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231356AbjBGLaW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 06:30:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231659AbjBGLaS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 06:30:18 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3FC72B2B2
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 03:30:01 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id hn2-20020a05600ca38200b003dc5cb96d46so12912854wmb.4
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 03:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfErmyZAWFClEhl0ayKENaiIcOOkglWFws7K0nbLI8s=;
        b=PmQjSqc2eo0bO85LD0FWqEcnKXTUWseHi0CKZvgjE3BxNv8yr81bHxTNHFuWjcvj5G
         LrWP+BZZqWwC9XT6hH3SefMuhhMax5ThFQQLAH+2ymUgSvot0FNl6b5QvJAo+s9rhNys
         ovaq0vtOPc8vr12TUIFYy73lxwOFH0gCpOGbc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jfErmyZAWFClEhl0ayKENaiIcOOkglWFws7K0nbLI8s=;
        b=ENv09FPw7RBJVOCnw/SyNAUxKMnCYfIsaiC8HdqG2kEugaCAWhxf1DxZKfCMEwBREp
         +dy7g6PNC2KyX5Pi01ZGkxALaLcpind3XQl98ZmKFgoGotKG/9/sPDQqvk8y8eqa5W+w
         N83PLfgMiGpt+y/6Q63uyax27PRLTVtmyC2NhLHwXvReE3z/cZ4zbr6+FQPZgt5DuhGV
         7T7Rofe9kuT8xGBEHqxE2dNDfcFF7Q8hE8wes31ZG+JgEvdN/ucPNakBf6NbTAwHL6Mo
         xiqTToYd3/AvpPiYlLmbexkCWvC0p2SVECY4AlXaq3IbRv4l+WEKVVXx1P1nabVp1zc8
         tKsQ==
X-Gm-Message-State: AO0yUKWsWYW2X/fKKLJZAub1/Aq4Z39RWco7nvoxhGD/4wyEuhVdEHFo
        kDet31Yel4N2HtiqPxsZpCuIjw==
X-Google-Smtp-Source: AK7set+X0SuZ9Z8NHEx4eYmZi7vfXUh6rnqA9Df2ynWg95UYbPmGMjxLmg94xV0mLVUkh/2lKBCkbA==
X-Received: by 2002:a05:600c:4485:b0:3db:887:8c8c with SMTP id e5-20020a05600c448500b003db08878c8cmr2882940wmo.27.1675769400595;
        Tue, 07 Feb 2023 03:30:00 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com (mob-5-90-193-20.net.vodafone.it. [5.90.193.20])
        by smtp.gmail.com with ESMTPSA id bi5-20020a05600c3d8500b003db012d49b7sm2020827wmb.2.2023.02.07.03.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 03:30:00 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Marc Kleine-Budde <mkl@pengutronix.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        michael@amarulasolutions.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Rob Herring <robh@kernel.org>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v7 4/5] ARM: dts: stm32: add pin map for CAN controller on stm32f4
Date:   Tue,  7 Feb 2023 12:29:25 +0100
Message-Id: <20230207112926.664773-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230207112926.664773-1-dario.binacchi@amarulasolutions.com>
References: <20230207112926.664773-1-dario.binacchi@amarulasolutions.com>
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

Add pin configurations for using CAN controller on stm32f469-disco
board. They are located on the Arduino compatible connector CN5 (CAN1)
and on the extension connector CN12 (CAN2).

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v3)

Changes in v3:
- Remove 'Dario Binacchi <dariobin@libero.it>' SOB.
- Remove a blank line.

Changes in v2:
- Remove a blank line.

 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 30 ++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 500bcc302d42..8a4d51f97248 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -448,6 +448,36 @@ pins2 {
 					slew-rate = <2>;
 				};
 			};
+
+			can1_pins_a: can1-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('B', 9, AF9)>; /* CAN1_TX */
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('B', 8, AF9)>; /* CAN1_RX */
+					bias-pull-up;
+				};
+			};
+
+			can2_pins_a: can2-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('B', 13, AF9)>; /* CAN2_TX */
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('B', 5, AF9)>; /* CAN2_RX */
+					bias-pull-up;
+				};
+			};
+
+			can2_pins_b: can2-1 {
+				pins1 {
+					pinmux = <STM32_PINMUX('B', 13, AF9)>; /* CAN2_TX */
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('B', 12, AF9)>; /* CAN2_RX */
+					bias-pull-up;
+				};
+			};
 		};
 	};
 };
-- 
2.32.0

