Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7E8366168D
	for <lists+devicetree@lfdr.de>; Sun,  8 Jan 2023 17:26:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233401AbjAHQ0P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 11:26:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233414AbjAHQ0G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 11:26:06 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9834388C
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 08:26:05 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id c17so9166884edj.13
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 08:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfErmyZAWFClEhl0ayKENaiIcOOkglWFws7K0nbLI8s=;
        b=YSC3OP4TGn1VPvfygj0by5L4sf/6V9LnPq9OUQ8JOfL5ruwSYj3wXY1+xejQnk5f+j
         Hx7h0Jc9hPrOGPjrvaBVujgJZVLD/rargrN3b9zZvQcjjPHrj2HQ8PccN78orzy2TffZ
         gr23AF/OflooX70a36NEie4LyAUBvKqSlpBD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jfErmyZAWFClEhl0ayKENaiIcOOkglWFws7K0nbLI8s=;
        b=Q1WnCXuQaILdMXgZvDdqWVUbGgKE0ik2ElnfOilyBC3Hx0jML0SBnm1GeawgNuQuPR
         CSr0KyBLl/b+zYc4d32LtD1DHPzDBZMZSwYMP7bW4mQbr0S8Buwc/JBF6eZ/WeASadXd
         s6FPDvA0DB6iJXbxYdhE5s+H+VJzQQh68ztw6SX9xGFvv/qLSA4WoziFrSR/D6p8Nzpu
         ZI4XJ0bxgMStXhi1i97EUxcZfYqtiPbwJijMfQSFo/yWbpH+DhmC3Xvw45OsBQah2Yvj
         pIaQdnC0J8zAVEtU3mPp1womNhS4K7JwqCkcIovuacrwlvjua82I5vArtW68EdXLzibc
         Rwrg==
X-Gm-Message-State: AFqh2kp5dgt4lovwyvsw78M3QDz57phYbnsxyUbmYgWOj4eafe4ymNXN
        bFefyrbP91zbWB0eybmIdhRPWQ==
X-Google-Smtp-Source: AMrXdXstskybOIlFfZ2yFlK+q9xGYyt7ZxAVwUMIGh3HiD2xyYSZZ0K6th4tIDlSvSfpyOAMvnJYjA==
X-Received: by 2002:a05:6402:5296:b0:461:dd11:c688 with SMTP id en22-20020a056402529600b00461dd11c688mr57289681edb.9.1673195164404;
        Sun, 08 Jan 2023 08:26:04 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-80-180-23-57.pool80180.interbusiness.it. [80.180.23.57])
        by smtp.gmail.com with ESMTPSA id n3-20020aa7c443000000b00486074b4ce4sm2659614edr.68.2023.01.08.08.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 08:26:04 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>, michael@amarulasolutions.com,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND RFC PATCH v5 4/5] ARM: dts: stm32: add pin map for CAN controller on stm32f4
Date:   Sun,  8 Jan 2023 17:25:53 +0100
Message-Id: <20230108162554.8375-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230108162554.8375-1-dario.binacchi@amarulasolutions.com>
References: <20230108162554.8375-1-dario.binacchi@amarulasolutions.com>
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

