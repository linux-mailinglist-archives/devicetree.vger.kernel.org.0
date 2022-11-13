Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 556A9627196
	for <lists+devicetree@lfdr.de>; Sun, 13 Nov 2022 19:13:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235482AbiKMSNl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Nov 2022 13:13:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235492AbiKMSNj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Nov 2022 13:13:39 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 930AF2DCE
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 10:13:37 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id t25so23371942ejb.8
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 10:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfErmyZAWFClEhl0ayKENaiIcOOkglWFws7K0nbLI8s=;
        b=BkL5YgTwGRmPOHa53TbvbuIBYxleFaIrL+sDkKmaQ9HYCgMUP4SFkb8HHgz7mYGtqO
         Lk1hgxQK28YAdtvPoZobkiqYvcWkLbvDLmGYC6sPtvAhg3tOmQ7SsFRdm2JTt50lrUCv
         OEZ8aaFpuMb1nBBVV5gso//0VSdvHlUq6e1yE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jfErmyZAWFClEhl0ayKENaiIcOOkglWFws7K0nbLI8s=;
        b=dTFU3AYel+idgn1jyR2rpoqsVSwNJm41o0vo8V56UHvPzbkXsuItQtQf1fFldyFOOc
         Mu08JdUSlahIaSYuiHALC6z8CpPyItz9KTP8AMlNcXtCSBL5yklUXfVDJN6wZwfrvqO/
         bV3KNcWnqRFmeCvSMF3yZtl1cEe/h4H00jMC1I3qf9nTSPS7DP/DbfW48QqsE6N/W/Ye
         2RhaBjdHnKJj4fweeB5EKzzKWibRTKe0T8tSEuec8UADgA6nOIRQngve3b/X0bjwRKSY
         d3HrgKkk8blPmR987uqX4UgCjp1eu1VDF/DoEg0qdxp04RHofgtwXyHZv7hxSGAk3PQ6
         Qpbw==
X-Gm-Message-State: ANoB5pmfhArvGomqvMfK+mwT9rwUs9wpL5vb0i0+qeMQsDfrJn3RDj0v
        ZmCKHjK6cfLeTF6HktpfpdUQQQ==
X-Google-Smtp-Source: AA0mqf5pkK1tFZqspEdl5uezeg9yWgGTCXnL7f8vxrXuFtOt+Cy+H/8eSdHhhTyOolejXQgh6AUC+w==
X-Received: by 2002:a17:907:d608:b0:7ad:934e:d542 with SMTP id wd8-20020a170907d60800b007ad934ed542mr8894284ejc.20.1668363216162;
        Sun, 13 Nov 2022 10:13:36 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-40-103-33.business.telecomitalia.it. [79.40.103.33])
        by smtp.gmail.com with ESMTPSA id iy6-20020a170907818600b0078de26f66b9sm3225487ejc.114.2022.11.13.10.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 10:13:35 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Rob Herring <robh@kernel.org>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        michael@amarulasolutions.com,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND RFC PATCH v5 4/5] ARM: dts: stm32: add pin map for CAN controller on stm32f4
Date:   Sun, 13 Nov 2022 19:13:21 +0100
Message-Id: <20221113181322.1627084-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20221113181322.1627084-1-dario.binacchi@amarulasolutions.com>
References: <20221113181322.1627084-1-dario.binacchi@amarulasolutions.com>
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

